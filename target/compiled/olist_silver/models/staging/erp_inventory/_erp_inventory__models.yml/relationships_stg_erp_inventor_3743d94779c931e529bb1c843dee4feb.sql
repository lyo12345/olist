
    
    

with child as (
    select product_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__replenishment_requests
    where product_id is not null
),

parent as (
    select product_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__products_erp_reference
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


