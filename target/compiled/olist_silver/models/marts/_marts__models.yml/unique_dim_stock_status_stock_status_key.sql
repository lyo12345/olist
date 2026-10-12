
    
    

select
    stock_status_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_stock_status
where stock_status_key is not null
group by stock_status_key
having count(*) > 1


