
  
    

create or replace transient table OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_order_items
    
    
    
    
    

    as (


  

with source as (
    select * from OLIST_SYNTHETIC_V2.ERP_INVENTORY.purchase_order_items
),

renamed as (
    select
        trim("PURCHASE_ORDER_ID")::varchar as purchase_order_id,
        trim("PURCHASE_ORDER_ITEM_ID")::varchar as purchase_order_item_id,
        trim("PRODUCT_ID")::varchar as product_id,
        "QUANTITY_ORDERED"::number as quantity_ordered,
        "QUANTITY_RECEIVED"::float as quantity_received,
        "UNIT_COST"::float as unit_cost,
        "DISCOUNT"::float as discount,
        "TAX"::float as tax,
        "LINE_TOTAL"::float as line_total
    from source
)

select * from renamed
qualify row_number() over (partition by purchase_order_item_id order by purchase_order_item_id) = 1
    )
;


  