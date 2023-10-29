-- ZAD 10
DECLARE
    vCenturyStart DATE;
    vCenturyEnd DATE;
    vCurrTempDate DATE;

BEGIN
    vCenturyStart := TO_DATE('01-01-2001','DD-MM-YYYY');
    vCenturyEnd := TO_DATE('31-12-2100','DD-MM-YYYY');
    vCurrTempDate := vCenturyStart;

    WHILE vCurrTempDate != vCenturyEnd LOOP
        IF TO_CHAR(vCurrTempDate, 'D') = '5' AND TO_CHAR(vCurrTempDate, 'DD') = '13' THEN
            DBMS_OUTPUT.PUT_LINE(TO_CHAR(vCurrTempDate, 'DD-MM-YYYY'));
        END IF;
        vCurrTempDate := vCurrTempDate + 1;

    END LOOP;

END;