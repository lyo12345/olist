
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select evaluation_date
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__carrier_performance
where evaluation_date is null



  
  
      
    ) dbt_internal_test