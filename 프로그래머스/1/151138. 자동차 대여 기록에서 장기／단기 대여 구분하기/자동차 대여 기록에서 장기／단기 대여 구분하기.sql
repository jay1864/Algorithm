SELECT HISTORY_ID, 
    CAR_ID, 
    DATE_FORMAT(START_DATE, '%Y-%m-%d') START_DATE, 
    DATE_FORMAT(END_DATE, '%Y-%m-%d') END_DATE,
    CASE WHEN DATEDIFF(END_DATE, START_DATE)+1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
        END RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE DATE_FORMAT(START_DATE, '%Y-%m') = '2022-09'
ORDER BY HISTORY_ID DESC




# 대여 시작일이 2022년 9월에 속하는 대여 기록에 대해서 
# 대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)
# 결과는 대여 기록 ID를 기준으로 내림차순 정렬
# 이때 여러 결과를 가지는 CAR_ID가 있으므로 중복 제거해야함(가장 최신걸로)