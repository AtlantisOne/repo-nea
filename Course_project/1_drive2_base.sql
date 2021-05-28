-- ---------------------------------Курсовой проект------------------------------------
-- ---------Создание Базы Данных для сообщества автолюбителей, сайта drive2.ru.--------
-- База данных повторяет функционал автомобильной социальной сети сайта drive2.ru, где 
-- пользователи обмениваются опытом владения автомобилем, решением проблем с ремонтом авто,
-- организовываются клубные встречи. База данных имеет две главных сущности: пользователь и
-- автомобиль, которым владеет пользователь, для каждого авто ведется бортжурнал событий.
-- Пользователи могут голосовать за автомобили других пользователей, исходя из этого
-- в базе данных реализован подсчет рейтинга автомобилей.
-- В разделе автозапчастей пользователи могут продавать свои автозапчасти.
-- Раздел автосервис, содержит перечень автосервисов, которые специализируются на отдельных
-- брендах авто. 

-- Создаём Базу Данных

DROP DATABASE IF EXISTS drive2;
CREATE DATABASE drive2;

-- Делаем её текущей
USE drive2;

-- Таблица пользователей сайта (атолюбителей).
DROP TABLE IF EXISTS users; 
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

-- Таблица профилей пользователей.
DROP TABLE IF EXISTS profiles; 
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender ENUM('m', 'f') NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

-- Таблица автомобилей пользователей.
DROP TABLE IF EXISTS cars; 
CREATE TABLE cars (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, владельца авто", 
  car_rating FLOAT(2) UNSIGNED,
  cars_models_id INT UNSIGNED NOT NULL COMMENT "Ссылка на модель авто", 
  cars_colours_id INT UNSIGNED NOT NULL COMMENT "Ссылка на цвет авто",
  release_date YEAR COMMENT "Дата выпуска авто",
  fuel_type ENUM('diesel', 'petrol') NOT NULL COMMENT "Тип двигателя по топливу",
  is_electric BOOLEAN COMMENT "Признак электромобиль",
  engine_power VARCHAR(5) COMMENT "Мощность двигателя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Автомобили"; 

-- Таблица голосования за авто пользователями
DROP TABLE IF EXISTS vote;
CREATE TABLE vote (
 cars_id INT UNSIGNED NOT NULL,
 user_id INT UNSIGNED NOT NULL,
 vote TINYINT UNSIGNED,
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
 updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки");

-- Таблица моделей автомобилей (справочник)
DROP TABLE IF EXISTS cars_models; 
CREATE TABLE cars_models (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  cars_brands_id INT UNSIGNED NOT NULL COMMENT "Ссылка на бренд авто", 
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название модели",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Модели авто";

-- Таблица брендов автомобилей (справочник)
DROP TABLE IF EXISTS cars_brands;
CREATE TABLE cars_brands (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название бренда"
) COMMENT "Бренды авто";


-- Таблица цветов автомобилей (справочник)
DROP TABLE IF EXISTS cars_colours;
CREATE TABLE cars_colours (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название цвета"
) COMMENT "Справочник цветов авто";


-- Создадим таблицу бортжурнала автомобиля
DROP TABLE IF EXISTS car_book;
CREATE TABLE car_book (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  cars_id INT UNSIGNED NOT NULL COMMENT "Ссылка автомобиль пользователя", 
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  head VARCHAR(255) COMMENT "Заголовок записи",
  body TEXT NOT NULL COMMENT "Текст записи бортжурнала",
  media_id INT UNSIGNED COMMENT "Ссылка на медиафайлы записи",
  is_public BOOLEAN DEFAULT TRUE COMMENT "Публичная запись", 
  is_archived BOOLEAN DEFAULT FALSE COMMENT "Архивная запись", 
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Бортжурнал автомобиля";

-- Таблица клубных автосервисов
DROP TABLE IF EXISTS auto_service;
CREATE TABLE auto_service (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название автосервиса",
  cars_brands_id INT UNSIGNED NOT NULL COMMENT "Ссылка на бренды авто, с которыми работает сервис", 
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта автосервиса",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон автосервиса",
  address VARCHAR(100) NOT NULL UNIQUE COMMENT "Адрес автосервиса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Клубные автосервисы";

-- Таблица каталогов магазина автозапчастей
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название раздела"
) COMMENT "Разделы магазина автозапчастей";

-- Таблица товарных позиций магазина автозапчестей
DROP TABLE IF EXISTS auto_parts;
CREATE TABLE auto_parts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  brand_name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название автозапчасти (бренд)",
  catalog_id INT UNSIGNED NOT NULL COMMENT "Название автозапчасти",
  cars_brands_id INT UNSIGNED NOT NULL COMMENT "Ссылка на бренды авто, с которыми работает сервис",
  user_id INT UNSIGNED NOT NULL COMMENT "Продавец (пользователь) автозапчасти",
  part_number VARCHAR(100) NOT NULL UNIQUE COMMENT "Артикул запчасти",
  is_used BOOLEAN DEFAULT FALSE COMMENT "Признак запчасти б.у.",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Товарные позиции магазина автозапчастей";

-- Таблица связи автосервисов и брендов автомобилей
DROP TABLE IF EXISTS auto_service_cars_brands;
CREATE TABLE auto_service_cars_brands (
  auto_service_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автосервис",
  cars_brands_id INT UNSIGNED NOT NULL COMMENT "Ссылка на бренд авто",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (auto_service_id, cars_brands_id) COMMENT "Составной первичный ключ"
) COMMENT "связи автосервисов и брендов автомобилей";

-- Таблица заказов магазина автозапчестей
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

-- Таблица медиафайлов
DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

-- Таблица типов медиафайлов
DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

-- Таблица сообщений
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки"
) COMMENT "Сообщения";

-- Таблица дружбы
DROP TABLE IF EXISTS friendship;
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  friendship_status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",  
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";

-- Таблица статусов дружеских отношений
DROP TABLE IF EXISTS friendship_statuses;
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Статусы дружбы";

-- Таблица групп
DROP TABLE IF EXISTS communities;
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS communities_users;
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";


-- ------------------------------Создание внешних ключей-------------------------------

-- Добавляем внешние ключи profiles
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

-- Добавляем внешние ключи messages
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
   
   -- Добавляем внешние ключи orders
ALTER TABLE orders
  ADD CONSTRAINT orders_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

-- Добавляем внешние ключи communities_users
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

-- Добавляем внешние ключи friendship
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friendship_status_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);
   
-- Добавляем внешние ключи media
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);
   
-- Добавляем внешние ключи car_book
ALTER TABLE car_book
  ADD CONSTRAINT car_book_cars_id_fk 
    FOREIGN KEY (cars_id) REFERENCES cars(id),
  ADD CONSTRAINT car_book_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT car_book_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id);

