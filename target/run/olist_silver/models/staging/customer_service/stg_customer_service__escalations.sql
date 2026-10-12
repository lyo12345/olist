
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_customer_service__escalations
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.CUSTOMER_SERVICE.escalations
),

renamed as (
    select
        trim("ESCALATION_ID")::varchar as escalation_id,
        trim("TICKET_ID")::varchar as ticket_id,
        "ESCALATION_DATE"::timestamp_ntz as escalation_date,
        trim("ESCALATION_REASON")::varchar as escalation_reason,
        trim("ESCALATION_LEVEL")::varchar as escalation_level,
        "RESOLVED_DATE"::timestamp_ntz as resolved_date,
        trim("FINAL_STATUS")::varchar as final_status
    from source
)

select * from renamed
qualify row_number() over (partition by escalation_id order by escalation_id) = 1
  );

