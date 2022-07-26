CREATE OR REPLACE PROCEDURE update_dept  AS
  l_emp_id employee.emp_id%TYPE := 10;
  BEGIN
    UPDATE employee
        SET emp_dept_id = '2'
    WHERE emp_id = l_emp_id;
    DBMS_OUTPUT.PUT_LINE('Rows Updated '||SQL%ROWCOUNT);
    COMMIT;
  EXCEPTION
      WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE(SQLERRM);
       DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END update_dept;
/

