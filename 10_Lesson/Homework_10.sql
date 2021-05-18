-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
USE vk;

SHOW INDEX FROM users; -- посмотреть какие индексы уже есть в таблице

ALTER TABLE users DROP INDEX users_email_uq; -- удалить индекс

CREATE INDEX users_last_name_idx ON users (last_name);

CREATE UNIQUE INDEX users_email_uq ON users (email);

CREATE UNIQUE INDEX users_phone_uq ON users (phone);

CREATE INDEX users_first_name_last_name_idx
ON users (first_name, last_name); -- составной индекс

SHOW INDEX FROM profiles; 
CREATE INDEX profiles_city_idx ON profiles (city);

CREATE INDEX profiles_country_idx ON profiles (country);

SHOW INDEX FROM posts; 
CREATE INDEX posts_head_idx ON posts (head);


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах (сумма количестива пользователей во всех группах делённая на количество групп)
-- самый молодой пользователь в группе (желательно вывести имя и фамилию)
-- самый старший пользователь в группе (желательно вывести имя и фамилию)
-- количество пользователей в группе
-- всего пользователей в системе (количество пользователей в таблице users)
-- отношение в процентах для последних двух значений (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT communities.name AS group_name,
  AVG(communities_users.user_id) OVER (PARTITION BY communities_users.community_id) AS avg_users_in_Group,
  MAX(profiles.birthday) OVER (PARTITION BY communities_users.community_id) AS ya_user,
  MIN(profiles.birthday) OVER (PARTITION BY communities_users.community_id) AS old_user,
  COUNT(profiles.birthday) OVER (PARTITION BY communities_users.community_id) AS num_users_total,
  COUNT(profiles.birthday) OVER (PARTITION BY communities_users.community_id) / COUNT(users.id) OVER() * 100 AS "%%"
  FROM communities
    JOIN communities_users
      ON communities.id = communities_users.community_id
    LEFT JOIN users
      ON communities_users.user_id = users.id
    JOIN profiles
      ON users.id = profiles.user_id;