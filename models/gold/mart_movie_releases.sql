{{ config(materialized='table') }}

With fct__ratings as (
     select * from {{ ref('fct_ratings') }}
),

Seeds_dates as (
     select * from {{ ref('seed_movie_release_dates') }}
)

select
    f.*,
    case
        when d.release_date is null then 'Unknown'
        else 'Known'
    end as release_info_available
from fct__ratings f
left join Seeds_dates d
on f.movie_id = d.movie_id

