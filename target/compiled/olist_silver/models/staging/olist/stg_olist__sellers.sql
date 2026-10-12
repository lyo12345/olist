


with source as (
    select * from OLIST_SYNTHETIC_V2.OLIST.sellers
),

renamed as (
    select
        trim("SELLER_ID")::varchar as seller_id,
        "SELLER_ZIP_CODE_PREFIX"::number as seller_zip_code_prefix,
        initcap(trim("SELLER_CITY")) as seller_city,
        upper(trim("SELLER_STATE")) as seller_state
    from source
)

select * from renamed
qualify row_number() over (partition by seller_id order by seller_id) = 1