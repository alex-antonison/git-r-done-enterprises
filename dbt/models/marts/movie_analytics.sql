{{ config(
    materialized = 'table'
) }}

WITH movie_stats AS (

    SELECT
        release_year,
        COUNT(*) AS total_movies,
        AVG(rating) AS avg_rating,
        AVG(votes) AS avg_votes,
        AVG(runtime) AS avg_runtime
    FROM
        {{ ref('stg_movies') }}
    GROUP BY
        release_year
)

SELECT
    release_year,
    total_movies,
    ROUND(
        avg_rating,
        2
    ) AS avg_rating,
    ROUND(
        avg_votes,
        0
    ) AS avg_votes,
    ROUND(
        avg_runtime,
        1
    ) AS avg_runtime
FROM
    movie_stats
ORDER BY
    release_year DESC
