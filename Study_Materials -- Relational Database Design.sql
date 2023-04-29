Create Database User_Roles

/*Tasks to be performed:
Define relations/attributes
Define primary keys
Create foreign keys*/

/*1) Insert data into each of the above tables. With at least two rows in each of
the table, make sure, that you have created respective foreign keys.
2) Delete all the data from each of the tables.*/

Create Table role
(
	id int primary key,
	role_name varchar (100)
)

Create Table user_account
(
	id int primary key ,
	user_name varchar(100),
	email varchar (254) ,
	password varchar (200) ,
	password_salt varchar (50) ,
	password_hash_algorithm varchar (50) 
)
Alter table user_account
Alter Column password_hash_algorithm nvarchar (250) ;

Alter table user_account
Alter Column password_salt nvarchar (250) ;




Create Table user_has_role
(
	id int primary key ,
	role_start_time datetime ,
	role_end_time datetime ,
	user_account_id int foreign key References user_account(id) ,
	role_id int foreign key References role (id)
)

Drop table user_has_role

Create Table status
(
	id int primary key ,
	status_name varchar (100) ,
	is_user_working bit default 0 not null 
)

Create Table user_has_status
(
	id int primary key ,
	status_start_time datetime,
	status_end_time datetime ,
	user_account_id int foreign key References user_account(id) ,
	status_id int foreign key References status (id)
)

Drop Table user_has_status ;

Select * from role ;
Select * from user_has_role ;
Select * from user_account ;
Select * from status ;
Select * from user_has_status ;

Insert into role
Values
(1,'Sr.Manager'),
(2,'Manager'),
(3,'Data Engineer' ),
(4,'Data Scientist')


Insert into user_account
(id ,user_name, email ,password ,password_salt ,password_hash_algorithm)

SELECT 3,'Sam','sam@gmail.com','red','red#j%',HASHBYTES('SHA2_256','@red#j%') UNION ALL
SELECT 4,'Josh','josh@gmail.com','yellow','yellow#y%',HASHBYTES('SHA2_256','yellow#y%') UNION ALL
SELECT 5,'Cathy','cathy@gmail.com','green','green#k%',HASHBYTES('SHA2_256','@green#k%') UNION ALL
SELECT 6,'Rony','rony@gmail.com','blue','blue#q%',HASHBYTES('SHA2_256','@green#q%') 

Insert into status
Values 
(8,'ADMIN',1),
(9,'HOD',0),
(10,'PROFESSOR',1)

Insert into user_has_role
Values
(1,'2022-08-12 10:00:45','2022-08-12 18:00:56',3,1),
(2,'2021-08-13 11:00:23','2022-08-13 19:02:34',4,2),
(3,'2018-08-13 11:00:23','2021-08-13 19:02:34',5,1),
(4,'2017-08-13 11:00:23','2020-08-13 19:02:34',6,3)

Insert into user_has_status
Values
(1,'2022-08-12 10:00:45','2022-08-12 18:00:56',3,8),
(2,'2022-08-13 11:00:23','2022-08-13 19:02:34',4,9),
(3,'2022-08-13 11:00:23','2022-08-13 19:02:34',5,10),
(4,'2022-08-13 11:00:23','2022-08-13 19:02:34',6,9)

Truncate Table role ;

Alter Table user_has_role
drop Constraint [FK__user_has___role___534D60F1],[FK__user_has___user___52593CB8] ;

Truncate Table user_has_role ;

Truncate Table user_account ;

Alter table user_has_status 
Drop Constraint [FK__user_has___statu__571DF1D5],[FK__user_has___user___5629CD9C] ;

Truncate Table user_has_status ;

Truncate Table status ;

Select * from role ;
Select * from user_has_role ;
Select * from user_account ;
Select * from status ;
Select * from user_has_status ;






