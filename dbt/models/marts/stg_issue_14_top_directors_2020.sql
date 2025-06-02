select 
    director,
    avg(rotten_tomatoes_rating) as avg_tomatoes_rating
from {{ ref('stg_movies')}}
where release_date >= '2020-01-01' and release_date <= '2011-01-01'
group by director
order by avg_tomatoes_rating desc
limit 10