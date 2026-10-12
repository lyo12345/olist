
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__carriers
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.LOGISTICS_TMS.carriers
),

renamed as (
    select
        trim("CARRIER_ID")::varchar as carrier_id,
        trim("CARRIER_NAME")::varchar as carrier_name,
        trim("CARRIER_TYPE")::varchar as carrier_type,
        upper(trim("REGION")) as region,
        trim("SERVICE_LEVEL")::varchar as service_level,
        trim("STATUS")::varchar as status
    from source
)

select * from renamed
  );

