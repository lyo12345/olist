
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select incident_id
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__transport_incidents
where incident_id is null



  
  
      
    ) dbt_internal_test