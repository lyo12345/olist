-- Grano esperado: fact_atencion -> ticket_id
select ticket_id
from OLIST_SYNTHETIC_V2.gold.fact_atencion
group by ticket_id
having count(*) > 1