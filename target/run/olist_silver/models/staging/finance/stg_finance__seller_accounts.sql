
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_finance__seller_accounts
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.FINANCE.seller_accounts
),

renamed as (
    select
        trim("ACCOUNT_ID")::varchar as account_id,
        trim("SELLER_ID")::varchar as seller_id,
        "ACCOUNT_OPEN_DATE"::timestamp_ntz as account_open_date,
        trim("ACCOUNT_STATUS")::varchar as account_status,
        trim("SETTLEMENT_FREQUENCY")::varchar as settlement_frequency,
        "COMMISSION_RATE"::float as commission_rate
    from source
)

select * from renamed
qualify row_number() over (partition by account_id order by account_id) = 1
  );

