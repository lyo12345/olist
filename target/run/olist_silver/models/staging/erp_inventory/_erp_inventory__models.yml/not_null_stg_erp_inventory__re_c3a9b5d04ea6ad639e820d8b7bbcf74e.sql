
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select replenishment_id
from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__replenishment_requests
where replenishment_id is null



  
  
      
    ) dbt_internal_test