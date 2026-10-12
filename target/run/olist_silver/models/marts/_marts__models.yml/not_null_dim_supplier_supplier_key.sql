
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select supplier_key
from OLIST_SYNTHETIC_V2.gold.dim_supplier
where supplier_key is null



  
  
      
    ) dbt_internal_test