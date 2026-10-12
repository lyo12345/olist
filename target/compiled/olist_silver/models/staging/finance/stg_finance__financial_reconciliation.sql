


  

with source as (
    select * from OLIST_SYNTHETIC_V2.FINANCE.financial_reconciliation
),

renamed as (
    select
        trim("RECONCILIATION_ID")::varchar as reconciliation_id,
        trim("TRANSACTION_ID")::varchar as transaction_id,
        "RECONCILIATION_DATE"::timestamp_ntz as reconciliation_date,
        "EXPECTED_AMOUNT"::float as expected_amount,
        "RECEIVED_AMOUNT"::float as received_amount,
        "DIFFERENCE_AMOUNT"::float as difference_amount,
        trim("RECONCILIATION_STATUS")::varchar as reconciliation_status,
        trim("DISCREPANCY_REASON")::varchar as discrepancy_reason
    from source
)

select * from renamed
qualify row_number() over (partition by reconciliation_id order by reconciliation_id) = 1