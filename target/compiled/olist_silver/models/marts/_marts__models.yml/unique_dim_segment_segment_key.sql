
    
    

select
    segment_key as unique_field,
    count(*) as n_records

from OLIST_SYNTHETIC_V2.gold.dim_segment
where segment_key is not null
group by segment_key
having count(*) > 1


