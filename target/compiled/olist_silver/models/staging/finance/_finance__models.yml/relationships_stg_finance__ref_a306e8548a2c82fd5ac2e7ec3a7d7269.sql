
    
    

with child as (
    select order_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_finance__refunds
    where order_id is not null
),

parent as (
    select order_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_olist__orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


