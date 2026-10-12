
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_inventario -> inventory_id
select inventory_id
from OLIST_SYNTHETIC_V2.gold.fact_inventario
group by inventory_id
having count(*) > 1
  
  
      
    ) dbt_internal_test