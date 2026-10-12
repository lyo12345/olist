
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    ticket_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_tickets
where ticket_id is not null
group by ticket_id
having count(*) > 1



  
  
      
    ) dbt_internal_test