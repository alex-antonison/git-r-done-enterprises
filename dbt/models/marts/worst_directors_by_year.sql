SELECT
    director,
    release_year,
    COUNT(title) as films_released,
    SUM(worldwide_gross - production_budget) as net_profit
FROM {{ ref('stg_movies')}}
GROUP BY ALL
