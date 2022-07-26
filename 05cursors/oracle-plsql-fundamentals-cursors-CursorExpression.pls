 DECLARE
   CURSOR cur_dept_info(p_num NUMBER) IS 
      SELECT dept_id,
            CURSOR(SELECT emp_id
                                  FROM employee
                                  WHERE emp_dept_id = dept_id
                                   AND ROWNUM <= p_num)  emp_info
         FROM  departments
         WHERE ROWNUM <= p_num;
     l_dept_id     departments.dept_id%TYPE;
    rc_emp_info   SYS_REFCURSOR;
    l_emp_id  employee.emp_id%TYPE;
BEGIN
  OPEN cur_dept_info(2);
  LOOP
  FETCH cur_dept_info INTO l_dept_id, rc_emp_info;
  EXIT WHEN cur_dept_info%NOTFOUND;
  DBMS_OUTPUT.PUT_LINE(' l_dept_id ' ||l_dept_id);
      LOOP
          FETCH rc_emp_info INTO l_emp_id;
          EXIT  WHEN  rc_emp_info%NOTFOUND;
          DBMS_OUTPUT.PUT_LINE('    l_emp_id ' ||l_emp_id);
      END LOOP;
  END LOOP;
  CLOSE cur_dept_info;
END;
