
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Verifica que la PK compuesta (review_id, order_id) de stg_olist__order_reviews sea unica.
-- El test PASA si esta consulta no devuelve filas.
select review_id, order_id, count(*) as n
from OLIST_SYNTHETIC_V2.silver.stg_olist__order_reviews
group by review_id, order_id
having count(*) > 1
  
  
      
    ) dbt_internal_test