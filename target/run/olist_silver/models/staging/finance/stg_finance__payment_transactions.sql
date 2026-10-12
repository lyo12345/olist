
  
    

create or replace transient table OLIST_SYNTHETIC_V2.silver.stg_finance__payment_transactions
    
    
    
    
    

    as (


  

with source as (
    select * from OLIST_SYNTHETIC_V2.FINANCE.payment_transactions
),

renamed as (
    select
        trim("TRANSACTION_ID")::varchar as transaction_id,
        trim("ORDER_ID")::varchar as order_id,
        trim("SELLER_ID")::varchar as seller_id,
        "TRANSACTION_DATE"::timestamp_ntz as transaction_date,
        trim("PAYMENT_METHOD")::varchar as payment_method,
        trim("AUTHORIZATION_STATUS")::varchar as authorization_status,
        "AUTHORIZED_AMOUNT"::float as authorized_amount,
        "CAPTURED_AMOUNT"::float as captured_amount,
        "REFUNDED_AMOUNT"::float as refunded_amount,
        trim("TRANSACTION_STATUS")::varchar as transaction_status
    from source
)

select * from renamed
qualify row_number() over (partition by transaction_id order by transaction_id) = 1
    )
;


  