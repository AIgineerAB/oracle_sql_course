SET LINESIZE 220     
SET WRAP OFF
SET PAGESIZE 100
SET TRIMOUT ON

SELECT * FROM system.jokes;

SET LINESIZE 90     

DESC jokes;

SELECT category, rating, joke FROM jokes;


SELECT 
    category, rating, joke 
FROM jokes 
ORDER BY rating DESC
FETCH FIRST 5 ROWS ONLY; -- LIMIT 5 in other SQL
