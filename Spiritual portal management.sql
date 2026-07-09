
create database test_portal;
use test_portal;
create table students (id int primary key auto_increment, name varchar(100));
use test_portal;
create table test (id int primary key auto_increment, chapter varchar(100));
create table bookings (id int primary key auto_increment,user_id int, test_id int, booking_date date);
create table results (id int primary key auto_increment, user_id int, test_id int, score varchar(20),status varchar(20));
 show tables;
 use test_portal;
 insert into students (id,name)values (0411,'sudhakar'); 
 insert into students (id, name) values (0412,' mohankrishna');
 insert into students (id,name) values (0413,'jhahnavi');
 insert into students (id,name) values (0414,'aparna');
 insert into students (id, name) values(0415, 'manimala');
 insert into students (id, name) values(0416, 'kalyani');
 insert into students (id,name) values (0417, 'rajesh');
 select * from students;
 insert into students (id,name)values (0417,'sudhakar reddy'); 
 insert into students (id, name) values (0418,'haritha');
 insert into students (id,name) values (0419,'rama');
 insert into students (id,name) values (0420,'sindhu');
 insert into students (id, name) values(0421, 'rajeswari');
 insert into students (id, name) values(0422, 'shanthi');
 insert into students (id, name) values(0423,'Himanshi');
 insert into students (id,name) values(0424,'Sangnitha');
 insert into students (id,name) values (0425, 'rajesh');
 insert into students (id,name) values (0426, 'kamala');
 insert into test( id,chapter) values(1,'chapter1');
 insert into test( id,chapter) values(2,'chapter2');
 insert into test( id,chapter) values(3,'chapter3');
 insert into test( id,chapter) values(4,'chapter4');
 insert into test( id,chapter) values(5,'chapter5');
 insert into test( id,chapter) values(6,'chapter6');
 insert into test( id,chapter) values(7,'chapter7');
 insert into test( id,chapter) values(8,'chapter8');
 insert into test( id,chapter) values(9,'chapter9');
 insert into test( id,chapter) values(10,'chapter10');
 insert into test( id,chapter) values(11,'chapter11');
 insert into test( id,chapter) values(12,'chapter12');
 insert into test( id,chapter) values(13,'chapter13');
 insert into test( id,chapter) values(14,'chapter14');
 insert into test( id,chapter) values(15,'chapter15');
 insert into test( id,chapter) values(16,'chapter16');
 insert into test( id,chapter) values(17,'chapter17');
 insert into test( id,chapter) values(18,'chapter18');
