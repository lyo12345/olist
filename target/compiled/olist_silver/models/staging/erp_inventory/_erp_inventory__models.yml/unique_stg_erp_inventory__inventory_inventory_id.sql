
    
    

select
    inventory_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__inventory
where inventory_id is not null
group by inventory_id
having count(*) > 1


