-- Grano esperado: fact_eventos_transportista -> carrier_event_id
select carrier_event_id
from OLIST_SYNTHETIC_V2.gold.fact_eventos_transportista
group by carrier_event_id
having count(*) > 1