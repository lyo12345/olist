
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    ticket_type_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_ticket_type
where ticket_type_key is not null
group by ticket_type_key
having count(*) > 1



  
  
      
    ) dbt_internal_test