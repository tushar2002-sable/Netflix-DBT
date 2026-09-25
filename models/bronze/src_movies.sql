With raw_movies as (
    SELECT * from {{source ('netflix', 'r_movies')}}
)
SELECT
    MOVIEID,
    title, 
    genres
from raw_movies


