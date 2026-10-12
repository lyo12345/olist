
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select gateway_event_type_key
from OLIST_SYNTHETIC_V2.gold.dim_gateway_event_type
where gateway_event_type_key is null



  
  
      
    ) dbt_internal_test