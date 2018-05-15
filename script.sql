DROP DATABASE IF EXISTS COMP3095;

CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;
grant all on COMP3095.* to 'admin'@'localhost' identified by 'admin'; 

CREATE TABLE USERS 
( 
  id int(11) AUTO_INCREMENT PRIMARY KEY, 
  employee_number varchar(255),
  role varchar(20),
  email varchar(255), 
  password varchar(20),
  first_name varchar(255),
  last_name varchar(255),
  username varchar(20),
  year_hired varchar(255),
  department_id int(11)
);

CREATE TABLE DEPARTMENTS
(
  id int(11) AUTO_INCREMENT PRIMARY KEY,
    department_name varchar(255),
    location varchar(255)
);

CREATE TABLE GROUPS
(
  id int(11) AUTO_INCREMENT PRIMARY KEY,
  department_id int(11),
  group_name varchar(255)
);

CREATE TABLE USER_GROUP
(
  id int(11) AUTO_INCREMENT PRIMARY KEY,
    user_id int(11),
    group_id int(11)
);

CREATE TABLE ATTENDANCE
(
	id int(11) AUTO_INCREMENT PRIMARY KEY,
	attendance_date varchar(255),
	department_id int(11)
);

CREATE TABLE USER_ATTENDANCE
(	
	id int(11) AUTO_INCREMENT PRIMARY KEY,
	attendance_id int(11),
	user_id int(11)
);


INSERT INTO `USERS` (`first_name`, `last_name`, `email`, `role`, `username`, `password`) VALUES
("adminfirst", "adminlast", "admin@domain.ca", 1, "admin", "admin");