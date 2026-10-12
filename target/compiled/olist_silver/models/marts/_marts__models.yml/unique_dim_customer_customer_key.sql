
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_customer
where customer_key is not null
group by customer_key
having count(*) > 1


