-- ZAD 9
DECLARE
    n INT := 10;
    vSilniaSum INT := 1;
   
BEGIN
    WHILE n != 1 LOOP
    vSilniaSum := vSilniaSum * n;
    n := n - 1; 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Silnia dla n=' || n || ': ' || vSilniaSum);

END;