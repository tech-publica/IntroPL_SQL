DECLARE
  l_counter NUMBER :=0;
  l_sum NUMBER := 0;
BEGIN
  LOOP
    l_sum := l_sum + l_counter;
    l_counter := l_counter + 1;
    DBMS_OUTPUT.PUT_LINE(l_sum );
      IF l_sum > 2  THEN
        GOTO out_of_loop;
      END IF;
   END LOOP;
  <<out_of_loop>>
  null;
END;
