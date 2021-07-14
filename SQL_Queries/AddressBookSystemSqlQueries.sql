create database addressbook_service_db;
show databases;

use addressbook_service_db;
create table AddressBook (
     FirstName varchar(25) not null,
     LastName varchar(25) not null,
     Address varchar(150) not null,
     City varchar(25) not null,
     State varchar(25) not null,
     Zip int not null,
     PhoneNumber int not null,
     Email varchar(50) not null
     );
show tables;
describe addressbook;     