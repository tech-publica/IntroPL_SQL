DECLARE
   l_dept_count NUMBER ;
BEGIN
   SELECT count(*)
        INTO l_dept_count
         FROM departments;
   FOR l_counter in 1..l_dept_count LOOP
      DBMS_OUTPUT.PUT_LINE(l_counter);
   END LOOP;
END;
