--ZAD 8
DECLARE
    vCurrentSecond VARCHAR(20);
   
BEGIN
    SELECT TO_CHAR(SYSDATE, 'SS') SECOND INTO vCurrentSecond FROM DUAL;
    WHILE vCurrentSecond != '25' LOOP
    SELECT TO_CHAR(SYSDATE, 'SS') SECOND INTO vCurrentSecond FROM DUAL; 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Nadeszła 25 sekunda!');

END;