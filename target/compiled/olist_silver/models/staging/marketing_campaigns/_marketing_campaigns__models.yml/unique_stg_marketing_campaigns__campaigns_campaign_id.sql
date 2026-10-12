
    
    

select
    campaign_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaigns
where campaign_id is not null
group by campaign_id
having count(*) > 1


