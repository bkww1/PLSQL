--ZAD 2
DECLARE 
    vTekst VARCHAR2(40);
    vLiczba NUMBER(20,3);
BEGIN
    vTekst := 'Witaj, świecie!';
    vLiczba := 1000.456;
    vTekst := vTekst || ' Witaj, nowy dniu!';
    vLiczba := vLiczba + 1000000000000000;
    DBMS_OUTPUT.PUT_LINE('Zmienna vTekst: ' || vTekst);
    DBMS_OUTPUT.PUT_LINE('Zmienna vLiczba: ' || vLiczba);
   
END;