
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select commission_id
from OLIST_SYNTHETIC_V2.silver.stg_finance__commissions
where commission_id is null



  
  
      
    ) dbt_internal_test