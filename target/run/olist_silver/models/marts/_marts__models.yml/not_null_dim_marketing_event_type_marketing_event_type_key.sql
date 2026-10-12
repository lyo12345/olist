
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select marketing_event_type_key
from OLIST_SYNTHETIC_V2.gold.dim_marketing_event_type
where marketing_event_type_key is null



  
  
      
    ) dbt_internal_test