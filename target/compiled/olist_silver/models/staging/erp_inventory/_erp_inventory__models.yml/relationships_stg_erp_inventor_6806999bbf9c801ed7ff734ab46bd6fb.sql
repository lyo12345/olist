
    
    

with child as (
    select supplier_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__product_cost_history
    where supplier_id is not null
),

parent as (
    select supplier_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__suppliers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


