
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_supplier
    
    
    
    
    

    as (
select md5(supplier_id) supplier_key, supplier_id, supplier_name nombre_proveedor, supplier_type tipo_proveedor,
       city ciudad, state estado, country pais, registration_date fecha_registro, status estado_proveedor,
       lead_time_days dias_abastecimiento, payment_terms condiciones_pago, supplier_rating calificacion
from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__suppliers
    )
;


  