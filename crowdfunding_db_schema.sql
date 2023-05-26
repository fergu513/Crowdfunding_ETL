CREATE Table campaign(
	cf_id int NOT null Primary Key,
	contact_id int NOT null,
	company_name varchar(255) NOT null,
	description varchar (255) NOT null,
	goal numeric NOT null,
	pledged numeric NOT null,
	outcome varchar (255) NOT null,
	backers_count int NOT null,
	country varchar (225) NOT null,
	currency varchar (255) NOT null,
	launch_date date NOT null,
	end_date date NOT null,
	category_id varchar (255) NOT null,
	subcategory_id varchar (255) NOT null,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)

);

CREATE TABLE category(
	category_id varchar (255) NOT null Primary Key,
	category varchar (255) NOT null
);

CREATE TABLE contacts(
	contact_id int NOT null Primary Key,
	first_name varchar (255) NOT null,
	last_name varchar (255) NOT null,
	email varchar (255) NOT null
);

CREATE TABLE subcategory(
	subcategory_id varchar (255) NOT null Primary Key,
	subcategory varchar (255) NOT null
);

SELECT * 
FROM campaign;

SELECT * 
FROM category;

SELECT * 
FROM subcategory;

SELECT * 
FROM contacts;