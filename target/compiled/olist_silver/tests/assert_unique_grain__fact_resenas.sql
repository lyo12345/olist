-- Grano esperado: fact_resenas -> review_id
select review_id
from OLIST_SYNTHETIC_V2.gold.fact_resenas
group by review_id
having count(*) > 1