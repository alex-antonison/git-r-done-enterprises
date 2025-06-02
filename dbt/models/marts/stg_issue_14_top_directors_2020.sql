select 
    director,
    avg(rotten_tomatoes_rating) as avg_tomatoes_rating
from {{ ref('stg_movies')}}
where release_year >= '2000' and release_year <= '2011'
group by director
order by avg_tomatoes_rating desc
limit 10