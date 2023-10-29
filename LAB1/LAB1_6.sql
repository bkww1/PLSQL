--ZAD 6
DECLARE 
    vPracownik pracownicy%ROWTYPE;

BEGIN
    SELECT nazwisko,etat INTO vPracownik.nazwisko,vPracownik.etat FROM pracownicy WHERE placa_pod = (SELECT MAX(placa_pod) FROM pracownicy);
    DBMS_OUTPUT.PUT_LINE('Najlepiej zarabiający pracownik ' || vPracownik.nazwisko);
    DBMS_OUTPUT.PUT_LINE('Pracuje on jako ' || vPracownik.etat);

END;