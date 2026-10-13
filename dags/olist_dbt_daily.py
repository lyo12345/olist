"""
olist_dbt_daily  ·  Ejecución diaria de las capas Silver/Gold con dbt Cloud

Bronze ya está cargada en Snowflake. Este DAG solo dispara el job `olist_dbt_build` (dbt build =
modelos + tests) de dbt Cloud y espera el resultado: si un modelo o un test falla, la tarea queda en rojo.

Configuración (variables de entorno del Deployment en Astronomer):
  DBT_CLOUD_JOB_ID                 -> ID del job de dbt Cloud
  AIRFLOW_CONN_DBT_CLOUD_DEFAULT   -> dbt-cloud://<ACCOUNT_ID>:<TOKEN>@   (conexión a dbt Cloud)
"""
from __future__ import annotations

import logging
import os
from datetime import timedelta

import pendulum
from airflow.providers.dbt.cloud.operators.dbt import DbtCloudRunJobOperator
from airflow.sdk import DAG

log = logging.getLogger(__name__)

DBT_CLOUD_CONN_ID = "dbt_cloud_default"
DBT_CLOUD_JOB_ID = int(os.environ.get("DBT_CLOUD_JOB_ID", "0"))


def notify_failure(context) -> None:
    """Punto de extensión: aquí se puede enviar un correo o un mensaje a Slack."""
    ti = context["task_instance"]
    log.error("FALLÓ %s.%s (intento %s)", ti.dag_id, ti.task_id, ti.try_number)


with DAG(
    dag_id="olist_dbt_daily",
    description="dbt build diario (Silver + Gold + tests) vía dbt Cloud",
    start_date=pendulum.datetime(2026, 10, 1, tz="America/La_Paz"),
    schedule="0 6 * * *",          # todos los días a las 06:00 hora de La Paz
    catchup=False,                 # no recupera días pasados
    max_active_runs=1,             # nunca dos ejecuciones a la vez
    default_args={"owner": "olist", "retries": 1, "retry_delay": timedelta(minutes=5),
                  "on_failure_callback": notify_failure},
    tags=["olist", "dbt-cloud", "diario"],
) as dag:

    DbtCloudRunJobOperator(
        task_id="dbt_cloud_build",
        dbt_cloud_conn_id=DBT_CLOUD_CONN_ID,
        job_id=DBT_CLOUD_JOB_ID,
        check_interval=30,
        timeout=3600,
        wait_for_termination=True,
        additional_run_config={"cause": "Disparado por Airflow (olist_dbt_daily)"},
        execution_timeout=timedelta(minutes=70),
    )
