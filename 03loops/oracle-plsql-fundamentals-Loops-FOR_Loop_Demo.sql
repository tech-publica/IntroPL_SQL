BEGIN
  FOR l_counter in 1..3 LOOP
     dbms_output.put_line(l_counter);
  END LOOP;
END;