
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_campaign
    
    
    
    
    

    as (
select md5(campaign_id) campaign_key, campaign_id, campaign_name nombre_campana, campaign_type tipo_campana,
       objective objetivo, budget presupuesto, start_date fecha_inicio, end_date fecha_fin, status estado_campana
from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__campaigns
    )
;


  