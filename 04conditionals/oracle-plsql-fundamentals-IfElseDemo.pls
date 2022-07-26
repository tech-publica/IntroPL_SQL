DECLARE
           l_sales_amt NUMBER :=40000;
         l_commission NUMBER:=0;


BEGIN
         IF l_sales_amt < 50000 OR l_sales_amt IS NULL THEN
                  l_commission :=5;
            ELSe
               l_commission :=10;
         END IF;
         dbms_output.put_line(l_commission);
END;
