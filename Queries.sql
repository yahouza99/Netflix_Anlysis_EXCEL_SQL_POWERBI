use Netflix;
--Cleaning movies
SELECT * FROM dbo.movies_on_netflix$;

ALTER TABLE dbo.movies_on_netflix$
DROP COLUMN description;

ALTER TABLE dbo.movies_on_netflix$
DROP COLUMN year_added,month_added;

ALTER TABLE dbo.movies_on_netflix$
DROP COLUMN date_added;

DELETE FROM dbo.movies_on_netflix$ WHERE country is NULL or director is NULL;

DELETE FROM dbo.movies_on_netflix$ WHERE id is NULL or show_id is NULL or title is NULL or director 
is NULL or cast is NULL or country IS NULL or release_year is NULL or rating is NULL
or duration is NULL  or season_count is NULL;



SELECT * FROM dbo.movies_on_netflix$ WHERE id is NULL or show_id is NULL or title is NULL or director 
is NULL or cast is NULL or country IS NULL or date_added is NULL or release_year is NULL or rating is NULL
or duration is NULL or description is NULL or year_added is NULL or month_added is NULL or season_count is NULL;

--Cleaning showes
/*
SELECT column1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2;
*/
SELECT * FROM dbo.tv_series_on_netflix$;

ALTER TABLE dbo.tv_series_on_netflix$
DROP COLUMN description;

ALTER TABLE dbo.tv_series_on_netflix$
DROP COLUMN year_added,month_added;

ALTER TABLE dbo.tv_series_on_netflix$
DROP COLUMN date_added;

DELETE FROM dbo.tv_series_on_netflix$ WHERE id is NULL or show_id is NULL or title is NULL or director 
is NULL or cast is NULL or country IS NULL or release_year is NULL or rating is NULL
or duration is NULL  or season_count is NULL;
 
--Union table
/*
SELECT * INTO  ALL_DATA
 AS (
  SELECT * FROM dbo.movies_on_netflix$
  UNION ALL
  SELECT * FROM dbo.tv_series_on_netflix$
 )
*/
use Netflix;
SELECT *
INTO ALL_DATA
FROM dbo.movies_on_netflix$
UNION ALL
SELECT *
FROM dbo.tv_series_on_netflix$;


SELECT * FROM ALL_DATA;
SELECT COUNT(*) FROM dbo.movies_on_netflix$;
SELECT COUNT(*) FROM dbo.tv_series_on_netflix$;
SELECT COUNT(*) FROM ALL_DATA;

SELECT * FROM ALL_DATA WHERE id is NULL or show_id is NULL or title is NULL or director 
is NULL or cast is NULL or country IS NULL or release_year is NULL or rating is NULL
or duration is NULL  or season_count is NULL;


