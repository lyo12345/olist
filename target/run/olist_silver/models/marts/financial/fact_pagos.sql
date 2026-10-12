
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.fact_pagos
    
    
    
    
    

    as (
with p as (select * from OLIST_SYNTHETIC_V2.silver.stg_olist__order_payments),
o as (select * from OLIST_SYNTHETIC_V2.silver.stg_olist__orders)
select
 p.order_id, p.payment_sequential,
 to_number(to_char(o.order_purchase_timestamp,'YYYYMMDD')) date_key,
 md5(o.customer_id) customer_key,
 md5(concat_ws('|',coalesce(p.payment_type,''),coalesce(p.payment_installments::varchar,''))) payment_key,
 md5(o.order_status) order_status_key,
 p.payment_value valor_pagado, 1 cantidad_pago, p.payment_installments cuotas
from p join o on p.order_id=o.order_id
    )
;


  