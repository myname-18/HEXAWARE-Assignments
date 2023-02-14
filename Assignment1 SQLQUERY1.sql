create database Assignment1

use Assignment1
	create table customer
	(
	CUSTOMER_NUMBER varchar(10) primary key,
	FIRSTNAME varchar(40),
	middlename varchar(25),
	lastname varchar(25),
	CUSTOMER_CITY varchar(15),
	CUSTOMER_CONTACT_N0 varchar(10),
	occupation varchar(20),
	CUSTOMER_DATE_OF_BIRTH date 
	)
	select * from customer

	insert into customer values('C00001','RAMESH','CHANDRA','SHARMA','DELHI','9543198345','SERVICE','1956-11-26')
	insert into customer values('C00002','AVINASH','SUNDER','MINHA','DELHI','9876532109','SERVICE','1984-9-16')
	insert into customer values('C00003','RAHUL','NULL','RASTOGI','DELHI','9765178901','STUDENT','1981-10-23')
	insert into customer values('C00004','PARUL','NULL','GANDHI','DELHI','9876532109','HOUSEWIFE','1966-11-13')
	insert into customer values('C00005','NAVEEN','CHANDRA','AEDEKAR','MUMBAI','8976523190','SERVICE','1986-09-09')
	insert into customer values('C00006','CHITRESH','NULL','BARWE','MUMBAI','9876532109','STUDENT','1972-01-09')
	insert into customer values('C00007','AMIT','KUMAR','BORKAR','MUMBAI','7651298321','STUDENT','1991-06-06')
	insert into customer values('C00008','NISHA','','DAMLE','MUMBAI','9876532109','SERVICE','1975-12-02')
	insert into customer values('C00009','ABHISEKH','','DUTTA','KOLKATA','9856198761','SERVICE','1998-05-08')
	insert into customer values('C00010','SHANKAR','','NAIR','CHENNAI','8765489076','SERVICE','1998-08-12')
	select * from customer

----Display no. of customers belongs to each city
select CUSTOMER_CITY, count(CUSTOMER_CITY) from customer group by CUSTOMER_CITY

--Name of all cities from customer table without duplicate values
select distinct(CUSTOMER_CITY) from customer

----No. of customers from different occupation
select occupation, count(CUSTOMER_NUMBER) as 'count' from customer group by occupation
select occupation, count(occupation) as 'count' from customer group by occupation

---Customer details with ascending order based on firstname
select * from customer order by FIRSTNAME

--display the data in descending order based on occupation and display the firstnamein ascendingof each occupation
select * from customer order by occupation desc, FIRSTNAME

----customers with middle names
select * from customer where middlename is null

	create table loan_details
	(
	customer_number varchar(10) foreign key References
	customer(CUSTOMER_NUMBER),
	branch_id int,
	loan_amount bigint
	)

	create table branch_master
	(
	branch_id int primary key,
	branch_name varchar(20),
	branch_city varchar(20)
	)


	create table account_master
	(
	account_number varchar(10) primary key,
	customer_number varchar(10) foreign key References customer(CUSTOMER_NUMBER),
	branch_id int foreign key references branch_master(branch_id),
	opening_balance bigint,
	account_opening_date date,
	account_type varchar(10),
	account_status varchar(10)
	)

	create table transaction_details
	(
	transaction_number int primary key,
	account_number varchar(10) foreign key references account_master(account_number),
	date_of_transaction date,
	medium_of_transaction varchar(20),
	transaction_type varchar(10),
	transaction_amount bigint
	)