-- creates some test-tables and data

--  DROP TABLE EMPLOYEE;
--  DROP TABLE DEPARTMENT;
--  DROP TABLE SALARYGRADE;
--  DROP TABLE BONUS;

CREATE TABLE EMPLOYEE(
    empno      INTEGER NOT NULL,
    name       VARCHAR(10),
    job        VARCHAR(9),
    boss       INTEGER,
    hiredate   varchar(12),
    salary     DECIMAL(7, 2),
    comm       DECIMAL(7, 2),
    deptno     INTEGER
);

CREATE TABLE DEPARTMENT(
    deptno     INTEGER NOT NULL,
    name       VARCHAR(14),
    location   VARCHAR(13)
);

CREATE TABLE SALARYGRADE(
    grade      INTEGER NOT NULL,
    losal      INTEGER NOT NULL,
    hisal      INTEGER NOT NULL
);

CREATE TABLE BONUS (
    ename      VARCHAR(10) NOT NULL,
    job        VARCHAR(9) NOT NULL,
    sal        DECIMAL(7, 2),
    comm       DECIMAL(7, 2)
);

-- Primary Keys
ALTER TABLE EMPLOYEE
  ADD CONSTRAINT emp_pk
  PRIMARY KEY (empno);

ALTER TABLE DEPARTMENT
  ADD CONSTRAINT dept_pk
  PRIMARY KEY (deptno);

ALTER TABLE SALARYGRADE
  ADD CONSTRAINT salgrade_pk
  PRIMARY KEY (grade);

ALTER TABLE BONUS
  ADD CONSTRAINT bonus_pk
  PRIMARY KEY (ename, job);
  
-- EMPLOYEE to DEPARTMENT
ALTER TABLE EMPLOYEE
  ADD CONSTRAINT department
  FOREIGN KEY (deptno)
  REFERENCES DEPARTMENT (deptno);

-- EMPLOYEE to EMPLOYEE
ALTER TABLE EMPLOYEE
  ADD CONSTRAINT boss
  FOREIGN KEY (boss)
  REFERENCES EMPLOYEE (empno);


INSERT INTO DEPARTMENT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPARTMENT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPARTMENT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPARTMENT VALUES (40, 'OPERATIONS', 'BOSTON');

INSERT INTO EMPLOYEE VALUES (7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
   INSERT INTO EMPLOYEE VALUES (7566, 'JONES',  'MANAGER',   7839, '1981-04-02',  2975, NULL, 20);
      INSERT INTO EMPLOYEE VALUES(7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000, NULL, 20);
         INSERT INTO EMPLOYEE VALUES(7876, 'ADAMS',  'CLERK',     7788, '1983-01-12', 1100, NULL, 20);
      INSERT INTO EMPLOYEE VALUES(7902, 'FORD',   'ANALYST',   7566, '1981-12-03',  3000, NULL, 20);
         INSERT INTO EMPLOYEE VALUES(7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL, 20);
   INSERT INTO EMPLOYEE VALUES (7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01',  2850, NULL, 30);
      INSERT INTO EMPLOYEE VALUES(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30);
      INSERT INTO EMPLOYEE VALUES(7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30);
      INSERT INTO EMPLOYEE VALUES(7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30);
      INSERT INTO EMPLOYEE VALUES(7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08',  1500,    0, 30);
      INSERT INTO EMPLOYEE VALUES(7900, 'JAMES',  'CLERK',     7698, '1981-12-03',   950, NULL, 30);
   INSERT INTO EMPLOYEE VALUES(7782, 'CLARK',  'MANAGER',   7839, '1981-06-09',  2450, NULL, 10);
      INSERT INTO EMPLOYEE VALUES(7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL, 10);

INSERT INTO SALARYGRADE VALUES (1,  700, 1200);
INSERT INTO SALARYGRADE VALUES (2, 1201, 1400);
INSERT INTO SALARYGRADE VALUES (3, 1401, 2000);
INSERT INTO SALARYGRADE VALUES (4, 2001, 3000);
INSERT INTO SALARYGRADE VALUES (5, 3001, 9999);

