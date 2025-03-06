{{
    config(
        materialized='table'
    )
}}

with src_orders as (select * from RAW.GLOBALMART.ORDERS)
select * from src_orders