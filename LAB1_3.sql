--ZAD 3
DECLARE 
    vSuma NUMBER(10,7) := 0;
    vLiczba1 NUMBER(10,7);
    vLiczba2 NUMBER(10,7);
BEGIN
    vLiczba1 := 10.2356000;
    vLiczba2 := 0.0000001;
    vSuma := vLiczba1 + vLiczba2;
    DBMS_OUTPUT.PUT_LINE('Wynik dodawania ' || vLiczba1 || ' i ' || vLiczba2 || ': ' || vSuma);
   
END;