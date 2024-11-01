
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from dbt_bo.public.stg_orders
    group by status

)

select *
from all_values
where value_field not in (
    'placed','return_pending','returned'
)

