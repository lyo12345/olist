
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__supplier_performance
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.ERP_INVENTORY.supplier_performance
),

renamed as (
    select
        trim("SUPPLIER_ID")::varchar as supplier_id,
        "EVALUATION_DATE"::timestamp_ntz as evaluation_date,
        "DELIVERY_DELAY_DAYS"::float as delivery_delay_days,
        "QUALITY_SCORE"::float as quality_score,
        "FULFILLMENT_RATE"::float as fulfillment_rate,
        "DEFECT_RATE"::float as defect_rate,
        "SERVICE_SCORE"::float as service_score
    from source
)

select * from renamed
  );

