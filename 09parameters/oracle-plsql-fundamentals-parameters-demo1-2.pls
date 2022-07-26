DECLARE
  l_emp_id   NUMBER       := 50;
  l_dept_id  NUMBER       := 1;
  l_location VARCHAR2(60) := 'CA';
  l_status   NUMBER       := -1;
BEGIN
  update_emp(l_emp_id,
             l_dept_id,
             l_location,
             l_status);
  DBMS_OUTPUT.PUT_LINE('Returned value of l_location is '||l_location);
  DBMS_OUTPUT.PUT_LINE('Returned value of l_status is '||l_status);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK);
    DBMS_OUTPUT.PUT_LINE('Inside Exception value of l_location is '||l_location);
    DBMS_OUTPUT.PUT_LINE('Inside Exception value of l_status is '||l_status);
END;