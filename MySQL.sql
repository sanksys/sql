-- INNER JOIN: Returns records that have matching values in both tables

SELECT C.CATEGORY_ID,P.UNIT_PRICE,P.PRODUCT_ID,P.NAME
FROM CATEGORY C
INNER JOIN PRODUCT P
ON C.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID;

-- WE CAN JOIN MORE THAN 1 RECORD/TABLES USING INNER JOIN

-- LEFT JOIN: Returns all records from the left table, and the matched records from the right table

SELECT C.CATEGORY_ID,P.UNIT_PRICE,P.PRODUCT_ID,P.NAME
FROM PRODUCT P
LEFT JOIN CATEGORY C
ON P.PRODUCT_CATEGORY_ID = C.PRODUCT_CATEGORY_ID;

-- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table

SELECT C.CATEGORY_ID,P.UNIT_PRICE,P.PRODUCT_ID,P.NAME
FROM CATEGORY C
RIGHT JOIN PRODUCT P
ON C.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID;

-- CROSS JOIN: Returns all records from both tables

SELECT C.CATEGORY_ID,P.UNIT_PRICE,P.PRODUCT_ID,P.NAME
FROM CATEGORY C
CROSS JOIN PRODUCT P;

-- IF WE ADD WHERE CLAUSE IN CROSS JOIN IT WILL RETURN SAME RESULT AS INNER JOIN
SELECT C.CATEGORY_ID,P.UNIT_PRICE,P.PRODUCT_ID,P.NAME
FROM CATEGORY C
CROSS JOIN PRODUCT P
WHERE C.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID;

-- SELF JOIN: A self join is a regular join, but the table is joined with itself.

SELECT P.PRODUCT_ID,P.UNIT_PRICE,P.NAME
FROM PRODUCT P1, PRODUCT P2
WHERE P1.UNIT_PRICE = P2.UNIT_PRICE;

--TYPE OF CLAUSES IN MYSQL/SQL
--FROM , WHERE , AND , OR , IN , BETWEEN , LIKE , LIMIT , ORDER BY , GROUP BY , HAVING , DISTINCT 

--UNION OPERATOR: The UNION operator is used to combine the result-set of two or more SELECT statements.
-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

SELECT PRODUCT_CATEGORY_ID, CATEGORY_ID FROM CATEGORY
UNION
SELECT PRODUCT_CATEGORY_ID, PRODCUT_ID FROM PRODUCT;

-- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
--UNION ALL: The UNION operator is used to combine the result-set of two or more SELECT statements. it does not ignore duplicate values

SELECT PRODUCT_CATEGORY_ID, CATEGORY_ID FROM CATEGORY
UNION ALL
SELECT PRODUCT_CATEGORY_ID, PRODCUT_ID FROM PRODUCT;
