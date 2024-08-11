SELECT DISTINCT CAR_ID, 
    CASE WHEN CAR_ID IN (
        SELECT CAR_ID 
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE '2022-10-16' BETWEEN START_DATE AND END_DATE
    ) THEN '대여중'
        ELSE '대여 가능' END AS 'AVAILABILITY'
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY 1
ORDER BY CAR_ID DESC

# 시작 날짜가 2022년 10월 16일 이전 & 반납 날짜가 2022년 10월 16일 이후 => 대여중
# 시작 날짜가 2022년 10월 16일 이후 => 대여 가능
# 나머지 => 과거 대여기록
# 단, 대여중, 대여가능 중복 CAR_ID가 있을 수 있음. 대여중 먼저 거르고 그룹화 해서 써먹자