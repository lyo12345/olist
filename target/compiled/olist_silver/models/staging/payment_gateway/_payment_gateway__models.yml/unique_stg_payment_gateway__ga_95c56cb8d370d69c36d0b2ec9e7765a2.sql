
    
    

select
    gateway_transaction_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_transactions
where gateway_transaction_id is not null
group by gateway_transaction_id
having count(*) > 1


