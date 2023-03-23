DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;

CREATE TABLE campaign (
	cf_id integer NOT NULL,
	contact_id integer NOT NULL,
	company_name character varying(45) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome character varying(10) NOT NULL,
	backers_count integer NOT NULL,
	country character varying(2) NOT NULL,
	currency character varying(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id character varying(4) NOT NULL,
	subcategory_id character varying(8) NOT NULL
);

CREATE TABLE category (
	category_id character varying(15) NOT NULL,
	category character varying(45) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE contacts (
	contact_id integer NOT NULL,
	first_name character varying(25) NOT NULL,
	last_name character varying(25) NOT NULL,
	email character varying(45) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE subcategory (
	subcategory_id character varying(8) NOT NULL,
	sub_category character varying(50) NOT NULL,
	PRIMARY KEY (subcategory_id)
);
	
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;
	