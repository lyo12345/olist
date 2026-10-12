
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    audience_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_audience
where audience_id is not null
group by audience_id
having count(*) > 1



  
  
      
    ) dbt_internal_test