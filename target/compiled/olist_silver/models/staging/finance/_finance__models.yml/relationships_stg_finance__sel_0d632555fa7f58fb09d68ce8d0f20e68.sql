
    
    

with child as (
    select seller_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_settlements
    where seller_id is not null
),

parent as (
    select seller_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_accounts
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


