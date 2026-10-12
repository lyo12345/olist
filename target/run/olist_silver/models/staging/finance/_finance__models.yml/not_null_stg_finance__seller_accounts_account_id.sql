
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select account_id
from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_accounts
where account_id is null



  
  
      
    ) dbt_internal_test