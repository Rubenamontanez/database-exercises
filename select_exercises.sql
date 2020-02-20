USE codeup_test_db;

SELECT name AS 'Pink FLoyd Albums'
FROM albums
WHERE artist = 'Pink FLoyd';

SELECT 'Here is the year that Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Lonely Heart''s Club';
SELECT release_date
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';