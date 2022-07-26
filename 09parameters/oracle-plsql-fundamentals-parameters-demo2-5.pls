DECLARE
    l_emp_id         NUMBER(10) := 20;   
    l_comm          NUMBER     := 5;
BEGIN    
   update_info(p_emp_id  => l_emp_id,
              p_comm     => l_comm);
END;