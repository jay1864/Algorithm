SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS OUTS LEFT JOIN ANIMAL_INS INS ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.ANIMAL_ID IS NULL
ORDER BY 1;
