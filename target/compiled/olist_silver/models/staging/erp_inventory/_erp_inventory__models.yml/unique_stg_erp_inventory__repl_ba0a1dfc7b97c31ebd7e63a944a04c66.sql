
    
    

select
    replenishment_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__replenishment_requests
where replenishment_id is not null
group by replenishment_id
having count(*) > 1


