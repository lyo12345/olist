
    
    

select
    purchase_order_item_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_order_items
where purchase_order_item_id is not null
group by purchase_order_item_id
having count(*) > 1


