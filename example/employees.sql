-- generated by Jailer, Mon Dec 15 10:00:50 CET 2008 from wisser@desktop
-- 
-- Extraction Model:  all rows from EMPLOYEE (Demo.csv)
-- Database URL:      jdbc:db2://localhost:50001/wisser
-- Database User:     scott
-- Exported Rows:     43
--     DEPARTMENT                     3
--     EMPLOYEE                       14
--     PROJECT                        4
--     PROJECT_PARTICIPATION          14
--     ROLE                           3
--     SALARYGRADE                    5



Insert into SALARYGRADE(GRADE, LOSAL, HISAL) values (1, 700, 1200), (2, 1201, 1400), (3, 1401, 2000), (4, 2001, 3000), (5, 3001, 9999);
Insert into ROLE(ROLE_ID, DESCRIPTION) values (100, 'Developer'), (101, 'Researcher'), (102, 'Project manager');
Insert into PROJECT(PROJECTNO, DESCRIPTION, START_DATE, END_DATE) values (1001, 'Development of Novel Magnetic Suspension System', '2006-01-01', '2007-08-13'), (1002, 'Research on thermofluid dynamics in Microdroplets', '2006-08-22', '2007-03-20'), (1003, 'Foundation of Quantum Technology', '2007-02-24', '2008-07-31'), (1004, 'High capacity optical network', '2008-01-01', null);
Insert into DEPARTMENT(DEPTNO, NAME, LOCATION) values (10, 'ACCOUNTING', 'NEW YORK'), (20, 'RESEARCH', 'DALLAS'), (30, 'SALES', 'CHICAGO');
Insert into EMPLOYEE(EMPNO, NAME, JOB, BOSS, HIREDATE, SALARY, COMM, DEPTNO) values (7839, 'KING', 'PRESIDENT', null, '1981-11-17', 5000.00, null, 10);
Insert into EMPLOYEE(EMPNO, NAME, JOB, BOSS, HIREDATE, SALARY, COMM, DEPTNO) values (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, null, 20), (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, null, 30), (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, null, 10);
Insert into EMPLOYEE(EMPNO, NAME, JOB, BOSS, HIREDATE, SALARY, COMM, DEPTNO) values (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30), (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30), (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30), (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000.00, null, 20), (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30), (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, null, 30), (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, null, 20), (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, null, 10);
Insert into PROJECT_PARTICIPATION(PROJECTNO, EMPNO, START_DATE, END_DATE, ROLE_ID) values (1002, 7782, '2006-08-22', '2007-03-20', 101), (1003, 7566, '2007-02-24', '2008-07-31', 102);
Insert into EMPLOYEE(EMPNO, NAME, JOB, BOSS, HIREDATE, SALARY, COMM, DEPTNO) values (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800.00, null, 20), (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100.00, null, 20);
Insert into PROJECT_PARTICIPATION(PROJECTNO, EMPNO, START_DATE, END_DATE, ROLE_ID) values (1001, 7788, '2006-05-15', '2006-11-01', 100), (1001, 7902, '2006-01-01', '2006-12-30', 102), (1002, 7934, '2007-01-01', '2007-03-20', 101), (1003, 7900, '2007-02-24', '2007-01-31', 101), (1004, 7499, '2008-01-01', null, 102), (1004, 7521, '2008-05-01', null, 101), (1004, 7654, '2008-04-15', null, 101), (1004, 7844, '2008-02-01', null, 101), (1004, 7900, '2008-03-01', '2008-04-01', 101), (1004, 7900, '2008-05-20', null, 101);
Insert into PROJECT_PARTICIPATION(PROJECTNO, EMPNO, START_DATE, END_DATE, ROLE_ID) values (1001, 7369, '2006-01-01', '2007-08-13', 100), (1002, 7876, '2006-08-22', '2007-03-20', 102);
