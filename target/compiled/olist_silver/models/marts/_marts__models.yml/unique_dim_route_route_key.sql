
    
    

select
    route_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_route
where route_key is not null
group by route_key
having count(*) > 1


