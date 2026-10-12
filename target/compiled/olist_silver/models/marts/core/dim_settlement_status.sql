
select md5(settlement_status) settlement_status_key, settlement_status estado,
       initcap(replace(settlement_status,'_',' ')) descripcion
from (select distinct settlement_status from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_settlements)