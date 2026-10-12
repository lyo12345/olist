


  

with source as (
    select * from OLIST_SYNTHETIC_V2.FINANCE.commissions
),

renamed as (
    select
        trim("COMMISSION_ID")::varchar as commission_id,
        trim("ORDER_ID")::varchar as order_id,
        trim("SELLER_ID")::varchar as seller_id,
        "COMMISSION_DATE"::timestamp_ntz as commission_date,
        trim("COMMISSION_TYPE")::varchar as commission_type,
        "COMMISSION_RATE"::float as commission_rate,
        "COMMISSION_AMOUNT"::float as commission_amount
    from source
)

select * from renamed
qualify row_number() over (partition by commission_id order by commission_id) = 1