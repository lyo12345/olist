
    
    

select
    commission_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_finance__commissions
where commission_id is not null
group by commission_id
having count(*) > 1


