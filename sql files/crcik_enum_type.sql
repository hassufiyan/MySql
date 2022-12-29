/*SUB QUERIES:
query in a query,it is also called as inner,sub or nested query..
sub auery will always execute first,
whatever the result of the sub query it is passed to main query...
when we need to fetch the data that requires more than 1 quries,at that time we will use sub queries...
SELECT b_name FROM bank_info WHERE b_id=(SELECT b_id FROM cuat_info WHERE c_name="roy") here the result we get from b_id of bank_information is passed to main quiery;

if we want to fetch multiple values we use "in" opearator,

SELECT b_name FROM bank_info WHERE b_id in SELECT b_id FROM cust_info WHERE c_name in("roy","jason","Alex"));

SELECT b_name FROM bank_info WHERE b_id=(SELECT b_id FROM cust_info WHERE c_id)=(SELECT c_id FROM loan_info WHERE loan_type="education loan);*/
/* AUtoIncreament should alwyas be wit primary key...*/

SELECT * FROM cricket;
 
create table cricket(id int primary key auto_increment,series_name varchar(30) not null,type enum("Test","Odi","t20") not null,overs int not null);

INSERT INTO cricket  (id,series_name,type,overs) VALUES(1,"PAYTYM ODI","ODI",50);
INSERT INTO cricket  (id,series_name,type,overs) VALUES(2,"Mustaq_Ali Trophy ODI","odi",50);
INSERT INTO cricket  (id,series_name,type,overs) VALUES(3,"IPL","t20",20);
INSERT INTO cricket  (id,series_name,type,overs) VALUES(4,"sahara Trophy","Test",120);
INSERT INTO cricket  (id,series_name,type,overs) VALUES(1,"Saviour Odi","50 overs",50);
