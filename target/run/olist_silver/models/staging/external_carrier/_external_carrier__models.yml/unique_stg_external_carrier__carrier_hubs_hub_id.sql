
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    hub_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_hubs
where hub_id is not null
group by hub_id
having count(*) > 1



  
  
      
    ) dbt_internal_test