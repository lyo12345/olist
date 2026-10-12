
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    escalation_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__escalations
where escalation_id is not null
group by escalation_id
having count(*) > 1



  
  
      
    ) dbt_internal_test