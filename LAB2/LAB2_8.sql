--ZAD 8

CREATE OR REPLACE PACKAGE IntZespoly IS

    PROCEDURE DodajZespol(pIdZesp NUMBER, pNazwaZesp VARCHAR, pAdresZesp VARCHAR);

    PROCEDURE UsunZespol(pNazwaZesp VARCHAR);

    PROCEDURE ModyfikujZespol(pIdZesp NUMBER, pNazwaZesp VARCHAR, pAdresZesp VARCHAR);

    FUNCTION PokazId (fNazwaZesp VARCHAR)

        RETURN NUMBER;

    FUNCTION PokazNazwe (fIdZesp NUMBER)

        RETURN VARCHAR;

    FUNCTION PokazAdres (fIdZesp NUMBER)

        RETURN VARCHAR;        

END IntZespoly;


CREATE OR REPLACE PACKAGE BODY IntZespoly IS

    PROCEDURE DodajZespol(pIdZesp NUMBER, pNazwaZesp VARCHAR, pAdresZesp VARCHAR) IS

    BEGIN 

        INSERT INTO ZESPOLY (ID_ZESP, NAZWA, ADRES) VALUES

        (pIdZesp, pNazwaZesp, pAdresZesp);

        DBMS_OUTPUT.PUT_LINE('DODANO ZESPOL: ' || pNazwaZesp);

    END DodajZespol;


    PROCEDURE UsunZespol(pNazwaZesp VARCHAR) IS

    BEGIN

        DELETE FROM ZESPOLY WHERE NAZWA = pNazwaZesp;

        DBMS_OUTPUT.PUT_LINE('USUNIETO ZESPOL: ' || pNazwaZesp);

    END UsunZespol;



    PROCEDURE ModyfikujZespol(pIdZesp NUMBER, pNazwaZesp VARCHAR, pAdresZesp VARCHAR) IS

    BEGIN

        UPDATE ZESPOLY SET

        NAZWA = pNazwaZesp, ADRES = pAdresZesp

        WHERE ID_ZESP = pIdZesp;

        DBMS_OUTPUT.PUT_LINE('ZMODYFIKOWANO ZESPOL O ID: ' || pIdZesp);

    END ModyfikujZespol;

   
    FUNCTION PokazId(fNazwaZesp VARCHAR)

    RETURN NUMBER IS

    vIdZesp NUMBER;

    BEGIN 

        SELECT ID_ZESP INTO vIdZesp FROM ZESPOLY WHERE NAZWA = fNazwaZesp; 

        RETURN vIdZesp;

    END PokazId;



    FUNCTION PokazNazwe(fIdZesp NUMBER) 

    RETURN VARCHAR IS

    vNazwaZesp VARCHAR(40);

    BEGIN

        SELECT NAZWA INTO vNazwaZesp FROM ZESPOLY WHERE ID_ZESP = fIdZesp;

        RETURN vNazwaZesp;

    END PokazNazwe;



    FUNCTION PokazAdres(fIdZesp NUMBER) 

    RETURN VARCHAR IS

    vAdresZesp VARCHAR(40);

    BEGIN

        SELECT ADRES INTO vAdresZesp FROM ZESPOLY WHERE ID_ZESP = fIdZesp;

        RETURN vAdresZesp;

    END PokazAdres;

END IntZespoly;

