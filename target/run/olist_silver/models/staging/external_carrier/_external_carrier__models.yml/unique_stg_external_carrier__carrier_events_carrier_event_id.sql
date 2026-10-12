
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    carrier_event_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_events
where carrier_event_id is not null
group by carrier_event_id
having count(*) > 1



  
  
      
    ) dbt_internal_test