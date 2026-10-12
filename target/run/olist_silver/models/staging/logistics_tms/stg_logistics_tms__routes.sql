
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__routes
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.LOGISTICS_TMS.routes
),

renamed as (
    select
        trim("ROUTE_ID")::varchar as route_id,
        upper(trim("ORIGIN_STATE")) as origin_state,
        initcap(trim("ORIGIN_CITY")) as origin_city,
        upper(trim("DESTINATION_STATE")) as destination_state,
        initcap(trim("DESTINATION_CITY")) as destination_city,
        "DISTANCE_KM"::float as distance_km,
        "ESTIMATED_TRANSIT_DAYS"::float as estimated_transit_days,
        trim("ROUTE_TYPE")::varchar as route_type
    from source
)

select * from renamed
qualify row_number() over (partition by route_id order by route_id) = 1
  );

