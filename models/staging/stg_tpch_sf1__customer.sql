with source as (select * from {{ source("src_tpch_sf1", "customer") }})

select
    c_custkey as cust_key,
    c_name as cust_name,
    c_address as cust_address,
    c_phone as cust_phone,
    c_nationkey as nation_key
from source
