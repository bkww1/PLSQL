--ZAD 7
DECLARE 
    SUBTYPE tPieniadze is NUMBER(10,1);
    vZarobki tPieniadze;
    vNazwisko VARCHAR2(20);

BEGIN
    SELECT nazwisko,(placa_pod *12 + COALESCE(placa_dod,0) *12)  INTO vNazwisko,vZarobki FROM pracownicy WHERE nazwisko = 'SLOWINSKI';
    DBMS_OUTPUT.PUT_LINE('Pracownik ' || vNazwisko || ' zarabia rocznie ' || vZarobki);

END;