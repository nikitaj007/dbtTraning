{{
    config(
        materialized='table'
    )
}}

with src_product as (select * from RAW.GLOBALMART.PRODUCT)
select * from src_product