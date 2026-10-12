-- Grano esperado: fact_logistica -> shipment_id
select shipment_id
from OLIST_SYNTHETIC_V2.gold.fact_logistica
group by shipment_id
having count(*) > 1