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

, director_overall_stats as (
SELECT
    director,
    COUNT(title) as total_films_released,
    SUM(net_profit) as total_net_profit,
    MIN(release_year) as first_film_year,
    MAX(release_year) as last_film_year
FROM net_profit
GROUP BY director
)

SELECT
    NP.director,
    total_films_released,
    total_net_profit,
    first_film_year,
    last_film_year,
    release_year,
    COUNT(title) as films_released,
    SUM(net_profit) as net_profit
FROM net_profit as NP
INNER JOIN director_overall_stats as DOS on DOS.director = NP.director
GROUP BY ALL
ORDER BY total_net_profit ASC
