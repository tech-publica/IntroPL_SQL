-- Precision and Scale for Number
DECLARE
  --If you specify a negative scale, Oracle Database rounds the actual data to the specified number of places to the left of the decimal point
  l_num NUMBER(5,-2):= 12345.678;
BEGIN 
  DBMS_OUTPUT.PUT_LINE('l_num  Assigned 12345.678 Final: '||l_num);
  l_num := 156.456;
  DBMS_OUTPUT.PUT_LINE('l_num Assigned 156.456 Final: '||l_num);
END;
/

