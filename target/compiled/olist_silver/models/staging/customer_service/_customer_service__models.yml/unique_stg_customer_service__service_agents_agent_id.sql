
    
    

select
    agent_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_agents
where agent_id is not null
group by agent_id
having count(*) > 1


