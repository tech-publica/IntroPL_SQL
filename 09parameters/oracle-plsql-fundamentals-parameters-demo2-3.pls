DECLARE
    l_emp_id         NUMBER(10) := 20;       
    l_dept_id        NUMBER     := 2;
    l_comm           NUMBER     := 5;
BEGIN    
   update_info(l_emp_id,
               l_dept_id,
               l_comm);
END;