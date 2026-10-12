
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select campaign_key
from OLIST_SYNTHETIC_V2.gold.dim_campaign
where campaign_key is null



  
  
      
    ) dbt_internal_test