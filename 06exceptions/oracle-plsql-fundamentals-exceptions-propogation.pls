DECLARE
  invalid_quantity EXCEPTION;
  l_order_qty NUMBER := -2;
BEGIN
  DECLARE
    invalid_quantity EXCEPTION; -- Add 1   
  BEGIN
    IF l_order_qty < 0 THEN
      RAISE invalid_quantity;
    END IF; --Add2
  EXCEPTION
    WHEN invalid_quantity THEN
      DBMS_OUTPUT.PUT_LINE('Inside Inner invalid_quantity handler');
      RAISE; -- Add3
  END;
  DBMS_OUTPUT.PUT_LINE('Resuming Outer Block');
EXCEPTION
  WHEN  invalid_quantity THEN
    DBMS_OUTPUT.PUT_LINE('Inside outer invalid_quantity handler'); 
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Inside outer When Others');
END;
