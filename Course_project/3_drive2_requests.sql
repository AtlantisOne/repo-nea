
-- ------------------------------------Запросы-----------------------------------------
-- 10 самых активных продавцов б.у. запчастей.
SELECT 
	u.id as user_id, 
	CONCAT(u.last_name, ' ', u.first_name) user,
	COUNT(a.id) parts_count
  FROM users AS u
  LEFT JOIN auto_parts AS a
    ON u.id = a.user_id 
    WHERE a.is_used=1
 GROUP BY u.id
 ORDER BY parts_count DESC LIMIT 10; 


-- 10 самых активных продавцов новых запчастей (используя оконные функции).
SELECT DISTINCT
	CONCAT(users.last_name, ' ', users.first_name) user, 
    COUNT(auto_parts.id) OVER w_users AS parts_count
  FROM users
	LEFT JOIN auto_parts
    	ON users.id = auto_parts.user_id 
    	WHERE auto_parts.is_used=0
WINDOW w_users AS (PARTITION BY users.id)
ORDER BY parts_count DESC LIMIT 10;


-- Отчет по пользователям, а именно: 
-- - количество электроавтомобилей пользователя не старше 2010 года,
-- - количество общее продаваемых запчастей пользователем,
-- - количество оценок, который поставил пользователь,
SELECT 
	users.id as user_id, 
	CONCAT(users.last_name, ' ', users.first_name) user,
	COUNT(DISTINCT cars.id) as car_count,
	COUNT(DISTINCT auto_parts.id) as parts_count,
	COUNT(DISTINCT auto_parts.id) as parts_count,
	COUNT(DISTINCT vote.user_id) as vote_count
  FROM users
	LEFT JOIN auto_parts
    	ON users.id = auto_parts.user_id 
    LEFT JOIN vote
    	ON users.id = vote.user_id
	LEFT JOIN cars
    	ON users.id = cars.user_id
    WHERE cars.is_electric=1 and cars.release_date>=2010
GROUP BY users.id
ORDER BY user;


-- Создание представления для отображения подробной информации об автомобилях.
DROP VIEW IF EXISTS full_info_cars;
CREATE OR REPLACE VIEW full_info_cars AS
SELECT cars_brands.name as brand_name, cars_models.name as model_name,
cars_colours.name as car_colour, release_date, engine_power
	FROM cars
	  JOIN cars_models
		ON cars_models.id = cars.cars_models_id
	  JOIN cars_brands
	  	ON cars_brands.id = cars_models.cars_brands_id
	  JOIN cars_colours
	  	ON cars_colours.id = cars.cars_colours_id;
	  
	  
-- Создание представления для отображения подробной информации об автомобилях.
DROP VIEW IF EXISTS car_owners_info_cars;
CREATE OR REPLACE VIEW car_owners_info_cars AS
SELECT 'Автовледельцев мужчин' as gender ,COUNT(*) as users
  FROM cars
  WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'm')
  UNION 
  SELECT 'Автовледельцев женщин ', COUNT(*)
  FROM cars
  WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'f');

 
-- Подсчет рейтинга автомобиля от 1 до 10 исходя из голосов пользователей,
-- используя хранимую процедуру с оконной функцией.
TRUNCATE rating;
DELIMITER //
DROP PROCEDURE IF EXISTS rating//
CREATE PROCEDURE rating()
BEGIN
	DECLARE n INT DEFAULT 1;
    WHILE n < 101 DO
        INSERT INTO rating (cars_id, car_rating)
               VALUES (n, (SELECT DISTINCT AVG(vote) OVER(PARTITION BY cars_id) FROM vote WHERE cars_id = n) );
        SET n = n + 1;
    END WHILE;
END//
DELIMITER ;
-- Вызов хранимой процедуры рейтинга автомобилей
 CALL rating();


-- Дополнительно: Создание триггера обновления рейтинга автомобилей,
-- при добавлении новых голосов в табилице vote
-- триггер срабатывает каждый раз, когда появляется новый голос за авто в таблице vote:
-- данный триггер расчитывает среднее значение из голосов пользователей vote таблицы vote,
-- далее сохраняет новый рейтинг в car_rating таблицы raiting
DROP TRIGGER IF EXISTS upd_rating;
DELIMITER //
CREATE TRIGGER upd_rating AFTER INSERT ON vote
FOR EACH ROW 
BEGIN
	UPDATE rating SET
	       car_rating = (SELECT DISTINCT AVG(vote) OVER(PARTITION BY cars_id) FROM vote WHERE cars_id = NEW.cars_id)
	       WHERE cars_id = NEW.cars_id;
END//
DELIMITER ;

SHOW TRIGGERS;