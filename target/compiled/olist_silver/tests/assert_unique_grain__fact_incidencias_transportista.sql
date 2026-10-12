-- Grano esperado: fact_incidencias_transportista -> incident_id
select incident_id
from OLIST_SYNTHETIC_V2.gold.fact_incidencias_transportista
group by incident_id
having count(*) > 1