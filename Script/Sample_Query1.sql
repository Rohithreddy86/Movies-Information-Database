#  List the movies with production_house that won an Oscar and count the reviews per movie produced above the budget $50,000 from high to low.

select im.title, count(review_id), im.production_house
from imdb_movies im, reviews r, oscar_awards oa
where im.imdb_title_id = r.imdb_title_id
and im.budget > '$50,000' and im.imdb_title_id = oa.imdb_title_id and oa.winner = true
group by im.title, im.production_house
order by count(review_id) desc

sample script