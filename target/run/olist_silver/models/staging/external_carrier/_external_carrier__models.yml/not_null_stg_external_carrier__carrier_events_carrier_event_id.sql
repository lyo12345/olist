
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select carrier_event_id
from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_events
where carrier_event_id is null



  
  
      
    ) dbt_internal_test