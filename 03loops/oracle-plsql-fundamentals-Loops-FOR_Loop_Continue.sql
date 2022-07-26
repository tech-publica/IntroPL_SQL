BEGIN
   FOR l_counter IN 1..4 LOOP
         IF l_counter = 3 THEN
            CONTINUE;
         END IF;
       DBMS_OUTPUT.PUT_LINE(l_counter);
   END LOOP;
END;
