
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    crm_customer_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__customers_crm
where crm_customer_id is not null
group by crm_customer_id
having count(*) > 1



  
  
      
    ) dbt_internal_test