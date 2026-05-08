create database DataEngineer;
use  DataEngineer;
create table empy (emp_no int, emp_name varchar(10), job varchar(9), mgr int, hire_date date,
salary int, comm int, dept_no int, grade int);
INSERT INTO EMPY VALUES
(7879, 'JACK', 'CLERK', 7902, CAST('1984-12-19' as DATE), 650, NULL, 20, 5);
INSERT INTO EMPY VALUES
(7369, 'SMITH', 'CLERK', 7902, CAST('1980-12-17' as DATE), 800, NULL, 20, 5);
INSERT INTO EMPY VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, CAST('1981-02-20' as DATE), 1600, 300, 30, 3);
INSERT INTO EMPY VALUES
(7566, 'JONES', 'MANAGER', 7839, CAST('1981-04-02' as DATE), 2975, NULL, 20, 2);
INSERT INTO EMPY VALUES
(7654, 'MARTIN', 'SALESMAN', 7698, CAST('1981-09-28' as DATE), 1250, 1400, 30, 4);
INSERT INTO EMPY VALUES
(7698, 'BLAKE', 'MANAGER', 7839, CAST('1981-05-01' as DATE), 2850, NULL, 30, 2);
INSERT INTO EMPY VALUES
(7782, 'CLARK', 'MANAGER', 7839, CAST('1981-06-09' as DATE), 2450, NULL, 10, 2);
INSERT INTO EMPY VALUES
(7788, 'SCOTT', 'ANALYST', 7566, CAST('1982-12-09' as DATE), 3000, NULL, 20, 1);
INSERT INTO EMPY VALUES
(7839, 'KING', 'PRESIDENT', NULL, CAST('1981-11-17' as DATE), 5000, NULL, 10, 1);
INSERT INTO EMPY VALUES
(7844, 'TURNER', 'SALESMAN', 7698, CAST('1981-09-08' as DATE), 1500, NULL, 30, 3);
INSERT INTO EMPY VALUES
(7876, 'ADAMS', 'CLERK', 7788, CAST('1983-01-12' as DATE), 1100, NULL, 20, 4);
INSERT INTO EMPY VALUES
(7900, 'JAMES', 'CLERK', 7698, CAST('1981-12-03' as DATE), 950, NULL, 30, 5);
INSERT INTO EMPY VALUES
(7902, 'FORD', 'ANALYST', 7566, CAST('1981-12-03' as DATE), 3000, NULL, 20, 1);
INSERT INTO EMPY VALUES
(7934, 'MILLER', 'CLERK', 7782, CAST('1982-01-23' as DATE), 1300, NULL, 10, 3);
use dataengineer;
select * from empy;
select * from empy;
insert into empy values(9999,'Jack','villon',9999,cast('1999-03-21'as date),1999,null,11,4);
INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');
select * from DEPT;
insert into DEPT values(50,'Administration','Atlanta');
insert into DEPT values(60,'Accounts','Dallas');
select * from DEPT;
select * from empy;
select * from empy order by salary asc;
select * from empy order by dept_no asc;
select * from empy order by grade desc;
select * from empy order by hire_date asc;
select * from empy order by comm asc;
select distinct job from empy order by job asc;
select distinct job from empy order by job desc;
select * from empy where job='Managers';
select * from empy where job='clerk';
select * from empy where job='attender';
select * from empy where hire_date='1980-1-1';
select * from empy where hire_date='2018-1-1';
select * from empy where hire_date='1999-1-1';
select emp_no,emp_name,salary,(salary*12/365)as daily_salary from empy order by (salary*12)asc;
select emp_no,emp_name,salary,(salary*6/180)as daily_salary from empy order by (salary*6)desc;
select emp_no,emp_name,salary,(salary*3/90)as daily_salary from empy order by (salary*3) asc;
select emp_no,emp_name,job,hire_date,(year(current_date())-year(hire_date))as exp from empy where job='clerk';
select emp_no,emp_name,job,salary,(year(current_date())-year(hire_date))as exp from empy where job='clerk';
select emp_no,emp_name,job, salary,(year(current_date())-year(hire_date))as exp from empy where mgr='9999';
select * from empy where comm > salary;
select * from empy where salary < comm;
select * from empy where hire_date>'1981-07-01'and hire_date<'1981-12-31'order by job asc;
select * from empy where hire_date>'1981-05-05'and hire_date>'1981-04-24' order by salary desc;
select *, (year(current_date()) - year(hire_date)) as Exp, (salary * 12 / 365) as daily_sal from
empy where (salary * 12 / 365) > 100;
select *,(year(current_date())-year(hire_date))as Exp, (salary * 6/ 180) as daily_sal from empy where (salary * 6/180)<50;
select *,(year(current_date())-year(hire_date)) as Exp,(salary *3/90) as daily_sal from empy where (salary *3/90)>25;
select * from empy where job = 'CLERK' OR job = 'ANALYST' order by job desc;
SELECT *FROM empy WHERE hire_date IN (STR_TO_DATE('01-may-1981', '%d-%b-%Y'),STR_TO_DATE('03-dec-1981', '%d-%b-%Y'),STR_TO_DATE('17-dec-1981', '%d-%b-%Y'),STR_TO_DATE('19-jan-1980', '%d-%b-%Y'))
ORDER BY hire_date ASC;
select * from empy where dept_no = 10 OR dept_no = 20;
select * from empy where year(hire_date) = '1981';
select * from empy where hire_date >= '1981-02-01' and hire_date <= '1981-02-28';
select *, (salary * 12) as Annual_sal from empy where (salary * 12) > 22000 AND (salary * 12) <
45000;
select *, (salary * 12) as Annual_sal from empy where (salary * 12) between 22000 AND 45000;
select distinct emp_name from empy where length(emp_name) = 5;
use dataengineer;
select * from dept where dept_no=10 or dept_no=20;
select * from dept where dept_no = 30 or dept_no= 40;
select * from empy where year(hire_date)='1981';
select * from empy where year(hire_date)='1970';
select e.emp_name, d.dept_name, e.salary, (select avg(salary) from empy e2 where e2.dept_no
= e.dept_no) as avg_sal
from empy e join dept d on e.dept_no = d.dept_no order by dept_name;
select e.emp_name, e.dept_no, d.avg_sal
from empy e join
(select dept_no, avg(salary) as avg_sal from empy group by dept_no) d
on e.dept_no = d.dept_no order by dept_no;
select * from empy order by salary asc limit 5;
select e.emp_name AS Employee, e.salary AS Emp_Salary
from empy e join empy m on e.mgr = m.emp_no where e.salary > m.salary;
select emp_name from empy where job = 'MANAGER'
AND mgr not in (select emp_no from empy where job = 'PRESIDENT');
select * from empy where dept_no not in (select dept_no from dept);
SELECT e.*FROM empy e LEFT JOIN dept d ON e.dept_no = d.dept_no WHERE d.dept_no IS NULL;
select emp_name, salary, comm , (salary + coalesce(comm, 0)) as net_pay from empy order by net_pay desc limit 1;
select * , date_add(hire_date, interval 20 year) as aft_20_yrs from empy
where date_add(hire_date, interval 20 year) > str_to_date('31-dec-89', '%d-%b-%Y');
select * from empy where (salary % 2) <> 0;
select * from empy where mod(salary,2) = 1;
select * from empy where salary LIKE '___';
select * from empy where date_format(hire_date, '%b') = 'dec';
SELECT * FROM empy
WHERE MONTH(hire_date) = 12;
select * from empy where emp_name LIKE '%a%';
select emp_name, dept_name from empy e inner join dept d on e.dept_no = d.dept_no;
select * from empy e left join dept d on e.dept_no = d.dept_no;
select * from empy e right join dept d on e.dept_no = d.dept_no;
select e.emp_name, d.dept_name from empy e left join dept d on e.dept_no = d.dept_no
union
select e.emp_name, d.dept_name from empy e right join dept d on e.dept_no = d.dept_no;
select * from (
select emp_name,
hire_date, substr(hire_date,1, 2) as first_2_char,
salary , substr(salary, length(salary) -1 , 2) as last_2_char
from empy
) as dummy_table where first_2_char = last_2_char;
select * from (select emp_name, salary, round(salary * 10/100) as sal_10_per,
hire_date, date_format(hire_date, '%y') as year_date from empy) as dummy_table
where sal_10_per = year_date;
select emp_name,
concat(lower(substr(emp_name,1,floor(length(emp_name)/2))),
upper(substr(emp_name,floor(length(emp_name)/2)+1))) as low_upper from empy;
select d.dept_name , count(*) from empy e join dept d on e.dept_no = d.dept_no
group by d.dept_name having count(*) = length(trim(d.dept_name));
select emp_no, emp_name, hire_date from empy where day(hire_date) < 15;
select * from empy where job = 'MANAGER';
select d.dept_name, count(*) as no_of_emp
from empy e join dept d on e.dept_no = d.dept_no
group by dept_name order by no_of_emp desc limit 1;
use dataengineer;
select * from empy where job NOT IN ('PRESIDENT','MANAGER') order by salary ASC;
select * from empy where job not in ('CLERK','SALESMAN') order by salary desc;
select * from empy where year(hire_date) < '1981' OR year(hire_date) > '1981';
select * from empy where year(hire_date) > '1965' or year(hire_date) < '1979';
select * from empy where emp_no NOT LIKE '78%';
select * from empy where emp_no not like '50%';
select e.emp_name as empname , m.emp_name as managername
from empy e join empy m on e.mgr = m.emp_no where m.job = 'MANAGER';
select * from empy where monthname(hire_date) <> 'March';
select * from empy where monthname(hire_date) <> 'April';
select * from empy where job = 'CLERK' AND dept_no = 20;
select * from empy where job = 'Manager' and dept_no = 10;
select * from empy where (dept_no = 30 OR dept_no = 10 ) AND year(hire_date) = 1981;
select * from empy where (dept_no = 10 or dept_no = 20) and year(hire_date) = 1960;
select * from empy where emp_name = 'SMITH';
select d.loc from dept d JOIN empy e ON d.dept_no = e.dept_no WHERE emp_name = 'SMITH';
select * from dept d JOIN empy e ON d.dept_no = e.dept_no where (d.dept_name = 'ACCOUNTING' OR d.dept_name = 'RESEARCH')order by e.dept_no ASC;
select e.emp_no, e.emp_name, e.salary, d.dept_name, d.loc from dept d JOIN empy e ON d.dept_no = e.dept_no
Where e.job IN ('MANAGER','ANALYST') AND d.loc IN ('NEW YORK', 'DALLAS') AND (year(current_date())-year(hire_date)) > 7
AND e.comm IS NULL order by d.loc ASC;
select e.emp_no, e.emp_name, e.salary, e.job, d.dept_no, d.dept_name, d.loc from empy e join dept d on e.dept_no = d.dept_no
where (d.loc = 'CHICAGO' or d.dept_name = 'ACCOUNTING') and (e.salary * 12) > 28000 and e.salary NOT IN (2800, 3000)
and e.job <> 'MANAGER' and (e.emp_no like '__7%' or e.emp_no like '__8%') order by d.dept_no asc , e.job desc;
select * from dept;
select * from empy order by grade ASC;
select * from empy where grade = 2 OR grade = 3;
select * from empy where grade IN (4,5) or job IN ('MANAGER', 'ANALYST');
select e.emp_no, e.emp_name, e.salary, d.dept_name, e.grade, timestampdiff(year, hire_date,
curdate()) as Exp, (e.salary * 12) as annual_salary
from empy e JOIN dept d ON e.dept_no = d.dept_no where d.dept_no IN (10,20);
select d.*, e.emp_no,emp_name from dept d left join empy e on d.dept_no = e.dept_no;
select * from empy where salary > (select salary from empy where emp_name = 'BLAKE');
select * from empy where job = (select job from empy where emp_name = 'ALLEN');
select emp_name, hire_date from empy
where hire_date < (select hire_date from empy where emp_name = 'KING');
select e.emp_name as employeeName, e.hire_date as emp_date ,
m.emp_name as ManagerName, m.hire_date as mana_date
from empy e left join empy m on e.mgr = m.emp_no where e.hire_date < m.hire_date;
select emp_name, job, dept_no from empy where dept_no = 20 AND job IN (select job from empy where dept_no = 10);
select * from empy where salary IN (select salary from empy where emp_name IN ('FORD','SMITH')) order by salary Desc;
select emp_name, job from empy where job IN (select job from empy where
emp_name = 'MILLER');
select emp_name, salary from empy where salary > (select salary from empy
where emp_name = 'ALLEN');
select * from empy e join dept d on e.dept_no = d.dept_no
where (e.hire_date < (select hire_date from empy where emp_name = 'BLAKE'))
AND d.loc IN ('BOSTON', 'CHICAGO');
select * from empy e join dept d on e.dept_no = d.dept_no where e.grade IN (3,4) AND
d.dept_name

