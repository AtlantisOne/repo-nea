/*1 Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf,
 задав в нем логин и пароль, который указывался при установке..*/
 
/*2 Создайте дамп базы данных example из предыдущего задания,
 разверните содержимое дампа в новую базу данных sample.*/
 
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) DEFAULT 'anonymous' COMMENT 'Имя пользователя',
  birthday_at DATE DEFAULT (CURRENT_DATE) COMMENT 'Дата рождения'
);

INSERT INTO users VALUES (NULL, 'Евгений', '1989-10-01');
INSERT INTO users VALUES
  (DEFAULT, 'Василий', DEFAULT),
  (DEFAULT, 'Мария', DEFAULT),
  (DEFAULT, 'Артем', DEFAULT);

SELECT * FROM users;
TRUNCATE users; -- Удалить все записи и обнулить счетчик;

/*3 Создайте дамп базы данных example из предыдущего задания,
 разверните содержимое дампа в новую базу данных sample.*/
 
mysqldump example > example_dump.sql -- Дамп БД;
mysql example < example_dump.sql -- Разворачивание из дампа

/*4 (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump.
 Создайте дамп единственной таблицы help_keyword базы данных mysql.
 Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.*/
 
mysqldump --where="true limit 100" mysql help_keyword > help_keyword_dump.sql