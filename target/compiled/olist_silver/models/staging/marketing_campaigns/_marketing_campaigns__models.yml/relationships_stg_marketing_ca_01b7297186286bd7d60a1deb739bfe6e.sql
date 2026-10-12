
    
    

with child as (
    select campaign_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__promotions
    where campaign_id is not null
),

parent as (
    select campaign_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaigns
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


