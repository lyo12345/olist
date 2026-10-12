
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    gateway_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_gateway
where gateway_key is not null
group by gateway_key
having count(*) > 1



  
  
      
    ) dbt_internal_test