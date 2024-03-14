-- Create table 'category' 
CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY NOT NULL,
    category VARCHAR(255) NOT NULL
);

-- Create table 'subcategory' 
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(255) NOT NULL
);

-- Create table 'contacts' 
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

-- Create table 'campaign' 
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
	pleadged FLOAT NOT NULL,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(255) NOT NULL,
	currency VARCHAR(255) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(255) NOT NULL,
	subcategory_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--verifying each table has correct data
SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;

