-- Type Promotion and rounding error with binary numbers
DECLARE
  l_num1 NUMBER := 0.51;  
  l_num2 NUMBER ;  
  l_num3 NUMBER ;
  l_bin_float BINARY_FLOAT:= 2f;
BEGIN 
  --Expression involving binary_float and number are converted to binary_float based on default precedence
  l_num2 := l_num1 * l_bin_float;
  DBMS_OUTPUT.PUT_LINE('l_num2 : '||l_num2);
  
  -- Stick with NUMBER with explicit conversion
  l_num3 := l_num1 * TO_NUMBER(l_bin_float);
  DBMS_OUTPUT.PUT_LINE('l_num3: '||l_num3);
  
  -- Binary Float computations should be checked with pre-defined constants for errors
  l_bin_float := l_bin_float / 0; -- Infinity
  IF l_bin_float = BINARY_FLOAT_INFINITY then
    DBMS_OUTPUT.PUT_LINE('l_bin_float IS : '||l_bin_float);
  END IF;
END;
/
