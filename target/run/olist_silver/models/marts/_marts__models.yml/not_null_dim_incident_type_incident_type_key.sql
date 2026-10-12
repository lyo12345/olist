
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select incident_type_key
from OLIST_SYNTHETIC_V2.gold.dim_incident_type
where incident_type_key is null



  
  
      
    ) dbt_internal_test