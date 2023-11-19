--ZAD 7

CREATE OR REPLACE PACKAGE Zmienne IS

    vLicznik NUMBER := 0;

    PROCEDURE ZwiekszLicznik;

    PROCEDURE ZmniejszLicznik;

    FUNCTION PokazLicznik

        RETURN NUMBER;

END Zmienne;

CREATE OR REPLACE PACKAGE BODY Zmienne IS

    PROCEDURE ZwiekszLicznik IS

    BEGIN

        vLicznik := vLicznik + 1;

        DBMS_OUTPUT.PUT_LINE('Zwiększono');

    END ZwiekszLicznik;

    PROCEDURE ZmniejszLicznik IS

    BEGIN

        vLicznik := vLicznik - 1;

         DBMS_OUTPUT.PUT_LINE('Zmniejszono');

    END ZmniejszLicznik;


    FUNCTION PokazLicznik

    RETURN NUMBER IS

    BEGIN

        RETURN vLicznik;

    END PokazLicznik;



BEGIN

    vLicznik := 1;

    DBMS_OUTPUT.PUT_LINE('Zainicjalizowano');

END Zmienne;