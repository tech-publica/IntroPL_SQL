DECLARE
  l_ticket_priority VARCHAR2(8) :='MEDIUM';
  l_support_tier NUMBER;
BEGIN
  l_support_tier := 
  CASE  l_ticket_priority
    WHEN  'HIGH'    THEN     1
    WHEN  'MEDIUM'  THEN     2
    WHEN  'LOW'     THEN     3
    ELSE                     0
  END ;
  DBMS_OUTPUT.PUT_LINE(l_support_tier);
END;
