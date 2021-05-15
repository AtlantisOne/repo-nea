-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. 
-- Агрегация данных”

-- Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:

-- 1. Создать и заполнить таблицы лайков и постов.

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type ENUM('messages', 'users', 'posts', 'media') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Временная таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TEMPORARY TABLE target_types (
  name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    (SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Заполняем таблицу постов

INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (1, 1, 3, 'est', 'Illo doloribus beatae velit ratione reprehenderit accusamus libero. Est voluptatem quia ut dolor occaecati minus aut. Natus in dicta ut est. Repellendus suscipit asperiores in necessitatibus nam consectetur.', 5, 0, 0, '2011-12-10 08:51:44', '2019-01-12 13:14:42');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (2, 2, 8, 'autem', 'Magnam doloribus temporibus natus magni ut. Molestiae hic inventore corporis a sed itaque adipisci.', 1, 1, 1, '2015-06-20 23:51:17', '2017-11-04 19:17:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (3, 3, 9, 'atque', 'Qui nihil natus voluptatem dolorem. Et quia asperiores est eius deserunt nemo quis. Error non ut quasi quo suscipit. Expedita reiciendis magnam qui culpa ut non.', 3, 1, 1, '2013-05-12 21:26:40', '2013-02-25 03:16:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (4, 1, 1, 'molestiae', 'Magnam quod et similique quos vel aut ipsum sunt. Et rerum eaque rerum et.', 9, 1, 1, '2015-11-15 01:32:24', '2016-01-09 07:33:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (5, 5, 4, 'possimus', 'Non libero quia rem sit consectetur laboriosam quasi. Ut ad illo tempora voluptas tempora quis quo. Illum praesentium quae repellendus libero tempore totam.', 7, 0, 0, '2018-08-22 08:14:30', '2012-06-01 10:13:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (6, 4, 7, 'consequatur', 'Qui facilis ea consequuntur quis quos aut deleniti error. Porro rerum beatae ipsa. Voluptatem est quisquam fuga placeat accusantium accusamus. Exercitationem autem nihil numquam necessitatibus quia nostrum.', 4, 0, 0, '2021-03-11 15:53:30', '2013-05-08 09:21:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (7, 4, 8, 'saepe', 'Qui dolor autem aut. Dignissimos nobis quod ea animi tempora consequatur. Et rerum incidunt non laboriosam vel. Sed error natus quisquam.', 3, 0, 1, '2011-12-29 13:08:13', '2021-03-04 20:44:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (8, 6, 6, 'autem', 'Est magnam fugiat quasi magni magni et. Aut nam sequi dolor omnis porro qui aspernatur. Sunt similique dolorem qui asperiores.', 3, 1, 1, '2016-04-21 00:42:34', '2019-11-26 21:31:32');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (9, 7, 6, 'molestiae', 'Repudiandae optio maxime officiis reprehenderit voluptas architecto. Tempore qui et odio eius. Unde ratione natus quia voluptatem maiores dolorum. Ut qui est fuga ipsum impedit quam cum.', 5, 1, 0, '2017-02-24 17:21:49', '2018-08-13 17:16:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (10, 4, 3, 'mollitia', 'Nobis dolor nam quia quae pariatur neque tenetur. Autem natus aut veniam hic est nobis earum molestiae.', 7, 1, 1, '2020-02-08 05:49:33', '2020-04-13 08:16:18');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (11, 8, 1, 'et', 'Et cumque enim voluptatem velit. Voluptate asperiores doloremque qui consequatur ut. Est ab molestiae perferendis nesciunt. Facere nobis corrupti quia quidem.', 9, 1, 1, '2014-03-13 21:07:16', '2019-01-20 01:41:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (12, 5, 6, 'cumque', 'Nobis tempore ex atque aperiam. Quasi deleniti aliquam rerum. Aut natus et qui mollitia quis ut voluptatibus. Vitae est qui corporis saepe delectus recusandae.', 7, 1, 1, '2017-07-25 19:26:35', '2014-06-13 10:29:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (13, 9, 2, 'recusandae', 'Hic ut et dolor et est voluptatem eius. Dolor nemo illo doloremque commodi libero. Nihil sit repellendus eos maxime quisquam. Nihil est explicabo possimus.', 3, 1, 0, '2019-02-07 13:17:49', '2017-02-24 21:44:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (14, 1, 7, 'eligendi', 'Odio ad pariatur consequuntur eos. Facere vel incidunt vel non. Ea dolorem laudantium est alias veniam et.', 5, 1, 0, '2012-07-22 04:21:13', '2016-06-04 09:06:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (15, 7, 9, 'dolor', 'Aliquid est ut perferendis non tempore aliquam est omnis. Illo maiores impedit error perferendis repellendus vel voluptatem. Rerum quis aut et libero molestias beatae animi. Earum adipisci deleniti praesentium id.', 2, 0, 1, '2014-06-08 04:54:54', '2020-06-11 13:23:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (16, 7, 6, 'et', 'Necessitatibus velit rerum autem nisi consequatur et qui. Reiciendis et sequi consequatur doloribus incidunt voluptates. Labore repellendus minus molestias molestiae deleniti et. Nemo expedita sed culpa quidem minima quia.', 8, 0, 1, '2020-11-15 22:48:13', '2017-02-08 12:11:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (17, 8, 8, 'excepturi', 'Cum qui est consequatur voluptates qui. Voluptates non quia et ratione quia laudantium tempore est.', 7, 1, 1, '2017-01-19 20:46:12', '2019-01-28 07:40:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (18, 2, 4, 'soluta', 'Est consequatur ut et quam eum dignissimos. Odit voluptatibus consequuntur soluta rerum rerum voluptas nihil. Porro neque quis quis quo. Ut ratione harum est corrupti eos eligendi maiores.', 4, 1, 0, '2019-06-14 03:53:48', '2019-09-02 04:38:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (19, 4, 9, 'maxime', 'Natus consequatur ipsum voluptate. Dolorem voluptas error id quis nam nesciunt. Porro voluptas nostrum ut et. Numquam aut hic ea neque reprehenderit est minima inventore.', 7, 0, 1, '2021-01-01 02:09:00', '2015-03-04 06:50:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (20, 9, 3, 'facilis', 'Minima nemo laudantium reprehenderit aspernatur blanditiis. Consequuntur est quo et iure. Distinctio minus ipsam ex et architecto qui.', 9, 1, 1, '2015-03-27 07:09:28', '2016-10-26 22:55:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (21, 6, 9, 'quibusdam', 'Sint necessitatibus aut laudantium in est enim molestiae. Consequuntur eum eum odio vel sint. Consectetur ut est esse fuga impedit molestiae ad ex.', 7, 1, 1, '2015-02-05 23:43:14', '2013-12-13 10:17:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (22, 5, 5, 'eos', 'Totam excepturi earum et. Voluptates ut et voluptas nisi aliquam. Esse ad odit est architecto.', 9, 0, 1, '2020-01-29 11:24:00', '2014-06-19 06:01:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (23, 7, 4, 'quisquam', 'Et est est perferendis animi. Natus est vero architecto ut atque et nulla. Assumenda ullam eius aspernatur. Vero doloremque a quasi doloremque neque nemo.', 2, 0, 0, '2016-04-15 20:57:36', '2015-03-08 03:11:25');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (24, 2, 9, 'qui', 'Accusantium non et quia quia tenetur sed aut error. Et dolorem id sunt. Et et enim eaque facere. Quae laborum molestiae exercitationem consequuntur.', 8, 0, 1, '2011-07-17 22:36:07', '2015-11-07 21:55:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (25, 5, 1, 'a', 'Mollitia fuga nihil accusantium fuga. Accusamus qui autem quis.', 2, 1, 1, '2018-06-11 15:46:58', '2011-11-17 14:18:12');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (26, 1, 9, 'repellendus', 'Itaque quam consequatur minus fugiat. Voluptatem cum eum quia officiis sunt. Aspernatur suscipit laboriosam sunt aperiam. Praesentium corrupti sed ea quidem ipsa.', 1, 1, 1, '2019-05-20 21:57:19', '2017-03-27 00:26:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (27, 8, 5, 'sed', 'Et sint molestiae iste vitae et delectus aut. Eos tenetur accusamus et ipsa unde. Illum quidem tenetur nesciunt id esse porro consequuntur. Enim alias aut at quae ut minus. Aut aperiam omnis excepturi ducimus.', 1, 1, 1, '2018-01-24 11:00:34', '2019-07-18 14:21:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (28, 8, 6, 'qui', 'Iusto quae atque sapiente est ratione voluptates. Vitae est tenetur sunt velit aut. Sed necessitatibus itaque voluptatem quisquam non ipsa. Vero officiis mollitia quo provident odio.', 4, 0, 0, '2018-04-18 17:54:54', '2019-09-10 07:44:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (29, 8, 4, 'aut', 'Cum voluptas impedit quo. A architecto maxime harum perspiciatis quia.', 6, 1, 1, '2016-11-01 23:24:12', '2012-08-23 04:18:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (30, 6, 8, 'voluptas', 'Quibusdam ipsum doloribus esse atque praesentium cupiditate consequatur praesentium. Illo eveniet architecto eos sit dolore delectus. Possimus corrupti ipsam non. Asperiores ipsum veritatis et et.', 5, 1, 1, '2011-05-02 16:15:48', '2016-08-18 03:11:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (31, 8, 3, 'veritatis', 'Aut sit qui eaque quia est temporibus recusandae maxime. Magni et expedita unde facilis magni quasi rerum. Neque et autem neque. Eos laudantium quasi sequi eos iure velit.', 2, 1, 0, '2020-08-27 18:15:50', '2012-01-01 15:14:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (32, 5, 7, 'et', 'Beatae consequuntur deleniti ex odit est maxime. Accusamus excepturi consequatur provident voluptate quos.', 1, 1, 0, '2017-09-26 04:52:52', '2013-08-10 17:48:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (33, 7, 3, 'possimus', 'Cupiditate ut commodi nisi in occaecati aut amet. Et culpa sit ullam facere similique ratione. Voluptatem occaecati et sequi non. Quae consectetur suscipit et earum quasi.', 8, 1, 0, '2018-07-05 11:02:35', '2013-01-28 10:40:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (34, 2, 2, 'voluptatum', 'Quae est corporis provident. Eum dignissimos et a. Natus sed non ut odit est provident.', 9, 0, 0, '2020-03-01 08:23:24', '2014-04-04 07:07:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (35, 6, 3, 'tempore', 'Aliquam et autem veniam voluptas. Dolorum dolor facere voluptates sunt et. Asperiores officia ut neque. Non id et in aut.', 5, 0, 0, '2018-04-09 17:11:34', '2014-03-17 19:49:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (36, 6, 3, 'quos', 'Quia cumque est voluptatum sit culpa totam dolores. Rerum et natus dolor aut et minima natus. Quia sed error aut quia id aspernatur vel.', 5, 1, 1, '2020-04-15 16:11:26', '2017-07-18 14:30:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (37, 3, 3, 'dolor', 'Aut libero dolor veritatis quam at optio vel. Perferendis consequatur sed eaque dolor. Aspernatur repudiandae distinctio nam tempora aliquam.', 9, 1, 1, '2021-04-12 02:09:15', '2019-08-03 02:46:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (38, 1, 4, 'ullam', 'Pariatur provident impedit ad aut cum tenetur cumque. Provident assumenda pariatur vel laborum sed consectetur. Dolor fugit velit omnis est excepturi. Voluptate culpa eius ut qui vel.', 1, 1, 0, '2019-02-22 17:39:48', '2017-05-28 13:25:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (39, 4, 2, 'quod', 'Et sunt illo reprehenderit ut porro repudiandae eius unde. Velit quia cum aut sapiente est. Totam unde labore alias nobis officia et iste vero.', 8, 0, 1, '2016-11-10 22:44:42', '2012-05-24 16:17:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (40, 6, 1, 'dolorem', 'Molestias perferendis nostrum dolor a. Ab et ut beatae libero rerum laboriosam. Velit quas officiis alias odit ut. Aut enim ullam voluptatibus excepturi porro aliquid quo saepe.', 6, 1, 0, '2020-10-18 00:35:46', '2015-12-12 09:18:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (41, 1, 3, 'consequatur', 'Nisi consequuntur ex nobis quia est deserunt. Nihil debitis aut asperiores et inventore. Quia alias quae placeat reiciendis corporis qui culpa.', 1, 0, 0, '2019-05-06 05:34:59', '2014-02-24 16:02:34');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (42, 4, 9, 'explicabo', 'Magnam quam qui aut at. Harum qui cupiditate deserunt repellat sunt. Et ipsum harum laboriosam sit qui consectetur deserunt. Magnam est veniam possimus porro.', 9, 1, 0, '2013-01-23 20:02:05', '2014-02-01 03:30:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (43, 9, 4, 'autem', 'Laboriosam omnis asperiores libero et id. Hic nostrum voluptas quibusdam minima voluptas. Velit minima reprehenderit est autem. Consectetur rerum odit repellat vel pariatur magni beatae.', 5, 0, 0, '2016-07-03 10:04:41', '2014-12-21 09:21:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (44, 9, 6, 'provident', 'Consequatur ipsam hic et non facilis. Deserunt iusto autem voluptatem quis ducimus deserunt autem. Sed sapiente ipsum aspernatur voluptatum.', 5, 0, 0, '2011-12-28 21:03:29', '2016-05-05 17:04:59');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (45, 9, 5, 'ut', 'Molestiae eveniet nihil tempore quisquam. Qui dolores molestias non laudantium quia et.', 1, 0, 1, '2019-05-22 22:26:18', '2018-04-23 05:32:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (46, 6, 4, 'voluptatibus', 'Dolore numquam facere est veritatis et. Natus rerum eos et totam. Est iure aperiam quaerat et tenetur nemo occaecati. Aliquid rerum qui dolorem quos.', 4, 1, 1, '2020-03-13 10:39:12', '2018-11-18 16:02:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (47, 8, 6, 'autem', 'Molestiae illo voluptatem aut sapiente. Velit hic provident dolor cupiditate. Voluptatem quod consequatur labore illo. Dolor mollitia exercitationem saepe qui.', 7, 0, 0, '2012-08-12 21:09:48', '2019-09-21 11:19:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (48, 1, 9, 'eum', 'Autem ducimus quo maxime tempora laborum rem quis. Maxime eius maxime mollitia distinctio nobis culpa voluptas. Commodi nam eius sed.', 8, 0, 1, '2013-04-29 16:44:22', '2011-06-01 13:32:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (49, 6, 4, 'nesciunt', 'Assumenda officiis eaque quo aut sunt excepturi omnis. Facere et ipsam dicta maiores id ut. Modi voluptatem aut possimus sunt est omnis non.', 4, 1, 1, '2019-11-24 16:25:27', '2019-10-20 11:41:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (50, 8, 3, 'nostrum', 'Facere tempore praesentium amet facilis fugit sed et atque. Qui ut illo id culpa. Ipsa dolorum necessitatibus vero quia veniam quam velit. Pariatur vel sit necessitatibus.', 7, 0, 0, '2012-03-27 11:38:47', '2015-01-11 01:41:54');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (51, 5, 9, 'consequuntur', 'Modi cupiditate reprehenderit qui cupiditate animi. Consequatur corporis nemo accusamus provident architecto aut a. A ut molestias sint explicabo aut aperiam. Voluptatibus quos et vero voluptatem.', 7, 1, 1, '2019-01-26 06:05:56', '2020-08-06 12:04:59');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (52, 3, 9, 'repudiandae', 'Unde aspernatur est velit fuga ut odio. Dignissimos ea in modi consequuntur. Et sed non magni numquam et voluptatem.', 8, 0, 0, '2015-05-24 05:14:20', '2017-09-21 23:52:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (53, 2, 3, 'impedit', 'Quia est nulla recusandae totam iure harum nam. Non ipsam laudantium aut molestiae non ut.', 3, 0, 1, '2011-12-28 09:23:52', '2013-12-30 15:34:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (54, 1, 5, 'labore', 'Consequuntur et explicabo praesentium aut id veniam mollitia. Dolorem iusto quidem quidem qui. Recusandae nemo harum culpa est sint odio.', 5, 0, 1, '2019-06-16 08:18:10', '2016-04-10 02:31:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (55, 1, 2, 'repellat', 'Ut incidunt quas deserunt eligendi a. Voluptatem quasi sapiente minus optio et maxime eveniet. Ipsum ullam tempore dolor consequuntur velit quaerat. Fugit iste facilis doloribus animi aliquid tempora necessitatibus ex.', 7, 1, 1, '2020-03-26 19:39:35', '2013-09-13 13:56:31');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (56, 1, 7, 'perferendis', 'Qui deserunt sint ut aliquam aliquid. Doloremque commodi consequuntur necessitatibus voluptatem. Repellat ullam ea optio ut libero unde odio adipisci.', 7, 1, 1, '2012-01-17 00:49:18', '2015-04-14 16:40:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (57, 9, 5, 'quam', 'Qui eos natus eaque dolor cumque deleniti. Laboriosam in dolorem qui a qui ad. Est animi veniam mollitia numquam similique. Debitis eius hic ea perferendis quia est tempora. Qui aut aut numquam nihil illo repellendus.', 8, 1, 0, '2016-05-29 17:50:33', '2013-01-13 13:26:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (58, 1, 3, 'qui', 'Consequatur animi fugit quae maxime consectetur. Occaecati reprehenderit ipsa provident autem laboriosam. Et autem architecto praesentium voluptatem eos ipsa aut. Cumque fugit at modi quidem.', 1, 1, 0, '2016-05-06 05:27:54', '2011-07-21 15:05:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (59, 7, 9, 'ratione', 'Adipisci architecto corrupti dolores. Maiores sit maiores autem ratione temporibus tempora qui repudiandae.', 8, 1, 1, '2018-06-28 23:46:49', '2012-12-18 10:54:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (60, 8, 1, 'voluptas', 'Error ullam exercitationem quos odio. Aut dolorum perferendis reiciendis. Consequuntur saepe illo aut qui ea enim. Nam delectus iure ut consequatur aut et temporibus ipsa.', 3, 0, 1, '2018-08-07 15:24:43', '2012-07-07 21:33:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (61, 9, 5, 'numquam', 'Accusamus dolore saepe sunt id sunt eveniet ut consequuntur. Et doloremque labore velit sed. Aliquam et animi ducimus eveniet ex sequi optio nulla.', 7, 1, 0, '2015-10-31 23:32:09', '2011-07-12 00:49:53');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (62, 3, 9, 'distinctio', 'Reiciendis aut deleniti quaerat laboriosam ratione. Blanditiis nulla voluptates veniam voluptatum vel. Quae occaecati molestias nihil maxime tempora neque voluptas.', 7, 1, 0, '2012-11-22 17:37:40', '2019-08-17 23:30:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (63, 1, 9, 'commodi', 'Voluptate non mollitia et quia. Nulla soluta enim ipsum similique reprehenderit vitae ut ut. Ad nesciunt velit atque dolores eos magni quia.', 5, 1, 1, '2013-06-08 17:33:06', '2014-04-03 13:14:29');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (64, 2, 6, 'ut', 'Illo incidunt mollitia temporibus. A tempore praesentium eaque et. Enim aut veniam consequatur eos neque eaque consequuntur.', 3, 0, 0, '2014-11-22 20:22:01', '2018-08-04 04:57:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (65, 6, 6, 'iusto', 'Ut facilis cum sint nostrum possimus. Modi sed tenetur voluptas magni libero. Aut quo necessitatibus repudiandae alias dolore quasi doloribus.', 2, 0, 0, '2011-11-07 21:59:03', '2017-05-06 04:11:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (66, 3, 7, 'ut', 'Ab id aut in ipsum possimus non quisquam. Modi molestiae sequi recusandae rerum accusantium rerum est. Expedita vel dolorem sint.', 6, 0, 1, '2013-01-07 06:22:12', '2020-07-27 11:35:57');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (67, 3, 6, 'autem', 'Quibusdam mollitia sint quia et. Aspernatur pariatur alias distinctio dignissimos. Voluptatum eos voluptas eveniet illum.', 7, 0, 1, '2020-03-06 12:41:59', '2014-12-08 18:51:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (68, 5, 6, 'nostrum', 'Nemo consequatur quia dolorem et aut aut. Et est omnis accusamus corrupti sed ipsa. Dolor laudantium distinctio dolorum et.', 4, 0, 1, '2013-08-06 03:21:27', '2017-11-16 19:36:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (69, 1, 2, 'voluptatem', 'Quia accusantium esse autem et dolorum rerum. Aut sed soluta dignissimos deserunt. Non odit ratione hic ea. Culpa sunt laboriosam enim molestiae amet deleniti voluptas.', 6, 1, 0, '2017-12-19 23:40:35', '2018-04-20 04:59:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (70, 6, 5, 'consequatur', 'Mollitia dicta ad quia error harum. Quasi dolores ut quaerat et incidunt fugiat sint. Voluptatem quibusdam quas accusamus natus voluptate excepturi magnam voluptates.', 2, 0, 0, '2020-01-23 04:24:51', '2016-05-27 12:43:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (71, 5, 5, 'et', 'Praesentium sit quia excepturi eos. Saepe doloremque sint ut autem et porro vel. Consequatur doloremque qui eius ducimus blanditiis et.', 9, 1, 1, '2020-06-06 15:09:00', '2015-05-10 22:00:34');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (72, 3, 3, 'tempora', 'Dolor nostrum nihil sunt. Voluptas repellat dolorem quia qui. Sed beatae consequatur adipisci. Accusamus atque illo maiores tempore est.', 1, 0, 1, '2019-06-12 01:54:12', '2014-12-06 08:51:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (73, 8, 1, 'dolore', 'Et rerum maxime tempore molestias soluta possimus eos. Molestias dolor dolor vero rem eligendi. Non labore mollitia blanditiis qui delectus a. Eligendi aut et ut provident magni quisquam.', 8, 0, 0, '2017-06-25 12:57:56', '2019-07-05 11:44:42');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (74, 4, 9, 'doloribus', 'Numquam eos autem dolor error sed molestiae. Cum quaerat voluptas a natus. Voluptates ad aut earum expedita autem dolores qui et. Perspiciatis voluptatem laudantium deleniti et quae molestiae.', 7, 1, 1, '2015-03-14 22:47:18', '2016-11-04 17:19:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (75, 4, 9, 'tenetur', 'Reiciendis adipisci vel porro facere veniam. Quibusdam corrupti vitae sit minima. Quo explicabo amet incidunt iusto aperiam sed officiis. Eligendi accusamus natus iusto adipisci ad ad voluptatem.', 1, 0, 1, '2017-12-14 21:48:27', '2018-07-08 18:16:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (76, 4, 7, 'atque', 'Quis cum ipsa eius similique ipsa nihil. Voluptatibus aut ut soluta numquam eius ullam. Quis adipisci voluptas quis animi accusamus. Saepe ex dolorem et sint.', 4, 1, 1, '2012-06-13 02:25:50', '2019-05-27 11:51:54');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (77, 4, 5, 'aperiam', 'Minima necessitatibus deleniti maxime laborum veniam provident eos. Reiciendis perferendis consequatur est minima qui magnam aut. Molestiae amet consequatur et similique repudiandae aspernatur sit. Quia culpa culpa non voluptatem quibusdam quod cumque laboriosam.', 9, 0, 1, '2015-04-28 01:14:54', '2018-03-12 17:51:25');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (78, 8, 5, 'ducimus', 'Et eius minus dolore natus vel nihil. Et aut hic illum. Et repellat maxime vero quibusdam excepturi quo corporis.', 7, 0, 0, '2015-01-26 09:18:03', '2019-04-29 03:39:18');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (79, 5, 9, 'tenetur', 'Architecto ea ut sunt facilis laboriosam occaecati qui. Sed voluptatibus et qui sint temporibus asperiores voluptatum. Et quis voluptate aut. Laboriosam veritatis soluta aut aut.', 9, 1, 0, '2014-12-05 11:32:47', '2014-06-13 13:54:54');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (80, 6, 3, 'quibusdam', 'Eos velit voluptatem quo quidem. Ducimus nisi quae odit aliquam.', 8, 1, 1, '2019-09-21 06:49:33', '2019-06-12 10:01:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (81, 3, 1, 'id', 'Commodi enim quibusdam quisquam quisquam voluptatem repellat iure. Velit dolores autem nemo in incidunt sunt tenetur. Placeat quasi officiis et qui. Culpa libero est minus excepturi voluptate ut consequatur.', 3, 0, 0, '2014-06-18 19:45:04', '2012-12-13 04:57:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (82, 5, 4, 'quis', 'Ipsum officiis sit perferendis. Nesciunt iusto velit voluptatem similique unde iure. Eius necessitatibus ut illum asperiores omnis modi fugiat.', 4, 0, 0, '2016-03-18 13:01:22', '2014-04-01 02:27:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (83, 5, 3, 'nam', 'Possimus quos molestiae consequatur aliquid illum mollitia. Dolorem quidem numquam ad vel deleniti facilis molestiae error. Est quisquam tempora velit.', 4, 0, 0, '2018-08-08 16:31:51', '2012-01-22 15:53:09');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (84, 4, 2, 'fugit', 'Aut praesentium qui maiores. Placeat odit voluptas temporibus perspiciatis. Magni non cupiditate doloremque et accusantium. Velit id perferendis minima porro consequatur. Sed dignissimos nihil voluptate sunt cupiditate.', 2, 1, 1, '2014-08-06 16:25:43', '2020-06-24 05:28:52');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (85, 7, 1, 'voluptatum', 'Iste voluptatibus vitae ratione. Optio quaerat molestiae officiis consectetur. Eum labore molestiae hic amet aspernatur sed. Voluptatem amet hic veritatis sunt non. Dolores et facilis aperiam aspernatur mollitia quia.', 3, 0, 1, '2015-01-18 17:58:32', '2016-04-21 06:07:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (86, 2, 6, 'quia', 'Laboriosam ab et et nisi et itaque nulla. Deleniti fuga ratione natus dolore qui. Corporis rem sint illum et architecto debitis. Asperiores sed accusamus qui aut facere.', 3, 1, 0, '2020-11-30 17:38:40', '2014-05-28 20:22:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (87, 9, 7, 'voluptatem', 'Ratione eos aliquam tenetur sed et. Voluptas provident sed ut id. Suscipit voluptas ut nulla provident velit blanditiis.', 7, 1, 1, '2011-05-24 09:12:13', '2019-11-10 15:22:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (88, 6, 5, 'laudantium', 'Recusandae eos quis exercitationem totam dolor et alias. Voluptatibus ipsam ut unde amet.', 5, 1, 1, '2020-09-04 18:32:45', '2018-05-31 09:01:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (89, 4, 3, 'ut', 'Aliquid aut in consectetur ut unde saepe qui. Ullam non ut nemo enim. Sint dolor nulla placeat est praesentium optio illo. Qui nobis amet hic harum animi.', 1, 0, 1, '2021-03-19 16:31:05', '2020-01-17 07:48:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (90, 1, 5, 'accusantium', 'Quo qui mollitia maxime facere velit consequatur iure. Voluptatem voluptatum porro quia quia. Magni qui sint enim esse aspernatur.', 3, 0, 0, '2015-06-29 16:35:32', '2011-09-09 16:04:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (91, 3, 6, 'adipisci', 'Voluptas dolor sunt neque ut. Incidunt sapiente architecto praesentium molestiae adipisci. Omnis odio dolor aspernatur qui reiciendis accusamus.', 9, 1, 0, '2017-06-09 22:53:36', '2017-03-25 20:11:13');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (92, 4, 2, 'unde', 'Omnis et sunt et nostrum eius odio ipsum. Et dolorem quisquam quod officiis magnam tenetur. Omnis voluptatem et numquam consequatur. Maxime dicta ut quas voluptas illo quia odit.', 9, 0, 1, '2016-06-21 13:40:11', '2013-01-22 21:15:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (93, 7, 7, 'non', 'Quia vel blanditiis sequi fuga a nesciunt. Omnis molestiae dolor ea aliquid non. Voluptates commodi sed quia occaecati aliquam dolore inventore.', 6, 0, 1, '2020-03-08 23:18:23', '2019-04-18 14:40:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (94, 2, 4, 'adipisci', 'Excepturi ut alias eius at voluptatum iure labore. Officiis tempora eveniet dolorum magnam dolore assumenda dolorum. Et quis rerum dolore quod. Et dolore quidem quibusdam laudantium rerum cupiditate. Quo consequatur quis sit at.', 6, 1, 1, '2014-09-12 16:48:34', '2018-06-21 04:26:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (95, 2, 4, 'quo', 'Eum omnis enim veniam dignissimos voluptas eius voluptas expedita. Aut autem possimus et ea deserunt quam commodi.', 1, 1, 1, '2016-10-31 17:05:35', '2017-11-22 17:40:42');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (96, 6, 8, 'perspiciatis', 'Id sed asperiores magnam nemo saepe quia laboriosam qui. Exercitationem enim dolores quasi dolores porro adipisci. Similique veniam sequi molestiae adipisci. Perspiciatis qui repellendus sunt sequi numquam aut.', 5, 1, 0, '2015-11-30 11:36:54', '2014-02-22 06:03:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (97, 8, 8, 'minima', 'Consequatur cum possimus vel laboriosam alias quam et voluptatem. Id adipisci aut debitis laudantium libero suscipit. Recusandae nihil et pariatur doloribus ex soluta aliquid cum. Nostrum et sed repellendus molestias voluptate adipisci harum.', 2, 1, 0, '2015-08-25 08:10:20', '2020-03-18 16:14:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (98, 9, 2, 'et', 'Odit laboriosam minima numquam. Consequatur voluptate maxime quisquam veniam consequatur. Quia inventore quo minus consequuntur.', 7, 0, 0, '2016-09-12 20:08:52', '2011-05-21 02:49:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (99, 2, 6, 'est', 'Dolore qui et cum fugiat enim. Earum mollitia qui error natus delectus ullam sint.', 1, 1, 0, '2011-10-28 14:32:04', '2011-05-28 04:22:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (100, 1, 8, 'ut', 'Voluptatem aliquam qui est aut dolorem molestiae molestiae. Et aut debitis numquam nostrum. Neque ipsa harum voluptas aut autem et.', 9, 1, 0, '2014-12-10 08:05:07', '2019-11-11 17:22:14');


SELECT * FROM posts LIMIT 50;

-- 2. Создать все необходимые внешние ключи и диаграмму отношений.


-- Добавляем внешние ключи в БД vk
-- Добавляем внешние ключи profiles

-- Смотрим структуру таблицы
DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

-- Изменяем тип столбца при необходимости
ALTER TABLE profiles DROP FOREIGN KEY profiles_user_id_fk;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

-- Если нужно удалить
ALTER TABLE table_name DROP FOREIGN KEY constraint_name;
      
-- Для таблицы сообщений
-- Смотрим структурв таблицы


-- Добавляем внешние ключи messages
DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
   

-- Добавляем внешние ключи communities_users
DESC communities_users;

ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
   


-- Добавляем внешние ключи friendship
DESC friendship;

ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friendship_status_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);
   
-- Добавляем внешние ключи likes
DESC likes;

ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
   
-- Добавляем внешние ключи media
DESC media;

ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);
   
-- Добавляем внешние ключи posts
DESC posts;
TRUNCATE posts;

SELECT * FROM posts;

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id);
   
   
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
   

SELECT 'Мужчин ' as gender ,COUNT(*) as likes
  FROM likes
  WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'm')
  UNION 
  SELECT 'Женщин ', COUNT(*)
  FROM likes
  WHERE user_id in (SELECT user_id FROM profiles WHERE gender = 'f');
 

-- 4. Вывести для каждого пользователя количество созданных сообщений, постов,
-- загруженных медиафайлов и поставленных лайков.
DESC likes;
SELECT * FROM likes;
SELECT * FROM users;
SELECT * FROM profiles;
DESC profiles;

SELECT
  first_name,
  last_name,
  (SELECT COUNT(from_user_id) FROM messages WHERE from_user_id = users.id) AS messages,
  (SELECT COUNT(user_id) FROM posts WHERE user_id = users.id) AS posts,
  (SELECT COUNT(user_id) FROM media WHERE user_id = users.id) AS media,
  (SELECT COUNT(user_id) FROM likes WHERE user_id = users.id) AS likes
  FROM users; 
   
  
-- 5. (по желанию) Подсчитать количество лайков которые получили
-- 10 самых молодых пользователей. 
-- Не до конца не получилось сделать.
 
SELECT
  first_name,
  last_name,
  (SELECT FLOOR(TIMESTAMPDIFF(YEAR, birthday, NOW())) FROM profiles WHERE user_id = users.id) AS ages,
  (SELECT COUNT(user_id) FROM likes WHERE user_id = users.id) AS likes
  FROM users
  ORDER BY likes DESC, ages; 
 
 
 SELECT
  first_name,
  last_name,
  (SELECT COUNT(user_id) FROM likes WHERE user_id = users.id) AS likes
  FROM users WHERE user_id in (SELECT FLOOR(TIMESTAMPDIFF(YEAR, birthday, NOW())) as age FROM profiles order by age)
  ORDER BY likes DESC; 
 
 
SELECT FLOOR(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS avg_ages FROM profiles;
  -- ORDER BY ()size DESC
  LIMIT 10;
 
 
SELECT 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = media.user_id) AS user,
  filename, 
  size 
    FROM media 
    ORDER BY size DESC
    LIMIT 10;
   