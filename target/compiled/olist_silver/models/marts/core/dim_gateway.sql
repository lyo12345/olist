
select md5(gateway_id) gateway_key, gateway_id, gateway_name nombre_gateway, gateway_type tipo_gateway,
       country pais, currency moneda, active_flag estado_gateway, api_version, settlement_cycle_days ciclo_liquidacion_dias
from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__payment_gateways