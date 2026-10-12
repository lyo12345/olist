
    
    

select
    order_status_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_order_status
where order_status_key is not null
group by order_status_key
having count(*) > 1


