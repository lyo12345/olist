
    
    

select
    refund_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_finance__refunds
where refund_id is not null
group by refund_id
having count(*) > 1


