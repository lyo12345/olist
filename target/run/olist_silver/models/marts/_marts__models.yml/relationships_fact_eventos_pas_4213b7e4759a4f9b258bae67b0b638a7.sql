
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select gateway_event_type_key as from_field
    from OLIST_SYNTHETIC_V2.gold.fact_eventos_pasarela
    where gateway_event_type_key is not null
),

parent as (
    select gateway_event_type_key as to_field
    from OLIST_SYNTHETIC_V2.gold.dim_gateway_event_type
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test