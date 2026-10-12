
    
    

select
    vehicle_id as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.silver.stg_logistics_tms__vehicles
where vehicle_id is not null
group by vehicle_id
having count(*) > 1


