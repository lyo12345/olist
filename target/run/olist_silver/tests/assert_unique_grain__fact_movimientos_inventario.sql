
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_movimientos_inventario -> movement_id
select movement_id
from OLIST_SYNTHETIC_V2.gold.fact_movimientos_inventario
group by movement_id
having count(*) > 1
  
  
      
    ) dbt_internal_test