
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select agent_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_customer_service__ticket_interactions
    where agent_id is not null
),

parent as (
    select agent_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_agents
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test