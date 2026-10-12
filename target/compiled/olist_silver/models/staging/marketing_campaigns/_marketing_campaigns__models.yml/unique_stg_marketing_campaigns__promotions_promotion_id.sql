
    
    

select
    promotion_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_marketing_campaigns__promotions
where promotion_id is not null
group by promotion_id
having count(*) > 1


