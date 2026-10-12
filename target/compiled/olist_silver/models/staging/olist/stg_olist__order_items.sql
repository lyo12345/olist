


  

with source as (
    select * from OLIST_SYNTHETIC_V2.OLIST.order_items
),

renamed as (
    select
        trim("ORDER_ID")::varchar as order_id,
        "ORDER_ITEM_ID"::number as order_item_id,
        trim("PRODUCT_ID")::varchar as product_id,
        trim("SELLER_ID")::varchar as seller_id,
        "SHIPPING_LIMIT_DATE"::timestamp_ntz as shipping_limit_date,
        "PRICE"::float as price,
        "FREIGHT_VALUE"::float as freight_value
    from source
)

select * from renamed
qualify row_number() over (partition by order_id, order_item_id order by order_id, order_item_id) = 1