WITH net_profit as (
SELECT
    director,
    title,
    release_year,
    production_budget,
    worldwide_gross,
    worldwide_gross - production_budget as net_profit
FROM {{ ref('stg_movies')}}
)

SELECT
    director,
    COUNT(title) as total_films_released,
    SUM(net_profit) as total_net_profit,
    MIN(release_year) as first_film_year,
    MAX(release_year) as last_film_year
FROM net_profit
GROUP BY director
