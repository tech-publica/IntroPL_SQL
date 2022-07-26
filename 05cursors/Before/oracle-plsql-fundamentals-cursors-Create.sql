CREATE TABLE departments
(dept_id NUMBER NOT NULL PRIMARY KEY,
dept_name VARCHAR2(60));


INSERT INTO departments (dept_id,dept_name)
                      VALUES(1,'IT');
INSERT INTO departments (dept_id,dept_name)
                      VALUES(2,'Accounting');
COMMIT;


CREATE TABLE employee
(emp_id NUMBER NOT NULL PRIMARY KEY,
emp_name VARCHAR2(60),
emp_dept_id  NUMBER ,
emp_loc VARCHAR2(60),
emp_sal  NUMBER,
CONSTRAINT emp_dept_fk FOREIGN KEY(emp_dept_id) 
REFERENCES departments(dept_id));


insert into employee(emp_id,emp_name,emp_dept_id,emp_loc,emp_sal) VALUES(10,'Tom',1,'CA',50000);
insert into employee(emp_id,emp_name,emp_dept_id,emp_loc,emp_sal) VALUES(20,'John',1,'CA',40000);
insert into employee(emp_id,emp_name,emp_dept_id,emp_loc,emp_sal) VALUES(50,'Tim',2,'CA',40000);
insert into employee(emp_id,emp_name,emp_dept_id,emp_loc,emp_sal) VALUES(60,'Jack',2,'CA',70000);
COMMIT;

