
    
    

select
    movement_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__inventory_movements
where movement_id is not null
group by movement_id
having count(*) > 1


