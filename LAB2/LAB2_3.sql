--ZAD 3

CREATE OR REPLACE FUNCTION Silnia

	(fNumber IN NUMBER)

    RETURN NUMBER IS

    vSilnia  NUMBER := 1;

    vNumber INT;


BEGIN

vNumber := fNumber;

WHILE vNumber != 1 LOOP

    vSilnia := vSilnia * vNumber;

    vNumber := vNumber - 1; 

    END LOOP; 

RETURN vSilnia;

END Silnia;

