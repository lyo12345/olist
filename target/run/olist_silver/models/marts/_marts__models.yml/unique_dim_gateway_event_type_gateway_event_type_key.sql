
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    gateway_event_type_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_gateway_event_type
where gateway_event_type_key is not null
group by gateway_event_type_key
having count(*) > 1



  
  
      
    ) dbt_internal_test