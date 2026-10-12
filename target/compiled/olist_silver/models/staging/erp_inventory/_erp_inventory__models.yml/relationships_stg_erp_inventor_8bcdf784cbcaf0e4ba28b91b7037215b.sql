
    
    

with child as (
    select warehouse_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__inventory_movements
    where warehouse_id is not null
),

parent as (
    select warehouse_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__warehouses
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


