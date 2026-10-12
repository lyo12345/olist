
  create or replace   view OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_orders
  
  
  
  
  as (
    


with source as (
    select * from OLIST_SYNTHETIC_V2.ERP_INVENTORY.purchase_orders
),

renamed as (
    select
        trim("PURCHASE_ORDER_ID")::varchar as purchase_order_id,
        trim("SUPPLIER_ID")::varchar as supplier_id,
        trim("WAREHOUSE_ID")::varchar as warehouse_id,
        "ORDER_DATE"::timestamp_ntz as order_date,
        "EXPECTED_DATE"::timestamp_ntz as expected_date,
        "RECEIVED_DATE"::timestamp_ntz as received_date,
        trim("STATUS")::varchar as status,
        "TOTAL_AMOUNT"::float as total_amount
    from source
)

select * from renamed
qualify row_number() over (partition by purchase_order_id order by purchase_order_id) = 1
  );

