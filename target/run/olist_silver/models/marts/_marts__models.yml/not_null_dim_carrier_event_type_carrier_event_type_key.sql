
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select carrier_event_type_key
from OLIST_SYNTHETIC_V2.gold.dim_carrier_event_type
where carrier_event_type_key is null



  
  
      
    ) dbt_internal_test