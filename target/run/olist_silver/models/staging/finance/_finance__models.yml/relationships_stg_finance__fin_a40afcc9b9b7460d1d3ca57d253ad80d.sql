
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select transaction_id as from_field
    from OLIST_SYNTHETIC_V2.silver.stg_finance__financial_reconciliation
    where transaction_id is not null
),

parent as (
    select transaction_id as to_field
    from OLIST_SYNTHETIC_V2.silver.stg_finance__payment_transactions
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test