
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select transaction_status_key
from OLIST_SYNTHETIC_V2.gold.dim_transaction_status
where transaction_status_key is null



  
  
      
    ) dbt_internal_test