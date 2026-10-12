
    
    

with child as (
    select purchase_order_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_order_items
    where purchase_order_id is not null
),

parent as (
    select purchase_order_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


