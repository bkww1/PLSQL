--ZAD 5
DECLARE 
    vNazwisko pracownicy.nazwisko%TYPE;
    vEtat pracownicy.etat%TYPE;
BEGIN
    SELECT nazwisko,etat INTO vNazwisko,vEtat FROM pracownicy WHERE placa_pod = (SELECT MAX(placa_pod) FROM pracownicy);
    DBMS_OUTPUT.PUT_LINE('Najlepiej zarabiający pracownik ' || vNazwisko);
    DBMS_OUTPUT.PUT_LINE('Pracuje on jako ' || vEtat);

END;