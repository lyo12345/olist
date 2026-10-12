
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select product_id
from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__products_erp_reference
where product_id is null



  
  
      
    ) dbt_internal_test