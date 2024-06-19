USE practise;

SELECT * FROM titanic_dataset;

-- number of records
SELECT COUNT(*) AS num_records
FROM titanic_dataset;

-- number of columns
SELECT COUNT(*) AS num_columns
FROM information_schema.columns
WHERE table_name = 'titanic_dataset';

-- checking for missing values
SELECT (COUNT(CASE WHEN PassengerId IS NULL THEN 1 END)
+COUNT(CASE WHEN Survived IS NULL THEN 1 END)
+COUNT(CASE WHEN Cabin IS NULL THEN 1 END))
 -- Add more SUM(COUNT(CASE...)) expressions for each column in your table
AS missing_count FROM titanic_dataset;


