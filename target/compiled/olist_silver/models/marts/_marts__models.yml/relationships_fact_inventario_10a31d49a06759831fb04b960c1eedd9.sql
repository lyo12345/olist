
    
    

with child as (
    select stock_status_key as from_field
    from OLIST_SYNTHETIC_V2.gold.fact_inventario
    where stock_status_key is not null
),

parent as (
    select stock_status_key as to_field
    from OLIST_SYNTHETIC_V2.gold.dim_stock_status
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


