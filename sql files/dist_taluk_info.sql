CREATE DATABASE District_Taluks;

create TABLE District_info(dist_name varchar(30) ,dist_population int,check(dist_population>30000),famous_place varchar(40) not null,no_of_taluks int not null,check(no_of_taluks>=100),dist_headquatres varchar(30),famous_food varchar(30) unique,DC varchar(50) not null unique,no_of_govt_schools bigint not null,Area bigint,belongs_to_state varchar(20)  default "Karnataka",primary key(dist_name));
DROP TABLE District_info;
DROP TABLE Taluk_info;
CREATE TABLE Taluk_info(dist_name varchar(30),taluk_name varchar(30) unique,taluk_population int,check(taluk_population>=20000),taluk_panchyath_office varchar(40) unique,gram_panchayth_members bigint not null,Area bigint,foreign key(dist_name) references District_info(dist_name));
DESC Taluk_info
DESC District_info;

ALTER TABLE District_info MODIFY COLUMN famous_food varchar(40);  
AlTER TABLE District_info drop column belongs_to_state;
ALTER TABLE District_info drop column brlongs_to_state;  
SELECT * FROM District_info
SELECT * FROM Taluk_info
ALTER TABLE District_info ADD COLUMN belongs_to_state varchar(20) default "Karnataka";
ALTER TABLE Taluk_info ADD COLUMN taluk_code int;
Alter TABLE Taluk_info RENAME COLUMN distName to dist_name; 
Alter TABLE Taluk_info RENAME COLUMN taluk_population to population; 
Alter TABLE District_info RENAME COLUMN dist_population to population,check(population>=30000); 
ALTER TABLE District_info DROP CONSTRAINT check;
alter table Taluk_info drop constraint (foriegn key);

DROP TABLE Taluk_info
Truncate TABLE District_info
ALTER TABLE District_info ADD column Area bigint;  
ALTER TABLE District_info RENAME COLUMN local_government to DC;
ALTER TABLE District_info drop COLUMN dist_field;
ALTER TABLE District_info MODIFY COLUMN dist_population bigint;

INSERT INTO District_info VALUES("Bidar",241095,"Bidar Fort",124,"Bidar","Bele palya    ","Govind Reddy",1459,5448,"karnataka");
INSERT INTO District_info VALUES("Bagalkot",1889752,"Archeological Museum",134,"Bagalkot","Anant ki lassi    ","Sunil Kumar",1243,657,"karnataka");
INSERT INTO District_info VALUES("Ballary",2452595,"Ballari fort",164,"Ballari","Bellary baba Badnekai   ","Pavan Kumar Malapati",1859,8450,"karnataka");
INSERT INTO District_info VALUES("Bengaluru urban",9621551,"Freedom Park",184,"Bengaluru","Rave Idli,ragi mudde    ","Sangappa",1679,2190,"karnataka");
INSERT INTO District_info VALUES("Chikballapur",1255104,"Kalaguru Art Gallery",197,"chikballapur","Biryani,idli,sambar    ","Nagaraj N.M.",2349,5101,"karnataka");
INSERT INTO District_info VALUES("vijaypur",2177331,"Jumma Masjid",224,"Vijaypur","Anna Idli Gruha    ","Viajmahantesh b Danammana",1456,10494,"karnataka");
INSERT INTO District_info VALUES("chikkamagaluru",1137961,"Baba Budangiri",112,"chikkamagaluru","Coffee    ","KN Ramesh",2356,7201,"karnataka");
INSERT INTO District_info(dist_name,dist_population,famous_place,no_of_taluks,dist_headquatres,famous_food,DC,no_of_govt_schools,Area)  VALUES("Belagaum",4779661,"Dupdal",146,"Belagaum","katchi dabelli    ","Nithesh Patil",1675,13415);

truncate table Taluk_info;

INSERT INTO Taluk_info VALUES("Bidar","Aurad",142309,"Auradtaluk",3314,1224,95,600154);
INSERT INTO Taluk_info VALUES("Bagalkot","Mudhol",188976,"Mudhol",1876,6552,97,899765);
INSERT INTO Taluk_info VALUES("Ballary","Kampli",1324346,"Kampli",3215,1876,90,455690);
INSERT INTO Taluk_info VALUES("Bengaluru urban","Aluru ",1256089,"Begaluru North",1675,2156,64,560078);
INSERT INTO Taluk_info VALUES("Chikballapur","Gudibande",1876478,"Gudibande",1890,2367,93,178654);
INSERT INTO Taluk_info VALUES("vijaypur","Sindagi",1765324,"Vijypura",3287,1997,78,459876);
INSERT INTO Taluk_info VALUES("chikkamagaluru","Kadur",2345760,"chikkamagaluru",1378,3875,36,236502);
INSERT INTO Taluk_info VALUES("Belagaum","Gokak",2634964,"Belgaum",2436,4596,86,300987);

ALTER TABLE Taluk_info ADD COLUMN taluk_villages int;
ALTER TABLE Taluk_info ADD COLUMN pincode int;




