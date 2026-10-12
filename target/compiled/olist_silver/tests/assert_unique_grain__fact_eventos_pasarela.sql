-- Grano esperado: fact_eventos_pasarela -> gateway_event_id
select gateway_event_id
from OLIST_SYNTHETIC_V2.gold.fact_eventos_pasarela
group by gateway_event_id
having count(*) > 1