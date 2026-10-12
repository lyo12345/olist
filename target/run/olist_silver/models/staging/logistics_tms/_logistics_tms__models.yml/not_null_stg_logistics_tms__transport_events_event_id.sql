
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select event_id
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__transport_events
where event_id is null



  
  
      
    ) dbt_internal_test