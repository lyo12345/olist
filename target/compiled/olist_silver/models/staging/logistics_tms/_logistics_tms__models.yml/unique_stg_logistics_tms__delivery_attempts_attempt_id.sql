
    
    

select
    attempt_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__delivery_attempts
where attempt_id is not null
group by attempt_id
having count(*) > 1


