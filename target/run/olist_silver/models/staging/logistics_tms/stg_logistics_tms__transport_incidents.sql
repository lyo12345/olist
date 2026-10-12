
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__transport_incidents
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.LOGISTICS_TMS.transport_incidents
),

renamed as (
    select
        trim("INCIDENT_ID")::varchar as incident_id,
        trim("SHIPMENT_ID")::varchar as shipment_id,
        "INCIDENT_DATE"::timestamp_ntz as incident_date,
        trim("INCIDENT_TYPE")::varchar as incident_type,
        trim("SEVERITY")::varchar as severity,
        trim("DESCRIPTION")::varchar as description,
        trim("RESOLUTION_STATUS")::varchar as resolution_status,
        "RESOLUTION_DATE"::timestamp_ntz as resolution_date
    from source
)

select * from renamed
qualify row_number() over (partition by incident_id order by incident_id) = 1
  );

