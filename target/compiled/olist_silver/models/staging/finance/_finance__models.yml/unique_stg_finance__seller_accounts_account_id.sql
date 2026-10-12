
    
    

select
    account_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_finance__seller_accounts
where account_id is not null
group by account_id
having count(*) > 1


