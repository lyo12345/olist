
    
    

with child as (
    select incident_type_key as from_field
    from OLIST_SYNTHETIC_V2.gold.fact_incidencias_transportista
    where incident_type_key is not null
),

parent as (
    select incident_type_key as to_field
    from OLIST_SYNTHETIC_V2.gold.dim_incident_type
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


