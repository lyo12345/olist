
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select shipment_id
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__shipments
where shipment_id is null



  
  
      
    ) dbt_internal_test