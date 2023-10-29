--ZAD 4
DECLARE 
    cPi CONSTANT NUMBER (3,2) := 3.14;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Obwód koła o promieniu równym 5: ' || cPi * 2 * 5);
    DBMS_OUTPUT.PUT_LINE('Pole koła o promieniu równym 5: ' || cPi * 5 * 5);
END;