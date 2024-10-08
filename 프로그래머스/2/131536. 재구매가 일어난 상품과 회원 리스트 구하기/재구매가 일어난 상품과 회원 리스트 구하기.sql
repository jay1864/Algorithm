SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY 1, 2
HAVING COUNT(*) > 1
ORDER BY 1, 2 DESC;

# 동일한 회원이 동일한 상품을 재구매한 데이터
# 재구매한 회원ID와 재구매한 상품ID
# 필요 컬럼 : USER_ID, PRODUCT_ID, SALES_DATE