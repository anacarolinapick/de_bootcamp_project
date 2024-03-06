{{
    config(
        materialized="table",
    )
}}


with
    customer as (select * from {{ ref("stg_tpch_sf1__customer") }}),

    nation as (select * from {{ ref("stg_tpch_sf1__nation") }})

select
    customer.cust_key,
    customer.cust_name,
    customer.cust_address,
    nation.nation_name,
    customer.cust_phone
from customer
left join nation on (customer.nation_key = nation.nation_key)
