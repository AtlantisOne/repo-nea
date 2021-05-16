  
-- 1.В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION;
  INSERT INTO sample.users 
 (SELECT * FROM shop.users WHERE id=1);
  DELETE FROM shop.users WHERE id=1;
COMMIT;

-- 2.Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
CREATE OR REPLACE VIEW v AS catalogs_products AS
SELECT products.name AS product,
       catalogs.name AS catalog
FROM 
products
JOIN 
catalogs
ON products.catalog_id=catalogs.id;
   
-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"-----
--1.Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION IF EXISTS hello;

USE vk;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello() 
RETURNS TINYTEXT NO SQL
BEGIN
	DECLARE hour INT;
	SET HOUR = HOUR(NOW());
	CASE
		WHEN HOUR BETWEEN 0 AND 5 THEN
			RETURN "Доброй ночи";
		WHEN HOUR BETWEEN 6 AND 11 THEN
			RETURN "Доброе утро";
		WHEN HOUR BETWEEN 12 AND 17 THEN
			RETURN "Добрый день";
		WHEN HOUR BETWEEN 18 AND 23 THEN
			RETURN "Добрый вечер";
	END CASE;
END//
DELIMITER ;
SELECT hello();

-- 2.В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

CREATE TRIGGER trg_products_insert_check BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'Name and desription can`t be null';
  END IF; 
END//

CREATE TRIGGER trg_products_update_check BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'Name and desription can`t be null';
  END IF; 
END///

DELIMITER ;