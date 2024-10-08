SELECT INS.ANIMAL_ID, INS.ANIMAL_TYPE, INS.NAME
FROM ANIMAL_INS INS LEFT JOIN ANIMAL_OUTS OUTS ON INS.ANIMAL_ID= OUTS.ANIMAL_ID
WHERE (INS.SEX_UPON_INTAKE LIKE '%Intact%') AND (OUTS.SEX_UPON_OUTCOME NOT LIKE '%Intact%')
ORDER BY INS.ANIMAL_ID;