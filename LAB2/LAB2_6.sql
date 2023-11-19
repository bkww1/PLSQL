--ZAD 6

CREATE OR REPLACE PACKAGE Konwersja IS

    FUNCTION Cels_To_Fahr(pTc NUMBER)

    RETURN INT;

    FUNCTION Fahr_To_Cels(pTf NUMBER)

    RETURN INT;

END Konwersja;


CREATE OR REPLACE PACKAGE BODY Konwersja IS

    FUNCTION Cels_To_Fahr(pTc IN NUMBER)

    RETURN INT IS

    vTf INT;

    BEGIN

        vTf := (9/5) * pTc + 32;

        RETURN vTf;

    END Cels_To_Fahr;

    FUNCTION Fahr_To_Cels(pTf IN NUMBER)

    RETURN INT IS

    vTc INT;

    BEGIN

        vTc := (5/9) * (pTf - 32);

        RETURN vTc;

    END Fahr_To_Cels;

END Konwersja;

