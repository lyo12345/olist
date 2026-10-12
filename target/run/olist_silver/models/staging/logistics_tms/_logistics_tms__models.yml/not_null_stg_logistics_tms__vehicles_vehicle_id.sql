
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select vehicle_id
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__vehicles
where vehicle_id is null



  
  
      
    ) dbt_internal_test