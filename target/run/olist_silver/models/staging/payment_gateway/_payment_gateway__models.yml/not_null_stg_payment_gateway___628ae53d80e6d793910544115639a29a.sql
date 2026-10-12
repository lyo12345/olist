
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select gateway_transaction_id
from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_transactions
where gateway_transaction_id is null



  
  
      
    ) dbt_internal_test