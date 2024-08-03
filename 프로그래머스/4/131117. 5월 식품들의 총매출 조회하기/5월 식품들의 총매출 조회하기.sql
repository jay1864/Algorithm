SELECT PRODUCT_ID, PRODUCT_NAME, SUM(SALES) AS TOTAL_SALES
FROM
(
SELECT P.PRODUCT_ID, P.PRODUCT_NAME, P.PRICE*O.AMOUNT AS SALES
FROM FOOD_PRODUCT P JOIN FOOD_ORDER O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE DATE_FORMAT(O.PRODUCE_DATE, '%Y-%m') = '2022-05'
) A
GROUP BY PRODUCT_NAME
ORDER BY TOTAL_SALES DESC, PRODUCT_ID;

# 생산일자(PRODUCE_DATE)가 2022년 5월 => DATE_FORMAT
# 상품 별 총 매출 => GROUP BY, SUM
# 식품ID, 식품 이름, 총 매출 조회
# 총 매출 기준 내림차순 정렬, 후순위 식품 ID 오름차순 정렬 => ORDER BY 