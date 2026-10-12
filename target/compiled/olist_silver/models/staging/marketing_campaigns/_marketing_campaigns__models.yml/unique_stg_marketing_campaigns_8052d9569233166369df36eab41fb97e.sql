
    
    

select
    campaign_channel_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_channels
where campaign_channel_id is not null
group by campaign_channel_id
having count(*) > 1


