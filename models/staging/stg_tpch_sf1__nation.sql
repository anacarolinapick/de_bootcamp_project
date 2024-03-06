with source as (select * from {{ source("src_tpch_sf1", "nation") }})

select n_nationkey as nation_key, n_name as nation_name
from source
