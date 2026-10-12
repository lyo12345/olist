
  
    

create or replace transient table OLIST_SYNTHETIC_V2.gold.dim_carrier
    
    
    
    
    

    as (
select md5(concat('TMS|',carrier_id)) carrier_key, carrier_id, 'TMS' source_system,
       carrier_name nombre_transportista, carrier_type tipo_transportista, region, service_level nivel_servicio,
       status estado
from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__carriers
union all
select md5(concat('EXTERNAL|',carrier_id)) carrier_key, carrier_id, 'EXTERNAL' source_system,
       carrier_name, carrier_type, region, service_level, iff(active_flag=1,'ACTIVO','INACTIVO') estado
from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carriers
    )
;


  