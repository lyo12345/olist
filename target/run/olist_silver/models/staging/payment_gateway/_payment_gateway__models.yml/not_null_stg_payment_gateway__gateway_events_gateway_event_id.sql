
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select gateway_event_id
from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_events
where gateway_event_id is null



  
  
      
    ) dbt_internal_test