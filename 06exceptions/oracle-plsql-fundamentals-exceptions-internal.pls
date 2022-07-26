DECLARE
  l_name departments.dept_name%TYPE;
BEGIN
  SELECT dept_name
    INTO l_name
    FROM departments
   WHERE dept_id = 10;
EXCEPTION  -- Add 1
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('System error. Please contact Application Support');
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '||SQLCODE);
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '||SQLERRM);
END;
