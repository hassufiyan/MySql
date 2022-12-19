CREATE TABLE watches(name varchar(30) not null,price int, check (price>=1000),brand varchar(30) not null unique,color varchar(20) not null,type varchar(20) not null,water_resistant boolean not null);
select * FROM  watches;
DROP TABLE   watches;
ALTER TABLE watches ADD COLUMN strap_type varchar(30) not null;
ALTER TABLE watches DROP COLUMN strap_type
ALTER TABLE watches MODIFY COLUMN type varchar(50);

SELECT name,brand from watches where price=6500;


INSERT into watches VALUES("Tissot PRX watch",6500,"Tissot","Grey","Analogue",False,"Chain"); 
INSERT into watches VALUES("Swatch 1907 Bau watch",7300,"Swatch","BLACK","Analogue",False,"Belt"); 
INSERT into watches VALUES("Casio G-Shock DW6900 watch",5500,"Casio","Black","Digital",True,"Belt"); 
INSERT into watches VALUES("Seiko SZSB018 watch",4500,"Seiko","Purple","Analogue",False,"Belt"); 
INSERT into watches VALUES("Orient Sports Diver's watch",8900,"Orient","light grey","Analogue",True,"Chain"); 
INSERT into watches VALUES("RM 65-01 Split-Second",23300,"Richard Mille","Dark Grey","Automatic Chronograph",False,"Belt"); 
INSERT into watches VALUES("Cartier Pasha",9078,"Cartier","Grey","Analogue",False,"Belt");
INSERT into watches VALUES("Expedition Scout",5300,"Timex","Black","Analogue",False,"Chain");  

