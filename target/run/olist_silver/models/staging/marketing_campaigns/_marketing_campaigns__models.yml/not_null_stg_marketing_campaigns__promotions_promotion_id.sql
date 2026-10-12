
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select promotion_id
from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__promotions
where promotion_id is null



  
  
      
    ) dbt_internal_test