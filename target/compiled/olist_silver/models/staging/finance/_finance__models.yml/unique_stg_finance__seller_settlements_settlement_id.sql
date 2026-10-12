
    
    

select
    settlement_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_settlements
where settlement_id is not null
group by settlement_id
having count(*) > 1


