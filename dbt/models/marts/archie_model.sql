select 

    release_year,
    director,
    avg(rotten_tomatoes_rating),


* from {{ ref('stg_movies')}}


    where release_year= 2008

    group by 
    release_year, director

    order by avg(rotten_tomatoes_rating) desc,

    limit 1