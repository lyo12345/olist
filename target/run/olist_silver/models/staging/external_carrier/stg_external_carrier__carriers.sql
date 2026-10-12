
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carriers
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.EXTERNAL_CARRIER.carriers
),

renamed as (
    select
        trim("CARRIER_ID")::varchar as carrier_id,
        trim("CARRIER_NAME")::varchar as carrier_name,
        trim("CARRIER_TYPE")::varchar as carrier_type,
        trim("SERVICE_LEVEL")::varchar as service_level,
        upper(trim("REGION")) as region,
        "ACTIVE_FLAG"::number as active_flag
    from source
)

select * from renamed
  );

