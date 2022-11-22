create database bank;
use bank;
create table branch
(
branch_name varchar(20),
branch_city varchar(20),
assets int,
primary key(branch_name)
);

create table bank_acc
(
acc_no int,
branch_name varchar(20),
balance int,
primary key(acc_no),
foreign key(branch_name) references branch(branch_name)
);
create table bank_customer
(
cust_name varchar(20),
cust_street varchar(20),
cust_city varchar(20),
primary key(cust_name)
);

create table depositer
(
cust_name varchar(20),
acc_no int,
foreign key(cust_name) references bank_customer(cust_name),
foreign key(acc_no) references bank_acc(acc_no)
);

create table loan
(
loan_no int,
branch_name varchar(20),
amount int,
primary key(loan_no),
foreign key(branch_name) references branch(branch_name)
);
insert into branch values
("sbi_gokak","gokak",50000),
("sbi_belagavi","belagavi",10000),
("sbi_bengaluru","bengaluru",20000),
("sbi_mysore","mysore",10000),
("sbi_hassana","hassana",20000);

insert into bank_acc values
(01,"sbi_gokak",2000),
(02,"sbi_belagavi",5000),
(03,"sbi_bengaluru",6000),
(04,"sbi_mysore",9000),
(05,"sbi_hassana",8000);

insert into bank_customer values
("sai","ashrama_circle","basavanagudi"),
("imran","chennamma_circle","hubballi"),
("paddu","hebbala","yalahanka"),
("madhu","dvg_road","gandhi_bhajar"),
("jaggu","ganesh_bhavana","hanumanthanagar");


insert into depositer values
("sai",01),
("imran",02),
("paddu",03),
("madhu",04),
("jaggu",05);
insert into loan values
(11,"sbi_gokak",1000),
(12,"sbi_belagavi",2000),
(13,"sbi_bengaluru",3000),
(14,"sbi_mysore",4000),
(15,"sbi_hassana",5000);




 
