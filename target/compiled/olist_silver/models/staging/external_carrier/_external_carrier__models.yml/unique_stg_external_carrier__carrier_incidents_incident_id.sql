
    
    

select
    incident_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_external_carrier__carrier_incidents
where incident_id is not null
group by incident_id
having count(*) > 1


