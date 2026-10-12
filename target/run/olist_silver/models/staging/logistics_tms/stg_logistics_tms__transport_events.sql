
  
    

create or replace transient table OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__transport_events
    
    
    
    
    

    as (


  

with source as (
    select * from OLIST_SYNTHETIC_V2.LOGISTICS_TMS.transport_events
),

renamed as (
    select
        trim("EVENT_ID")::varchar as event_id,
        trim("SHIPMENT_ID")::varchar as shipment_id,
        "EVENT_TIMESTAMP"::timestamp_ntz as event_timestamp,
        trim("EVENT_TYPE")::varchar as event_type,
        trim("LOCATION")::varchar as location,
        "LATITUDE"::float as latitude,
        "LONGITUDE"::float as longitude,
        trim("EVENT_STATUS")::varchar as event_status,
        "DELAY_MINUTES"::float as delay_minutes
    from source
)

select * from renamed
qualify row_number() over (partition by event_id order by event_id) = 1
    )
;


  