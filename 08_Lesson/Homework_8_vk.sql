-- Урок 8
-- Сложные запросы, JOIN

-- Переписать с использованием JOIN
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
  
 SELECT gender, COUNT(*) AS total
   FROM likes
   JOIN profiles 
     ON profiles.user_id = likes.user_id
    GROUP BY gender
    ORDER BY total DESC
    LIMIT 1;

-- 4. Вывести для каждого пользователя количество созданных сообщений, постов,
-- загруженных медиафайлов и поставленных лайков.
	 
SELECT users.id, CONCAT(first_name, ' ', last_name) AS user, 
 COUNT(messages.created_at) AS total_mesages,
 COUNT(posts.created_at) AS total_posts,
 COUNT(media.created_at) AS total_media,
 COUNT(likes.created_at) AS total_likes
  FROM users
    LEFT JOIN messages
      ON messages.from_user_id = users.id
    LEFT JOIN posts
      ON posts.user_id = users.id
    LEFT JOIN media
     ON media.user_id = users.id
    LEFT JOIN likes
      ON likes.user_id = users.id 
  GROUP BY users.id
  ORDER BY users.id;
 
 
-- 5. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(total_likes) AS total_likes_users
  FROM (   
    SELECT COUNT(DISTINCT likes.user_id) AS total_likes 
      FROM profiles
        LEFT JOIN likes
         ON likes.target_id = profiles.user_id
         AND likes.target_type = 'users'
      GROUP BY profiles.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10 ) AS ;