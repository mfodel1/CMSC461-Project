create DATABASE Project_Fodel;
use Project_Fodel;
CREATE TABLE driver (
    driver_id VARCHAR(6) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    card_no   CHAR(16) NOT NULL, 
    exp_date  DATE NOT NULL,
    PRIMARY KEY (driver_id)
);
    
CREATE TABLE driver_contact (
    driver_id VARCHAR(6) NOT NULL,
    zip  VARCHAR(5) NOT NULL,
    city VARCHAR(20) NOT NULL,
    street_no VARCHAR(6) NOT NULL,
    street_name VARCHAR(20) NOT NULL, 
    state VARCHAR(2) NOT NULL, 
    PRIMARY KEY (driver_id),
    FOREIGN KEY(driver_id)
		REFERENCES driver (driver_id)
);
    
CREATE TABLE driver_email (
    driver_id VARCHAR(6) NOT NULL,
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY (driver_id, email),
    FOREIGN KEY (driver_id)
        REFERENCES driver (driver_id)
);

CREATE TABLE driver_phone (
	driver_id VARCHAR(6) NOT NULL,
    phone_no VARCHAR(12) NOT NULL,
    PRIMARY KEY (driver_id, phone_no),
    FOREIGN KEY (driver_id)
        REFERENCES driver (driver_id)
);

CREATE TABLE driver_licence (
	driver_id VARCHAR(6) NOT NULL,
    licence_no VARCHAR(13) NOT NULL,
    state VARCHAR(2) NOT NULL,
    issue_date DATE, 
    exp_date DATE,
    PRIMARY KEY (driver_id),
    FOREIGN KEY (driver_id)
        REFERENCES driver (driver_id)
);


CREATE TABLE vehicle (
    tag_info VARCHAR(10) NOT NULL,
    available bit NOT NULL,
    make VARCHAR(25),
    model VARCHAR(20),
    yr YEAR,
    lugg_capacity int,
    seating_capacity int,
    driver_id VARCHAR(6) NOT NULL,
    PRIMARY KEY (tag_info , driver_id),
    FOREIGN KEY (driver_id)
        REFERENCES driver (driver_id)
);

CREATE TABLE drives (
    tag_info VARCHAR(10) NOT NULL,
    driver_id VARCHAR(6) NOT NULL,
    PRIMARY KEY (tag_info , driver_id),
    FOREIGN KEY (tag_info)
        REFERENCES vehicle (tag_info),
    FOREIGN KEY (driver_id)
        REFERENCES driver (driver_id)
);

CREATE TABLE vehicle_last_loc (
    tag_info VARCHAR(10) NOT NULL,
    timestmp VARCHAR(20) NOT NULL,
    zip  VARCHAR(5) NOT NULL,
    city VARCHAR(20) NOT NULL,
    street_no VARCHAR(6) NOT NULL,
    street_name VARCHAR(20) NOT NULL, 
    state VARCHAR(2) NOT NULL,
    lat   FLOAT(10, 10),
    lng   FLOAT(10, 10),
    PRIMARY KEY (tag_info , timestmp),
    FOREIGN KEY (tag_info)
        REFERENCES vehicle (tag_info)
);

CREATE TABLE customer (
	cust_id VARCHAR(6) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    card_no CHAR(16) NOT NULL,
    exp_date DATE NOT NULL,
    PRIMARY KEY (cust_id)
);

CREATE TABLE trip (
    tot_dist DECIMAL (10, 2) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    vehicle VARCHAR(10) NOT NULL,
    driver VARCHAR(6) NOT NULL,
    customer VARCHAR(6) NOT NULL,
    trajectory VARCHAR(6) NOT NULL,
    PRIMARY KEY (trajectory),
    FOREIGN KEY (vehicle) 
        REFERENCES vehicle (tag_info),
    FOREIGN KEY (driver)
        REFERENCES driver (driver_id),
	FOREIGN KEY (customer)
		REFERENCES customer (cust_id)
);

CREATE TABLE make (
    tag_info VARCHAR(10) NOT NULL,
    trajectory VARCHAR(6) NOT NULL,
    PRIMARY KEY (tag_info , trajectory),
    FOREIGN KEY (tag_info)
        REFERENCES vehicle (tag_info),
    FOREIGN KEY (trajectory)
        REFERENCES trip (trajectory)
);

CREATE TABLE trip_stops (
    timestmp VARCHAR(20) NOT NULL,
    is_last VARCHAR(3) NOT NULL, 
    dist_change DECIMAL(10, 4) NOT NULL,
    zip  VARCHAR(5) NOT NULL,
    city VARCHAR(20) NOT NULL,
    street_no VARCHAR(6) NOT NULL,
    street_name VARCHAR(20) NOT NULL, 
    state VARCHAR(2) NOT NULL,
    lat   FLOAT(10, 10) NOT NULL,
    lng   FLOAT(10, 10) NOT NULL,
    trajectory VARCHAR(6) NOT NULL,
    PRIMARY KEY (timestmp, trajectory),
    FOREIGN KEY (trajectory)
        REFERENCES trip (trajectory)
);

CREATE TABLE payment (
    timestmp VARCHAR(20) NOT NULL,
    trajectory VARCHAR(6) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    card_no CHAR(16) NOT NULL, 
    PRIMARY KEY (timestmp , trajectory),
    FOREIGN KEY (trajectory)
        REFERENCES trip (trajectory)
);

CREATE TABLE take (
	cust_id VARCHAR(6) NOT NULL,
    trajectory VARCHAR(6) NOT NULL,
    PRIMARY KEY (cust_id, trajectory),
    FOREIGN KEY (trajectory)
		REFERENCES trip (trajectory),
	FOREIGN KEY (cust_id)
		REFERENCES customer (cust_id)
);

CREATE TABLE cust_contact (
	cust_id VARCHAR(6) NOT NULL,
    zip  VARCHAR(5) NOT NULL,
    city VARCHAR(20) NOT NULL,
    street_no VARCHAR(6) NOT NULL,
    street_name VARCHAR(20) NOT NULL, 
    state VARCHAR(2) NOT NULL,
    PRIMARY KEY (cust_id),
	FOREIGN KEY (cust_id)
		REFERENCES customer (cust_id)
);

CREATE TABLE customer_email (
    cust_id VARCHAR(6) NOT NULL,
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY (cust_id, email),
    FOREIGN KEY (cust_id)
        REFERENCES customer (cust_id)
);

CREATE TABLE customer_phone (
	cust_id VARCHAR(6) NOT NULL,
    phone_no VARCHAR(12) NOT NULL,
    PRIMARY KEY (cust_id, phone_no),
    FOREIGN KEY (cust_id)
        REFERENCES customer (cust_id)
);