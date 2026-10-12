
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select survey_id
from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_satisfaction
where survey_id is null



  
  
      
    ) dbt_internal_test