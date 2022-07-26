DECLARE
    l_return NUMBER;
BEGIN    
      l_return := get_tier;
END;
/
select get_tier from dual;
VARIABLE    l_return NUMBER;
 BEGIN
   :l_return := get_tier;
END;
/
PRINT        :l_return