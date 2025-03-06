{{
    config(
        materialized='table'
    )
}}

with raw_customers as (select * from RAW.GLOBALMART.CUSTOMER)
SELECT * FROM raw_customers