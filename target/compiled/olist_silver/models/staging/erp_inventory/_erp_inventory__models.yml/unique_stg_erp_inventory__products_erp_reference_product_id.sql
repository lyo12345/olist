
    
    

select
    product_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__products_erp_reference
where product_id is not null
group by product_id
having count(*) > 1


