SELECT name FROM people
WHERE people.id IN
(SELECT directors.person_id FROM directors
JOIN ratings ON ratings.movie_id = directors.movie_id
WHERE rating >= 9);