select name from sys.databases;

create database dummy

use dummy

create table firsttable(
id int identity primary key,
firstname varchar(20) not null,
pannumber varchar(20) unique,
phonenumber bigint,
gender char check (gender in('m','f')),
loc datetime default current_timestamp
)
insert  into firsttable(firstname,pannumber,phonenumber,gender) values('hariharan','bfmph9025r',9894470748,'m')
insert  into firsttable(firstname,pannumber,phonenumber,gender) values('hariharan','bfmph9025c',9894470748,'m')
insert  into firsttable(firstname,pannumber,phonenumber,gender) values('hariharan','bfmph9025b',9894470748,'m')
insert  into firsttable(firstname,pannumber,phonenumber,gender) values('hariharan','bfmph00296',9894470748,'m')


create table secondtable(
id int foreign key references firsttable (id),
company varchar(26) ,
addresses varchar(20)
)
ALTER TABLE secondtable
drop FK__secondtable__id__4D94879B

update secondtable
set pincode=641025
where id in (3,4)



insert into secondtable(id,company,addresses) values(1,'kasadara','coimbatore')
insert into secondtable(id,company,addresses) values(2,'kasadara','coimbatore')
insert into secondtable(id,company,addresses) values(7,'kasadara','coimbatore')

delete FROM  secondtable
where id=3


SELECT * FROM firsttable
ORDER BY id desc
OFFSET 2 ROWS
FETCH NEXT 1 ROWS ONLY;
select * from firsttable;
select * from secondtable

select firsttable.firstname,firsttable.gender,firsttable.loc,firsttable.pannumber,secondtable.addresses,secondtable.company from firsttable
FULL join secondtable
on firsttable.id=secondtable.id

select firsttable.firstname,firsttable.gender,firsttable.loc,firsttable.pannumber,secondtable.addresses,secondtable.company from firsttable
left join secondtable
on firsttable.id=secondtable.id

CREATE VIEW	rightjoin as(
select firsttable.firstname,firsttable.gender,firsttable.loc,firsttable.pannumber,secondtable.addresses,secondtable.company from firsttable
right join secondtable
on firsttable.id=secondtable.id)

select * from rightjoin

drop procedure example

create procedure example  @passing varchar(20) as
select * from secondtable
where id=@passing

exec example @passing=6
drop trigger trg_exa
create trigger trg_exa on firsttable
for insert
as begin
declare @ID int
select @ID=id from inserted
insert into thirdtable(id,insertedby) values(@ID,ORIGINAL_LOGIN())
end

create table thirdtable(
 id int,
insertedby varchar(25))

select *from firsttable
select *from thirdtable

use dharani

drop table tble_name
create table tble_name(
id int not null,
name varchar(255) not null
)

sp_help tble_name
insert into tble_name values(1,'dharani')
insert into tble_name values(2,'hari')


GO

select * from tble_name

delete from tble_name

truncate table tble_name

