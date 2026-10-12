
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select chargeback_id
from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__chargebacks
where chargeback_id is null



  
  
      
    ) dbt_internal_test