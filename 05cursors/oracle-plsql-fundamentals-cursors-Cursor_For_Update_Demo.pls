DECLARE
CURSOR cur_move_emp (p_emp_loc employee.emp_loc%TYPE) IS
  SELECT emp_id,
         dept_name
    FROM departments,
         employee
    WHERE emp_dept_id = dept_id 
      AND emp_loc = p_emp_loc
    FOR UPDATE OF emp_loc NOWAIT;
BEGIN
  FOR cur_move_emp_var IN cur_move_emp('CA') LOOP
    UPDATE employee
       SET emp_loc = 'WA'
     WHERE CURRENT OF cur_move_emp;
  END LOOP;
  COMMIT;
END;
