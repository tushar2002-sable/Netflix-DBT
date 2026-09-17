With Ratings  as (
    select distinct user_id from {{ ref('src_ratings') }}
),

Tags as (
    select distinct user_id from {{ ref('src_tags') }}
)

select distinct user_id from (
    select * from Ratings
    union 
    select * from Tags
) 

