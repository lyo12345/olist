
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_eventos_marketing -> event_id
select event_id
from OLIST_SYNTHETIC_V2.gold.fact_eventos_marketing
group by event_id
having count(*) > 1
  
  
      
    ) dbt_internal_test