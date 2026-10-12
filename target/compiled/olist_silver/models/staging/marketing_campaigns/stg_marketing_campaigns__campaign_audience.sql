


  

with source as (
    select * from OLIST_SYNTHETIC_V2.MARKETING_CAMPAIGNS.campaign_audience
),

renamed as (
    select
        trim("AUDIENCE_ID")::varchar as audience_id,
        trim("CAMPAIGN_ID")::varchar as campaign_id,
        trim("CUSTOMER_SEGMENT")::varchar as customer_segment,
        upper(trim("REGION")) as region,
        trim("CATEGORY")::varchar as category,
        "AUDIENCE_SIZE"::number as audience_size
    from source
)

select * from renamed
qualify row_number() over (partition by audience_id order by audience_id) = 1