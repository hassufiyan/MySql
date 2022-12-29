CREATE DATABASE Joints
RENAME DATABASE FROM Joints to joins;
CREATE TABLE bank_information(id int not null,b_name varchar(30) unique not null,b_id int not null,no_of_customers int not null,loan_status varchar(30) default "ACTIVE",location varchar(30) not null);
CREATE TABLE cust_information(id int not null,c_name varchar(30) unique not null,c_id int not null,balance bigint not null,b_id int not null,c_location varchar(30));
CREATE TABLE loan_information(id int not null,loan_type varchar(40),loan_amount bigint not null,c_id int not null);
SELECT * FROM bank_information;
SELECT * FROM cust_information;
SELECT * FROM loan_information;

INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(1,"Axis bank",501,223345,"K.R.road");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(2,"HDFC bank",502,22434,"Dollars colony");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(3,"Punjab National bank",503,167890,"JP Nagar 6th phase");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(4,"IDFC First Bank",504,239874,"K.S Layout");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(5,"Karnataka Bank",505,240876,"BTM Layout");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(6,"ICICI bank",506,284679,"Kormangla");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(7,"Kotak Mahindra Bank",507,298760,"Malleshwaram");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(8,"Bank Of Baroda",509,165234,"K.R.Market");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(9,"Canara Bank",509,489560,"JC Road circle");
INSERT INTO bank_information(id,b_name,b_id,no_of_customers,location)VALUES(10,"State B ank Of India",510,562909,"Majestic");

INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(1,"Vijay Kumar",230,234522,506,"Kormangla");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(2,"Anil Kumar",235,2264511,512,"Whitefield");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(3,"Sunil Kumar",236,34786,501,"BTM Layout");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(4,"Ramesh ",232,98234,516,"JC Road");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(5,"Jason",238,75967,502,"Hebbal");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(6,"roy",240,67856,508,"K.R.Market");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(7,"Alex",242,295890,507,"Majestic");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(8,"Martin",260,48679,523,"K.S Layout");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(9,"Roger",2108,284597,518,"Katrigupe");
INSERT INTO cust_information(id,c_name,c_id,balance,b_id,c_location)VALUES(10,"kishore",2378,104568,514,"Rajajinagar");

INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(1,"Car Loan",430000,245);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(2,"Home Loan",3023869,242);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(3,"Personal Loan",890456,240);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(4,"Gold Loan",1267845,238);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(5,"Loan against property",2034967,232);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(6,"Loan against share",245387,263);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(7,"Loan against FD",409346,281);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(8,"Bussiness Loan",1574265,236);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(9,"Mortgage Loan",203847,235);
INSERT INTO loan_information(id,loan_type,loan_amount,c_id)VALUES(10,"Education Loan",634968,245);

SELECT * FROM bank_information b_i inner join  cust_information c_i on b_i.b_id=c_i.b_id INNER JOIN loan_information l_i on c_i.c_id=l_i.c_id; 
SELECT b_i.b_id,b_i.b_name,c_i.b_id,c_i.c_name FROM bank_information b_i inner join  cust_information c_i on b_i.b_id=c_i.b_id; 
SELECT c_i.c_id,l_i.c_id,c_i.c_name,l_i.loan_type FROM cust_information c_i LEFT JOIN loan_information l_i on c_i.c_id=l_i.c_id;





UPDATE bank_information SET loan_status="Deactive" WHERE b_id in (SELECT b_id FROM cust_information WHERE c_id in (SELECT c_id FROM loan_information WHERE loan_type="Gold Loan"));
SELECT * FROM bank_information

SELECT b_name FROM bank_information WHERE b_id  in (SELECT b_id FROM cust_information WHERE c_id in (SELECT c_id FROM loan_information WHERE loan_type="Gold Loan"));

DELETE FROM  bank_information WHERE b_id = (SELECT b_id FROM cust_information WHERE c_id = (SELECT c_id FROM loan_information WHERE loan_type="Home Loan"));
UPDATE bank_information SET id=11 in (SELECT b_id FROM cust_information WHERE c_id in (SELECT c_id FROM loan_information WHERE id=10));
