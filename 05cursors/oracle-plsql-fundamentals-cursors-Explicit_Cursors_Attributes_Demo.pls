DECLARE
  CURSOR cur_get_departments(p_rows NUMBER DEFAULT 5) IS
    SELECT  dept_id,
            dept_name
      FROM  departments
     WHERE  ROWNUM <= p_rows;
  cur_get_departments_var cur_get_departments%ROWTYPE;
BEGIN
  OPEN cur_get_departments( 2);
  LOOP
    FETCH cur_get_departments 
     INTO cur_get_departments_var;        
    EXIT WHEN cur_get_departments%NOTFOUND;       
    DBMS_OUTPUT.PUT_LINE('Dept Id: '||cur_get_departments_var.dept_id);
    DBMS_OUTPUT.PUT_LINE('RowCount: '||cur_get_departments%ROWCOUNT);
   END LOOP;
  IF cur_get_departments%ISOPEN THEN
    CLOSE cur_get_departments;
  END IF;    
END;
