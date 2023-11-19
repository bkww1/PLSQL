--ZAD 4

CREATE OR REPLACE FUNCTION SilniaRek

	(fNumber IN NUMBER)

    RETURN NUMBER IS

    vSilnia  NUMBER := 1;

    vNumber INT;

BEGIN

vNumber := fNumber;

IF fNumber < 2 THEN

    vSilnia := 1;

    RETURN vSilnia;

ELSE 

    RETURN fNumber*SilniaRek(fNumber-1);

END IF;

END SilniaRek;

