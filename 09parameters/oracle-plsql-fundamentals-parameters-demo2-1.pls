CREATE OR REPLACE PROCEDURE 
        update_info (  p_emp_id      IN       NUMBER  DEFAULT  50,
                       p_dept_id     IN       NUMBER  DEFAULT   1,
                       p_comm        IN       NUMBER  DEFAULT  10) IS
 BEGIN
   DBMS_OUTPUT.PUT_LINE('p_emp_id passed in '||p_emp_id);
   DBMS_OUTPUT.PUT_LINE('p_dept_id passed in '||p_dept_id);
   DBMS_OUTPUT.PUT_LINE('p_comm passed in '||p_comm);
   UPDATE           employee
         SET        emp_dept_id = p_dept_id,
                    emp_sal = emp_sal + emp_sal*p_comm/100
         WHERE      emp_id = p_emp_id;
   DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' Row Updated');
   COMMIT;
 EXCEPTION
      WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE(SQLERRM);
       DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
       ROLLBACK;
       RAISE;
 END update_info;