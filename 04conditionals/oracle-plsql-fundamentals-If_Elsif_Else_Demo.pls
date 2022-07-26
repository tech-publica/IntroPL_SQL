DECLARE
  l_sales_amt NUMBER :=10000;
  l_commission NUMBER:=0;
BEGIN
  IF  l_sales_amt < 25000 THEN 
    l_commission :=2;
  ELSIF  l_sales_amt < 35000 THEN
    l_commission :=5;
  ELSE 
    l_commission := 10;
  END IF;
  dbms_output.put_line(l_commission);
END;
