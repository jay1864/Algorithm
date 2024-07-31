SELECT DISTINCT CAR.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR CAR LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY HISTORY
    ON CAR.CAR_ID = HISTORY.CAR_ID
WHERE CAR_TYPE = '세단' AND MONTH(START_DATE) = 10
ORDER BY CAR.CAR_ID DESC;
