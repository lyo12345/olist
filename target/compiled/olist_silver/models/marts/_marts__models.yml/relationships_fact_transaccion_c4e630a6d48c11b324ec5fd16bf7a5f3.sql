
    
    

with child as (
    select gateway_key as from_field
    from OLIST_SYNTHETIC_V2.gold.fact_transacciones_pasarela
    where gateway_key is not null
),

parent as (
    select gateway_key as to_field
    from OLIST_SYNTHETIC_V2.gold.dim_gateway
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


