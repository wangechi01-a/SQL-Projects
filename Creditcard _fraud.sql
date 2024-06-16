SELECT * FROM fraud_detection.creditcard;

-- Number of records
SELECT COUNT(*) AS num_records
FROM fraud_detection.creditcard;

-- Number of columns
SELECT COUNT(*) AS num_columns
FROM information_schema.columns
WHERE table_name = 'creditcard';

-- Data types
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'creditcard';

-- checking for missing values
SELECT time, COUNT(*) AS missing_count
FROM fraud_detection.creditcard WHERE v1 IS NULL
GROUP BY time;

SELECT * FROM fraud_detection.creditcard ORDER BY time;

-- Example: Analyzing the distribution of 'amount' column
SELECT AVG(amount) AS avg_amount, MAX(amount) AS max_amount, MIN(amount) AS min_amount
FROM fraud_detection.creditcard;

-- Aggregating fraud occurrences by card type
SELECT COUNT(*) AS fraud_count
FROM fraud_detection.creditcard
WHERE class = 1;

-- Get transactions with amounts greater than the average amount
SELECT COUNT(*) FROM fraud_detection.creditcard
WHERE amount > (SELECT AVG(amount) 
FROM fraud_detection.creditcard);

-- Get transactions with amounts less than the average amount
SELECT COUNT(*) FROM fraud_detection.creditcard
WHERE amount < (SELECT AVG(amount) 
FROM fraud_detection.creditcard);


-- Calculate the running total of amounts for each transaction
SELECT time, amount, SUM(amount) OVER (ORDER BY time) AS running_total
FROM fraud_detection.creditcard; 

-- visualization
SELECT v1, COUNT(*) AS transaction_count
FROM fraud_detection.creditcard
GROUP BY v1;


