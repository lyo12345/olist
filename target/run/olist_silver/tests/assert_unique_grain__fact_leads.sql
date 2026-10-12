
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_leads -> mql_id
select mql_id
from OLIST_SYNTHETIC_V2.gold.fact_leads
group by mql_id
having count(*) > 1
  
  
      
    ) dbt_internal_test