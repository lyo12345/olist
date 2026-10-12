
    
    

with child as (
    select gateway_transaction_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_events
    where gateway_transaction_id is not null
),

parent as (
    select gateway_transaction_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_transactions
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


