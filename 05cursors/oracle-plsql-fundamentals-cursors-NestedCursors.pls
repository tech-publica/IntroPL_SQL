DECLARE
  CURSOR get_emp_info (p_dept_id employee.emp_dept_id%TYPE)
  IS
        SELECT emp_name 
  FROM employee 
  WHERE emp_dept_id = p_dept_id;
BEGIN
  <<dept_loop>>FOR get_dept_info_var IN (SELECT dept_ID 
                                           FROM departments)
    LOOP
            DBMS_OUTPUT.PUT_LINE('Dept id : '||get_dept_info_var.dept_id);
           <<emp_loop>>FOR get_emp_info_var IN get_emp_info(get_dept_info_var.dept_id)
        LOOP
          DBMS_OUTPUT.PUT_LINE('Emp Name: '|| get_emp_info_var.emp_name);
        END LOOP emp_loop;
    END LOOP dept_loop;
END;