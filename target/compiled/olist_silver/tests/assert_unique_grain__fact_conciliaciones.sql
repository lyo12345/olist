-- Grano esperado: fact_conciliaciones -> reconciliation_id
select reconciliation_id
from OLIST_SYNTHETIC_V2.gold.fact_conciliaciones
group by reconciliation_id
having count(*) > 1