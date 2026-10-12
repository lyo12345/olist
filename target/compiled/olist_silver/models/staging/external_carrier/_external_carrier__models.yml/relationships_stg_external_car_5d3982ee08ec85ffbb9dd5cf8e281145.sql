
    
    

with child as (
    select hub_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_events
    where hub_id is not null
),

parent as (
    select hub_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_hubs
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


