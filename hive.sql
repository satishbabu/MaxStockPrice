-- This file has the commands hive sql to get the same results as the Java program


CREATE EXTERNAL TABLE IF NOT EXISTS stocks(
	exch STRING,
	symbol STRING,
	ymd STRING,
	price_open FLOAT,
	price_high FLOAT,
	price_low FLOAT,
	price_close FLOAT,
	volume INT,
	price_adj_close FLOAT)
	ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
	LOCATION '/input';

SELECT * from stocks LIMIT 100;

DESC stocks;


SELECT symbol, max(price_close) max_price from stocks group by symbol;