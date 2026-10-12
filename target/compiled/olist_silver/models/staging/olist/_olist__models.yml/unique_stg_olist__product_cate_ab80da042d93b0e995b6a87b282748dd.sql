
    
    

select
    product_category_name as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_olist__product_category_name_translation
where product_category_name is not null
group by product_category_name
having count(*) > 1


