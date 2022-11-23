create database AddressBook

create table addressbook
(
FirstName varchar(255),
LastNames varchar(255), 
Address varchar(255), 
City varchar(255),
State varchar(255),
Zip int, 
PhoneNumber varchar(15),
Email varchar(100)
)

insert into addressbook(FirstName,LastNames,Address,City,State,Zip,PhoneNumber,Email)
values
('mahesh','g','9b nagar','nashik','maharashtra',424008,'9812345678','gagag@gmail.com');

select * from addressbook

update addressbook set City='Mumbai' where FirstName = 'mahesh';
select * from addressbook

delete from addressbook where FirstName= 'mahesh';

select * from addressbook

insert into addressbook(FirstName,LastNames,Address,City,State,Zip,PhoneNumber,Email)
values
('mahesh','g','9b nagar','nashik','maharashtra',424008,'9812345678','gagag@gmail.com'),
('akshay','b','10 G nagar','mumbai','rajasthan',424010,'7788552211','jjj@gmail.com'),
('rajesj','S','12 nagar','Nagpur','maharashtra',400118,'9912345678','kaakgag@gmail.com');

select * from addressbook

select * from addressbook where City='Nagpur' or State='maharashtra'

insert into addressbook(FirstName,LastNames,Address,City,State,Zip,PhoneNumber,Email)
values
('hemant','g','9b nagar','nashik','maharashtra',424008,'9812345678','gagag@gmail.com'),
('rita','g','9b nagar','Nagpur','maharashtra',424008,'9812345678','gagag@gmail.com')

select * from addressbook

select count(*) as CityCount,City from addressbook group by City;
select count(*) as StateCount,State

select * from addressbook where City= 'Nagpur' order by FirstName;


alter table addressbook
add type varchar(20);
alter table addressbook
add addresbookname varchar(50);

update addressbook set type='Friends' where City='Nagpur';
update addressbook set type='office' where City='Mumbai';
update addressbook set type='relative' where City='Nashik';

update addressbook set addresbookname ='Normal' where FirstName='rita';
select * from addressbook


select type,count(type) as NumberofContactPerson from addressbook group by type;


insert into addressbook(FirstName,LastNames,Address,City,State,Zip,PhoneNumber,Email,type)
values
('narendra','modi','newdelhi','delhi','NCR',424008,'9812345678','gagag@gamil.com','relative');

select * from addressbook