DECLARE
   TYPE rc_weak IS REF CURSOR ;
   rc_weak_cur            rc_weak;
   l_dept_rowtype   departments%ROWTYPE;
   l_emp_rowtype   employee%ROWTYPE;
BEGIN
  OPEN rc_weak_cur FOR
    SELECT  * FROM  departments WHERE  dept_id = 1;
      LOOP
        FETCH rc_weak_cur INTO l_dept_rowtype;
        EXIT WHEN rc_weak_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(l_dept_rowtype.dept_name);
      END LOOP;
  OPEN rc_weak_cur FOR
    SELECT  * FROM  employee WHERE  emp_dept_id = 2;
      LOOP
        FETCH rc_weak_cur INTO l_emp_rowtype;
        EXIT WHEN rc_weak_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(l_emp_rowtype.emp_id);
     END LOOP;
  CLOSE rc_weak_cur;
END;
