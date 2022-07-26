  DECLARE
    l_dept_rec departments%ROWTYPE;
  BEGIN
   l_dept_rec.dept_id := 10;   
   DBMS_OUTPUT.PUT_LINE('Department id is '||l_dept_rec.dept_id); 
  END;
