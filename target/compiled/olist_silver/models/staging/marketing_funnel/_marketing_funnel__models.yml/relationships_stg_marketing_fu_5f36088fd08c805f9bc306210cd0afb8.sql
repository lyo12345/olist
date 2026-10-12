
    
    

with child as (
    select mql_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_marketing_funnel__closed_deals
    where mql_id is not null
),

parent as (
    select mql_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_marketing_funnel__mql
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