in ('ACCOUNTING', 'RESEARCH') AND e.salary > (select salary from empy where emp_name
= 'ALLEN')
AND (year(current_date())- year(e.hire_date)) > (select year(current_date())- year(hire_date)
from empy where emp_name = 'SMITH') order by (year(current_date())- year(hire_date)) ASC;
select * from empy
where job IN (select job from empy where emp_name in ('SMITH', 'ALLEN'));
select * from empy where salary IN (select salary from empy where dept_no = 10
AND job NOT IN (SELECT distinct job FROM empy WHERE dept_no = 20));
select * from empy e
where emp_no not in (select emp_no from empy);
select salary from empy order by salary desc limit 1;
SELECT MAX(salary) AS highest_salary FROM empy;
select emp_name, salary from empy where salary = (select max(salary) from empy);
select e.emp_no, e.emp_name, e.salary, d.dept_name
from empy e join dept d on e.dept_no = d.dept_no
where d.dept_name = 'sales' order by salary desc limit 1;
select e.emp_no, e.emp_name, e.hire_date, e.grade, d.dept_name, d.loc
from empy e join dept d on e.dept_no = d.dept_no
where e.grade = 3 and d.loc = 'CHICAGO' order by e.hire_date desc limit 1;
select * from empy where hire_date < (select hire_date from empy
where mgr = (select emp_no from empy where emp_name = 'KING')
order by hire_date desc limit 1);
select * from empy where year(hire_date) = '1981' order by hire_date asc;
select * from empy where year(hire_date) = '1981' order by hire_date asc limit 1;
select * from empy where year(hire_date) = '1981' and job = (select job from empy where year(hire_date) = '1981'
order by hire_date asc limit 1);
select emp_no, emp_name, grade from empy where mgr = (select emp_no from empy where emp_name = 'KING')
and grade > 3 order by hire_date asc limit 1;
select sum(salary) from empy where job = 'MANAGER';
select job,sum(salary * 12) as annual_salary_by_specific_job from empy where year(hire_date) = '1981' group by job;
select sum(salary) from empy where grade = 3;
select avg(salary) from empy where job = 'CLERK';
select * from empy where dept_no = 20 and salary > (select avg(salary) from empy where dept_no = 10);
select dept_no, job, count(job) from empy group by dept_no,job;
select mgr, count(mgr) from empy
where mgr is not null group by mgr order by mgr;
select d.dept_no, d.dept_name, count(e.emp_no) from dept d join empy e on d.dept_no = e.dept_no
group by d.dept_no, d.dept_name having count(e.emp_no) >= 2;
select grade, count(emp_no), max(salary) from empy group by grade;
select d.dept_name,e.grade,count(e.emp_no) as no_of_clecks
from empy e join dept d on e.dept_no = d.dept_no where e.job = 'CLERK'
group by d.dept_name,e.grade having count(e.emp_no) >= 2;
select d.dept_name, count(e.emp_no) as emp_count
from dept d join empy e on d.dept_no = e.dept_no
group by d.dept_name order by emp_count desc limit 1;
select * from empy where mgr = (select emp_no from empy where emp_name = 'JONES');
select *, (salary + salary * 20/100) as sal_aft_incr
from empy where (salary + salary * 20/100) > 3000;
select e.emp_no, e.emp_name, d.dept_name from dept d join empy e on d.dept_no =
e.dept_no;
select * from empy e join dept d on d.dept_no = e.dept_no where d.dept_name <> 'SALES';
select e.emp_name, d.dept_no, e.salary, e.comm from empy e join dept d on d.dept_no =
e.dept_no where e.salary between 2000 and 5000 and d.loc = 'CHICAGO';
select e.emp_name,e.salary,m.emp_name,m.salary
from empy e left join empy m on e.mgr = m.emp_no where e.salary > m.salary;
select grade, emp_name from empy
where dept_no in (10, 30) and grade <> 4 and hire_date < '1982-12-31';
select emp_name, salary from empy where emp_name = 'FORD'
and salary = (select round(avg(salary)) from empy
where grade = (select grade from empy where emp_name = 'FORD'));
select e.dept_no, e.emp_name, e.job, d.dept_name, e.salary, e.grade
from empy e join dept d on e.dept_no = d.dept_no;
select e.emp_name, e.job, e.salary, e.grade, d.dept_name from empy e join dept d
on e.dept_no = d.dept_no where e.job <> 'CLERK' order by salary desc;
select emp_name, job from empy where mgr is null;
select * from (
select e.emp_name, d.dept_name, e.salary,
dense_rank() over (PARTITION BY d.dept_name order by e.salary desc) as grade
from empy e join dept d on e.dept_no = d.dept_no
order by dept_name asc , salary desc
) as emp_high_dept where grade = 1;

