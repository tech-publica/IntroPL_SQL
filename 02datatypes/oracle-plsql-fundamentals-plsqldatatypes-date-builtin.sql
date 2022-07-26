declare
 l_date DATE := current_date;
 l_systimestamp timestamp with time zone := systimestamp;
 l_currenttimestamp timestamp with time zone := current_timestamp;
 l_timestamp timestamp := current_timestamp;
 begin
 dbms_output.put_line('l_date '||l_date);
 dbms_output.put_line('l_systimestamp '||l_systimestamp); -- System timestamp shows the db time in pacific zone with -8 offset
 dbms_output.put_line('l_currenttimestamp '||l_currenttimestamp); -- Current timestamp shows the session time in eastern zone with -5 offset
 dbms_output.put_line('l_timestamp '||l_timestamp); -- Current timestamp fetched in timestamp variable loosing the timezone information
end;
/