
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    gateway_event_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_events
where gateway_event_id is not null
group by gateway_event_id
having count(*) > 1



  
  
      
    ) dbt_internal_test