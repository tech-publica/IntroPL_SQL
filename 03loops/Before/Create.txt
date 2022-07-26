CREATE TABLE departments
 (dept_id NUMBER NOT NULL PRIMARY KEY,
  dept_name VARCHAR2(60));

INSERT INTO DEPARTMENTS (dept_id,dept_name) values (1,’Sales’);
INSERT INTO DEPARTMENTS (dept_id,dept_name) values (2,’IT’);
COMMIT;
