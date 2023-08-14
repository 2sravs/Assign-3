create database Assign3
use Assign3
create table CompanyInfo
(CId int primary key,
CName nvarchar(50) not null unique)
insert into CompanyInfo values(1,'SamSung')
insert into CompanyInfo values(2,'HP')
insert into CompanyInfo values(3,'Apple')
insert into CompanyInfo values(4,'Dell')
insert into CompanyInfo values(5,'Toshibha')
insert into CompanyInfo values(6,'Redmi')

select * from CompanyInfo order by CId

create table ProductInfo
(
PId int primary key,
PName nvarchar(50) not null,
Pprice float,
PMDate date not null,
CId int references CompanyInfo)
insert into ProductInfo values (101,'Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values (102,'Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values (103,'Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values (104,'Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo values (105,'Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values (106,'Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values (107,'Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values (108,'Earpod',1000.90,'12/01/2022',3)
insert into ProductInfo values (109,'Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values (110,'Mobile',55000.70,'12/12/2020',1)
select *from ProductInfo

----show all companies name and their products details
select C.CName,P.PName,P.PPrice,P.PMDate
from CompanyInfo C
join ProductInfo P on C.CId = P.CId

---select product name and company name
select P.PName,C.CName,P.PPrice,P.PMDate from ProductInfo P
join CompanyInfo C on P.CId = C.CId

---select all cobinations of company and product
select C.CName,P.PName from CompanyInfo C
Cross join ProductInfo P





