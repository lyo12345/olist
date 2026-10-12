
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_ventas -> order_id, order_item_id
select order_id, order_item_id
from OLIST_SYNTHETIC_V2.gold.fact_ventas
group by order_id, order_item_id
having count(*) > 1
  
  
      
    ) dbt_internal_test