--dropping table if the table exist
drop table if exists contacts;
drop table if exists subcategory;
drop table if exists campaign;
drop table if exists category;
--create contact info 
CREATE TABLE contacts (
    --  columns creation
    contact_id int NOT NULL,
    first_name varchar (225)  NOT NULL,
    last_name varchar (225)  NOT NULL,
    email varchar (225)  NOT NULL,
primary key (contact_id)
);

CREATE TABLE subcategory (
    -- columns creation
    subcategory_id int NOT NULL,
    subcategory varchar (225)  NOT NULL,
primary key (subcategory_id)
);

CREATE TABLE category (
--columns creation
	category_id int NOT NULL,
	category_name varchar (225) NOT NULL,
primary Key (category_id )
);

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(225) NOT NULL,
    description varchar(225) NOT NULL,
    goal int NOT NULL,
    pledged int NOT NULL,
    outcome varchar(225) NOT NULL,
    backers_count int NOT NULL,
    country varchar(225) NOT NULL,
    currency varchar(225) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id int NOT NULL,
    subcategory_id int NOT NULL,
    primary key (cf_id),
    foreign key (contact_id) references contacts(contact_id),
    foreign key (category_id) references category(category_id),
    foreign key (subcategory_id) references subcategory(subcategory_id)
);

