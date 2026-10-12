
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_ticket_type
    
    
    
    
    

    as (
select distinct
 md5(concat_ws('|',coalesce(issue_category,''),coalesce(issue_subcategory,''),coalesce(priority,''))) ticket_type_key,
 issue_category categoria, issue_subcategory subcategoria, priority prioridad
from OLIST_SYNTHETIC_V2.silver.stg_customer_service__service_tickets
    )
;


  