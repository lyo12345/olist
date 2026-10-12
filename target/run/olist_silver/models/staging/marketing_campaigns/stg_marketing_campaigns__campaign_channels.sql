
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_channels
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.MARKETING_CAMPAIGNS.campaign_channels
),

renamed as (
    select
        trim("CAMPAIGN_CHANNEL_ID")::varchar as campaign_channel_id,
        trim("CAMPAIGN_ID")::varchar as campaign_id,
        trim("CHANNEL")::varchar as channel,
        "PLANNED_BUDGET"::float as planned_budget,
        "ACTUAL_BUDGET"::float as actual_budget
    from source
)

select * from renamed
qualify row_number() over (partition by campaign_channel_id order by campaign_channel_id) = 1
  );

