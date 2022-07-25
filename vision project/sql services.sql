create database Services

use Services

create table tbl_admin
(
ad_id int primary key identity,
ad_name varchar(50) not null,
ad_email varchar(50) not null,
ad_password varchar(50) not null
)





create table tbl_customer
(

cus_id int primary key identity,
Name varchar (50) not null,
cus_email varchar (50) not null,
cus_password varchar (50) not null,
cus_imge varchar(max) not null,
last_name varchar (50) not null,
Dob datetime ,
Gender varchar (50) not null ,
contact int,
cus_address varchar (50) not null,
ad_id_fk int foreign key references tbl_admin(ad_id),
 
 
)
 
 create table tbl_services
(
Ser_id int primary key identity,
Ser_name varchar(50) not null,
Ser_price int ,
Ser_desc varchar(250) not null,
Ser_image varchar(max) not null,

ad_id_fk int foreign key references tbl_admin(ad_id),
cus_id_fk int foreign key references tbl_customer(cus_id)
)


 create table tbl_invoice
  (
  inv_id int primary key identity,
  in_date datetime,
  total_bill float,
  ad_id_fk int foreign key references tbl_admin(ad_id),
 
 Ser_id_fk int foreign key references tbl_services(Ser_id),
  cus_id_fk int foreign key references tbl_customer (cus_id)
  )
 

 create table tbl_order
 (
 order_id int primary key identity,
 folder_name nvarchar (max) not null,
 
 R_email_text varchar (50) not null,
 R_email_subject varchar (50) not null,
 CreditCard varchar (50) not null,
  order_bill float,
  unit_price float,
  order_qty int,

  ad_id_fk int foreign key references tbl_admin(ad_id),


 Ser_id_fk int foreign key references tbl_services(Ser_id),
  cus_id_fk int foreign key references tbl_customer (cus_id),
  inv_id_fk int foreign key references tbl_invoice (inv_id )
 )

  

create table tbl_seller
(

    visit_id INT PRIMARY KEY IDENTITY ,
    first_name VARCHAR (50) NOT NULL,
    
	sel_password varchar(50) not null,
	sel_image varchar(max) not null,
    visited_at DATETIME,
    phone VARCHAR(20),
   city VARCHAR(20),

    ad_id_fk int foreign key references tbl_admin(ad_id),
 Ser_id_fk int foreign key references tbl_services(Ser_id),
  cus_id_fk int foreign key references tbl_customer (cus_id),
  inv_id_fk int foreign key references tbl_invoice (inv_id ),
   order_id_fk int foreign key references tbl_order (order_id )


)

