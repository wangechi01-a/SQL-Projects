SELECT * FROM fruits.apple_quality;
-- Number of records
SELECT COUNT(*) AS num_records
FROM fruits.apple_quality;

-- Number of columns
SELECT COUNT(*) AS num_columns
FROM information_schema.columns
WHERE table_name = 'apple_quality';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'apple_quality';

-- missing values
SELECT quality,weight,juiciness, COUNT(*) AS missing_count
FROM fruits.apple_quality  WHERE weight IS NULL
GROUP BY quality,weight,juiciness;



