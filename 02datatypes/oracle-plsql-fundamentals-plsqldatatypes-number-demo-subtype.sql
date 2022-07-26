DECLARE
  l_int INTEGER := 1.8;
  
  SUBTYPE myinteger IS NUMBER(38,0);
  l_myinteger myinteger := 1.8;
BEGIN 
  DBMS_OUTPUT.PUT_LINE('l_int '||l_int);
  DBMS_OUTPUT.PUT_LINE('l_myinteger '||l_myinteger);
END;