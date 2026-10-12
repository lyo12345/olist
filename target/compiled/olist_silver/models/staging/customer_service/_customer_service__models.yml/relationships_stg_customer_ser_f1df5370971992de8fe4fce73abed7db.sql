
    
    

with child as (
    select ticket_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_customer_service__ticket_interactions
    where ticket_id is not null
),

parent as (
    select ticket_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_tickets
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


