


with source as (
    select * from OLIST_SYNTHETIC_V2.MARKETING_CAMPAIGNS.campaign_daily_metrics
),

renamed as (
    select
        trim("CAMPAIGN_ID")::varchar as campaign_id,
        "METRIC_DATE"::timestamp_ntz as metric_date,
        "IMPRESSIONS"::number as impressions,
        "CLICKS"::number as clicks,
        "LEADS"::number as leads,
        "CONVERSIONS"::number as conversions,
        "SPEND"::float as spend,
        "REVENUE"::float as revenue,
        "CONVERSION_RATE"::float as conversion_rate,
        "ROI"::float as roi
    from source
)

select * from renamed
qualify row_number() over (partition by campaign_id, metric_date order by campaign_id, metric_date) = 1