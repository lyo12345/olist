
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    transaction_status_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_transaction_status
where transaction_status_key is not null
group by transaction_status_key
having count(*) > 1



  
  
      
    ) dbt_internal_test