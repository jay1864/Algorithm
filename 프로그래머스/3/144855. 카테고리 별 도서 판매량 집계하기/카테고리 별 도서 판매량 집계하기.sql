SELECT B.CATEGORY, SUM(BS.SALES) AS TOTAL_SALES
FROM BOOK B LEFT JOIN BOOK_SALES BS ON B.BOOK_ID = BS.BOOK_ID
WHERE DATE_FORMAT(BS.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY; 