-- Добавляем внешние ключи auto_parts
ALTER TABLE auto_parts
  ADD CONSTRAINT auto_parts_catalog_id_fk 
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id),
  ADD CONSTRAINT auto_parts_cars_brands_id_fk 
    FOREIGN KEY (cars_brands_id) REFERENCES cars_brands(id),
  ADD CONSTRAINT auto_parts_cars_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
   
-- Добавляем внешние ключи auto_service
ALTER TABLE auto_service
  ADD CONSTRAINT auto_service_cars_brands_id_fk 
    FOREIGN KEY (cars_brands_id) REFERENCES cars_brands(id);
   
-- Добавляем внешние ключи cars
ALTER TABLE cars
  ADD CONSTRAINT cars_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT cars_cars_models_id_fk 
    FOREIGN KEY (cars_models_id) REFERENCES cars_models(id),
  ADD CONSTRAINT cars_cars_colours_id_fk 
    FOREIGN KEY (cars_colours_id) REFERENCES cars_colours(id);
   
-- Добавляем внешние ключи cars_models
ALTER TABLE cars_models
  ADD CONSTRAINT cars_models_cars_brands_id_fk 
    FOREIGN KEY (cars_brands_id) REFERENCES cars_brands(id);
   
-- Добавляем внешние ключи auto_service_cars_brands
ALTER TABLE auto_service_cars_brands
  ADD CONSTRAINT auto_service_cars_brands_auto_service_id_fk 
    FOREIGN KEY (auto_service_id) REFERENCES auto_service(id),
  ADD CONSTRAINT auto_service_cars_brands_cars_brands_id_fk 
    FOREIGN KEY (cars_brands_id) REFERENCES cars_brands(id);
   
-- Добавляем внешние ключи vote
ALTER TABLE vote
  ADD CONSTRAINT vote_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT vote_cars_id_fk 
    FOREIGN KEY (cars_id) REFERENCES cars(id);
   
-- ------------------------Создаем индексы для таблиц----------------------------------
   
CREATE INDEX users_last_name_idx ON users (last_name);
CREATE INDEX users_first_name_last_name_idx
ON users (first_name, last_name);

CREATE INDEX profiles_city_idx ON profiles (city);
CREATE INDEX profiles_country_idx ON profiles (country);

CREATE INDEX car_book_head_idx ON car_book (head);

-- ------------------------------------------------------------------------------------
