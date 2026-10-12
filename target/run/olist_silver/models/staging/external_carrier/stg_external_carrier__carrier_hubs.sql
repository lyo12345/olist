
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_hubs
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.EXTERNAL_CARRIER.carrier_hubs
),

renamed as (
    select
        trim("HUB_ID")::varchar as hub_id,
        trim("HUB_NAME")::varchar as hub_name,
        initcap(trim("CITY")) as city,
        upper(trim("STATE")) as state,
        upper(trim("REGION")) as region,
        "LATITUDE"::float as latitude,
        "LONGITUDE"::float as longitude
    from source
)

select * from renamed
qualify row_number() over (partition by hub_id order by hub_id) = 1
  );

