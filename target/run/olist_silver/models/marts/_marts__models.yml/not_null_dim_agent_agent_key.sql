
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select agent_key
from OLIST_SYNTHETIC_V2.gold.dim_agent
where agent_key is null



  
  
      
    ) dbt_internal_test