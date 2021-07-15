# UC1
create database addressbook_service_db;  # Creating database
show databases;

# UC2
use addressbook_service_db;
create table AddressBook (
     FirstName varchar(25) not null,
     LastName varchar(25) not null,
     Address varchar(150) not null,
     City varchar(25) not null,
     State varchar(25) not null,
     Zip int not null,
     PhoneNumber bigint not null,
     Email varchar(50) not null
     );
show tables;
describe addressbook;  

# UC3
insert into addressbook ( 
	FirstName, LastName, Address, City,
    	State, Zip, PhoneNumber, Email 
    	)
	values
    	( 'Shubham', 'Abc', 'House No 1 Abc Lane', 'Pune',
     	  'Maharashtra', '411041', '9876543210', 'shubh@gmail.com' ),
	( 'Abhishek', 'Xyz', 'House No 101 Qwe Appartment', 'Mumbai',
	  'Maharashtra', '400002', '7898676767', 'abhi@gmail.com' ),
    	( 'Omkar', 'Pqr', 'R.No 505 Ratnagiri Soc.', 'Ranchi',
          'Jharkhand', '2001243', '7678767890', 'om@gmail.com' );
select * from addressbook;

# UC4
select * from addressbook;
update addressbook 
	set LastName = 'Singh', Zip = '200123', Email = 'omkar@gmail.com' 
	where FirstName = 'Omkar';
select * from addressbook; 

# UC5
select * from addressbook;
delete from addressbook where FirstName = 'Akshay';
select * from addressbook;   