
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_incidencias_transportista -> incident_id
select incident_id
from OLIST_SYNTHETIC_V2.gold.fact_incidencias_transportista
group by incident_id
having count(*) > 1
  
  
      
    ) dbt_internal_test