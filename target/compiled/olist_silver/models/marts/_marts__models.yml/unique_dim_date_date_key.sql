
    
    

select
    date_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_date
where date_key is not null
group by date_key
having count(*) > 1


