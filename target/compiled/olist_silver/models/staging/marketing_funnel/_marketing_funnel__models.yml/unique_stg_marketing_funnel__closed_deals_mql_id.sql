
    
    

select
    mql_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_funnel__closed_deals
where mql_id is not null
group by mql_id
having count(*) > 1


