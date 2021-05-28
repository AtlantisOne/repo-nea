#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'accusamus', '2016-08-30 08:04:28', '2021-01-19 04:01:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ad', '2015-01-11 20:28:25', '2012-03-09 22:26:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'odio', '2012-06-14 04:10:46', '2012-10-11 08:00:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'illo', '2018-10-19 02:23:10', '2015-01-01 00:10:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'temporibus', '2018-11-24 05:31:12', '2012-10-04 02:59:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'sed', '2012-10-16 11:49:53', '2016-12-02 07:12:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'consequuntur', '2015-10-11 13:09:58', '2012-02-21 10:31:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'ab', '2018-03-19 06:11:55', '2013-11-30 13:31:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'assumenda', '2018-06-18 15:39:26', '2014-09-11 03:08:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'voluptas', '2018-02-20 23:47:30', '2018-08-31 06:13:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'eum', '2020-10-17 09:52:00', '2011-11-06 19:31:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aut', '2015-07-30 16:32:43', '2012-10-19 18:48:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'dolore', '2014-10-30 09:17:52', '2021-02-13 01:00:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'dolor', '2018-07-11 21:20:20', '2012-11-15 21:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'numquam', '2018-08-02 12:00:41', '2018-04-08 13:56:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'fugit', '2013-06-27 07:18:34', '2014-03-11 13:34:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'mollitia', '2019-01-28 19:30:04', '2014-07-14 06:56:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'enim', '2019-07-31 00:33:52', '2018-02-14 01:20:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'a', '2013-09-28 21:30:21', '2021-02-22 04:57:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'est', '2014-06-24 06:44:00', '2015-09-05 07:18:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'voluptatibus', '2017-07-08 20:25:38', '2018-11-09 01:11:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'blanditiis', '2018-05-09 01:10:24', '2012-02-15 12:59:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'dolorum', '2011-09-22 08:42:04', '2017-02-24 02:59:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'voluptate', '2012-07-25 05:07:25', '2019-07-25 14:39:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'pariatur', '2018-06-09 06:50:07', '2017-11-17 19:30:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'rerum', '2018-07-25 11:16:14', '2014-06-10 05:35:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'voluptatem', '2021-03-09 23:27:14', '2017-02-25 15:41:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'accusantium', '2013-04-15 08:12:51', '2018-10-31 18:31:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'quia', '2013-09-25 09:30:35', '2017-11-22 11:56:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'officiis', '2014-08-31 00:18:24', '2017-01-28 05:05:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'deleniti', '2013-03-31 10:42:31', '2016-01-05 12:54:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'at', '2016-01-16 06:56:03', '2016-06-01 05:58:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'aliquam', '2016-12-19 12:35:25', '2011-07-22 11:39:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'laboriosam', '2014-06-28 07:40:37', '2012-01-15 09:33:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ex', '2012-12-03 16:33:50', '2013-04-20 02:46:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'et', '2019-04-10 22:38:31', '2012-09-24 00:46:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'ipsam', '2019-12-16 17:19:56', '2017-04-15 05:23:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'nihil', '2013-06-04 16:49:01', '2014-10-17 23:53:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'non', '2013-09-02 07:47:15', '2013-10-29 13:56:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'dolorem', '2011-08-09 08:47:15', '2018-02-25 16:58:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'modi', '2019-01-27 20:00:39', '2011-07-16 20:16:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'quibusdam', '2014-01-30 02:21:20', '2011-09-27 18:18:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'molestiae', '2016-01-14 08:02:01', '2014-07-20 06:24:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'unde', '2020-04-20 06:21:51', '2013-07-03 14:03:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'debitis', '2018-07-28 23:45:08', '2019-01-16 00:43:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'animi', '2020-03-29 02:17:24', '2017-10-10 22:45:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ducimus', '2020-07-07 11:53:01', '2019-04-20 10:41:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'voluptates', '2015-04-14 01:55:24', '2014-01-28 16:56:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'quos', '2020-07-17 04:08:14', '2015-09-07 19:03:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'cum', '2013-07-07 18:35:29', '2014-07-07 23:31:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'repellendus', '2017-01-18 08:49:23', '2015-09-12 22:05:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'maxime', '2018-04-24 15:11:37', '2019-04-10 05:55:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'architecto', '2014-10-31 18:13:53', '2019-08-27 14:28:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'suscipit', '2013-04-24 20:35:35', '2019-11-25 09:24:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'consequatur', '2011-12-03 08:10:04', '2016-12-25 16:20:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'asperiores', '2014-11-06 10:37:42', '2013-09-09 03:25:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'beatae', '2017-09-28 18:39:22', '2020-04-02 23:50:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'nesciunt', '2013-08-25 15:14:58', '2015-03-08 18:08:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'nisi', '2012-01-31 19:21:46', '2019-04-17 02:18:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'expedita', '2012-04-22 11:56:16', '2015-03-10 14:46:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'quo', '2013-05-15 23:15:41', '2015-04-26 19:46:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'vero', '2020-08-18 07:43:23', '2020-10-13 02:34:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'doloribus', '2012-02-03 20:25:37', '2017-02-27 12:19:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'omnis', '2015-12-11 09:13:52', '2015-06-03 07:57:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'qui', '2019-02-11 18:11:50', '2018-10-26 21:11:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'minus', '2017-05-22 21:41:39', '2012-10-28 01:37:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'id', '2018-10-18 05:09:53', '2012-10-26 14:45:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'delectus', '2018-01-03 12:13:01', '2012-03-23 20:04:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'totam', '2012-11-20 02:59:30', '2011-08-07 15:02:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'corrupti', '2015-09-08 12:31:57', '2018-01-09 04:08:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'eligendi', '2011-09-30 23:41:13', '2019-07-07 20:00:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'perferendis', '2017-08-04 19:58:56', '2015-12-16 07:56:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'aliquid', '2011-08-02 09:53:19', '2011-07-05 14:09:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'quisquam', '2011-10-25 23:26:26', '2013-06-24 09:30:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'eos', '2019-02-09 05:06:37', '2019-05-26 00:17:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'illum', '2015-04-06 01:08:36', '2019-10-10 07:53:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'repudiandae', '2013-10-13 22:43:03', '2013-09-24 12:09:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'maiores', '2017-06-29 22:35:35', '2020-12-08 23:53:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'rem', '2014-05-14 12:50:09', '2019-04-17 16:14:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'sequi', '2014-02-22 23:23:05', '2012-04-27 04:04:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'tempora', '2011-05-12 03:45:16', '2015-02-04 03:11:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'odit', '2013-08-16 17:26:45', '2013-05-06 14:24:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'vel', '2014-07-12 19:29:48', '2019-05-22 04:54:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'error', '2013-06-24 00:41:59', '2012-03-19 09:41:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'fugiat', '2018-12-21 02:48:26', '2019-02-09 02:42:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'impedit', '2019-04-04 01:14:53', '2015-03-10 03:31:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'eveniet', '2011-10-16 22:11:51', '2017-09-27 09:17:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'atque', '2017-03-14 06:47:42', '2020-04-07 23:15:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'praesentium', '2017-04-03 17:27:32', '2020-01-11 06:55:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'similique', '2018-09-27 20:51:24', '2011-06-09 06:33:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'ratione', '2019-07-07 18:35:30', '2017-02-13 20:06:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'nostrum', '2016-02-09 18:34:21', '2019-08-27 13:15:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'tenetur', '2012-05-28 10:56:22', '2012-07-14 10:40:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'magnam', '2016-03-17 05:20:34', '2020-02-25 04:23:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'corporis', '2013-11-15 03:51:21', '2012-08-24 10:22:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'amet', '2020-08-18 23:00:41', '2011-09-02 12:05:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'deserunt', '2020-02-17 04:45:36', '2019-09-03 19:09:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'consectetur', '2020-08-29 03:18:26', '2019-03-23 20:19:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'aperiam', '2016-01-20 01:51:09', '2017-10-08 15:14:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'sit', '2013-09-17 14:20:17', '2013-11-24 08:38:43');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 1, '2020-03-23 10:27:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 2, '2012-05-22 14:01:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 3, '2015-01-01 20:36:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 5, '2013-08-03 15:39:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 6, '2011-06-03 21:31:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 7, '2011-10-15 05:31:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 8, '2016-11-04 17:40:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 0, '2020-12-27 10:06:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2011-08-26 14:23:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 2, '2015-08-09 04:54:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 4, '2011-08-29 14:02:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 7, '2015-01-23 16:58:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 8, '2017-03-19 23:06:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 9, '2013-07-28 03:16:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 1, '2012-07-27 22:15:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 3, '2015-11-10 01:29:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 5, '2014-04-07 12:15:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 8, '2017-10-07 14:03:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 9, '2011-07-15 07:00:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2014-02-01 05:03:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 4, '2015-11-16 00:49:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 5, '2011-07-10 17:16:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 7, '2012-05-16 12:03:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 8, '2016-02-27 02:45:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 9, '2011-09-23 10:45:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 0, '2013-01-28 21:24:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 2, '2015-12-18 07:41:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2011-09-27 20:47:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 5, '2014-08-02 16:06:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 6, '2012-12-23 09:16:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 7, '2012-02-27 09:53:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 9, '2019-10-22 09:44:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 0, '2016-02-25 01:46:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 1, '2014-07-13 15:20:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 2, '2018-03-04 06:31:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 4, '2017-07-20 02:08:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2018-06-02 12:03:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 6, '2013-02-17 21:37:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 8, '2020-02-16 12:51:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 9, '2015-02-24 04:13:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 1, '2020-06-19 23:03:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 3, '2017-07-14 12:46:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2019-07-04 07:26:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 7, '2017-08-30 04:51:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 8, '2015-05-02 05:20:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 0, '2011-12-18 00:33:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 2, '2017-12-27 15:31:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '2014-08-09 05:28:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 5, '2012-03-02 20:10:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 6, '2014-06-28 10:05:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2011-05-11 03:02:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 9, '2011-06-08 05:37:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 0, '2019-11-13 23:35:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '2013-05-06 22:39:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 3, '2020-04-15 09:21:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 4, '2016-05-28 21:36:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 6, '2016-12-15 04:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 7, '2017-10-22 09:24:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 9, '2015-06-17 11:21:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 0, '2019-06-11 12:19:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 3, '2018-04-18 19:03:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 4, '2012-02-17 02:56:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 5, '2020-03-20 05:40:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 6, '2019-07-22 20:54:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 8, '2017-02-10 13:45:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2012-08-25 04:45:28');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 5, 1, '2013-09-17 16:34:16', '2014-04-04 23:10:36', '2015-10-30 17:19:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 8, 2, '2011-05-24 01:10:30', '2017-10-20 00:58:21', '2017-10-09 18:41:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 4, 3, '2020-04-08 00:42:15', '2018-05-17 22:58:32', '2019-05-19 15:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 2, 1, '2011-10-15 02:08:43', '2017-01-24 18:19:05', '2019-06-28 16:07:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 8, 2, '2021-03-05 08:03:52', '2019-05-04 08:32:27', '2016-04-04 20:44:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 4, 3, '2013-08-15 14:01:01', '2011-04-26 04:41:47', '2015-02-12 22:10:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 6, 1, '2014-11-10 06:29:36', '2018-08-01 22:56:51', '2017-10-31 05:01:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 6, 2, '2017-03-29 18:28:04', '2014-12-29 23:47:45', '2013-10-01 03:48:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 7, 3, '2018-11-30 07:27:26', '2012-02-03 03:15:27', '2012-01-14 22:46:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 2, 1, '2017-06-07 00:20:06', '2015-09-19 22:07:54', '2021-03-28 09:31:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 5, 2, '2017-11-29 01:49:04', '2012-12-25 18:42:30', '2017-07-29 19:52:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 3, 3, '2014-11-16 06:11:42', '2017-10-30 16:55:43', '2020-01-24 10:41:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 1, 1, '2015-10-23 23:33:39', '2014-07-22 13:43:34', '2015-04-27 07:08:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 7, 2, '2020-09-20 19:12:25', '2018-04-02 15:25:35', '2016-07-21 00:18:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 0, 3, '2013-05-22 14:22:42', '2020-07-31 08:56:25', '2011-12-06 06:33:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 2, 1, '2015-07-22 03:25:21', '2016-05-16 17:33:20', '2016-12-11 20:57:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 2, 2, '2020-08-03 22:41:56', '2020-11-10 08:02:43', '2017-11-03 03:25:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 1, 3, '2018-01-26 09:46:01', '2011-05-20 14:19:38', '2019-10-28 03:51:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 4, 1, '2011-04-22 05:00:35', '2020-11-07 04:19:45', '2011-08-20 00:44:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 9, 2, '2014-01-05 11:10:54', '2016-12-04 23:34:00', '2018-04-16 13:40:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 1, 3, '2019-05-22 15:26:12', '2013-12-10 22:50:52', '2020-06-12 00:39:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 3, 1, '2018-10-14 01:18:20', '2021-03-22 08:09:18', '2015-03-10 07:21:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 6, 2, '2012-01-03 14:44:14', '2015-10-27 10:50:11', '2016-01-06 12:20:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 2, 3, '2015-06-28 03:04:20', '2016-03-10 07:06:54', '2016-03-23 12:43:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 2, 1, '2016-11-30 07:25:16', '2017-06-26 05:33:13', '2011-10-31 01:10:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 7, 2, '2015-05-31 19:48:01', '2020-01-20 09:55:02', '2020-12-15 00:09:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 6, 3, '2012-10-26 15:33:51', '2012-05-07 01:21:40', '2017-09-02 06:12:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 5, 1, '2018-07-29 05:46:10', '2021-03-18 07:51:58', '2015-03-08 19:33:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 2, 2, '2015-09-04 01:39:11', '2019-12-10 05:06:16', '2019-11-21 11:11:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 6, 3, '2018-12-10 05:22:35', '2014-05-27 23:47:22', '2013-05-19 14:13:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 2, 1, '2016-11-29 16:36:10', '2020-10-16 00:53:28', '2017-04-21 20:53:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 5, 2, '2011-05-17 10:35:44', '2017-04-05 09:24:13', '2020-02-15 03:25:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 6, 3, '2021-03-27 08:57:41', '2012-09-15 16:14:53', '2013-03-16 00:44:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 1, 1, '2014-01-07 02:23:54', '2020-10-31 21:02:55', '2019-06-07 04:28:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 3, 2, '2016-04-24 10:18:53', '2019-01-07 07:21:30', '2016-08-15 16:10:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 5, 3, '2019-01-12 18:55:39', '2019-03-21 11:28:34', '2016-09-06 15:08:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 0, 1, '2015-09-30 20:29:45', '2017-05-10 13:37:24', '2014-01-22 22:00:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 4, 2, '2017-10-21 12:45:15', '2014-10-24 04:45:40', '2018-07-15 14:59:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 0, 3, '2020-01-04 16:17:09', '2019-11-11 08:10:24', '2021-03-12 23:35:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 6, 1, '2013-01-31 11:09:02', '2015-01-20 18:07:19', '2020-02-25 19:45:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 2, 2, '2013-10-31 05:08:46', '2016-11-28 16:46:39', '2020-04-16 04:32:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 9, 3, '2020-04-04 18:08:19', '2019-10-10 02:45:21', '2017-05-01 10:55:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 7, 1, '2019-11-15 22:35:12', '2019-06-20 04:42:59', '2018-05-01 04:08:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 7, 2, '2015-06-13 18:00:04', '2021-02-14 22:34:38', '2017-02-10 12:14:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 9, 3, '2011-12-22 07:24:32', '2015-09-28 05:39:14', '2017-12-16 18:15:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 1, 1, '2011-10-01 16:44:07', '2016-09-30 01:41:07', '2019-05-26 09:47:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 1, 2, '2018-11-07 07:26:42', '2012-03-11 05:41:08', '2015-12-30 08:35:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 9, 3, '2015-01-24 21:13:14', '2011-06-06 23:58:10', '2020-07-05 06:36:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 8, 1, '2017-08-17 13:49:19', '2018-05-24 13:40:47', '2013-06-23 04:28:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 3, 2, '2017-06-19 22:21:19', '2011-07-21 09:36:30', '2020-07-02 21:33:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 9, 3, '2014-10-13 05:14:22', '2020-02-26 20:54:04', '2012-06-16 05:53:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 0, 1, '2015-05-02 07:35:17', '2013-03-08 19:43:47', '2020-06-24 12:57:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 1, 2, '2018-04-01 06:01:38', '2013-11-08 17:14:14', '2014-10-01 11:17:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 0, 3, '2013-03-12 02:29:46', '2019-06-07 13:53:16', '2021-01-21 13:22:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 1, 1, '2017-08-15 20:15:55', '2018-10-24 15:55:10', '2019-01-20 05:00:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 5, 2, '2021-03-05 09:50:14', '2019-05-04 15:56:49', '2018-01-21 10:14:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 9, 3, '2015-05-17 14:29:09', '2016-03-22 17:36:19', '2016-03-14 20:33:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 2, 1, '2011-05-10 16:06:04', '2016-11-05 10:25:24', '2021-02-21 08:16:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 0, 2, '2015-10-13 14:46:29', '2015-01-28 19:09:33', '2016-07-31 07:01:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 6, 3, '2020-07-16 12:40:31', '2020-03-09 13:06:27', '2013-04-12 03:48:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 3, 1, '2014-09-27 08:15:51', '2017-03-08 04:03:29', '2018-08-12 02:58:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 6, 2, '2014-02-01 00:06:58', '2014-08-10 10:57:37', '2014-08-13 01:43:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 3, 3, '2015-11-15 23:40:19', '2012-11-19 01:27:46', '2011-08-18 17:10:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 5, 1, '2018-03-15 10:29:37', '2019-10-27 23:33:40', '2017-03-27 22:40:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 8, 2, '2013-08-29 23:26:35', '2016-12-20 01:07:02', '2015-05-07 10:24:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 9, 3, '2011-07-03 11:06:36', '2017-04-16 21:28:34', '2019-03-19 11:44:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 0, 1, '2015-09-21 18:40:43', '2018-10-30 20:46:18', '2014-07-28 17:56:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 5, 2, '2012-03-05 07:17:15', '2014-12-29 17:08:16', '2021-02-17 16:29:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 1, 3, '2020-01-12 22:08:08', '2012-06-27 00:22:16', '2016-03-10 08:25:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 7, 1, '2014-03-26 05:16:01', '2016-03-20 10:15:19', '2012-12-25 14:14:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 8, 2, '2013-09-12 08:39:47', '2015-05-08 03:35:02', '2019-12-27 14:41:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 3, 3, '2020-01-19 21:40:52', '2011-07-27 03:58:43', '2012-04-05 09:27:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 2, 1, '2020-11-10 10:57:20', '2012-08-12 06:29:03', '2019-06-24 22:04:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 0, 2, '2017-08-05 07:50:13', '2015-09-20 16:32:04', '2018-07-30 22:52:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 0, 3, '2017-12-05 09:52:40', '2017-06-19 03:12:28', '2013-03-25 06:21:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 8, 1, '2016-02-13 10:06:11', '2019-06-19 22:44:47', '2019-08-04 11:12:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 1, 2, '2017-08-06 14:37:34', '2011-09-17 02:59:49', '2020-06-01 11:23:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 2, 3, '2021-01-16 16:13:31', '2011-05-18 05:58:13', '2021-01-03 15:58:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 7, 1, '2011-04-26 03:00:22', '2015-07-28 03:54:30', '2015-10-02 00:27:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 7, 2, '2019-02-08 01:03:37', '2011-09-02 01:09:33', '2019-12-10 03:48:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 8, 3, '2016-03-28 01:13:02', '2011-12-22 09:43:38', '2011-11-16 10:41:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 1, 1, '2012-06-17 01:02:33', '2019-05-13 21:08:09', '2020-01-11 06:31:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 3, 2, '2016-10-19 15:28:03', '2017-10-22 08:47:51', '2020-08-14 22:25:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 7, 3, '2020-04-15 08:19:10', '2017-10-15 05:34:16', '2013-02-01 22:08:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 0, 1, '2013-12-07 02:30:44', '2012-02-03 15:15:21', '2011-09-14 18:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 8, 2, '2011-12-31 15:14:38', '2012-12-22 09:16:07', '2011-11-17 09:46:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 6, 3, '2013-12-03 13:35:55', '2018-11-15 19:25:25', '2013-02-09 07:57:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 5, 1, '2015-08-15 22:27:13', '2018-06-26 13:49:13', '2020-12-12 16:39:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 8, 2, '2015-09-04 11:57:36', '2017-02-20 02:14:55', '2015-11-03 18:18:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 1, 3, '2015-05-04 16:56:30', '2012-05-10 05:14:11', '2016-05-13 05:46:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 7, 1, '2011-09-06 23:38:53', '2016-10-31 01:54:15', '2017-04-06 16:28:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 5, 2, '2014-01-10 19:49:52', '2017-01-12 12:56:23', '2011-06-06 05:14:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 6, 3, '2017-01-31 21:21:48', '2013-04-13 14:06:06', '2020-10-14 03:29:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 8, 1, '2013-10-15 13:18:55', '2019-07-09 20:19:38', '2012-11-27 22:23:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 7, 2, '2017-04-26 06:13:15', '2019-09-14 20:49:32', '2020-08-08 01:15:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 1, 3, '2020-09-02 23:41:29', '2014-06-13 03:53:27', '2015-12-22 01:29:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 8, 1, '2021-03-05 07:07:43', '2019-08-25 11:20:05', '2013-05-13 22:32:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 0, 2, '2011-05-01 01:50:17', '2011-10-20 06:14:41', '2012-04-27 07:53:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 4, 3, '2011-09-22 19:21:40', '2018-01-11 14:09:44', '2012-06-02 20:11:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 8, 1, '2012-04-12 22:42:15', '2017-12-29 23:04:44', '2011-04-27 09:08:27');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, ' friendship request', '2013-07-28 03:41:16', '2013-04-08 03:59:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'friendship', '2017-11-14 02:53:34', '2012-03-19 11:22:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, ' subscription ', '2015-02-04 19:33:59', '2019-05-12 02:58:15');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'dolor', 8745011, NULL, 1, '2012-01-09 05:52:56', '2016-07-09 05:09:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 6, 'nesciunt', 1921412, NULL, 2, '2011-06-04 15:33:42', '2019-04-09 08:45:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 5, 'et', 32271, NULL, 3, '2012-07-13 16:22:13', '2014-02-08 09:25:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 5, 'voluptas', 4, NULL, 1, '2017-11-10 05:58:12', '2015-12-28 17:48:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 1, 'ullam', 63, NULL, 2, '2021-03-18 23:41:41', '2019-02-09 07:43:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 1, 'totam', 4, NULL, 3, '2012-05-25 17:46:50', '2012-03-03 14:28:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 5, 'fugit', 892412730, NULL, 1, '2017-03-06 22:01:21', '2011-08-30 21:10:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 3, 'aut', 1428, NULL, 2, '2019-03-20 08:43:45', '2020-02-03 16:38:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 7, 'aliquam', 60, NULL, 3, '2020-07-21 18:39:10', '2017-02-13 20:24:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 3, 'rem', 1972, NULL, 1, '2012-02-28 14:28:52', '2014-04-21 11:44:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 8, 'eos', 7469, NULL, 2, '2017-07-29 08:47:12', '2012-08-15 17:52:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 5, 'totam', 16, NULL, 3, '2017-07-12 18:12:35', '2016-11-25 10:24:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 9, 'ut', 11, NULL, 1, '2014-04-23 00:49:25', '2015-03-19 05:23:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 6, 'et', 5522204, NULL, 2, '2012-01-03 04:40:14', '2012-09-24 14:10:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 0, 'ipsam', 2110060, NULL, 3, '2013-11-13 07:31:58', '2016-06-07 20:42:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 2, 'deserunt', 4386705, NULL, 1, '2017-11-14 05:52:42', '2016-09-03 09:23:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 8, 'beatae', 287755256, NULL, 2, '2018-10-28 11:16:35', '2018-08-25 02:19:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 8, 'voluptatum', 6, NULL, 3, '2020-10-17 13:07:41', '2013-01-14 01:12:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 1, 'occaecati', 33, NULL, 1, '2021-02-05 23:30:21', '2017-03-18 02:11:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 8, 'porro', 6061, NULL, 2, '2015-04-22 17:55:52', '2020-07-08 12:03:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 1, 'est', 87405513, NULL, 3, '2018-03-11 17:54:53', '2018-05-05 09:23:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 8, 'neque', 0, NULL, 1, '2018-09-10 00:22:48', '2014-10-30 07:27:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 5, 'exercitationem', 25508577, NULL, 2, '2019-02-07 15:56:15', '2018-03-15 05:04:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 3, 'placeat', 230523617, NULL, 3, '2013-01-27 21:15:33', '2020-09-15 03:19:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 7, 'ducimus', 6034, NULL, 1, '2018-07-28 08:03:45', '2014-08-29 12:36:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 7, 'labore', 577, NULL, 2, '2019-04-01 22:51:18', '2013-03-08 20:53:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 3, 'architecto', 3700219, NULL, 3, '2015-10-26 00:56:53', '2017-04-04 04:09:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 2, 'exercitationem', 578125163, NULL, 1, '2015-07-20 14:13:04', '2017-05-07 15:44:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 6, 'perferendis', 623407, NULL, 2, '2014-02-04 00:38:50', '2017-04-27 10:33:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 3, 'ipsum', 677052, NULL, 3, '2015-01-24 12:22:10', '2013-12-02 03:00:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 8, 'porro', 9, NULL, 1, '2015-01-19 10:07:04', '2013-07-13 05:21:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 4, 'deserunt', 731, NULL, 2, '2017-12-27 12:19:20', '2013-02-22 04:33:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 8, 'sit', 254, NULL, 3, '2012-05-05 07:21:02', '2019-09-12 20:04:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 0, 'iure', 313, NULL, 1, '2016-04-16 19:32:27', '2015-11-19 00:34:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 2, 'possimus', 95335, NULL, 2, '2012-05-10 16:53:23', '2016-01-12 00:22:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 7, 'exercitationem', 1034887, NULL, 3, '2019-04-05 06:44:35', '2011-10-04 13:12:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 6, 'nihil', 637817839, NULL, 1, '2012-06-10 04:48:28', '2014-06-09 11:32:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 6, 'et', 889724, NULL, 2, '2021-03-24 19:51:02', '2017-05-15 07:44:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 7, 'molestiae', 0, NULL, 3, '2016-04-14 16:50:52', '2019-05-17 02:25:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 5, 'perspiciatis', 50434608, NULL, 1, '2016-03-05 03:10:38', '2011-05-08 19:17:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 5, 'est', 5117501, NULL, 2, '2014-11-08 03:07:34', '2017-03-22 00:34:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 9, 'nihil', 39698409, NULL, 3, '2020-04-11 09:05:06', '2017-06-10 01:56:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 2, 'fugiat', 7321438, NULL, 1, '2021-01-14 06:08:38', '2019-07-06 15:48:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 3, 'cupiditate', 90, NULL, 2, '2015-01-08 14:15:38', '2018-12-06 05:38:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 8, 'nemo', 0, NULL, 3, '2020-02-23 18:15:49', '2018-08-30 22:08:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 9, 'dolor', 145, NULL, 1, '2016-06-14 05:11:00', '2013-06-29 21:48:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 8, 'odio', 85591272, NULL, 2, '2017-09-05 14:18:49', '2017-11-12 21:54:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 9, 'deserunt', 5, NULL, 3, '2015-07-11 21:36:30', '2021-01-29 18:43:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 8, 'autem', 38861584, NULL, 1, '2017-04-21 04:09:37', '2017-01-14 21:15:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 9, 'atque', 407, NULL, 2, '2018-03-11 22:47:51', '2019-08-14 13:09:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 2, 'rerum', 394205, NULL, 3, '2015-08-09 09:04:17', '2016-05-11 20:35:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 9, 'qui', 9, NULL, 1, '2017-10-31 17:46:11', '2013-12-02 00:32:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 0, 'velit', 4, NULL, 2, '2016-07-27 11:03:37', '2017-03-04 17:32:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 1, 'eligendi', 66086, NULL, 3, '2013-04-04 03:46:58', '2013-11-19 01:22:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 8, 'voluptatum', 0, NULL, 1, '2020-05-06 15:06:25', '2016-07-25 00:19:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 9, 'et', 51, NULL, 2, '2017-10-26 14:50:46', '2020-06-30 06:53:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 9, 'atque', 416557, NULL, 3, '2016-05-05 11:11:55', '2012-07-07 22:14:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 5, 'impedit', 0, NULL, 1, '2017-04-26 17:21:22', '2014-05-16 15:33:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 5, 'cupiditate', 5, NULL, 2, '2016-12-16 10:17:46', '2014-09-08 11:39:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 5, 'illo', 53092, NULL, 3, '2013-05-29 06:59:12', '2017-05-02 13:30:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 3, 'non', 358617, NULL, 1, '2018-04-28 14:34:01', '2018-11-22 16:08:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 9, 'inventore', 4, NULL, 2, '2014-07-21 07:26:23', '2011-08-21 15:53:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 0, 'quam', 2892, NULL, 3, '2018-08-14 03:21:28', '2017-05-15 07:35:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 5, 'excepturi', 0, NULL, 1, '2011-12-14 09:35:13', '2020-01-29 01:49:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 4, 'dolorem', 31432, NULL, 2, '2013-08-27 20:12:58', '2011-10-07 08:29:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 7, 'repudiandae', 2284, NULL, 3, '2012-06-14 12:09:05', '2014-11-20 06:57:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 3, 'qui', 295, NULL, 1, '2019-12-10 03:17:48', '2015-01-02 07:09:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 5, 'officiis', 681846, NULL, 2, '2013-10-21 10:22:31', '2020-06-27 11:18:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 0, 'explicabo', 6206500, NULL, 3, '2020-11-29 09:09:06', '2012-07-23 18:12:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 2, 'nobis', 584903, NULL, 1, '2014-06-23 17:34:31', '2016-07-15 13:41:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 4, 'asperiores', 4, NULL, 2, '2019-12-19 15:48:47', '2020-03-17 06:56:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 2, 'eum', 5, NULL, 3, '2014-05-02 07:09:32', '2020-09-10 00:55:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 9, 'quae', 2, NULL, 1, '2013-02-06 00:10:19', '2020-04-11 02:50:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 2, 'placeat', 427057153, NULL, 2, '2019-09-19 07:18:42', '2015-09-06 10:22:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 9, 'pariatur', 2004772, NULL, 3, '2014-08-12 15:22:18', '2012-02-27 23:17:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 1, 'sint', 97, NULL, 1, '2013-01-18 00:58:16', '2012-07-11 05:03:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 8, 'ipsa', 2, NULL, 2, '2012-02-17 13:49:58', '2011-10-28 07:14:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 5, 'cumque', 73, NULL, 3, '2017-05-17 13:10:34', '2016-02-16 20:31:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 6, 'voluptatem', 7144, NULL, 1, '2018-08-09 17:35:26', '2021-03-13 22:18:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 5, 'ipsam', 41, NULL, 2, '2011-09-13 01:43:26', '2019-06-05 07:15:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 1, 'dolores', 56629595, NULL, 3, '2018-04-10 13:01:07', '2018-05-19 03:53:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 2, 'et', 7909, NULL, 1, '2018-08-18 21:51:42', '2021-04-18 19:38:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 0, 'debitis', 44844, NULL, 2, '2015-08-29 19:33:49', '2016-07-06 03:00:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 3, 'quis', 294141, NULL, 3, '2018-01-07 11:12:18', '2018-10-29 09:27:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 5, 'in', 0, NULL, 1, '2018-08-27 05:19:18', '2013-04-21 21:02:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 2, 'exercitationem', 442, NULL, 2, '2015-08-22 17:53:12', '2013-08-14 13:01:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 7, 'vel', 4, NULL, 3, '2012-11-16 11:44:16', '2020-06-28 12:39:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 4, 'corrupti', 455933, NULL, 1, '2017-03-05 14:35:50', '2021-02-23 19:52:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 7, 'consequatur', 0, NULL, 2, '2017-07-01 02:18:15', '2016-03-16 18:21:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 2, 'non', 8783073, NULL, 3, '2015-03-25 06:15:20', '2017-05-20 00:05:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 1, 'id', 819, NULL, 1, '2016-07-08 22:07:18', '2013-09-29 08:25:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 1, 'enim', 14281439, NULL, 2, '2016-01-27 15:49:41', '2019-06-24 08:02:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 4, 'totam', 38943669, NULL, 3, '2015-10-05 23:48:58', '2017-04-20 12:44:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 8, 'illum', 0, NULL, 1, '2015-12-15 12:30:49', '2020-09-24 11:57:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 2, 'et', 5274144, NULL, 2, '2015-05-30 04:11:17', '2019-12-10 20:15:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 1, 'ea', 77501, NULL, 3, '2012-07-17 09:41:05', '2014-03-10 05:46:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 1, 'dolores', 6, NULL, 1, '2011-10-17 17:13:22', '2016-10-30 15:17:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 1, 'tenetur', 9682243, NULL, 2, '2019-01-11 16:12:19', '2014-11-04 07:18:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 9, 'dicta', 45322, NULL, 3, '2015-04-16 01:19:49', '2013-12-22 06:22:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 1, 'rerum', 0, NULL, 1, '2016-10-04 07:03:08', '2018-02-13 18:14:14');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '2018-12-22 18:29:49', '2015-09-06 02:24:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, ' music', '2017-05-31 09:51:16', '2014-02-25 06:53:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, ' image', '2013-06-07 15:20:59', '2021-04-07 09:54:51');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'In exercitationem reiciendis repellat consequatur sed. Repellendus dolor vel commodi dolor. Repellat dolorem quis iusto fuga et quidem et.', 0, 0, '2015-02-04 13:16:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Nemo a ratione cum nulla molestiae et. Molestiae amet qui vitae voluptatibus aspernatur. Et accusantium est laudantium ea ut fugit eum. Tempora aliquid tenetur sed corrupti.', 1, 0, '2015-12-24 12:21:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Iste eaque dignissimos fuga molestiae. Quia laborum ratione animi itaque quia. Eligendi distinctio exercitationem accusantium aspernatur ut.', 0, 0, '2014-04-03 22:22:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Et est expedita quo. Ut ut iusto esse unde rerum recusandae. Accusamus eaque consequuntur aperiam.', 0, 0, '2016-10-26 10:26:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Consequatur dignissimos enim quia velit. Incidunt reiciendis aut non quaerat et qui eligendi impedit. Sequi ad et rerum eum voluptatem. Velit est labore nesciunt consequatur rerum.', 1, 1, '2013-01-28 20:24:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'In eligendi quo voluptates rerum. Voluptas sunt voluptate est repellendus. Sint consequatur ut eaque.', 0, 0, '2013-09-21 15:09:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Soluta in et molestiae illum et ipsum voluptates. Dolorum natus voluptates ullam. Veniam est consectetur commodi molestiae aut impedit.', 0, 1, '2018-11-23 10:21:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Quidem ut eius ullam eum ut tenetur. Sapiente dolores totam voluptatem voluptatibus. Vel dolores praesentium inventore quia vel itaque quo. Ea rem quia magni neque.', 0, 0, '2018-10-26 01:23:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Ut voluptas id rerum voluptatibus. Eaque voluptatibus sit suscipit vitae totam aperiam consequatur explicabo. Dignissimos totam doloribus ipsam qui quae. Quia alias natus aut illo facilis voluptatem.', 0, 1, '2014-05-29 11:09:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Dolor consequatur id facilis consequatur. Temporibus autem ea quaerat cumque voluptate blanditiis occaecati. Corporis hic ipsa at sit sint et nihil nostrum.', 0, 0, '2013-12-06 11:22:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Exercitationem fuga et qui explicabo iusto adipisci aut similique. Repellendus iure consequatur error hic aut ad rem totam. Rerum ut aut deleniti repudiandae a.', 1, 0, '2015-08-05 21:39:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Recusandae quo sint voluptas vel. Beatae sit esse voluptas provident atque voluptas. Provident voluptates maxime ea rem eos consectetur.', 1, 0, '2016-11-29 12:31:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Nihil magni rerum sunt labore porro similique quas. Quam sed eos iure sunt quos. Accusamus nostrum necessitatibus quia omnis qui et. Et sunt quia quisquam provident aliquid vero.', 1, 0, '2016-03-28 20:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Earum ea dicta illo quos quas eos. Et voluptatibus sit similique voluptas vel. Ut quia et qui reiciendis incidunt. Et consequatur accusantium ea dolorem sequi omnis.', 1, 1, '2019-06-01 20:22:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Sunt nisi perspiciatis sunt distinctio sit id. Minus expedita reprehenderit non labore blanditiis. Adipisci iusto est molestiae.', 0, 1, '2016-10-19 12:43:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Sapiente fugit sit ut. Dolorum ut non magni et. Sequi vero rem consequuntur quidem quia laborum. Atque eum enim earum ex voluptatum velit vitae earum.', 1, 1, '2016-07-07 22:30:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Quae eum aspernatur perferendis veniam et. Veritatis expedita eveniet occaecati eveniet laboriosam. Voluptatem neque consequatur blanditiis autem.', 1, 0, '2015-09-27 19:44:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Repellat sed sapiente necessitatibus sit et voluptatem quod. Quia eaque aliquam autem mollitia itaque. Adipisci dolorem voluptas necessitatibus quibusdam ratione. Voluptatem delectus aut quia vitae temporibus et aut.', 0, 0, '2019-08-17 05:08:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Asperiores veniam soluta iste eligendi commodi recusandae praesentium. Eos quisquam sint a quia qui vel id. Accusamus illum non quibusdam eos adipisci non at velit.', 0, 1, '2016-06-15 09:21:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Quae dolore ab ducimus neque doloribus. Atque pariatur sapiente et labore modi officia autem maiores. Quia aut inventore est blanditiis.', 1, 0, '2019-12-09 16:24:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Velit ullam fuga commodi debitis aut. Reprehenderit facilis provident at provident fugit optio. Nisi tempore sapiente ut et magnam quidem sequi.', 0, 1, '2011-09-02 12:56:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Minus debitis id corporis vel. Voluptates exercitationem veritatis minima harum et eum praesentium illo. Maiores sed asperiores cum sint ut. Vel accusantium est repellat quis quis earum.', 1, 1, '2019-09-29 17:23:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'In nemo ex iste quae et. Quam architecto et alias recusandae. Nihil ut quia tempora repellat non et.', 0, 1, '2020-05-15 13:29:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Sed sed ducimus eaque veritatis labore non id possimus. Ut pariatur occaecati est non eius in facilis. Ut ipsum repellat aut doloribus quasi incidunt officiis. Voluptatum consequatur quaerat dolores ut in.', 1, 0, '2013-04-18 05:15:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Sit at voluptates sit. Consectetur rerum accusantium ratione cumque aut. Velit quis velit nihil consequatur non voluptatem id.', 1, 1, '2016-06-16 10:37:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'In atque beatae nihil eaque voluptas dolores. Eos rem debitis fuga dolores aut. Autem earum aperiam quo harum. Ea ullam qui quos doloribus explicabo aliquid.', 0, 0, '2020-07-17 20:12:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Deleniti accusamus rerum aut minima est voluptatem veritatis. Architecto sint architecto beatae non velit. Iusto eum natus omnis iste cupiditate fuga. Vitae quibusdam animi quia eum voluptas.', 1, 1, '2018-12-26 22:35:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Tenetur perspiciatis ipsa cumque dolor neque rerum quos. Eos nihil enim sed. Et et omnis accusamus ad. Ullam corrupti suscipit modi veritatis vel placeat omnis.', 0, 0, '2020-07-24 16:19:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Ad consequuntur voluptates consequatur pariatur et. Illum dicta asperiores quia labore. Magnam id consequuntur sit et minus perspiciatis ad.', 1, 0, '2011-05-13 19:34:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Autem sed id occaecati et laborum quo quis. Rerum et deserunt nobis odio consectetur velit aut. Sequi a doloremque est natus expedita earum.', 0, 1, '2018-05-14 15:56:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Cumque enim sit qui aperiam. Sunt eum perferendis commodi est. Officiis voluptatem delectus illum autem. Eum repellat voluptatem eos error et accusantium enim quia.', 1, 0, '2020-12-26 08:28:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Consectetur dolorem dicta qui facere voluptatem quos. Similique officiis et officiis officia est quaerat vel est. Omnis quia necessitatibus quis quod omnis. Eos ea rerum quo laudantium et beatae.', 1, 1, '2013-02-05 17:18:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Dolores omnis reiciendis voluptas eligendi ipsa error. Ab enim ducimus iure. Nisi eius adipisci ipsa aut. Nihil vero aut fuga nihil nam sed.', 1, 1, '2014-02-02 09:22:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Quaerat recusandae nesciunt atque. Velit velit iusto illo et.', 1, 0, '2020-10-25 07:44:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Ut officia unde laudantium nihil sit quos culpa. Vero in minima nostrum corrupti. Corrupti animi suscipit quo modi dignissimos. Et et sequi omnis eaque nisi non repellendus. Magni qui rerum quidem architecto enim.', 1, 0, '2015-11-21 01:00:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Aut velit tenetur nostrum possimus vel. Voluptas minima necessitatibus blanditiis in. Ut quo voluptatem nisi aut. Omnis laboriosam placeat et cupiditate assumenda.', 1, 0, '2014-07-10 07:52:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Atque id quo perferendis voluptates itaque dolorum omnis. Aut tempore debitis molestiae error quia. Soluta rerum minima soluta autem. Optio numquam eveniet alias saepe eos repellendus.', 1, 0, '2014-09-18 17:05:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Nemo et eum a. Voluptas ducimus ut et sint. Voluptatum veniam ut et veritatis non. Omnis nemo vero quas natus distinctio ullam. Sed dolores eius consequatur voluptate.', 1, 1, '2020-04-16 18:33:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Eius est iusto nobis distinctio ipsa tempora. Ducimus recusandae qui aperiam molestias et. Pariatur accusamus molestiae omnis rerum itaque accusantium.', 0, 0, '2015-04-21 03:58:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Quos possimus aliquid animi repudiandae ut voluptas fuga error. Ab eum eligendi iure ut nam. Veniam quia unde ipsum unde rerum.', 0, 0, '2015-12-29 21:37:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Aut distinctio non necessitatibus nemo ea vel fugit. Et similique autem et eum consequatur aut fugit. Est dolor magni sapiente et neque repudiandae.', 1, 0, '2018-02-28 11:45:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Veritatis repellat atque quo quod consectetur. Id debitis fugiat cumque distinctio quos eaque ea voluptatibus. Veniam dicta incidunt est et vel tempore. Enim iusto aut recusandae iusto.', 0, 0, '2011-06-21 14:11:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Sunt et voluptatibus reprehenderit ea dolor ipsam in. Consequatur suscipit id iusto qui adipisci in et. Omnis sed animi eum voluptatem magni.', 0, 1, '2014-03-27 07:03:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Libero qui ea ad minus. Deserunt illo quas provident ullam aut nobis. Asperiores nostrum tempore magni sit. Vel voluptatem dolore nam sint illo.', 0, 0, '2020-03-13 16:48:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Error non quibusdam explicabo et sed fugit. Eos ullam mollitia quod eos accusamus expedita iste omnis. Itaque sapiente ipsam enim et iusto ab totam. Delectus illo dignissimos nam mollitia et praesentium impedit.', 1, 1, '2018-12-30 02:40:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Est reprehenderit eos illum voluptates. Nihil voluptatem id quos in voluptatum dignissimos. Consequatur rerum aliquam in vel ut facilis blanditiis.', 0, 0, '2012-10-14 09:54:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Necessitatibus vero vitae omnis. Quia voluptas iure quas itaque ea ipsam possimus. Et et accusantium quaerat.', 0, 0, '2011-05-27 01:01:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Aut quia pariatur nihil at omnis deserunt. Quia necessitatibus aut veniam laudantium. Natus est nihil provident consequuntur vitae occaecati. Quidem voluptatem quam occaecati cumque earum modi sit.', 0, 1, '2017-10-07 00:24:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Quod culpa dolor inventore animi a ut voluptatum. At quia facilis minima omnis.', 1, 0, '2015-09-30 23:58:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Excepturi ut sint eaque autem id illo at. Nostrum magnam unde quam sequi aut iste. Voluptas natus temporibus eum vel rem ipsum excepturi. Explicabo et omnis totam aut ut ut.', 1, 1, '2017-12-16 00:52:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Id commodi voluptatem itaque voluptates placeat voluptas esse. Et dolorum tempore odio aliquid. Omnis et dolorem aut qui numquam ut quidem. Qui corporis animi alias et quis et nobis nisi.', 1, 0, '2013-07-13 19:30:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Quasi et esse aliquid est autem expedita sint rerum. Dolore numquam aliquam non. Est quis rerum ipsa dolore inventore accusamus. Quam corporis voluptate est iure sit eum natus optio.', 0, 1, '2016-01-04 12:53:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Voluptatem aperiam enim assumenda qui mollitia. At rerum qui quos dignissimos cupiditate itaque quia odit. Esse repellendus perspiciatis odio facilis sequi molestiae odio distinctio.', 0, 1, '2019-02-28 09:07:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Itaque doloribus quibusdam eveniet pariatur corporis occaecati molestiae. Neque ut rerum illo eos quia saepe. Cum nobis neque iste quisquam quia.', 0, 0, '2011-10-13 15:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Et sed nisi et illum modi. Voluptatem voluptas architecto consequatur et. Quibusdam voluptas occaecati odio omnis maiores.', 0, 0, '2012-08-03 06:37:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Dolorem quidem nostrum corporis. Consequatur minima officiis unde magni ut. Unde praesentium asperiores debitis pariatur. Repudiandae id voluptate laboriosam nulla quia quas.', 0, 0, '2011-04-29 00:06:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Ut aut possimus molestiae optio non molestiae aut. Quo harum veritatis incidunt est. Vitae vel illo ut. Cupiditate vero non sed. Soluta consequatur qui doloremque at.', 0, 1, '2019-09-02 00:53:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Et maiores consequatur facere quos tenetur quos. Commodi excepturi aut aut repudiandae et nulla. At asperiores quia veritatis. Repellat ullam nesciunt rerum reiciendis itaque. Suscipit id autem molestiae dolores quisquam.', 1, 1, '2020-02-04 09:33:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Est vel necessitatibus ut alias porro doloribus. Enim voluptatibus cum inventore rerum maxime. Sit et qui dolorem consequatur libero voluptatem sit. Ratione perferendis est accusamus et.', 0, 1, '2014-05-19 13:26:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Doloremque rerum delectus doloremque saepe. Asperiores inventore quod quisquam ea quos voluptatem. Dolorem dicta in enim repudiandae labore qui maiores facere.', 0, 0, '2014-09-14 17:05:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Architecto consequatur ea officia expedita enim. Dolores aut inventore ducimus. Ut omnis omnis temporibus omnis quo quasi. Eos rerum voluptatum id optio.', 0, 0, '2014-03-10 16:04:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Dolorum rem ut doloremque animi. Est beatae quo nam aut. Voluptatem autem qui rerum in saepe ut impedit accusamus. Fugiat et aut eaque et hic rerum a laborum. Facere culpa perspiciatis deleniti.', 0, 0, '2016-07-13 10:38:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Commodi voluptates eaque magni illum sint aut non. Et ratione dolor expedita aliquid aut et aperiam. Suscipit rerum ut numquam repellendus rem totam.', 1, 0, '2017-10-30 18:34:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Qui soluta ut aut qui qui sapiente. Ut eos at quos sit repellat molestiae et. A quisquam perferendis sit voluptatem. Quo enim beatae eos quisquam dicta qui aperiam iste.', 1, 1, '2015-08-23 20:01:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Consequatur natus consectetur omnis quasi. Quae omnis rerum quas magnam est et. At sint ullam fugiat.', 1, 1, '2018-08-05 22:26:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'In aspernatur temporibus tenetur repudiandae earum aut. Omnis neque architecto voluptatibus distinctio expedita voluptatem ducimus. Enim totam minima fuga quia. Sit nobis recusandae aperiam eaque. Est provident vel veniam magnam.', 1, 0, '2021-02-21 09:50:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Perferendis et non porro iste eveniet quas ex tenetur. Eveniet facilis blanditiis est occaecati eaque dolor ipsum. Tempora enim iure magni eos quia possimus modi.', 1, 0, '2020-07-14 02:37:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Dolorem repudiandae eum voluptatem voluptatum. Consequatur ut nisi magnam et. Id pariatur saepe qui non maiores dolores et ut. Esse numquam voluptatibus quia velit in consequatur.', 0, 1, '2015-05-15 05:30:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Veritatis voluptatem dolor voluptatibus quia quia quis. Id itaque aut enim et. Optio illum et et debitis minima ex eaque qui.', 1, 0, '2020-07-05 01:22:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Molestiae temporibus et aut eum hic et eum et. Enim voluptatem accusamus qui inventore mollitia et quas. Sed voluptas nobis ut eaque.', 1, 1, '2016-05-29 13:02:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Possimus incidunt qui occaecati doloremque quae voluptatem sint. Soluta veniam harum est distinctio qui sit. Quasi qui quia laboriosam.', 0, 1, '2013-06-29 02:13:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Doloribus et est quis quis incidunt quibusdam rem id. Aut excepturi ut impedit maxime voluptas quisquam non.', 0, 1, '2021-03-04 15:12:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Natus et ab maiores quis. Rem vel et impedit nobis est blanditiis.', 0, 1, '2018-03-07 17:57:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Fuga est rerum vero earum omnis debitis. Soluta illum tempora excepturi voluptatum enim. Nostrum quo consequatur modi accusamus deleniti sed eos.', 0, 0, '2017-08-08 20:33:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Quia qui odio inventore dolorum voluptatum quas harum. Ea ducimus ducimus voluptatum et dolor. Molestiae voluptas distinctio cum necessitatibus numquam molestias voluptas.', 1, 0, '2019-06-21 04:33:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Ipsam nesciunt ex voluptatibus hic illum id ratione est. Libero corrupti architecto animi aut voluptatem ea. Optio soluta accusantium eligendi beatae expedita odio ut sed. Consequatur non accusamus illum deleniti voluptate deleniti.', 0, 1, '2013-02-25 17:42:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Facere et quas aut quae doloribus recusandae. Architecto omnis nisi nemo laboriosam porro. Ab qui itaque doloremque dignissimos.', 0, 0, '2016-10-08 18:24:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Iste eum earum sit adipisci sint. Officiis a minus libero repudiandae ex nihil quia cumque. Est laboriosam eius quia illum dolore. Et itaque nisi harum esse tempore ea officia.', 0, 1, '2014-10-09 03:47:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Voluptatibus consectetur accusamus rerum blanditiis exercitationem quis. Ducimus corrupti recusandae autem quo. Sit veniam rerum praesentium nesciunt aliquam. Tempore harum recusandae atque qui labore. Itaque soluta et excepturi ea consequatur aliquid sint.', 0, 0, '2016-01-10 00:17:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Velit voluptatem nihil commodi sed eos ea. Similique quia praesentium quae consectetur. Consequatur nam quas ducimus id fugiat voluptas.', 0, 1, '2018-11-17 19:37:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Est rerum quod autem aut dolores ut. Nisi consequatur corporis aut incidunt est. Nesciunt quisquam qui voluptas.', 1, 1, '2020-12-02 12:21:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Inventore ut voluptatem aut cumque modi eos velit. Sint consequuntur et ullam tempora. Quis omnis exercitationem quos non maxime.', 0, 1, '2016-09-30 15:42:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Sequi quibusdam beatae velit autem numquam quas. Architecto itaque ad porro dolore tenetur tenetur. Voluptas repudiandae qui omnis rerum aut libero.', 0, 0, '2016-07-30 21:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Consectetur exercitationem corrupti distinctio aut soluta non cum. Illo quia qui incidunt doloremque inventore animi. Sequi doloribus quod saepe porro et. Ut praesentium qui aut magni pariatur facere assumenda.', 1, 1, '2014-02-11 23:25:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Aut temporibus enim voluptatem autem omnis vitae. Ducimus qui exercitationem nemo excepturi. Distinctio aut dolore sit et.', 1, 0, '2016-03-25 12:37:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Nihil at eos voluptatum dolorum ut ipsam iure. Dolorem aut iusto adipisci qui et. Fugit aut temporibus labore reprehenderit eos consequuntur qui eveniet.', 1, 0, '2020-02-17 16:58:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Nihil rerum sed quo. Assumenda vel accusantium nulla praesentium dicta tempore. Qui qui dolorum atque unde ut mollitia dolor.', 1, 0, '2014-04-07 07:35:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Rerum blanditiis hic quia assumenda eum magnam nihil. Hic quisquam et voluptatibus maxime quam error deleniti quis. Aut ea deleniti consequuntur quis. Quia maxime illum explicabo sunt et autem voluptatum.', 1, 0, '2020-01-30 11:37:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Qui nobis aut perferendis sint impedit minus labore. Rerum omnis quaerat sunt quisquam tenetur dolorem recusandae. Consectetur natus eius quibusdam a. Aut sunt ut est corporis dolorum quas.', 1, 1, '2020-01-24 13:05:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Explicabo quia non enim deserunt. Dolorem culpa accusantium officia provident. Aliquid harum facere sapiente qui dolorem nisi consequatur soluta. Nulla iusto error et.', 0, 0, '2020-05-15 06:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Delectus eligendi corporis nobis et blanditiis eos et. Consectetur et laudantium nisi repellendus. Vitae omnis et autem porro illo. Magnam occaecati non deserunt aut dolorum architecto molestias.', 1, 0, '2012-01-11 20:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Rerum voluptatem temporibus blanditiis accusantium et deserunt beatae. Non officia sapiente nam ea. Autem impedit dignissimos aut ut velit assumenda et.', 1, 0, '2018-12-23 01:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Dolorem quis veritatis dolorem perspiciatis quod et esse. Dicta incidunt est placeat. Dolores consequatur et fuga.', 1, 1, '2018-05-23 14:32:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Non aut vel ut rerum accusamus sapiente ut. Et vel dignissimos atque error quasi expedita et. Ducimus praesentium beatae maiores eius itaque.', 1, 0, '2018-11-04 02:40:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Ut odit placeat nostrum quasi qui aliquid dignissimos qui. Consequatur molestiae ipsam magnam eveniet molestiae. Quis ea officia dignissimos. Ipsa tempora reprehenderit ipsum.', 0, 1, '2018-09-11 12:13:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Et molestiae enim voluptatem molestiae est. Sit ullam quaerat architecto iusto quia quia quaerat. Dolor in harum doloribus accusantium. Qui et consequatur labore nisi distinctio est laborum.', 1, 0, '2011-06-03 17:04:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Fugiat esse suscipit et. Sed beatae perferendis officia explicabo ad. Ea vitae qui velit ut accusamus. Commodi est voluptatem reprehenderit vel quidem consequatur.', 1, 0, '2012-04-16 09:09:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Assumenda tempora molestiae libero reprehenderit laudantium. Qui quia ut nam odio.', 1, 1, '2016-08-12 11:52:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Sit provident soluta beatae aut. Sequi nobis tempore rerum perspiciatis dolores. Laborum in corrupti temporibus magnam temporibus fugiat voluptates nobis. Sint et facilis ea omnis. Consequatur ratione repudiandae quasi aut et odit ut.', 1, 0, '2019-08-31 10:22:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Autem iste quibusdam assumenda hic porro est molestiae. Magnam sed eveniet aspernatur. Iste molestiae voluptas non magni. Ea possimus laboriosam dicta eum a ut. Perferendis eum eaque placeat.', 0, 1, '2018-01-22 18:00:27');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '1970-12-31', 'Lake Jenningsshire', 'Central African Republic', '2015-03-29 20:22:39', '2014-01-19 03:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'f', '2005-08-22', 'Stantonburgh', 'Singapore', '2021-02-10 14:09:42', '2018-03-20 22:59:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '2001-04-04', 'Coltenmouth', 'Cuba', '2015-09-08 13:05:44', '2018-07-11 20:47:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1980-07-17', 'New Jo', 'Antigua and Barbuda', '2015-08-27 09:14:41', '2015-12-08 06:01:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '2018-06-05', 'Kshlerinborough', 'Saint Lucia', '2020-10-25 04:45:52', '2011-09-16 01:36:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1993-11-14', 'Lake Napoleon', 'Gabon', '2017-04-08 08:28:38', '2014-02-23 22:16:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '1988-04-13', 'West Irving', 'Bahrain', '2016-01-22 00:37:01', '2012-04-04 20:00:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '1973-12-11', 'North Libby', 'Taiwan', '2013-12-29 02:22:27', '2014-05-31 10:21:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '1983-05-22', 'West Shaniya', 'Sierra Leone', '2019-08-04 03:47:49', '2014-10-03 12:11:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1974-05-20', 'New Herbertport', 'Bahamas', '2012-10-17 10:49:46', '2012-07-03 10:56:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '2009-10-12', 'Howeview', 'Palestinian Territory', '2018-08-11 00:02:21', '2019-07-17 12:53:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '2004-07-19', 'Port Jovany', 'Kazakhstan', '2020-11-15 02:27:28', '2015-06-30 04:02:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1991-09-01', 'North Zion', 'South Georgia and the South Sandwich Islands', '2017-12-26 00:52:30', '2013-04-14 14:41:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '2007-01-24', 'Auerfort', 'Guadeloupe', '2017-11-03 09:30:55', '2016-09-03 20:49:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '1988-06-24', 'South Ronny', 'Tajikistan', '2011-04-29 02:27:43', '2012-05-15 14:27:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'm', '2006-09-01', 'Port Melvin', 'Brunei Darussalam', '2017-06-18 08:50:53', '2021-01-11 13:48:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2011-11-07', 'Strosinhaven', 'Costa Rica', '2019-05-22 04:58:18', '2017-01-05 11:05:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1981-03-25', 'Tremblayton', 'Eritrea', '2012-06-19 06:32:47', '2017-11-10 02:21:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '1981-06-30', 'West Vivian', 'Uruguay', '2020-04-18 08:37:23', '2017-05-05 19:16:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '1977-10-28', 'Port Florine', 'Germany', '2017-10-25 18:01:39', '2012-07-24 17:09:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '1986-11-04', 'West Thereseton', 'Guinea-Bissau', '2013-07-23 18:52:01', '2019-01-17 09:36:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '1971-01-13', 'Kenyattaland', 'Dominica', '2019-02-15 02:56:52', '2015-12-29 18:01:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '2014-04-01', 'Lake Christian', 'Korea', '2013-10-03 18:45:12', '2020-11-16 05:34:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2004-03-11', 'Lefflerburgh', 'Congo', '2011-07-31 10:43:46', '2016-06-19 01:43:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '2002-11-15', 'Cademouth', 'Isle of Man', '2020-03-03 04:13:29', '2019-09-07 00:26:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '1995-12-14', 'Bogisichbury', 'Bhutan', '2014-07-31 13:05:06', '2018-09-28 11:26:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '2005-12-30', 'Lake Selmerbury', 'Chile', '2018-08-04 17:12:40', '2019-05-10 22:41:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '2020-09-04', 'Port Esmeralda', 'Lithuania', '2017-02-08 21:47:26', '2017-05-05 18:57:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '2021-01-05', 'Geochester', 'Trinidad and Tobago', '2013-02-27 14:42:51', '2018-05-01 09:02:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '1988-01-08', 'West Annabelleburgh', 'Liechtenstein', '2019-06-07 13:26:28', '2015-09-18 17:33:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1985-01-22', 'Alannaburgh', 'Haiti', '2014-07-27 14:21:51', '2016-10-25 19:27:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '2011-08-03', 'Brennanmouth', 'Guyana', '2020-05-04 09:31:02', '2011-07-22 20:57:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '2018-10-30', 'Rosenbaumton', 'Saint Barthelemy', '2016-03-21 11:58:33', '2012-05-12 03:27:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '1989-04-09', 'Lake Aronmouth', 'Gambia', '2017-12-21 08:38:45', '2015-12-28 15:57:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '2002-09-22', 'Port Rylan', 'Mongolia', '2017-05-25 00:00:25', '2018-02-06 20:07:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '2015-11-03', 'Considineport', 'Iraq', '2017-07-19 05:33:58', '2017-02-08 23:16:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2006-06-07', 'Amiyastad', 'Kenya', '2019-03-11 17:05:02', '2017-06-02 21:36:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '1979-05-16', 'Titusshire', 'Ireland', '2016-05-09 19:16:19', '2011-11-05 03:27:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '1997-04-10', 'West Axelshire', 'Faroe Islands', '2014-03-27 15:23:57', '2018-06-18 15:28:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '1981-04-14', 'Steuberville', 'Liberia', '2018-03-08 18:56:06', '2018-03-07 11:59:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '2000-12-13', 'Lake Carissa', 'Palestinian Territory', '2012-09-14 01:28:49', '2011-06-27 17:57:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '2020-05-01', 'Jimmieton', 'New Zealand', '2011-04-23 04:24:16', '2021-01-10 22:19:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '2014-03-21', 'Nienowhaven', 'Belize', '2015-07-25 10:32:40', '2015-02-15 01:57:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '1998-10-21', 'Emersonmouth', 'Bolivia', '2015-08-24 13:50:44', '2012-03-01 23:28:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '1994-09-05', 'North Bernardoton', 'Panama', '2020-12-09 14:04:59', '2020-01-22 05:11:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '2019-05-10', 'Lake Shanelborough', 'Slovakia (Slovak Republic)', '2014-01-08 16:28:26', '2016-12-19 16:37:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1972-10-03', 'New Imaborough', 'Samoa', '2015-09-24 07:19:22', '2015-12-04 08:40:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '2002-11-13', 'Port Dwightburgh', 'Uruguay', '2014-12-06 14:15:02', '2016-11-15 10:09:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1995-12-22', 'Lake Rusty', 'Haiti', '2020-10-15 12:21:13', '2020-02-13 17:35:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1977-02-14', 'East Ronnymouth', 'Timor-Leste', '2020-03-04 17:51:04', '2011-09-11 08:19:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '1970-07-20', 'Thielland', 'Yemen', '2016-08-29 18:33:57', '2016-07-30 01:13:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '1982-04-30', 'Lake Bertram', 'United Arab Emirates', '2017-05-27 05:36:32', '2019-01-02 13:36:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '1988-09-04', 'New Mose', 'Iraq', '2014-11-30 01:57:36', '2012-04-01 05:03:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1996-01-13', 'East Blanche', 'Seychelles', '2017-12-25 23:45:46', '2013-07-16 08:56:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2016-08-04', 'Gerholdburgh', 'Slovenia', '2017-01-09 23:26:37', '2015-01-28 22:49:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '1975-07-26', 'Janachester', 'Saint Lucia', '2012-10-14 02:46:10', '2017-01-20 15:55:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'f', '1971-09-23', 'New Gonzaloview', 'Gambia', '2017-06-15 08:45:09', '2012-05-20 09:20:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '1995-05-11', 'South Faustoton', 'Yemen', '2018-03-03 17:44:30', '2014-11-18 11:53:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '2010-09-01', 'North Rasheed', 'Bouvet Island (Bouvetoya)', '2011-05-29 04:19:16', '2019-04-25 15:03:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '2011-01-23', 'Wizaberg', 'New Caledonia', '2013-01-15 05:38:43', '2020-03-25 15:18:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '2006-06-22', 'Cassinbury', 'Guadeloupe', '2014-01-27 19:42:00', '2017-07-20 20:39:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '1998-09-20', 'Port Alexanneshire', 'Sri Lanka', '2017-11-21 05:08:00', '2013-02-22 23:06:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '1996-06-19', 'West Eric', 'Togo', '2018-05-08 02:06:24', '2019-03-14 03:41:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '1990-07-02', 'Lavernborough', 'Cyprus', '2016-03-05 08:22:51', '2013-05-07 20:59:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1974-10-26', 'Rauborough', 'Angola', '2019-06-02 23:05:38', '2019-02-21 01:58:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '2020-06-17', 'Funkburgh', 'Kenya', '2016-03-12 04:44:52', '2016-01-16 06:27:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '2008-02-13', 'Port Felton', 'Rwanda', '2016-02-25 23:42:42', '2017-01-28 20:40:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '1991-09-26', 'Larueborough', 'United States Virgin Islands', '2012-10-27 08:19:54', '2018-09-17 10:39:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1976-10-20', 'Watershaven', 'Georgia', '2020-08-26 02:47:06', '2017-04-09 22:11:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '2012-11-10', 'Port Kristoferside', 'Argentina', '2013-03-13 15:58:53', '2020-06-03 20:39:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2002-05-19', 'South Oraton', 'Slovenia', '2019-07-18 14:04:28', '2016-08-23 16:46:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '2018-10-24', 'East Vidaborough', 'Singapore', '2013-02-01 07:06:32', '2019-07-08 08:04:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '2017-06-23', 'Windlerbury', 'Bouvet Island (Bouvetoya)', '2016-10-31 23:27:02', '2021-01-03 16:53:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '2006-08-06', 'Kirstinshire', 'Denmark', '2016-04-09 06:01:39', '2012-07-31 13:29:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1970-04-04', 'Lednerfort', 'Fiji', '2015-03-25 15:34:52', '2019-06-04 17:17:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '1991-02-07', 'Janisburgh', 'Ethiopia', '2020-02-14 23:40:30', '2012-10-19 22:22:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '2004-08-04', 'Vonborough', 'Botswana', '2011-10-07 02:57:14', '2017-06-30 23:37:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1997-09-18', 'Port Kelton', 'New Caledonia', '2015-12-13 13:08:52', '2012-05-30 13:43:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '1989-03-26', 'Port Claudinetown', 'Saint Helena', '2013-11-02 17:07:43', '2013-08-14 18:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '2020-03-31', 'West Thereseview', 'Benin', '2018-08-29 15:08:53', '2012-04-14 17:48:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1984-06-13', 'New Lutherside', 'Saint Lucia', '2019-12-27 15:32:06', '2014-04-21 10:05:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1987-01-16', 'Letamouth', 'Yemen', '2014-03-24 08:58:10', '2012-05-18 21:22:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '1989-03-30', 'Erickside', 'Ukraine', '2014-09-21 20:00:40', '2011-05-05 00:22:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'f', '2019-12-02', 'Douglasburgh', 'Timor-Leste', '2019-05-30 09:01:32', '2011-11-13 23:31:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '2015-10-16', 'Normamouth', 'Falkland Islands (Malvinas)', '2017-02-28 10:59:46', '2012-03-07 06:53:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '2016-11-22', 'Barrowsmouth', 'Sri Lanka', '2019-05-11 09:00:51', '2020-02-07 20:40:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2012-11-07', 'North Consueloberg', 'Venezuela', '2019-04-03 16:45:03', '2012-10-13 13:31:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '2001-07-03', 'Port Bertramberg', 'Antarctica (the territory South of 60 deg S)', '2013-07-07 03:31:23', '2012-06-01 20:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '2009-06-29', 'North Clarissa', 'Norway', '2018-12-15 13:41:42', '2018-12-17 17:17:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '1975-04-06', 'West Kimberly', 'Lebanon', '2014-07-15 11:18:49', '2012-06-02 09:54:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '2014-09-12', 'Chazport', 'Timor-Leste', '2020-07-17 07:09:15', '2014-07-12 18:28:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '1993-01-16', 'West Maribelstad', 'Mauritania', '2014-03-17 21:01:38', '2013-04-07 05:36:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1971-08-17', 'Schuppehaven', 'American Samoa', '2016-07-31 01:34:28', '2014-05-14 14:37:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '2014-07-19', 'Lake Enrico', 'Christmas Island', '2020-07-16 11:19:44', '2016-04-18 12:02:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '1978-09-14', 'Emmerichville', 'United Arab Emirates', '2011-11-07 22:16:29', '2016-12-16 16:10:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1977-07-29', 'East Kenyatta', 'Tanzania', '2019-01-19 23:33:39', '2018-09-23 17:39:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2010-08-26', 'Greentown', 'Morocco', '2018-03-13 05:04:48', '2014-06-14 10:03:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '1979-01-22', 'South Buford', 'Ghana', '2018-08-14 11:36:08', '2019-02-23 06:54:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '2005-02-15', 'East Douglasbury', 'Liechtenstein', '2014-03-31 04:08:16', '2019-04-11 02:52:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '1972-09-15', 'South Svenburgh', 'Angola', '2018-01-04 09:56:46', '2017-02-12 20:59:33');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ruth', 'Emard', 'aufderhar.lois@example.com', '(574)086-0247x65131', '2019-02-14 07:29:45', '2017-09-23 03:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'London', 'Torp', 'kylie.abshire@example.com', '054.057.3540', '2020-04-25 13:29:16', '2012-06-18 15:56:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Griffin', 'Metz', 'fidel.waelchi@example.com', '+66(6)6928875043', '2015-10-03 13:36:27', '2016-12-14 03:06:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Madalyn', 'Kris', 'myrtice35@example.net', '1-952-046-9231x6696', '2015-08-25 18:44:46', '2019-02-14 16:14:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Jonatan', 'Brekke', 'labbott@example.org', '864.465.4166', '2012-09-28 00:53:49', '2018-11-07 03:07:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Timmothy', 'Johns', 'klein.felton@example.com', '+82(9)8414952522', '2017-06-03 01:43:23', '2020-02-13 13:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Joana', 'Gulgowski', 'barton.rosina@example.org', '875.861.5484x928', '2015-06-01 13:03:32', '2011-09-01 05:14:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ezekiel', 'Champlin', 'armstrong.daniella@example.com', '964.517.6307', '2019-05-07 12:51:23', '2014-01-08 16:25:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Kenya', 'Herzog', 'lupe15@example.com', '247-094-3728x157', '2019-03-13 05:19:03', '2016-11-29 09:13:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Lora', 'Zboncak', 'marcellus.runte@example.com', '777.914.9786', '2020-04-10 09:46:42', '2014-12-22 09:01:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Eric', 'Carroll', 'kuhn.mervin@example.net', '(843)435-5463', '2012-04-15 08:55:34', '2019-01-07 04:14:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Monique', 'Mertz', 'maudie45@example.org', '(795)019-1555x491', '2011-08-18 16:17:13', '2020-09-29 01:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Taurean', 'Bode', 'sylvia25@example.org', '00498187623', '2017-05-23 06:18:25', '2016-06-14 09:07:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Mossie', 'Daugherty', 'gislason.marion@example.org', '(871)391-4332x4662', '2016-02-08 02:36:57', '2018-12-03 11:30:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Carmine', 'Heller', 'ckutch@example.com', '710-799-3788x725', '2017-07-09 19:02:58', '2015-06-26 13:52:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Orlando', 'Halvorson', 'brakus.catharine@example.net', '1-304-830-8449', '2011-11-21 21:56:55', '2014-06-06 11:58:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Ashtyn', 'Weber', 'gerard.beahan@example.org', '519-185-8146', '2018-08-27 07:31:41', '2015-08-30 11:26:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Elyssa', 'Balistreri', 'cmosciski@example.com', '1-859-860-2733', '2021-03-11 11:12:20', '2019-12-05 17:36:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Quentin', 'Kautzer', 'olemke@example.com', '733-267-4697x251', '2014-01-24 18:49:59', '2014-11-05 22:07:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Litzy', 'Bergnaum', 'lmueller@example.com', '607-304-1800', '2011-09-06 03:19:16', '2020-08-08 21:18:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Dax', 'Kuhic', 'jmiller@example.net', '03395529954', '2018-12-21 02:20:42', '2014-01-26 14:21:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Hertha', 'Stoltenberg', 'hbayer@example.org', '958-502-4343', '2011-11-02 08:37:18', '2017-08-18 09:27:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Albin', 'Gaylord', 'mireille.bernhard@example.net', '214-774-5525x1945', '2014-08-07 03:34:53', '2020-09-04 17:12:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Verla', 'Labadie', 'rupert.white@example.org', '1-973-259-8754', '2015-08-19 09:56:16', '2014-04-10 00:58:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Lance', 'Flatley', 'sasha58@example.net', '899.052.9179x073', '2020-04-13 22:43:54', '2019-01-23 13:04:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Aiyana', 'Nitzsche', 'lizeth.mcclure@example.com', '(783)423-5777x02921', '2012-03-07 10:49:43', '2012-09-04 15:33:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jack', 'Hickle', 'schinner.consuelo@example.org', '622.659.6868', '2016-10-08 15:01:10', '2019-09-24 03:54:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Kaycee', 'Bednar', 'smith.adele@example.com', '02004689966', '2019-03-23 07:10:58', '2014-04-09 23:16:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Justyn', 'Willms', 'wiegand.olin@example.org', '+16(2)1613817186', '2014-11-09 02:07:28', '2013-11-03 19:28:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Myles', 'Gerlach', 'grady.lilian@example.com', '(568)845-3394', '2013-02-08 15:09:20', '2016-06-02 08:53:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Nettie', 'Ledner', 'vivianne39@example.net', '977.119.4227x140', '2018-01-13 03:10:43', '2020-03-27 22:12:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Jonathon', 'Crona', 'lcruickshank@example.org', '411-287-9996x460', '2012-01-17 19:16:48', '2017-05-20 11:21:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Katherine', 'Hudson', 'sadie.nicolas@example.org', '(694)331-5526', '2016-10-17 19:11:40', '2014-09-13 15:35:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Ephraim', 'Hansen', 'mcclure.maritza@example.com', '+23(5)7827689115', '2016-07-18 16:45:37', '2018-04-30 22:26:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Narciso', 'Bednar', 'ondricka.conrad@example.net', '+52(0)8022510429', '2016-12-11 16:10:59', '2020-05-03 19:21:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Karlee', 'Lehner', 'gutkowski.newell@example.net', '721-092-1485x280', '2015-11-25 13:50:38', '2016-12-24 11:34:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Eliane', 'Sawayn', 'janet.schmeler@example.net', '745.424.3588', '2017-03-16 08:40:33', '2016-12-13 02:44:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Guiseppe', 'Casper', 'annette.terry@example.com', '07437725975', '2014-02-14 13:46:42', '2012-12-10 08:47:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Mariam', 'Skiles', 'hodkiewicz.charity@example.com', '02910780868', '2018-05-15 17:37:48', '2014-07-05 07:20:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kadin', 'Braun', 'wiegand.damian@example.com', '953-289-8506x01722', '2018-12-29 20:02:30', '2013-02-08 13:22:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Jammie', 'Trantow', 'feil.jermaine@example.net', '673-224-9926x3940', '2014-07-02 07:49:50', '2013-08-22 15:48:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Madaline', 'Bartell', 'bednar.johnpaul@example.com', '1-973-157-7122x14215', '2011-10-09 06:11:38', '2013-10-06 15:16:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Julie', 'Sawayn', 'wintheiser.annie@example.com', '03053516917', '2016-05-19 23:39:24', '2017-03-31 11:22:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Freida', 'Lemke', 'parker61@example.org', '+29(8)8114868597', '2012-12-05 10:56:50', '2019-04-17 03:33:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Ivy', 'Rutherford', 'aufderhar.humberto@example.com', '(230)245-0650', '2012-03-27 10:46:29', '2016-10-13 23:02:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Vickie', 'Conroy', 'lauren.jacobson@example.com', '07182685895', '2020-09-30 11:51:09', '2018-03-19 05:27:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Lelia', 'Hettinger', 'hauck.judson@example.com', '082-767-1006x8806', '2020-01-16 15:30:43', '2014-07-24 18:24:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Darby', 'Bartell', 'robin06@example.net', '571.359.6425', '2017-09-10 04:06:43', '2020-03-14 15:33:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Nina', 'Murazik', 'wraynor@example.org', '241.407.0922', '2013-04-12 06:07:14', '2012-10-27 10:34:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Margie', 'Rolfson', 'braynor@example.org', '(707)980-3862x58368', '2013-01-15 08:37:58', '2018-01-08 20:50:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Vilma', 'Mohr', 'xnitzsche@example.com', '019.147.7430x0927', '2017-03-31 03:07:07', '2020-08-08 15:19:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Kacie', 'Berge', 'weston.volkman@example.com', '1-102-314-3169x3504', '2011-09-12 05:56:48', '2013-08-16 16:12:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Kurtis', 'Pfannerstill', 'cristopher.trantow@example.com', '535-097-1845', '2019-03-06 05:51:16', '2012-08-28 23:25:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Cortez', 'Wiza', 'green.elvis@example.org', '+25(9)2226493054', '2017-11-03 18:32:16', '2018-05-03 20:35:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Shana', 'Dach', 'reed90@example.net', '168.254.8771', '2014-10-30 02:23:15', '2021-04-05 01:57:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Lurline', 'Medhurst', 'eino29@example.net', '781-686-0035x1320', '2020-02-27 07:32:02', '2015-01-10 10:49:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Amya', 'DuBuque', 'eo\'reilly@example.com', '1-437-636-5922', '2016-03-18 05:19:41', '2019-08-16 14:09:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Maximus', 'DuBuque', 'kelvin95@example.org', '1-321-574-4815x1851', '2014-09-02 06:09:23', '2012-05-05 21:56:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Zita', 'Bruen', 'ezequiel59@example.net', '334.438.9420', '2013-04-08 14:45:07', '2018-01-09 05:43:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Nikko', 'Schamberger', 'xmcdermott@example.net', '523-568-5493x415', '2011-11-21 10:21:25', '2018-07-06 01:36:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Sarai', 'Bernhard', 'mstamm@example.com', '(877)902-4418', '2018-08-14 12:28:58', '2013-01-14 22:30:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Maryse', 'Brakus', 'aschimmel@example.org', '06727095261', '2016-11-25 03:13:26', '2012-07-11 14:04:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Albin', 'Kertzmann', 'valentine.stroman@example.org', '972-678-7670x9095', '2020-06-01 02:59:45', '2017-04-17 07:32:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Maxine', 'Dickens', 'dorothy74@example.org', '1-371-153-7217x8390', '2012-10-10 12:57:58', '2020-05-13 00:10:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Adrianna', 'Kub', 'arvel.fadel@example.org', '+13(8)3514612955', '2013-08-12 14:03:53', '2016-08-29 00:01:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Austyn', 'Kiehn', 'karolann.hansen@example.net', '06668840314', '2011-10-28 12:35:36', '2017-07-15 17:47:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jonathon', 'Grady', 'qbeier@example.org', '796-924-6554', '2013-04-07 19:06:26', '2020-03-27 13:35:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kasey', 'Bechtelar', 'jayne.reinger@example.com', '02330702374', '2018-05-26 09:02:33', '2012-08-02 10:17:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Alessandra', 'Gorczany', 'birdie27@example.org', '475-861-5249x2685', '2012-10-04 17:06:25', '2017-08-12 07:45:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Claudine', 'Turcotte', 'jaden.glover@example.com', '715.783.6743', '2017-07-19 07:43:19', '2019-04-10 21:22:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Skyla', 'Fisher', 'cortez.heathcote@example.net', '(707)677-0960x6435', '2019-11-05 03:09:44', '2017-10-02 03:06:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Immanuel', 'Beatty', 'ewuckert@example.com', '517-986-2106x245', '2015-04-19 22:39:35', '2018-06-30 15:30:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Kathleen', 'Smith', 'alebsack@example.com', '06806924936', '2015-11-22 21:46:38', '2013-05-25 11:44:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Concepcion', 'Bernhard', 'igoodwin@example.com', '1-716-356-9631x954', '2012-06-01 16:15:57', '2011-05-27 07:29:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Jaunita', 'Senger', 'grant.giovani@example.net', '862-615-3997x876', '2020-12-26 20:01:54', '2011-12-26 02:10:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Corene', 'Kovacek', 'wolff.leif@example.net', '1-533-617-5499x82529', '2019-03-01 19:27:38', '2012-05-22 19:16:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Irma', 'Hartmann', 'yleannon@example.com', '874.391.8101', '2014-11-22 22:38:25', '2016-06-01 21:13:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Hazle', 'Olson', 'barrows.adriel@example.org', '(875)421-2301', '2014-07-01 21:22:07', '2021-04-09 15:34:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Gabrielle', 'Leannon', 'estevan28@example.com', '150.442.1387', '2017-09-23 14:21:15', '2018-09-21 15:44:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Elta', 'Cassin', 'friesen.esmeralda@example.com', '478.036.4265', '2017-05-23 02:06:35', '2016-02-23 06:21:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Raymundo', 'Stehr', 'morar.ernestine@example.net', '(687)816-7747', '2015-07-06 21:22:25', '2017-02-26 10:41:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Derek', 'Huels', 'alf10@example.net', '162.485.8982x57370', '2020-10-11 22:49:25', '2019-07-24 09:12:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Reyna', 'Rau', 'adrian.pagac@example.net', '492.172.4672', '2018-08-14 23:09:45', '2013-06-16 19:51:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Ferne', 'Feest', 'triston.kreiger@example.org', '(102)340-8052x10726', '2020-09-28 13:51:27', '2012-02-02 09:19:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Armani', 'Turner', 'emmet.metz@example.com', '856-561-4298x6229', '2017-05-31 18:21:37', '2017-09-08 14:28:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Morgan', 'McCullough', 'wcorkery@example.org', '331.259.3138x21699', '2017-03-21 20:55:40', '2018-11-26 02:52:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Alisha', 'Rogahn', 'lockman.leann@example.org', '623-887-5541x20839', '2015-01-30 16:44:28', '2011-07-11 18:04:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Demetrius', 'Windler', 'orrin01@example.net', '+66(3)0521529745', '2012-09-23 09:11:23', '2011-09-08 13:14:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Stefan', 'Zulauf', 'turcotte.luella@example.com', '1-657-164-5771', '2021-02-05 05:40:38', '2013-09-04 22:28:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Kole', 'Wolf', 'karley.mraz@example.net', '916-685-6188x1472', '2015-07-02 11:55:48', '2016-01-23 17:16:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Kelsi', 'Moore', 'effie.hayes@example.com', '(876)791-5178x1115', '2020-09-10 22:22:56', '2016-06-09 21:56:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Camryn', 'Davis', 'erin00@example.net', '(517)918-6750', '2014-12-20 11:34:53', '2011-12-14 14:12:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Cruz', 'Yost', 'dietrich.ilene@example.org', '06837439918', '2012-12-22 03:13:21', '2012-03-22 14:18:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Shaina', 'Effertz', 'mariam.koss@example.com', '(084)970-6211x369', '2012-12-24 18:41:55', '2017-05-11 06:43:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Wilfrid', 'Nader', 'camilla40@example.net', '(420)675-8039x2920', '2015-11-21 15:30:50', '2013-10-11 05:27:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Gerardo', 'Grant', 'kayley.ortiz@example.org', '529-322-2291x91238', '2017-10-20 21:52:44', '2012-01-04 01:07:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Edyth', 'Erdman', 'tdonnelly@example.com', '09148383707', '2011-12-16 03:24:06', '2014-06-11 18:12:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Destany', 'Wiegand', 'tromp.joel@example.org', '632-199-8446', '2015-05-04 17:13:55', '2018-05-17 10:26:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Juliet', 'Mosciski', 'haven.fadel@example.com', '690-825-5360x4131', '2019-10-28 14:25:24', '2019-02-23 15:06:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Leanne', 'Murphy', 'ford.langworth@example.com', '1-736-581-3641x8796', '2014-07-12 23:33:38', '2012-11-16 08:20:15');


