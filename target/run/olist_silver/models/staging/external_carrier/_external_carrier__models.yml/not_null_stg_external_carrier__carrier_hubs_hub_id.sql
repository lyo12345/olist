
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select hub_id
from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_hubs
where hub_id is null



  
  
      
    ) dbt_internal_test