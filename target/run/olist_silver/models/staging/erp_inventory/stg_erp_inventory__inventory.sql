
  
    

create or replace transient table OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__inventory
    
    
    
    
    

    as (


  

with source as (
    select * from OLIST_SYNTHETIC_V2.ERP_INVENTORY.inventory
),

renamed as (
    select
        trim("INVENTORY_ID")::varchar as inventory_id,
        trim("PRODUCT_ID")::varchar as product_id,
        trim("WAREHOUSE_ID")::varchar as warehouse_id,
        "SNAPSHOT_DATE"::timestamp_ntz as snapshot_date,
        "OPENING_STOCK"::number as opening_stock,
        "RECEIVED_UNITS"::number as received_units,
        "SOLD_UNITS"::number as sold_units,
        "RESERVED_UNITS"::number as reserved_units,
        "DAMAGED_UNITS"::number as damaged_units,
        "ADJUSTED_UNITS"::number as adjusted_units,
        "CLOSING_STOCK"::number as closing_stock,
        "REORDER_POINT"::number as reorder_point,
        "SAFETY_STOCK"::number as safety_stock,
        "STOCKOUT_FLAG"::number as stockout_flag
    from source
)

select * from renamed
qualify row_number() over (partition by inventory_id order by inventory_id) = 1
    )
;


  