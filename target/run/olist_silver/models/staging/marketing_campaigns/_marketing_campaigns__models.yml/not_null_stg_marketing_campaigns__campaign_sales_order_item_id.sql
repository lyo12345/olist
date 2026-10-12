
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_item_id
from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_sales
where order_item_id is null



  
  
      
    ) dbt_internal_test