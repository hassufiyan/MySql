/*date functions:
(dayOfYear,dayOfMonth,datOfDay,dayname,datediff,adddate);
SYNTAX:
SELECT dayofyear("2022-12-23") as dayyear;
SELECT dayofmonth("2022-04-23") as day;
SELECT dayname("2022-12-23");/
SELECT datediff("2022-03-23,2022-04-23") as dayyear;//finding the differnce between days
SELECT quarter("2022-12-23");//finding  quarter in a year;
SELECT Adddate("2022-12-23",INTERVAL 5 DAY);//for days
SELECT addate("2022-12-23,08:30:34",INTERVAL 7 MINUTE);
SELECT Adddate("2022-12-23",INTERVAL 5 week);
SELECT Adddate("2022-12-23",INTERVAL 2 month);
SELECT Adddate("2022-12-23",INTERVAL 6 quarter);
SELECT Adddate("2022-12-23",INTERVAL 30 YEAR)
task DISRICT INFO and taluk info
10 c*/
CREATE DATABASE Movies_List;
CREATE TABLE movies(id int not null,m_name varchar(30) not null,release_date DATE,created_by varchar(20) default "roy",created_at timestamp);
INSERT INTO movies(id,m_name,release_date,created_at)VALUES(1,"kgf","2022-05-21",now());
INSERT INTO movies(id,m_name,release_date,created_at)VALUES(2,"kgf2","2022-05-21",now());
INSERT INTO movies(id,m_name,release_date,created_at)VALUES(3,"kgf3","2022-05-21",now());
SELECT * FROM  movies;

SELECT * FROM movies;


