
    
    

select
    gateway_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__payment_gateways
where gateway_id is not null
group by gateway_id
having count(*) > 1


