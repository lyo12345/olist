
    
    

with child as (
    select campaign_key as from_field
    from OLIST_SYNTHETIC_V2.gold.fact_eventos_marketing
    where campaign_key is not null
),

parent as (
    select campaign_key as to_field
    from OLIST_SYNTHETIC_V2.gold.dim_campaign
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


