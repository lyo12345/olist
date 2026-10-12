
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select payment_sequential
from OLIST_SYNTHETIC_V2.silver.stg_olist__order_payments
where payment_sequential is null



  
  
      
    ) dbt_internal_test