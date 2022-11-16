#List the review count per movie that starts with letter 'M' in descending order.

select distinct im.title, count(review_id)
from imdb_movies im, reviews r 
where im.imdb_title_id = r.imdb_title_id and im.title IN ( select title from imdb_movies where title like 'M%')
group by im.title
order by count(review_id) desc