select * from test;
insert into bookings (id, user_id, test_id, booking_date) values (1,411,01,'2026-02-07');
insert into bookings (id, user_id, test_id, booking_date) values (2,412,01,'2026-02-28');
insert into bookings (id, user_id, test_id, booking_date) values (3,0413,02,'2026-03-01');
insert into bookings (id, user_id, test_id, booking_date) values (4,0411,01,'2026-02-04');
insert into bookings (id, user_id, test_id, booking_date) values (5,0418,03,'2026-02-10');
insert into bookings (id, user_id, test_id, booking_date) values (6,411,01,'2026-02-07');
insert into bookings (id, user_id, test_id, booking_date) values (7,417,03,'2026-03-07');
insert into bookings (id, user_id, test_id, booking_date) values (8,415,02,'2026-03-21');
insert into bookings (id, user_id, test_id, booking_date) values (9,416,03,'2026-03-07');
insert into bookings (id, user_id, test_id, booking_date) values (10,419,01,'2026-02-04');
insert into bookings (id, user_id, test_id, booking_date) values (11,423, 04,'2026-04-25');
insert into bookings (id, user_id, test_id, booking_date) values (13,425, 04,'2026-04-26');
insert into bookings (id, user_id, test_id, booking_date) values (16, 427, 03, '2026-05-02');
INSERT INTO bookings (user_id, test_id, booking_date)
VALUES (413, 3, CURDATE());
INSERT INTO bookings (user_id, test_id, booking_date) VALUES (423, 4, CURDATE());
INSERT INTO bookings (user_id, test_id, booking_date) VALUES (424, 3, CURDATE());
select * from bookings;
insert into results (id, user_id,test_id,score,status) values(1,411,01,'A,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(2,412,01,'A,A','PASS');
insert into results (id, user_id,test_id,score,status) values(3,413,02,'A,A','PASS');
insert into results (id, user_id,test_id,score,status) values(4,414,02,'A+,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(5,415,03,'A+,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(6,416,04,'A+,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(7,411,01,'A,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(8,419,04,'A,A+','PASS');
insert into results (id, user_id,test_id,score,status) values(9,419,02,'','RETEST');
insert into results (id, user_id,test_id,score,status) values(10,415,02,'','RETEST');
insert into results (id, user_id,test_id,score,status) values(11,412,03,'','RETEST');
insert into results (id, user_id,test_id,score,status) values(12,413,01,'','RETEST');
insert into results (id, user_id,test_id,score,status) values(21,421,01,'','RETEST');
insert into results (id, user_id, test_id, score, status) values(23,423,03,'A+,A','Pass');
insert into results (id, user_id, test_id,score,status) values(25, 424,04,'','retest');
insert into results (id, user_id, test_id,score,status) values(26, 424,03,'A,A','PASS');
insert into results (id, user_id, test_id,score,status) values(27, 426,03,'A+,A','PASS');


select * from results;
use test_portal;
SELECT CASE WHEN COUNT(*) > 0 THEN 'BLOCK' ELSE 'ALLOW' END AS booking_status FROM results WHERE user_id = 411 AND test_id = 1 
AND status = 'PASS';
select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id =421 and test_id =21 and status ='RETEST';
select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id= 413 and test_id = 12 and
 status = 'RETEST';
 select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id= 412 and test_id = 12 and status = 'PASS';
 select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 423 and test_id = 04 and status = 'PASS';
 select case when count(*) > 0 then  'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 424 and test_id = 02 and status = 'PASS';

 select case when count(*) > 0 then  'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 424 and test_id = 03 and status = 'pass';
 SELECT user_id, test_id, status FROM results WHERE user_id = 411;
 select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 411 and test_id =01 and status = 'PASS';
 select case when count(*) > 0 then 'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 411 and test_id = 01 and status = 'PASS';
 SELECT user_id, test_id, curdate() FROM results WHERE user_id = 412;
 INSERT INTO bookings (user_id, test_id, booking_date)
SELECT 412, 1, CURDATE() WHERE NOT EXISTS (SELECT 1 FROM results WHERE user_id = 412 AND test_id = 1 AND status = 'PASS');
select * from bookings;
insert into bookings (user_id, test_id, booking_date)
select 413,3, curdate() where not exists (select 3 from results where user_id = 413 and test_id =2 and status = 'PASS');
select * from bookings where curdate();
insert into bookings (user_id, test_id, booking_date)
select 413,3, curdate() where not exists (select 3 from results where user_id = 413 and test_id =3 and status = 'pass');
SELECT * FROM bookings WHERE user_id = 412;
SELECT * FROM bookings WHERE booking_date = CURDATE();
  SELECT CASE WHEN EXISTS (SELECT 2 FROM results WHERE user_id = 412 AND test_id = 1 AND status = 'retest')
THEN 'BOOKING BLOCKED'
  ELSE 'BOOKING ALLOWED'
END AS result;
 SELECT CASE WHEN EXISTS (SELECT 2 FROM results WHERE user_id = 423 AND test_id = 1 AND status = 'pass')
THEN 'BOOKING BLOCKED'
  ELSE 'BOOKING ALLOWED'
END AS result;
select case when count(*) > 0 then  'BLOCK' else 'ALLOW' end as booking_status from results where user_id = 424 and test_id = 03 and status = 'pass';
SELECT * 
FROM bookings 
WHERE booking_date = CURDATE();
SELECT * FROM results;
SELECT * FROM results
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/results.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
select * from bookings;
select * from bookings into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bookings.csv'
fields terminated by','enclosed by'"'lines terminated by '\n';
select * from test;
select * from students;
SELECT 'id','user_id','test_id','score','status'
UNION ALL
SELECT id, user_id, test_id, score, status
FROM results
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/results1.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
select * from test into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/test.csv'
fields terminated by','enclosed by '"' lines terminated by '\n';
select * from students into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/students1.csv'
fields terminated by',' enclosed by '"'lines terminated by '\n';

SELECT 'id','user_id','test_id','booking_date'
UNION ALL
SELECT id, user_id, test_id, booking_date
FROM bookings
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bookings1.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SELECT 'id','name'
UNION ALL
SELECT id, name
FROM students
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/students1.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SELECT 'id','chapter'
UNION ALL
SELECT id, chapter
FROM test
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/test1.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
//Implisit and explisit conversion
select * from bookings where booking_date= '2026-04-25';
select * from bookings where booking_date = cast('2026-04-25' as date);
select decode()
