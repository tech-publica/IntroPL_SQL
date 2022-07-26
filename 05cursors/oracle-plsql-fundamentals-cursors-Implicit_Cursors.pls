DECLARE
  l_dept_id    departments.dept_id%TYPE;
  l_dept_name  departments.dept_name%TYPE;
BEGIN
  SELECT dept_id,
         dept_name
    INTO l_dept_id,
         l_dept_name
    FROM departments
   WHERE dept_id = 1;
   
   IF SQL%FOUND  THEN
     DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
   END IF;
END;
