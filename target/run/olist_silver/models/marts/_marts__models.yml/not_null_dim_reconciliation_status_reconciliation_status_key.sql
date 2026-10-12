
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select reconciliation_status_key
from OLIST_SYNTHETIC_V2.gold.dim_reconciliation_status
where reconciliation_status_key is null



  
  
      
    ) dbt_internal_test