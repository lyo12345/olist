
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select warehouse_key
from OLIST_SYNTHETIC_V2.gold.dim_warehouse
where warehouse_key is null



  
  
      
    ) dbt_internal_test