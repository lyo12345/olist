
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_agent
    
    
    
    
    

    as (
select md5(agent_id) agent_key, agent_id, agent_name nombre_agente, team equipo, region,
       hiring_date fecha_contratacion, status estado, experience_level nivel_experiencia
from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_agents
    )
;


  