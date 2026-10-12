
    
    

select
    warehouse_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__warehouses
where warehouse_id is not null
group by warehouse_id
having count(*) > 1


