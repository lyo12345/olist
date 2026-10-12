
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_transaction_status
    
    
    
    
    

    as (
select md5(concat_ws('|',autorizacion,captura)) transaction_status_key,
       autorizacion, captura,
       autorizacion || ' / ' || captura estado
from (
  select distinct authorization_status autorizacion, capture_status captura
  from OLIST_SYNTHETIC_V2.silver.stg_payment_gateway__gateway_transactions
)
    )
;


  