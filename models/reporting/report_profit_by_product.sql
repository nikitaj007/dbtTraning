{{
    config(
        materialized='table'
    )
}}


select
    PRODUCTID,
    productName,
    category,
    subcategory,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by 
    PRODUCTID,
    productName,
    category,
    subcategory