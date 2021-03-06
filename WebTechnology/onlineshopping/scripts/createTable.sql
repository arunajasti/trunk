-- First Login in as a system/password
CREATE tablespace onlineshopping_tabspace
  datafile 'onlineshopping_tabspace.dat'
  size 10M autoextend on;

CREATE TEMPORARY tablespace onlineshopping_tabspace_temp
    tempfile 'onlineshopping_tabspace_temp.dat'
    size 5M autoextend on

CREATE USER onlineshopping IDENTIFIED BY onlineshopping
	DEFAULT TABLESPACE onlineshopping_tabspace
  	TEMPORARY TABLESPACE onlineshopping_tabspace_temp
  	QUOTA 10M on onlineshopping_tabspace;
  
GRANT create session TO onlineshopping;
GRANT create table TO onlineshopping;
GRANT create view TO onlineshopping;
GRANT create any trigger TO onlineshopping;
GRANT create any procedure TO onlineshopping;
GRANT create sequence TO onlineshopping;
GRANT create synonym TO onlineshopping;  

--To check for previledge
select * from session_privs  
--select username from dba_users;

create table reg (usrid varchar2(10) constraint uid_pk primary key,pwd varchar2(10) not null,
hque varchar2(20),hans varchar2(10),fname varchar2(10) not null,lname varchar2(10) not null,
dob date not null,address varchar2(10) not null,city varchar2(10) not null,pin number(6) not null,
state varchar2(10) not null,country varchar2(10) not null,ccname varchar2(10) not null,
ccno varchar2(10) not null,email varchar2(30) not null);

create table books (bno number(4) constraint bno_pk primary key,title varchar2(10) not null,
dop date not null,subject varchar2(10) not null,pname varchar2(10) not null,nocs number(3) not null,
rate number(7,2)not null);

create table music (cdno number(4) constraint cdno_pk primary key, type varchar2(1) not null,
 title varchar2(10) not null, dor date not null, artist1 varchar2(10) not null,artist2 varchar2(10) not null,
nocs number(3) not null, s1 varchar2(10) not null,s2 varchar2(10) not null, rate number(7,5) not null);

create table hware(ino number(4) constraint hino_pk primary key,iname varchar2(10) not null,
make varchar2(50) not null, rate number(7,2) not null);

create table sware (ino number(4) constraint sion_pk primary key,iname varchar2(10) not null,
make varchar2(50) not null);

create table cart (usrid varchar2(10) constraint cuid_pk primary key,
ino number(4) not null,iname varchar2(10) not null,
qty number(2) not null, rate number(7,2) not null);