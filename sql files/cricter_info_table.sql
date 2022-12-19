CREATE database Cricketer_info;
CREATE table Player(name varchar(20),age int,specialization varchar(30),Average int,strike_rate int,no_of_matches_played bigint,team varchar(30),best_score bigint,nationality varchar(30),bowling boolean);

desc Player;

ALTER TABLE Player RENAME COLUMN bowling to hand_type;


ALTER TABLE Player MODIFY COLUMN hand_type varchar(20);
ALTER TABLE Player MODIFY COLUMN Average float;
ALTER TABLE Player MODIFY COLUMN strike_rate float;
ALTER TABLE Player MODIFY COLUMN no_of_matches_played varchar(10);
ALTER TABLE Player RENAME COLUMN nationality TO COUNTRY;


INSERT  INTO Player  VALUES("Sachin Tendulkar",20,"batsman",122.2,256.4,10,"MUMBAI INDIANS",111,"INDIA","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("AB DE Villiars",24,"batsman",182.2,456.3,12,"RCB",150,"SOUTH AFRICA","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("Virat Kohli",23,"batsman",192.4,200.0,5,"RCB",98,"INDIA","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("BRENDOM MACCULUM",29,"Wicket_Keeper_batsman",108.9,234.5,20,"KKR",158,"NEWZEALAND","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("MS Dhoni",17,"Wicket_Keeper_batsman",112.2,286.2,15,"CSK",92,"INDIA","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("David Warner",21,"batsman",132.6,272.6,18,"SRH",121,"AUSTRALIA","LEFT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("Rashid Khan",9,"All_Rounder",110.32,210.9,7,"SRH",76,"INDIAN","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("Mohammed Shami",13,"Bowler",68.34,132.4,21,"K11P",39,"INDIA","RIGHT_ARM_FAST");
INSERT  INTO Player  VALUES("Kevin Peterson",27,"batsman",182.3,298.32,30,"RCB",128,"SOUTH_AFRICA","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("Ravindra Jadeja",12,"All_Rounder",112.3,234.6,12,"CSK",76,"INDIA","LEFT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("    Andrew Russel",21,"All_Rounder",182.3,223.6,12,"KKR",182,"WEST_INDIES","RIGHT_HANDED_BATSMAN");
INSERT  INTO Player  VALUES("ADAM GILCRIST    ",32   ,"Wicket_Keeper_batsman    ",121.34,256.67,23,"SRH",123,"AUSTRALIA","LEFT_HANDED_BATSMAN");

DELETE FROM Player WHERE NAME="AB DE Villiars" and age=24;
SELECT * FROM Player;

SELECT UPPER(name),age as player_age FROM Player;
SELECT LOWER(specialization) as speciality FROM Player;
SELECT concat(name , specialization) as player_details from Player;
SELECT LENGTH(name) from Player ORDER BY name DESC;
SELECT INSTR(age,2)  from Player;
SELECT substr(team,2)  from Player;
SELECT LENGTH(name) as player_name from Player ORDER BY name DESC;
SELECT LTRIM(name) as player_name from Player;
SELECT RTRIM(name) as player_name from Player;
SELECT LENGTH(name) as player_name from Player ORDER BY name DESC;
SELECT RTRIM(LTRIM(name)) as player_name from Player;





  
