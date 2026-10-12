


  

with source as (
    select * from OLIST_SYNTHETIC_V2.MARKETING_CAMPAIGNS.campaign_sales
),

renamed as (
    select
        trim("CAMPAIGN_ID")::varchar as campaign_id,
        trim("ORDER_ID")::varchar as order_id,
        "ORDER_ITEM_ID"::number as order_item_id,
        trim("PRODUCT_ID")::varchar as product_id,
        trim("SELLER_ID")::varchar as seller_id,
        trim("ATTRIBUTION_TYPE")::varchar as attribution_type,
        "ATTRIBUTED_REVENUE"::float as attributed_revenue,
        "DISCOUNT_AMOUNT"::float as discount_amount
    from source
)

select * from renamed
qualify row_number() over (partition by campaign_id, order_id, order_item_id order by campaign_id, order_id, order_item_id) = 1