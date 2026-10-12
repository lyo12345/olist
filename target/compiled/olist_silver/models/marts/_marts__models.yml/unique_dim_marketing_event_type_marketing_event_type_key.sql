
    
    

select
    marketing_event_type_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_marketing_event_type
where marketing_event_type_key is not null
group by marketing_event_type_key
having count(*) > 1


