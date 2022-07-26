DECLARE
  l_ticket_priority VARCHAR(8) :='MEDIUM';
  l_support_tier NUMBER;
BEGIN
         IF l_ticket_priority = 'HIGH'  THEN
              l_support_tier :=1;
         ELSIF l_ticket_priority = 'MEDIUM'  THEN
                l_support_tier :=2;
         ELSIF l_ticket_priority = 'LOW'  THEN 
                l_support_tier :=3;
         END IF;
         dbms_output.put_line(l_support_tier );
END;