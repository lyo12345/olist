
    
    

select
    event_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_events
where event_id is not null
group by event_id
having count(*) > 1


