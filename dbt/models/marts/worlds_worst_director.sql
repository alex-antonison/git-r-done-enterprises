
SELECT
    director,
    title,
    release_date,
    production_budget,
    worldwide_gross
    worldwide_gross - production_budget as net_profit
FROM {{ ref('stg_movies')}}
