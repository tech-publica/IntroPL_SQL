﻿--HERE SHOW WHAT HAPPENS WHEN LOWER BOUND IS SAME AS UPPER BOUND AND LOWER BOUND IS GREATER THEN UPPER BOUND
BEGIN
   FOR l_counter in 4..4 LOOP
      DBMS_OUTPUT.PUT_LINE( l_counter);
   END LOOP;
END;