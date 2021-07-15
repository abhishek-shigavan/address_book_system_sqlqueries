# UC1
create database addressbook_service_db; 				# Creating database
show databases;								# show all databases

# UC2
use addressbook_service_db;
create table AddressBook (						# creating table
     FirstName varchar(25) not null,					# first name of person
     LastName varchar(25) not null,					# last name of person
     Address varchar(150) not null,					# address of person
     City varchar(25) not null,						# city name of person
     State varchar(25) not null,					# state name of person
     Zip int not null,							# zip code of person
     PhoneNumber bigint not null,					# phone number of person
     Email varchar(50) not null						# email id of person
     );
show tables;								# show all present tables
describe addressbook;  							# displaying structure of table

# UC3
insert into addressbook ( 						# inserting data into table
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
select * from addressbook;						# retrieving all data of table 
 
# UC4
select * from addressbook;							# displaying all data of table
update addressbook 								# updating data of contact
	set LastName = 'Singh', Zip = '200123', Email = 'omkar@gmail.com' 
	where FirstName = 'Omkar';
select * from addressbook;    						        # displaying all data of table

# UC5
select * from addressbook;
delete from addressbook where FirstName = 'Akshay';			# deleting entry of data from table
select * from addressbook;

# UC6
select * from addressbook where City = 'Ranchi';			# retrieving data of city
select * from addressbook where State = 'Maharashtra';			# retrieving data of state

# UC7
select count(City) from addressbook;				# retrieving count of city enteries in table
select count(State) from addressbook;				# retrieving count of state enteries in table

# UC8
select * from addressbook;
select * from addressbook where City = 'Pune' order by FirstName;   # retrieving data of city in sorted order

# UC9
# adding new data fields into table 
alter table addressbook add AddressBookName varchar(40) not null default 'N/A' first;
alter table addressbook add ContactType varchar(40) default 'N/A' after AddressBookName; 

# UC10
#setting values of AddressBookName & ContactType column
update addressbook set AddressBookName = 'Favourites', ContactType = 'Friend' where FirstName = 'Shubham';
update addressbook set AddressBookName = 'Favourites', ContactType = 'Family' where FirstName = 'Abhishek';
update addressbook set AddressBookName = 'Favourites', ContactType = 'Family' where FirstName = 'Omkar';
update addressbook set AddressBookName = 'Important', ContactType = 'Profession' where FirstName = 'Bala';
update addressbook set AddressBookName = 'Important', ContactType = 'Profession' where FirstName = 'Teja';
#getting count of each ContactType
select count(ContactType) from addressbook where ContactType = 'Family';
select count(ContactType) from addressbook where ContactType = 'Friend';
select count(ContactType) from addressbook where ContactType = 'Profession';
