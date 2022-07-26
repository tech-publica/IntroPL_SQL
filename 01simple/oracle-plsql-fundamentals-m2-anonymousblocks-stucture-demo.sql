DECLARE  
  --Declare local variables
  l_var NUMBER;
BEGIN    
  l_var := 1;  -- l_var assigned value
  dbms_output.put_line('l_var in the inner block is '||l_var);
  /* dbms_output.put_line sends output messages
     to the console
   */
EXCEPTION
  WHEN OTHERS THEN
    null;
END;