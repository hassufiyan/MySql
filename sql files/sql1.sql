/*syntax for creating the database
CREATE DATABASE database_name;*/


CREATE DATABASE sep_08;/*this is created only once,so cant run multiple times,it shows error...
USE sep_08;

SHOW DATABASES;
/*syntax for creating the table
CREATE TABLE table_name(column_name data_type,column_name datatype)*/

/*int:it will accpet only numericals
bigint:
boolean:true or false
varchar-alphanumeric*/

CREATE TABLE BANK_TRANSACTION(id int,cust_Name varchar(10),acc_Num bigint,balance bigint);

DESC BANK_TRANSACTION;

CREATE TABLE JAVA_INSTITUE(Institue_name varchar(30),batches int,trainers int)
DESC JAVA_INSTITUE;
/*ALTER :It is a command of DDL,which alters or modifies the structure of table.../*
/* ALTER CAN PERFORM MANY OPERATIONS ON TABLE,
ADD:to add a new column in existiing table,
Synatx:ALTER TABLE table_name ADD COLUMN column_name datatypes;

DROP:to drop a column from existing table..
Synatx:ALTER TABLE table_name DROP COLUMN column_name;

RENAME:to rename a column name,
Synatx:ALTER TABLE table_name RENAME COLUMN oldcolumn_name to column_name;

MODIFY:to change the dtattype in existing table,
Syntax:ALTER TABLE table_name MODIFY COLUMN column_name olddatatype to newdatatype;*/
  
CREATE TABLE ELECTION_ENROLMENT(Voter_name varchar(20),place varchar(50),age int,date_of_birth bigint)

desc  ELECTION_ENROLMENT

RENAME TABLE ELECTION_ENROLMENT to ELECTION_ID_INFO;


SELECT * FROM ELECTION_ENROLMENT;
SELECT * FROM ELECTION_ID_INFO;

SELECT * FROM java_institue
DESC java_institue;
ALTER TABLE java_institue ADD COLUMN timings int;
ALTER TABLE java_institue MODIFY COLUMN timings int TO varchar(10);

DML;
/*WHERE CLAUSE:it is used to fetch or filter the particular column from table,read only..
SYNTAX:



UPDATE:

/*SYNTAX:UPDATE table_name SET column_name="new data" WHERE condtion;*/
/*UPDATE ELECTION_ID_INFO SET age= 12 WHERE VOTER_NAME='something';*/

/*DELETE:
SYNTAX:DELETE FROM table_name WHERE condition;
ROLLBACK:TO get deleted data of tables



