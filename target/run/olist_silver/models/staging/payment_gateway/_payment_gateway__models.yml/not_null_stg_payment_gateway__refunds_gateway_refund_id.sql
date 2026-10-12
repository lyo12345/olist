
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select refund_id
from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__refunds_gateway
where refund_id is null



  
  
      
    ) dbt_internal_test