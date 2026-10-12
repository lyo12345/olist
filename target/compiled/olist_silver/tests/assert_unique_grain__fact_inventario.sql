-- Grano esperado: fact_inventario -> inventory_id
select inventory_id
from OLIST_SYNTHETIC_V2.gold.fact_inventario
group by inventory_id
having count(*) > 1