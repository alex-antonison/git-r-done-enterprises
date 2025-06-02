select director
    ,count(distinct title) as number_of_films
from {{ ref('stg_movies') }}
group by director
order by number_of_films desc