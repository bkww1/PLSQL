--ZAD 1

CREATE OR REPLACE PROCEDURE NowyPracownik

    (pNazwisko IN VARCHAR, 

    pNazwaZespolu IN VARCHAR, 

    pNazwiskoSzefa IN VARCHAR, 

    pPlacaPodstawowa IN NUMBER) IS

BEGIN

    INSERT INTO PRACOWNICY (ID_PRAC, NAZWISKO, ETAT, ID_SZEFA, ZATRUDNIONY, PLACA_POD, ID_ZESP) VALUES (

        (SELECT MAX(ID_PRAC) + 10 FROM PRACOWNICY),

        pNazwisko,

        'STAZYSTA',

        (SELECT ID_PRAC FROM PRACOWNICY WHERE NAZWISKO LIKE pNazwiskoSzefa),

        (SELECT TO_DATE(TO_CHAR(SYSDATE,'MM/DD/YYYY'),'MM/DD/YYYY') FROM DUAL),

        pPlacaPodstawowa,

        (SELECT ID_ZESP FROM ZESPOLY WHERE NAZWA LIKE pNazwaZespolu)

    );


END NowyPracownik;