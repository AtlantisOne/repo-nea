-- Тема Операции, задание 1
-- Пусть в таблице users поля created_at и updated_at оказались незаполненными.
-- Заполните их текущими датой и временем.

-- Решение
DROP DATABASE IF EXISTS Lesson_5_shop;
CREATE DATABASE Lesson_5_shop;
USE Lesson_5_shop;
-- SELECT * FROM users;
-- UPDATE users SET updated_at = NULL WHERE id = 1;
-- Просто замена всех значений.
UPDATE users SET created_at = NOW(), updated_at = NOW();
-- Вариант 2, замена, если значения нет.
UPDATE users SET created_at = NOW(), updated_at = NOW() WHERE created_at IS NULL OR updated_at IS NULL;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', NULL, NULL),
  ('Наталья', '1984-11-12', NULL, NULL),
  ('Александр', '1985-05-20', NULL, NULL),
  ('Сергей', '1988-02-14', NULL, NULL),
  ('Иван', '1998-01-12', NULL, NULL),
  ('Мария', '2006-08-29', NULL, NULL);
  
  
-- Тема Операции, задание 2
-- Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались
-- значения в формате "20.10.2017 8:10".
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

-- Решение
-- Убеждаемся, что поля действительно в VARCHAR
DESC users;
-- SELECT * FROM users;
-- Используем функцию STR_TO_DATE и преобразуем строку в дату
UPDATE users SET
   created_at = STR_TO_DATE(created_at, '%d.%m.%Y %T'),
   updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %T');
-- VARCHAR в DATETIME
ALTER TABLE users 
   MODIFY COLUMN created_at DATETIME,
   MODIFY COLUMN updated_at DATETIME;
 
 

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('Иван', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('Мария', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56');


-- Тема Операции, задание 3
-- В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения
-- значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.

-- Решение
-- SELECT * FROM storehouses_products;
SELECT * FROM storehouses_products ORDER BY 
   CASE 
       WHEN value = 0 then 1
       else 0
       end,
   value;
   

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);


-- Тема Операции, задание 4
-- (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в
-- августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')
 SELECT * FROM users WHERE MONTH(birthday_at) IN ('may', 'august');
 SELECT * FROM users WHERE MONTH(birthday_at) IN (5,8);
SELECT MONTH(birthday_at), CASE 
	WHEN birthday_at = 1 THEN '1may'
	WHEN birthday_at = 2 THEN '2august'
	WHEN birthday_at = 3 THEN '3may'
	WHEN birthday_at = 4 THEN '4august'
	WHEN birthday_at = 5 THEN '5may'
	WHEN birthday_at = 6 THEN '6august'
	WHEN birthday_at = 7 THEN '7may'
	WHEN birthday_at = 8 THEN '8august'
	WHEN birthday_at = 9 THEN '9may'
	WHEN birthday_at = 10 THEN '10august'
	WHEN birthday_at = 11 THEN '11may'
	WHEN birthday_at = 12 THEN '12august'
	END as birthday
	FROM users;

SELECT MONTH(birthday_at), CASE 
	WHEN birthday_at = 1 THEN '1may'
	WHEN birthday_at = 2 THEN '2august'
	WHEN birthday_at = 3 THEN '3may'
	WHEN birthday_at = 4 THEN '4august'
	WHEN birthday_at = 5 THEN '5may'
	WHEN birthday_at = 6 THEN '6august'
	WHEN birthday_at = 7 THEN '7may'
	WHEN birthday_at = 8 THEN '8august'
	WHEN birthday_at = 9 THEN '9may'
	WHEN birthday_at = 10 THEN '10august'
	WHEN birthday_at = 11 THEN '11may'
	WHEN birthday_at = 12 THEN '12august'
	END as birthday
	FROM users;

-- Таблица users создана для задания 2 темы Операции

-- Тема Операции, задание 5
-- (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
-- Решение
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY CASE WHEN id = 2 THEN 2 else 1 END, id DESC;
SELECT * FROM catalogs WHERE id IN (5, 1, 2);

  
-- Отсортируйте записи в порядке, заданном в списке IN.

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT = 'Каталог';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');


-- Тема Агрегация, задание 1
-- Подсчитайте средний возраст пользователей в таблице users
-- Решение
-- SELECT * FROM users;
  
SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS avg_ages FROM users;

-- Таблица users создана для задания 2 темы Операции

	  
-- Тема Агрегация, задание 2
-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- Решение
SELECT * FROM users;
DESC users;

SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total FROM users GROUP BY day ORDER BY total;

-- Таблица users создана для задания 2 темы Операции

-- Тема Агрегация, задание 3
-- (по желанию) Подсчитайте произведение чисел в столбце таблицы

-- Используйте таблицу catalogs, созданную для задания 5 темы Операции
  


