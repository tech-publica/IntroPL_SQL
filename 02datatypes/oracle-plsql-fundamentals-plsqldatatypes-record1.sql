  DECLARE
    TYPE emp_rec IS RECORD (  emp_name  VARCHAR2(60),
                              dept      departments.dept_id%TYPE,
                              loc       VARCHAR2(10) DEFAULT 'CA');    
    l_emprec emp_rec;    
  BEGIN
   l_emprec .emp_name := 'John';   
   l_emprec .dept := 10;
   
   DBMS_OUTPUT.PUT_LINE('Employee Name is '||l_emprec .emp_name); 
   DBMS_OUTPUT.PUT_LINE('Employee Location is '||l_emprec .loc);
  END;
