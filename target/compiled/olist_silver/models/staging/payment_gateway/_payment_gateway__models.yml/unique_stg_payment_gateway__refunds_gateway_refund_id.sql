
    
    

select
    refund_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__refunds_gateway
where refund_id is not null
group by refund_id
having count(*) > 1


