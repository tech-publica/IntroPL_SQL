CREATE OR REPLACE 
     PROCEDURE update_emp(  p_emp_id          IN  NUMBER,
                            p_dept_id             NUMBER,
                            p_location       OUT  VARCHAR2,  --3NOCOPY VARCHAR2
                            p_status      IN OUT  NUMBER) AS --3NOCOPY NUMBER
       l_number  NUMBER;
   BEGIN
       DBMS_OUTPUT.PUT_LINE('Out parameter p_location initially '||p_location);
       DBMS_OUTPUT.PUT_LINE('In Out parameter p_status initially '||p_status);
      --1 p_emp_id := 30;
       UPDATE           employee
         SET           emp_dept_id = p_dept_id
         WHERE            emp_id = p_emp_id
       RETURNING    emp_loc INTO p_location;
       p_status := 1;
       --l_number := 'CHAR';
       COMMIT; 
 EXCEPTION
      WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE(SQLERRM);
       DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
       ROLLBACK;
       RAISE;
  END update_emp;