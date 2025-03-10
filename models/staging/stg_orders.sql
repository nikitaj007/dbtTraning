{{
    config(
        materialized='table'
    )
}}


select 
o.PRODUCTID,
o.CUSTOMERID,
o.ORDERID ,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE as orderprofit,

c.CUSTOMERNAME,
c.SEGMENT,
c.COUNTRY,

p.CATEGORY,
p.PRODUCTNAME,
p.SUBCATEGORY

from {{ ref('raw_order') }} as o
left join {{ ref('raw_customer') }} as c on c.CUSTOMERID=o.CUSTOMERID
left join {{ ref('raw_product') }} as p on p.PRODUCTID=o.PRODUCTID


