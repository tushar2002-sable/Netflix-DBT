WITH src_movies AS (
    SELECT * FROM {{ ref('src_movies') }}
)
SELECT
    MOVIEID,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS genre_array,
    genres
FROM src_movies