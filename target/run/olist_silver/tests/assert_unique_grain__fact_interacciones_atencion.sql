
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_interacciones_atencion -> interaction_id
select interaction_id
from OLIST_SYNTHETIC_V2.gold.fact_interacciones_atencion
group by interaction_id
having count(*) > 1
  
  
      
    ) dbt_internal_test