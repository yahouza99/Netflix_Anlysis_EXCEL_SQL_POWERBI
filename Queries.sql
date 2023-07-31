SELECT * FROM dbo.movies_on_netflix$;

SELECT * FROM dbo.movies_on_netflix$ WHERE id is NULL or show_id is NULL or title is NULL or director 
is NULL or cast is NULL or country IS NULL;