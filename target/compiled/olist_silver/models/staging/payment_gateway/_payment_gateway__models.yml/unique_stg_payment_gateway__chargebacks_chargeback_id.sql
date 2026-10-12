
    
    

select
    chargeback_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__chargebacks
where chargeback_id is not null
group by chargeback_id
having count(*) > 1


