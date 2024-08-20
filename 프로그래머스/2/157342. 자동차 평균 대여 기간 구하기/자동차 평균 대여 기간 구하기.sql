SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY 2 DESC, 1 DESC

# 평균 대여 기간이 7일 이상인 자동차
# 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력
# 평균 대여 기간은 소수점 두번째 자리에서 반올림
# 결과는 평균 대여 기간을 기준으로 내림차순 정렬, 평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬

# DATEDIFF() : 두 날짜 차이 일수 반환
# 이때 당일 대여 당일 반납일 경우 0이 반환되므로 +1을 해줘야함
# AVG() : 평균값 계산
# ROUND() : 반올림 계산
