
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select interaction_id
from OLIST_SYNTHETIC_V2.silver.stg_customer_service__ticket_interactions
where interaction_id is null



  
  
      
    ) dbt_internal_test