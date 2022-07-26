DECLARE
  l_name departments.dept_name%TYPE;
BEGIN
  SELECT dept_name
        INTO l_name
      FROM departments;
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('SQLCODE: '||SQLCODE);
    DBMS_OUTPUT.PUT_LINE('SQLERRM: '||SQLERRM);
END;
