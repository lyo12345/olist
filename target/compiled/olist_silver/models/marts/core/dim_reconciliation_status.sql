
select md5(reconciliation_status) reconciliation_status_key, reconciliation_status estado,
       initcap(replace(reconciliation_status,'_',' ')) descripcion
from (select distinct reconciliation_status from OLIST_SYNTHETIC_V2.silver.stg_finance__financial_reconciliation)