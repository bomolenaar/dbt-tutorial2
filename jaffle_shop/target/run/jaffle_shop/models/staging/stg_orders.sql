
  create or replace   view dbt_bo.public.stg_orders
  
   as (
    select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from raw.jaffle_shop.orders
  );

