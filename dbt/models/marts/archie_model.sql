
with cte as (
SELECT 
    release_year,
    director,
    AVG(rotten_tomatoes_rating) AS avg_rating
FROM 
    {{ ref('stg_movies') }}
WHERE 
    release_year = 2008
GROUP BY 
    release_year, director)

select * from cte
ORDER BY 
    avg_rating DESC
LIMIT 1


