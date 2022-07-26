DECLARE
  l_char_with_space    CHAR(4)         := 'ab  ';
  l_char_without_space CHAR(4)         := 'ab';
  l_varchar2_without_space VARCHAR2(4) := 'ab';
BEGIN
  IF l_char_with_space = l_char_without_space THEN
    DBMS_OUTPUT.PUT_LINE('l_char_with_space is blank padded and is equal to l_char_without_space');
  END IF;
  IF l_char_with_space != l_varchar2_without_space THEN
    DBMS_OUTPUT.PUT_LINE('l_varchar2_without_space is not blank padded and so is not equal to l_char_with_space');
  END IF;
END;
  