
    
    

select
    escalation_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__escalations
where escalation_id is not null
group by escalation_id
having count(*) > 1


