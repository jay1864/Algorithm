SELECT YEAR(O.SALES_DATE) AS YEAR, 
    MONTH(O.SALES_DATE) AS MONTH, 
    U.GENDER,
    COUNT(DISTINCT O.USER_ID) AS USERS
FROM USER_INFO U 
JOIN ONLINE_SALE O ON U.USER_ID = O.USER_ID
WHERE U.GENDER IS NOT NULL
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3;


# 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
# 성별 정보가 없는 경우 결과에서 제외해주세요.
# 년, 월, 성별을 기준으로 오름차순 정렬