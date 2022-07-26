DECLARE
  TYPE employee_rec IS RECORD ( emp_name VARCHAR2(60),
                                deptrec  departments%ROWTYPE,
                                loc VARCHAR2(10) DEFAULT 'CA');    
  l_employee_rec employee_rec;    
BEGIN
  l_employee_rec.deptrec.dept_id  := 20;   
   
  DBMS_OUTPUT.PUT_LINE('Employee Dept is '||l_employee_rec.deptrec.dept_id);
END;
