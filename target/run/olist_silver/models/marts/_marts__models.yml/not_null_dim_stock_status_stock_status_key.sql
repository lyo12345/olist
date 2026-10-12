
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select stock_status_key
from OLIST_SYNTHETIC_V2.gold.dim_stock_status
where stock_status_key is null



  
  
      
    ) dbt_internal_test