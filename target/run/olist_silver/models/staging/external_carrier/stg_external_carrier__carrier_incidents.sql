
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_incidents
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.EXTERNAL_CARRIER.carrier_incidents
),

renamed as (
    select
        trim("INCIDENT_ID")::varchar as incident_id,
        trim("SHIPMENT_ID")::varchar as shipment_id,
        trim("CARRIER_ID")::varchar as carrier_id,
        trim("INCIDENT_TYPE")::varchar as incident_type,
        "INCIDENT_TIMESTAMP"::timestamp_ntz as incident_timestamp,
        trim("SEVERITY")::varchar as severity,
        trim("RESOLUTION_STATUS")::varchar as resolution_status,
        "RESOLUTION_TIMESTAMP"::timestamp_ntz as resolution_timestamp
    from source
)

select * from renamed
qualify row_number() over (partition by incident_id order by incident_id) = 1
  );

