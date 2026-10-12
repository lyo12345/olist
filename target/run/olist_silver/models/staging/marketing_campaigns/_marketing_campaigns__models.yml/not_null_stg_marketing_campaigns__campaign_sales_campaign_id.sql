
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select campaign_id
from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_sales
where campaign_id is null



  
  
      
    ) dbt_internal_test