-- Grano esperado: fact_liquidaciones -> settlement_id
select settlement_id
from OLIST_SYNTHETIC_V2.gold.fact_liquidaciones
group by settlement_id
having count(*) > 1