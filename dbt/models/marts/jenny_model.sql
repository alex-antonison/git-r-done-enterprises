SELECT 
    release_year
    , count(title) as number_of_films
FROM {{ref('stg_movies')}}
GROUP BY 1
ORDER BY 1 ASC