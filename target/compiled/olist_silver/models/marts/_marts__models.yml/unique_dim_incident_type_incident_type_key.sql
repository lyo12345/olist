
    
    

select
    incident_type_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_incident_type
where incident_type_key is not null
group by incident_type_key
having count(*) > 1


