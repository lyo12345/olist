-- Grano esperado: fact_interacciones_atencion -> interaction_id
select interaction_id
from OLIST_SYNTHETIC_V2.gold.fact_interacciones_atencion
group by interaction_id
having count(*) > 1