select emp_name from empy
where salary = (select round((max(salary) + min(salary))/2) as avg_salary from empy);
select dept_no, count(*) from empy group by dept_no having count(*) > 3;
select d.dept_name from
empy e join dept d on e.dept_no = d.dept_no
group by d.dept_name having count(*) >= 3;
SELECT DISTINCT m.emp_no, m.emp_name, m.salary
FROM empy m
JOIN empy e ON m.emp_no = e.mgr
GROUP BY m.emp_no, m.emp_name, m.salary
HAVING m.salary > AVG(e.salary);
select e.emp_name emp, e.salary e_sal
from empy e join empy m on e.mgr = m.emp_no
where e.salary < m.salary and
e.salary > any (SELECT salary FROM empy where emp_no in
(select distinct mgr from empy) and emp_no != m.emp_no);
select e.emp_name, d.dept_name, e.salary, (select avg(salary) from empy e2 where e2.dept_no
= e.dept_no) as avg_sal
from empy e join dept d on e.dept_no = d.dept_no order by dept_name;
select e.emp_name, e.dept_no, d.avg_sal
from empy e join
(select dept_no, avg(salary) as avg_sal from empy group by dept_no) d
on e.dept_no = d.dept_no order by dept_no;
select * from empy order by salary asc limit 5;
select e.emp_name AS Employee, e.salary AS Emp_Salary
from empy e join empy m on e.mgr = m.emp_no where e.salary > m.salary;
select * , date_add(hire_date, interval 20 year) as aft_20_yrs from empy
where date_add(hire_date, interval 20 year) > str_to_date('31-dec-89', '%d-%b-%Y');
select * from empy where salary LIKE '___';
select * from empy where date_format(hire_date, '%b') = 'dec';
SELECT * FROM empy
WHERE MONTH(hire_date) = 12;
select * from empy where emp_name LIKE '%a%';
select emp_name, dept_name from empy e inner join dept d on e.dept_no = d.dept_no;
select * from empy e left join dept d on e.dept_no = d.dept_no;
select e.emp_name, d.dept_name from empy e left join dept d on e.dept_no = d.dept_no
union
select e.emp_name, d.dept_name from empy e right join dept d on e.dept_no = d.dept_no;
select * from (
select emp_name,
hire_date, substr(hire_date,1, 2) as first_2_char,
salary , substr(salary, length(salary) -1 , 2) as last_2_char
from empy
) as dummy_table where first_2_char = last_2_char;
select * from (select emp_name, salary, round(salary * 10/100) as sal_10_per,
hire_date, date_format(hire_date, '%y') as year_date from empy) as dummy_table
where sal_10_per = year_date;
select emp_name,
concat(lower(substr(emp_name,1,floor(length(emp_name)/2))),
upper(substr(emp_name,floor(length(emp_name)/2)+1))) as low_upper from empy;
select d.dept_name , count(*) from empy e join dept d on e.dept_no = d.dept_no
group by d.dept_name having count(*) = length(trim(d.dept_name));
select emp_no, emp_name, hire_date from empy where day(hire_date) < 15;
select * from empy where job = 'MANAGER';
select d.dept_name, count(*) as no_of_emp
from empy e join dept d on e.dept_no = d.dept_no
group by dept_name order by no_of_emp desc limit 1;
select emp_name, hire_date from empy
where hire_date = (select hire_date from empy group by hire_date having count(hire_date) > 1);
use dataengineer;
select emp_name, hire_date from empy
where hire_date = (select hire_date from empy group by hire_date having count(hire_date) > 1);
select e.emp_name from empy e join empy e1 on e.hire_date = e1.hire_date WHERE
e.emp_no <> e1.emp_no;
select emp_name, grade
from empy where grade in (select distinct round(dept_no/10)
from dept where dept_name = 'sales');
select dept_name, count(*) from empy e join dept d
on e.dept_no = d.dept_no group by dept_name having count(*) >
(select round(count(*)/count(distinct dept_no)) as avg_no_emp_in_dept from empy);
select m.emp_name as manager , count(e.emp_name) as no_of_emp
from empy e join empy m on e.mgr = m.emp_no group by m.emp_name order by no_of_emp
desc limit 1;
select emp_name, salary , round((salary + salary * 15/100) / 85) as Dollor from empy;
select emp_name , job , concat(emp_name,'_AND_',job) from empy;
select concat(emp_name, ' ( ', job, ' )') as concat_emp_dept from empy;
select emp_name, date_format(hire_date, '%M %d , %Y') from empy;
select emp_name, salary,
case
when salary > 1500 then 'Just Salary'
when salary = 1500 then 'On Target'
else 'Below 1500'
end as salary_ana
from empy;
select emp_name, hire_date, dayofweek(hire_date) as day_of_week from empy;
select emp_no, emp_name, hire_date,
case
when day(hire_date) < 15 then
LAST_DAY(hire_date)
when day(hire_date) > 15 then
'Hi'
end as first_pay_date
from empy order by hire_date;
select * from Empy where MOD(Salary, 1) <> 0;
select * from empy where substr(salary, 1 , 1) = substr(dept_no, 1 , 1);
select m.emp_name, m.salary, m.emp_no, e.emp_name , e.salary ,e.mgr
from empy e join empy m on e.mgr = m.emp_no
where e.salary > m.salary;
select m.emp_name, e.emp_name
from empy e join empy m on e.mgr = m.emp_no where m.emp_name = 'BLAKE';
select mm.emp_name as manegers_manager, m.emp_name as manager , e.emp_name as
employee
from empy e join empy m on e.mgr = m.emp_no join empy mm on m.mgr = mm.emp_no where
m.emp_name = 'JONES';
select emp_name , salary , (salary * 12) as annual_salary ,
if((salary * 12) > 30000 , 'ABOVE 30000', salary) as annual_30000 from empy;
select count(*) as count_of_manager from empy where job = 'manager' group by job;
select emp_no , count(*) as duplicate from empy group by emp_no having count(*) > 1;
select emp_no, emp_name, salary from empy where salary < 1000 order by salary;
select e.emp_name, e.job, (e.salary * 12) as annual_sal, d.dept_no, d.dept_name, e.grade
from empy e join dept d on e.dept_no = d.dept_no where (e.salary * 12 = 36000 or job <>
'CLERK');
select e.emp_name , e.hire_date, m.emp_name, m.hire_date
from empy e join empy m on e.mgr = m.emp_no where e.hire_date < m.hire_date;
select e.emp_name , e.hire_date, m.emp_name, m.emp_no
from empy e left join empy m on e.mgr = m.emp_no;
select emp_name, salary,job from (select emp_name, salary, job,
dense_rank() over (partition by job order by salary asc) as rank_given
from empy
) as dummpy where rank_given = 1 ORDER BY job ASC;
select * from (select emp_name, salary, job,
dense_rank() over (partition by job order by salary desc) as rank_given
from empy
) as dummpy where rank_given = 1 order by salary desc;
select * from(
select dept_no,hire_date,
dense_rank() over (partition by dept_no order by hire_date desc) as ranking
from empy group by dept_no,hire_date order by dept_no asc
) as new_table where ranking = 1;
select dept_no from dept where dept_no not in (select distinct dept_no from empy);
select e.emp_name, e.dept_no, e.job, e.salary,
(select avg(salary) from empy e1 where e1.dept_no = e.dept_no) as avg_sal
from empy e group by emp_name, dept_no, job, salary order by dept_no asc;
select job, avg(salary) as avg_sal
from empy e where job <> 'president' group by job order by avg_sal desc limit 1;
select * from empy where salary = (select max(salary) from empy) or comm = (select
max(comm) from empy);
select emp_name, dept_no , job, salary from empy where dept_no <> 10 and
job in (select job from empy where dept_no = 10) and
salary in (select salary from empy where dept_no = 10);
