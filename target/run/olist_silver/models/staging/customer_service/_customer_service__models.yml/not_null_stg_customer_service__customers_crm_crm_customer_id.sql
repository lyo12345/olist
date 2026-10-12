
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select crm_customer_id
from OLIST_SYNTHETIC_V2.silver.stg_customer_service__customers_crm
where crm_customer_id is null



  
  
      
    ) dbt_internal_test