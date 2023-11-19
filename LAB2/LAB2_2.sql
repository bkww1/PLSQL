--ZAD 2

CREATE OR REPLACE FUNCTION PlacaNetto

	(fPlacaBrutto IN NUMBER, fStawkaPodatku IN NUMBER DEFAULT 20)

    RETURN NUMBER IS

    vPlacaNetto NUMBER;

BEGIN

    vPlacaNetto := fPlacaBrutto * (1- fStawkaPodatku/100);

    RETURN vPlacaNetto;


END PlacaNetto;

