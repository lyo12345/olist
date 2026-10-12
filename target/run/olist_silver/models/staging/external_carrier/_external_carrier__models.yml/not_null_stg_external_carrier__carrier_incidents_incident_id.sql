
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select incident_id
from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_incidents
where incident_id is null



  
  
      
    ) dbt_internal_test