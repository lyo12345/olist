
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_gateway_event_type
    
    
    
    
    

    as (
select md5(event_type) gateway_event_type_key, event_type tipo,
       case when upper(event_type) in ('AUTHORIZATION','AUTHORIZE') then 'autorizacion'
            when upper(event_type) in ('CAPTURE','CAPTURED') then 'captura'
            when upper(event_type) in ('REFUND','REFUNDED') then 'reembolso'
            else 'procesamiento' end etapa
from (select distinct event_type from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_events)
    )
;


  