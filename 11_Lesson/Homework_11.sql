-- Практическое задание по теме “Оптимизация запросов”

-- 1.	Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи, название 

USE shop_Lesson_7;

SHOW TABLE STATUS LIKE 'catalogs'; -- проверяем тип таблицы каталога

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME,
  name_tbl VARCHAR(50) COMMENT 'Название таблицы',
  name_str VARCHAR(150) COMMENT 'Запись'
) COMMENT = 'Логи' ENGINE=Archive;


-- Триггер для users
DROP TRIGGER IF EXISTS log_users;
delimiter //
CREATE TRIGGER log_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, name_str)
	VALUES (NOW(), 'users', NEW.name);
END //
delimiter ;

-- Триггер для catalogs
DROP TRIGGER IF EXISTS log_catalogs;
delimiter //
CREATE TRIGGER log_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, name_str)
	VALUES (NOW(), 'catalogs', NEW.name);
END //
delimiter ;

-- Триггер для products
DROP TRIGGER IF EXISTS log_products;
delimiter //
CREATE TRIGGER log_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, name_tbl, name_str)
	VALUES (NOW(), 'products', NEW.name);
END //
delimiter ;

-- Практическое задание по теме “NoSQL”
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
sudo apt install redis -- устанавливаем redis

redis-cli -- заходим в клиент redis
-- Создать множество с названием ip-адреса 
SADD 192.168.10.1 '2021-05-18' 
-- При каждом посещении во множество добавляется текущая временная метка
SADD 192.168.10.1 '2021-05-19'
SADD 192.168.10.1 '2021-05-20'
-- Далее можно вывести количество элементов во множестве, это будет количество посещений.
SCARD 192.168.10.1

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот,
-- поиск электронного адреса пользователя по его имени.
HSET email 'masha' 'name1@gmail.com'
HSET email 'evgen' 'name2@gmail.com'
HSET email 'ivan' 'name3@gmail.com'

HGET email 'evgen'

HSET users 'name1@gmail.com' 'masha'
HSET users 'name2@gmail.com' 'evgen'
HSET users 'name3@gmail.com' 'ivan'

HGET users 'name1@gmail.com'


-- 3.Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

db.shop.insert({category: 'gpu'})
db.shop.insert({category: 'cpu'})

db.shop.update({category: 'gpu'}, {$set: { products:['gtx 1070', 'RX580', 'gtx 2090'] }})
db.shop.update({category: 'cpu'}, {$set: { products:['i5', 'i7', 'ryzen7'] }})
