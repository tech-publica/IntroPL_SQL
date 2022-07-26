DECLARE
   l_step_counter NUMBER ;
BEGIN
   FOR l_counter in 1..3 LOOP
      l_step_counter := l_counter * 2;
      DBMS_OUTPUT.PUT_LINE(l_step_counter);
   END LOOP;
END;
