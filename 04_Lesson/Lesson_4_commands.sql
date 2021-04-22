-- Активируем БД
USE vk;

-- Таблица users
-- Приводим в порядок временные метки
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

-- Таблица profiles
-- Преобразуем в тип ENUM
ALTER TABLE profiles MODIFY COLUMN gender ENUM('f', 'm');
-- Приводим в порядок временные метки
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;

-- Таблица messages
-- Исправляем ссылки на пользователей
UPDATE messages SET
  from_user_id = FLOOR(1 + RAND() * 100),
  to_user_id = FLOOR(1 + RAND() * 100);

-- Таблица friendship_statuses
-- Очищаем таблицу
TRUNCATE friendship_statuses;
-- Вставляем значения статусов дружбы
INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');

-- Таблица friendship
-- Приводим в порядок временные метки
UPDATE friendship SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE friendship SET confirmed_at = NOW() WHERE confirmed_at < created_at;
-- Вставляем случайное значение отношений  
UPDATE friendship SET
  friendship_status_id = FLOOR(1 + RAND() * 3); 
-- Обновляем ссылки на друзей
UPDATE friendship SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);
-- Исправляем случай когда user_id = friend_id
UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

-- Таблица communities
-- Удаляем часть групп
DELETE FROM communities WHERE id > 30;
UPDATE communities SET updated_at = NOW() WHERE updated_at < created_at;

-- Таблица communities_users
-- Очищаем таблицу
TRUNCATE communities_users;
-- Заполняем новыми значениями
UPDATE communities_users SET
  user_id = FLOOR(1 + RAND() * 100),
  community_id = FLOOR(1 + RAND() * 30);

-- Таблица media_types
-- Приводим в порядок временные метки
UPDATE media_types SET updated_at = NOW() WHERE updated_at < created_at;

-- Таблица media
-- Обновляем ссылку на пользователя - владельца
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);
-- Вставляем случайное значение типа медиа  
UPDATE media SET
  media_type_id = FLOOR(1 + RAND() * 3); 
-- Создаём временную таблицу форматов медиафайлов
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
-- Заполняем значениями
INSERT INTO extensions VALUES ('jpeg'), ('mp4'), ('mp3'), ('avi'), ('png');
-- Обновляем ссылку на файл
UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);
-- Обновляем размер файлов
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;
-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  
-- Возвращаем столбцу метеданных правильный тип, если нужно
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Проверка
SELECT * FROM users LIMIT 30;
SELECT * FROM profiles LIMIT 30;
SELECT * FROM messages LIMIT 30;
SELECT * FROM friendship_statuses LIMIT 30;
SELECT * FROM friendship LIMIT 30;
SELECT * FROM communities LIMIT 30;
SELECT * FROM communities_users LIMIT 30;
SELECT * FROM media_types LIMIT 30;
SELECT * FROM media LIMIT 30;