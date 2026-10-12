-- Grano esperado: fact_leads -> mql_id
select mql_id
from OLIST_SYNTHETIC_V2.gold.fact_leads
group by mql_id
having count(*) > 1