
    
    

select
    seller_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_seller
where seller_key is not null
group by seller_key
having count(*) > 1


