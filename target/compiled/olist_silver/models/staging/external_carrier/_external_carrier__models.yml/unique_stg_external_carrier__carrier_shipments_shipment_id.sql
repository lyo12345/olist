
    
    

select
    shipment_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_shipments
where shipment_id is not null
group by shipment_id
having count(*) > 1


