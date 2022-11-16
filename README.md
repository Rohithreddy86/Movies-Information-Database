# Movies-Information-Database
 Movies-Information-Database is a wide database of information consisting of IMDB movies, their rating, the streaming services those movies are listed in, Oscar awards of the movies, personal information about the actors | directors | writers of the movies, tags given to the movies by users and the genome scores of those tags along with a table to join IMDB ID’s with TMBD ID’s so that user will be able to use this database with other databases by connecting them
 
Description about tables:

IMDB_Movies: This is a table consists of data which includes almost all the movies listed in IMDB with columns 
•	‘imdb_title_id’ – auto incrementing unique identifier used to identify the movies.
•	‘title’ – title of the movie
•	‘year’ – year of the movie release
•	‘genre’ – comma separated values of genres of the movie
•	‘duration’ – duration of the movie
•	‘country’ – comma separated values of movie origin country
•	‘language’ – comma separated values of languages the movie made in 
•	‘Description’ – description about movie
•	‘production_company’ – Name of the production company.
•	‘budget’ – Budget allocated for each movie.
•	‘director’ – Director name of the movie, can join with ‘person_details’ and get details about director.
•	‘writer’ – Writer name of the movie, can join with ‘person_details’ and get details about writer.
•	‘actor’ – Main actor name of the movie, can join with ‘person_details’ and get details about actor.
•	‘rating’ – Average of the totalvotes.
•	‘total_votes’ – total count of votes.



Netflix: This table consists of all the movies and TV Shows listed in Netflix
•	‘show_id’ – Auto incrementing unique identifier used to identify each movie/Tv show listed in Netflix.
•	‘type’ – Type of the content (Movie/TV Show).
•	‘date_added’ – Date the movie/tv show added to Netflix.
•	‘sensor_rating’ – sensor rating of the movie/Tv show.

Listed_in: Lists the movies of ‘Netflix’ which are listed in ‘imdb_movies’ table. As there is no link between imdb_movies and Netflix, we can only link them using this table which maps each ‘show_id’ to its respective ‘imdb_title_id’ if there exists a corresponding movie of Netflix in Imdb_movies data.
•	‘listed_in_id’ – unique identifier to identify each listing.
•	‘imdb_title_id’ – referenced from ‘imdb_movies’ table.
•	‘show_id’ – referenced from ‘Netflix’ table

Person_details: Some information about few individuals working in film field. Includes their ID which is unique ‘Imdb’ person identifier which can be further used to link this dataset possibly with other datasets.
•	‘person_id’ – Unique person identifier given by IMDB.
•	‘primary_name' – name of the individual.
•	‘birth_year’ – birth year of the individual.
•	‘death_year’ – death year of the individual.
•	‘primary_profession’ – comma separated values of the profession of the individual.

Oscar_awards:  This table contains information about Oscar awards given to the films for different categories. We can link title and year from ‘imdb_movies’ table with this table to get information of the awards of the film individually and we can also join them using the names of ‘director or writer or actor’ to see if they got any award from Oscars. 
•	‘oscar_id’ – unique identifier used to identify each entry of the table.
•	‘ceremony_number’ – the Oscar ceremony number
•	‘category’ – the nomination category of the movie.
•	‘gender’ – gender of the individual nominated.
•	‘name’ – name of the individual nominated
•	‘winner’ – T (if nomination won) or F (if nomination lost)
•	‘imdb_title_id’ – referenced from ‘imdb_movies’ table.


Reviews:  This table consists of the information about reviews given to the movie by the reviewers.
•	‘imdb_title_id’ – referenced from ‘imdb_movies’ table.
•	‘review_id’ – unique identifier to identify each review given by the reviewr.
•	‘reviewer_name' – name of the reviewer.
•	‘review_date’ – date of the review.
•	‘review’ – review content.

Imdb_tmdb_connector: the table which links the imdb_movies with ratings and movies from other sites like ‘tmbd’.
•	‘movie_id’ – unique identifier for a movie from other site.
•	‘imdb_id’ – imdb unique movie identifier.
•	‘tmbd_id’ – tmbd unique movie identifier.

Movie_tag_scores: This table contains the information about tag scores of each unique tag given to a movie.
•	‘movie_tag_id’ - unique identifier used to identify each entry of the table.
•	‘movie_id’ – movie identifier referenced from ‘link’ table.
•	‘tag’ – tag given to the movie by the user.
•	‘tag_score’ – score given to the tag assigned to the movie based on its relevance with the movie.

Tag: This table contains information about tag and their id’s.
•	‘tag_id’ – unique identifier of the tag.
•	‘tag’ – name of the tag.

User_tag: This table contains information about the tags assigned to the movie by the users.
•	‘user_tag_id’ - unique identifier used to identify each entry of the table.
•	‘user_id’ – unique identifier used to identify the user.
•	‘movie_id’ - movie identifier referenced from ‘link’ table.
•	‘tag’ – name of the tag given to the movie by the user.
