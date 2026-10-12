
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__payment_gateways
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.PAYMENT_GATEWAY.payment_gateways
),

renamed as (
    select
        trim("GATEWAY_ID")::varchar as gateway_id,
        trim("GATEWAY_NAME")::varchar as gateway_name,
        trim("GATEWAY_TYPE")::varchar as gateway_type,
        trim("COUNTRY")::varchar as country,
        trim("CURRENCY")::varchar as currency,
        "ACTIVE_FLAG"::boolean as active_flag,
        trim("API_VERSION")::varchar as api_version,
        "SETTLEMENT_CYCLE_DAYS"::number as settlement_cycle_days
    from source
)

select * from renamed
qualify row_number() over (partition by gateway_id order by gateway_id) = 1
  );

