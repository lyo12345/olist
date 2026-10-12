
    
    

select
    survey_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_satisfaction
where survey_id is not null
group by survey_id
having count(*) > 1


