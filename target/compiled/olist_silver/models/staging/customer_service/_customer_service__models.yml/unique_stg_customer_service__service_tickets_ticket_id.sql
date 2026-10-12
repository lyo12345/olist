
    
    

select
    ticket_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_tickets
where ticket_id is not null
group by ticket_id
having count(*) > 1


