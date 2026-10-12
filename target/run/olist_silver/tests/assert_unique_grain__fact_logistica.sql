
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Grano esperado: fact_logistica -> shipment_id
select shipment_id
from OLIST_SYNTHETIC_V2.gold.fact_logistica
group by shipment_id
having count(*) > 1
  
  
      
    ) dbt_internal_test