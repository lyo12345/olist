
    
    

select
    supplier_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__suppliers
where supplier_id is not null
group by supplier_id
having count(*) > 1


