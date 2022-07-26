create or replace 
FUNCTION get_tier  RETURN NUMBER  AS
    l_salary NUMBER := 50000;
    l_return NUMBER;
 BEGIN
      IF l_salary < 40000 THEN
         l_return := 1;
      ELSIF l_salary < 60000 THEN
         l_return := 2;
      ELSE
         l_return := 3;
       END IF;
     DBMS_OUTPUT.PUT_LINE('Finished Successfully l_return '||l_return);
     RETURN l_return;
  EXCEPTION
      WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE(dbms_utility.format_error_stack);
       DBMS_OUTPUT.PUT_LINE(dbms_utility.format_error_backtrace);
  END get_tier;