
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_marketing_event_type
    
    
    
    
    

    as (
select md5(event_type) marketing_event_type_key, event_type tipo, 
       case when upper(event_type) in ('CLICK','IMPRESSION','VIEW') then 'interaccion'
            when upper(event_type) in ('LEAD','CONVERSION') then 'conversion' else 'otro' end etapa
from (select distinct event_type from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaign_events)
    )
;


  