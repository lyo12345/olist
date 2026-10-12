
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select purchase_order_item_id
from OLIST_SYNTHETIC_V2.silver.stg_erp_inventory__purchase_order_items
where purchase_order_item_id is null



  
  
      
    ) dbt_internal_test