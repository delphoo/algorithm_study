-- 코드를 입력하세요
SELECT YEAR(OS.SALES_DATE) AS YEAR, MONTH(OS.SALES_DATE) AS MONTH, GENDER, COUNT(DISTINCT OS.USER_ID) AS USERS
    FROM ONLINE_SALE OS JOIN USER_INFO UI
        USING (USER_ID)
            WHERE GENDER IS NOT NULL
                GROUP BY YEAR, MONTH, GENDER
                    ORDER BY YEAR, MONTH, GENDER