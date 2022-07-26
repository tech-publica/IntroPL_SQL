DECLARE
   l_lower NUMBER  := 2;
   l_upper NUMBER := 5;
BEGIN
   FOR l_counter in l_lower..(l_upper/l_lower) LOOP
      DBMS_OUTPUT.PUT_LINE( l_counter);
   END LOOP;
END;
