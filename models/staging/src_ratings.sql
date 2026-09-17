{{ config (materialized='table') }}

with raw_rating as (
    select * from movielens.raw.raw_rating
)

select 
    userID as User_ID,
    MovieID as Movie_Id,
    rating,
    to_timestamp_ltz(TIMESTAMP) as rating_timestamp
from raw_rating