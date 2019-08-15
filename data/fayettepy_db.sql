

CREATE TABLE IF NOT EXISTS products(
	sku VARCHAR(30) PRIMARY KEY,
	item_name VARCHAR(80),
	contract_price MONEY,
	list_price MONEY
	);


CREATE TABLE IF NOT EXISTS sites(
	id SERIAL PRIMARY KEY,
	site_id VARCHAR(6),
	site_name VARCHAR(200) NOT NULL,
	site_type VARCHAR(40) NOT NULL,
	format VARCHAR(40) NOT NULL,
	address VARCHAR(100),
	city VARCHAR(40),
	state CHAR(2),
	postal_code CHAR(5),
	phone CHAR(13),
	open_date DATE,
	sq_ft INT, 
	customer_id INT REFERENCES customers (customer_id)
);


CREATE TABLE IF NOT EXISTS orders(
	id BIGSERIAL PRIMARY KEY,
	sku VARCHAR(13) NOT NULL,
	product VARCHAR(40) NOT NULL,
	year CHAR(4) NOT NULL,
	month CHAR(3) NOT NULL,
	price MONEY,
	cases INT,
	sales MONEY
);

COPY orders(sku,product,year,month,price,cases,sales)
FROM '/Users/<your-user-folder/data/sales-data.csv' DELIMITER ',' CSV HEADER;