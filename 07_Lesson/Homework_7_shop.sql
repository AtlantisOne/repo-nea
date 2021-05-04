USE shop_Lesson_7;

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
-- Решение

-- Заполним заказы пользователей
TRUNCATE orders;
INSERT INTO orders 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * users.id)), 
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
  FROM users LIMIT 4;
 
 
SELECT DISTINCT u.name
FROM 
users AS u
JOIN
orders AS o
ON
u.id = o.user_id;


-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
-- Решение

SELECT p.name, p.price, c.name AS catalog
FROM 
catalogs AS c
JOIN
products AS p
ORDER BY catalog;
