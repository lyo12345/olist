
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Verifica que la PK compuesta (order_id, order_item_id) de stg_olist__order_items sea unica.
-- El test PASA si esta consulta no devuelve filas.
select order_id, order_item_id, count(*) as n
from OLIST_SYNTHETIC_V2.silver.stg_olist__order_items
group by order_id, order_item_id
having count(*) > 1
  
  
      
    ) dbt_internal_test