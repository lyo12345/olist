
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select attempt_id
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__delivery_attempts
where attempt_id is null



  
  
      
    ) dbt_internal_test