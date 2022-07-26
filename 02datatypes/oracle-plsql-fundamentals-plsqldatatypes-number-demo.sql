DECLARE
  l_num NUMBER;
  l_num_constant CONSTANT NUMBER := 5;
  l_num_default  NUMBER(5,2) DEFAULT 5.2;
  l_num_float NUMBER;
BEGIN 
  l_num_float := 3.245;
  DBMS_OUTPUT.PUT_LINE('l_num: '||l_num);
  DBMS_OUTPUT.PUT_LINE('l_num_constant: '||l_num_constant);
  DBMS_OUTPUT.PUT_LINE('l_num_default: '||l_num_default);
  DBMS_OUTPUT.PUT_LINE('l_num_float: '||l_num_float);
END;
/
