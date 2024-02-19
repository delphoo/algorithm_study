SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
    FROM ONLINE_SALE
        WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-03'
union
    
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
    FROM OFFLINE_SALE
        WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-03'
    
order by sales_date, product_id, user_id
    
    
