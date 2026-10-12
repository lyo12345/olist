
    
    

select
    payment_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_payment
where payment_key is not null
group by payment_key
having count(*) > 1


