
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__refunds_gateway
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.PAYMENT_GATEWAY.refunds_gateway
),

renamed as (
    select
        trim("REFUND_ID")::varchar as refund_id,
        trim("GATEWAY_TRANSACTION_ID")::varchar as gateway_transaction_id,
        trim("ORDER_ID")::varchar as order_id,
        "REFUND_TIMESTAMP"::timestamp_ntz as refund_timestamp,
        "REFUND_AMOUNT"::float as refund_amount,
        trim("REFUND_REASON")::varchar as refund_reason,
        trim("REFUND_STATUS")::varchar as refund_status
    from source
)

select * from renamed
qualify row_number() over (partition by refund_id order by refund_id) = 1
  );

