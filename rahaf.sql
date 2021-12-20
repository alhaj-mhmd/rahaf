-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 01:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Miss Zoila Farrell', 6, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(2, 'Nicholaus Hodkiewicz', 5, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(3, 'Daisy Macejkovic', 8, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(4, 'Katharina Dickens', 1, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(5, 'Miss Yasmine Hayes', 3, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(6, 'Urban Conroy', 4, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(7, 'Isabell Gaylord', 8, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(8, 'Brendon Jacobson', 8, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(9, 'Santa Reynolds', 10, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(10, 'Sean Beer', 6, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(11, 'Kianna Lowe V', 10, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(12, 'Nayeli Simonis', 10, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(13, 'Victor Feeney Sr.', 8, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(14, 'Rae Lehner', 7, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(15, 'Hettie Murray', 3, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(16, 'Miss Golda Morar', 5, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(17, 'Prof. Ettie Cartwright', 9, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(18, 'Austyn Dibbert', 9, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(19, 'Henri Prosacco', 6, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(20, 'Mallie Schmeler DVM', 5, '2021-12-18 18:56:28', '2021-12-18 18:56:28'),
(21, 'mo', 11, '2021-12-18 20:40:11', '2021-12-18 20:40:11'),
(22, 'mo2', 11, '2021-12-18 20:40:55', '2021-12-18 20:40:55'),
(23, 'dfd', 11, '2021-12-18 20:43:30', '2021-12-18 20:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `email`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Et debitis aut deleniti quo vel. Libero fuga assumenda debitis ut earum. Impedit beatae consectetur sint corrupti voluptates.', 'Hayden Carter', 'aliyah.kulas@mosciski.org', 9, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(2, 'Mollitia maiores voluptatibus magni atque qui rem quia et. Omnis inventore facere natus omnis. Unde aperiam ipsum placeat corporis vel tenetur laudantium. Et eveniet cumque at consequatur.', 'Ms. Ethelyn Barrows', 'tupton@yahoo.com', 10, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(3, 'Et quae autem asperiores rem sit ea velit. Consequatur nihil repellat excepturi similique. Velit et ullam tenetur. Rerum praesentium at doloremque cupiditate voluptas natus.', 'Paxton King', 'considine.enrique@emmerich.net', 3, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(4, 'Ad veritatis quasi odio cumque blanditiis molestiae. Veniam et necessitatibus aspernatur rerum doloribus aut sint. Asperiores ex dolores rerum est nesciunt suscipit.', 'Charles Blanda PhD', 'hirthe.keshaun@gmail.com', 1, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(5, 'At maxime nobis laborum sed quaerat ut doloribus. In modi ipsa rerum assumenda quo culpa. Voluptatibus placeat sint eius amet. Qui mollitia velit ut deserunt soluta maxime esse.', 'Miss Kaylin Pouros DDS', 'sporer.johnnie@king.biz', 10, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(6, 'Illum ex harum pariatur eius est qui. Voluptatibus odit eos delectus beatae voluptatum et fugiat. Autem possimus beatae pariatur voluptates itaque impedit voluptatem.', 'Jarod Predovic', 'bernie76@kozey.info', 13, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(7, 'A officia dolores id et. Rerum esse sit officiis porro. Eos esse qui accusamus ut. Animi inventore ea sapiente facilis consequatur et non.', 'Price Carroll', 'boyle.hershel@hotmail.com', 3, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(8, 'Est sint quibusdam et delectus voluptates. Rerum optio delectus veniam laborum aut consequatur illum. Quisquam labore totam cum minus. Laudantium maxime dignissimos itaque eveniet.', 'Robyn Leannon', 'auer.veda@satterfield.org', 20, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(9, 'Officia occaecati et neque neque ex aut. Ut ullam recusandae odit quo mollitia. Eaque et assumenda atque debitis. Quisquam culpa minima alias aliquid autem sapiente qui.', 'Josianne Sauer', 'golson@wyman.com', 20, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(10, 'Facere hic et eum ea. Explicabo tempore voluptatem id voluptas minima incidunt. Repudiandae quis ex placeat inventore ipsa est enim officia. Sint possimus provident et ut.', 'Gabe Hettinger', 'anya.armstrong@aufderhar.com', 14, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(11, 'Repellendus quod ut illo qui fugit. Non quia qui sunt consequatur eligendi. Sint temporibus provident eum quo explicabo. Voluptates quas est nostrum nulla iure.', 'Elvera Homenick', 'tad.watsica@grimes.com', 20, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(12, 'Nulla et magni ipsa molestiae quos. Nihil cum in a voluptas quia velit ut. Harum cum quos dolores voluptatem eos est praesentium. Odit consectetur amet amet veritatis consequuntur et non.', 'Dakota Keeling', 'finn.kovacek@sipes.com', 15, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(13, 'Repellat quae sunt blanditiis accusantium mollitia ut eaque. Et consequatur enim sequi. Voluptas provident esse quasi enim. Ab non est ipsum corrupti laudantium inventore sequi praesentium.', 'Keshaun Rolfson II', 'marcellus01@schinner.com', 3, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(14, 'Eum est optio eaque esse. Voluptas voluptate neque dolorem provident accusantium vel. Eius et vero sint quia voluptatem alias distinctio ea. Veritatis nisi saepe sit qui.', 'Arvilla Fadel', 'morissette.furman@wuckert.com', 18, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(15, 'Velit sit nulla ipsa molestiae. Non fuga modi rerum cumque rem sit autem. Unde culpa qui est qui.', 'Orion Kreiger', 'alejandrin.keeling@moore.com', 19, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(16, 'Fugit sit ea occaecati dolor. Est qui molestiae distinctio assumenda soluta unde. Sit ut perspiciatis doloremque ea.', 'Prof. Michele Volkman', 'upton.jazmyne@pfannerstill.com', 9, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(17, 'Esse voluptatibus adipisci distinctio. Modi earum cum aliquid dolorum non tempore quos. Itaque maxime voluptas soluta temporibus reiciendis hic. Ab iure assumenda aut vel nisi soluta esse iure.', 'Morris Altenwerth', 'marks.jevon@hotmail.com', 8, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(18, 'Minima alias recusandae est consequuntur. Molestiae ad facere aut repellendus. Itaque voluptatum quia laborum quibusdam velit similique dolorum.', 'Ms. Rossie Sawayn', 'barney63@bernhard.org', 16, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(19, 'Atque nesciunt consequatur odio consequatur. Alias velit qui ipsa voluptatum voluptatem aut. Quia error facilis minima ut alias. Nemo consequatur qui et et vitae quo.', 'Elyse Beier', 'sunny39@toy.com', 9, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(20, 'Et vero magnam qui. Voluptatem nisi hic in fugiat. Mollitia laborum cumque est rerum magni. Sunt nam sunt atque dolores voluptas autem.', 'Elmore Rowe', 'salvador.boyle@hotmail.com', 12, '2021-12-18 18:56:49', '2021-12-18 18:56:49'),
(21, 'Et fugiat sunt optio ratione eligendi sunt. Corrupti omnis dolor et autem qui. Exercitationem consectetur sunt similique culpa porro amet. Minima voluptates tempora nobis adipisci.', 'Dr. Arthur Koepp', 'cremin.bridget@gmail.com', 12, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(22, 'Quas error vero a reiciendis eaque cumque. Eveniet error incidunt veniam. Magni modi natus et cum harum quis. Iste qui quaerat sit voluptatibus fugiat itaque.', 'Dr. Verda Mertz MD', 'vlindgren@walsh.com', 19, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(23, 'Inventore eaque nulla error enim. Eum fuga ut vel dolorem earum.', 'Favian Langosh', 'leonora.armstrong@bode.org', 12, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(24, 'Veritatis voluptatum blanditiis ut soluta porro deleniti. Qui libero alias eos et aut eum. Qui natus quasi placeat id.', 'Nyah Effertz', 'vokeefe@hotmail.com', 14, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(25, 'Cum ut nihil laudantium corporis quas perferendis. Cumque minus id commodi qui facilis quisquam qui quod. Doloremque cumque dignissimos eum dicta aliquid non.', 'Travon Yundt DVM', 'bkiehn@weber.com', 11, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(26, 'Vel eveniet harum sed. Sapiente recusandae ad voluptas beatae. Veritatis fugit perspiciatis quis rerum.', 'Prof. Antwon Schimmel III', 'bogisich.pauline@ullrich.net', 18, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(27, 'Nostrum natus est aut nulla. Provident optio sit adipisci. Quidem sed sed rerum.', 'Eulah Hilpert', 'grady.rafaela@considine.org', 1, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(28, 'Beatae reprehenderit saepe rerum eius. Saepe architecto libero ipsum quasi nihil non earum odio. Enim inventore quidem qui inventore autem rem.', 'Mollie Yost I', 'candice51@goyette.com', 12, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(29, 'In dolorem ex suscipit dignissimos. Amet perferendis est architecto et exercitationem. Provident quia reiciendis aperiam aut.', 'Prof. Abbigail Roberts DDS', 'rpouros@stamm.org', 3, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(30, 'Sunt et consequatur quia nesciunt corrupti. Veniam sunt officiis ducimus consequatur qui quibusdam voluptas. Earum aspernatur laborum porro aliquam et architecto est.', 'Mrs. Karlie Kuhic', 'torey.carter@gmail.com', 16, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(31, 'Non amet iste beatae ea modi voluptas. Nihil eos officiis praesentium est at eos quis. Et excepturi recusandae qui pariatur cupiditate ratione aut.', 'Mr. Omer Prosacco II', 'kutch.kathlyn@hotmail.com', 8, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(32, 'Neque vel omnis ut. Eos minima tempora dolorem modi quam.', 'Dr. Osborne Kunde II', 'deangelo.parisian@bode.org', 1, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(33, 'Doloribus quibusdam odit possimus magni velit voluptatibus voluptatem. Facere sed incidunt et vero voluptatibus. Necessitatibus rerum deleniti ea a voluptate provident.', 'Anissa Hettinger', 'fbailey@wuckert.info', 1, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(34, 'Recusandae earum officia ipsa et. Est dolor voluptas vel. Modi perspiciatis necessitatibus at nostrum sit. Ut sapiente soluta asperiores et omnis.', 'Graciela Rau', 'kris.raoul@gmail.com', 7, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(35, 'Placeat sint quam perferendis maxime natus qui. Qui non amet quas omnis repudiandae mollitia sapiente. Quos consequuntur quod repellendus minima tempora ut illum.', 'Lavinia Witting', 'vern.langworth@gmail.com', 5, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(36, 'Qui beatae optio ad aut. Voluptas optio ipsum sapiente totam. Ipsum ex hic aspernatur ab.', 'Rosalia Herman', 'dlynch@bosco.com', 9, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(37, 'Excepturi voluptatem et et inventore iusto voluptatem. Et ut quo minima temporibus et et repudiandae. Provident et sunt fuga dicta distinctio quidem. Qui velit temporibus hic facere saepe quo.', 'Amani Swift', 'friesen.dorcas@mills.com', 13, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(38, 'Illo sint aliquid non dolor quae ab sunt. Laboriosam praesentium est dolorem est quia. Omnis aut nihil corporis animi eligendi. Et deleniti repellendus saepe unde ut sit id.', 'Norval Rempel', 'maxime15@gmail.com', 18, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(39, 'Dolore deserunt debitis est iste quae aliquid esse. Eos et modi sequi magnam qui provident. Magnam non reprehenderit et rerum tempora nisi minus.', 'Miss Carissa Heathcote', 'leonardo59@nader.com', 12, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(40, 'Dolores quia quia dolores quo. Ipsum molestiae et voluptates autem dolorum. Quidem explicabo id ipsam atque recusandae illo esse.', 'Jacinthe Bogisich MD', 'imani.vandervort@gmail.com', 1, '2021-12-18 19:09:25', '2021-12-18 19:09:25'),
(41, 'Sit laboriosam praesentium iste illo illo. Dolorum qui facilis at illum aspernatur quia. Magni magnam sequi laudantium quis est dicta. Odit debitis accusantium autem.', 'Prof. Courtney Howell Jr.', 'duane.barrows@bahringer.com', 8, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(42, 'Non deleniti et quis voluptatem omnis. Autem qui dicta excepturi nisi. Beatae autem id autem voluptatem. Non dolorem odio inventore eum.', 'Dr. Kiarra Dooley', 'leilani.schulist@doyle.org', 13, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(43, 'Voluptatem et ut ut quaerat modi eum. Esse magnam praesentium eligendi assumenda sint vero et. Commodi voluptate natus quae id laborum eveniet ea.', 'Stanton Crist', 'shyanne.grady@turner.biz', 17, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(44, 'Architecto molestias earum numquam atque. Et perferendis laborum excepturi enim. Similique mollitia nihil expedita. Et inventore incidunt numquam exercitationem est vero perspiciatis.', 'Claudia Hessel', 'reece.langworth@hotmail.com', 9, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(45, 'Rerum sed sed aut voluptatum et odio recusandae. Eligendi tempore ut iste quis. Vero est nihil temporibus minima sapiente aut sit.', 'Luciano Klein', 'conner14@yahoo.com', 4, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(46, 'Deleniti aut deleniti et provident ab optio eligendi nobis. Est at quibusdam earum et. Quo voluptas minima nam nisi. Quae enim quisquam ut quidem dolore. Beatae perferendis dolores ad minus.', 'Ms. Leanna Lynch', 'delaney62@osinski.com', 9, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(47, 'Maxime dolorem necessitatibus suscipit doloremque adipisci quasi. Nobis consectetur enim aut sunt voluptas. Possimus quo iste doloremque omnis velit eum.', 'Dr. Jamarcus Goldner PhD', 'lilly24@conroy.com', 8, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(48, 'Et possimus cupiditate aut occaecati reprehenderit. Non numquam qui ut aperiam et. Magnam voluptatem harum qui quis occaecati qui. Blanditiis officiis veniam aut porro aut esse quis.', 'Yasmine Heidenreich', 'candida23@stamm.com', 13, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(49, 'Quibusdam sunt reprehenderit hic. Atque ut non neque blanditiis asperiores porro. Repellendus est esse voluptatem nostrum fuga magnam. Sed sint aut quia.', 'Billie Hill', 'krippin@schmeler.net', 10, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(50, 'Voluptatem rerum soluta laborum tempore vel odit. Aut laborum voluptas eius voluptatem laboriosam ut. Suscipit eum doloribus sed iste et.', 'Nakia Gusikowski', 'verna.mclaughlin@hartmann.com', 19, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(51, 'Saepe enim quis eum soluta consequuntur qui. Saepe ratione rem eligendi ullam quidem. Tempore quidem veniam rerum maiores explicabo.', 'Marcelina Ryan', 'abshire.alek@hotmail.com', 3, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(52, 'Non molestiae dolores cumque qui culpa labore. Qui labore voluptatem et magni eaque officiis. Consectetur omnis dolores et eum eligendi qui.', 'Juanita Bahringer', 'qlockman@yahoo.com', 3, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(53, 'Natus reprehenderit deleniti quia inventore soluta sequi voluptatem. Qui consequuntur dolorem doloremque et. Aut nam in hic aut accusantium praesentium ab.', 'Hollie Abbott I', 'nikolaus.shawna@zemlak.com', 3, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(54, 'Illum ullam in necessitatibus in aliquid. Enim molestiae quaerat repudiandae ut dolorum veritatis maiores. In deleniti debitis dicta delectus est temporibus.', 'Miss Lilyan McGlynn', 'edwina.oreilly@hotmail.com', 1, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(55, 'Ipsum illo tempore aspernatur nostrum. Enim ut voluptas dignissimos itaque nesciunt consequatur aut. Rerum tempora quia aut deleniti laborum saepe animi.', 'Addie Hackett', 'alda33@hotmail.com', 7, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(56, 'Accusamus non consectetur sit pariatur. Enim repudiandae ut velit consequatur nihil. Ducimus quae error sit.', 'Jerome Robel', 'ally.kilback@yahoo.com', 2, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(57, 'Nihil corrupti molestiae quae aut occaecati culpa laborum. Et enim quis quia id quaerat. Voluptas qui quidem sint. Pariatur maxime perferendis et.', 'Matilda Gottlieb', 'shaniya.koelpin@yahoo.com', 19, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(58, 'Ab et non nihil error officia est. Illo dolores qui earum accusantium qui. Quidem culpa nemo sint pariatur officia iste et.', 'Prof. Lorenza Kirlin', 'ronaldo.hilpert@hotmail.com', 14, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(59, 'Totam rem et impedit. Quos ad ut ex atque id molestiae. Minima iusto maiores pariatur quaerat. Ratione et quisquam quis voluptas ut quo.', 'Maximillian Padberg', 'pcormier@powlowski.com', 2, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(60, 'Consequuntur exercitationem fuga et qui libero eligendi accusamus. Dicta neque eaque molestias culpa. Officiis a qui reiciendis rerum numquam quibusdam iusto distinctio. Earum quis dolorum modi.', 'Chesley Larson', 'corwin.alivia@goldner.com', 15, '2021-12-18 19:09:37', '2021-12-18 19:09:37'),
(61, 'kk', 'mo', 'alhaj.mhmd@gmail.com', 1, '2021-12-18 19:34:40', '2021-12-18 19:34:40'),
(62, 'rtert', 'ssdf', 'alhaj.mhmd@gmail.com', 1, '2021-12-18 19:34:54', '2021-12-18 19:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(2, 18, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(3, 10, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(4, 9, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(5, 8, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(6, 13, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(7, 15, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(8, 20, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(9, 16, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(10, 16, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(11, 8, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(12, 13, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(13, 20, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(14, 19, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(15, 13, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(16, 11, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(17, 7, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(18, 7, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(19, 5, '2021-12-18 18:56:39', '2021-12-18 18:56:39'),
(20, 12, '2021-12-18 18:56:39', '2021-12-18 18:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_17_064944_create_categories_table', 1),
(6, '2021_12_18_032249_create_products_table', 1),
(7, '2021_12_18_032304_create_comments_table', 1),
(8, '2021_12_18_032315_create_likes_table', 1),
(9, '2021_12_18_035557_create_shops_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price1` int(11) NOT NULL,
  `price2` int(11) NOT NULL,
  `price3` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `expiry_date`, `phone`, `quantity`, `views`, `description`, `price1`, `price2`, `price3`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Lauren Harris', NULL, '2023-07-06', NULL, 1, 50, 'Quo ut illum consequatur facilis quis dolor voluptas sed. Quasi velit voluptas et corrupti eos. Cupiditate sunt qui non veniam molestias pariatur provident.', 3, 2, 0, 18, 8, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(2, 'Reed Hyatt', NULL, '2023-06-27', NULL, 4, 8, 'Et nostrum qui sunt temporibus quia omnis. Sit hic voluptatem consequatur recusandae doloremque. Aut nisi adipisci nesciunt cum ut dolor rerum. Et aut et reprehenderit et.', 9, 4, 2, 8, 3, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(3, 'Rahul Kub', NULL, '2022-12-30', NULL, 3, 9, 'Dolore iusto quisquam minus voluptatum nulla. Totam et qui provident odit consequatur perspiciatis qui perspiciatis. Ut odio accusamus beatae similique.', 6, 8, 9, 6, 8, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(4, 'Madonna O\'Hara', NULL, '2023-03-21', NULL, 6, 6, 'Magni harum accusamus aut occaecati et possimus. Et nam odio sed accusamus. Est reprehenderit fugiat ipsa. Voluptatem voluptas id animi delectus. Enim omnis nobis quod rerum placeat tempore vitae.', 4, 4, 4, 19, 10, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(5, 'Miss Kylie Monahan V', NULL, '2021-12-24', NULL, 8, 11, 'Sed nihil ipsam eos eos aut voluptatum alias. Voluptas laudantium minima saepe praesentium facere. Ex blanditiis ducimus magni distinctio ea optio.', 7, 4, 6, 15, 8, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(6, 'Dr. Rebecca Casper', NULL, '2023-01-26', NULL, 1, 6, 'Non dolore magnam quasi est dolores voluptatem. Provident ratione totam recusandae sed aspernatur consequatur voluptatem eos. Vel quod eos quisquam ipsum non ea.', 6, 9, 8, 7, 1, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(7, 'Roberta Fritsch III', NULL, '2022-05-08', NULL, 8, 9, 'Cupiditate dolorem voluptatem est laborum inventore delectus sint odio. Veritatis ut voluptas omnis tempore aut est deserunt. Consequatur fuga velit molestias rem asperiores fugit ratione.', 9, 0, 4, 6, 1, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(8, 'Jan Lowe', NULL, '2023-02-17', NULL, 6, 1, 'Voluptatum id et et consequuntur a earum hic deleniti. Explicabo autem voluptas aliquam sapiente dolorem pariatur. Quia dolorem assumenda non ad.', 6, 7, 0, 13, 7, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(9, 'Dr. Darrion Ziemann DDS', NULL, '2022-07-29', NULL, 8, 7, 'Dolores adipisci magnam sit quaerat. Corporis commodi autem omnis vel sed nihil vitae. Cumque nihil reiciendis dolorem beatae amet.', 6, 9, 3, 11, 6, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(10, 'Emely Sporer', NULL, '2023-01-21', NULL, 3, 5, 'Illo natus voluptates facere vel. Placeat odit in reiciendis corrupti hic autem. Facilis non consectetur rem vero velit. Asperiores unde voluptates maiores iusto vero accusamus.', 5, 6, 1, 10, 5, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(11, 'Darwin Schneider', NULL, '2023-12-12', NULL, 2, 5, 'Deserunt nam ex dolorum enim est at. Ea nisi autem minus non ut consequatur quo. Non quo placeat omnis et doloremque.', 5, 4, 3, 7, 5, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(12, 'Raphael Nikolaus', NULL, '2023-09-17', NULL, 2, 3, 'Doloremque ipsum iure voluptates et. Eligendi ex quo natus quidem. Non eveniet a quo rerum modi voluptatibus cupiditate. Voluptatem similique nostrum error temporibus quos quia a corporis.', 0, 4, 4, 10, 2, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(13, 'Isaac Batz', NULL, '2022-08-01', NULL, 0, 2, 'Voluptate ut quam incidunt sed qui temporibus sit. Nihil ullam alias consectetur odio illum ducimus. Maiores et sed dolor voluptates iusto voluptates.', 2, 5, 3, 11, 2, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(14, 'Erna Ondricka', NULL, '2023-01-27', NULL, 5, 1, 'Deserunt sunt doloremque ipsum labore. Voluptatem dolore nisi illum quasi. Quia doloremque et molestiae maiores quo id ut. Voluptatibus veritatis dolorem dolor impedit qui voluptate facilis id.', 0, 7, 4, 20, 4, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(15, 'Emmitt Reynolds V', NULL, '2022-10-22', NULL, 6, 0, 'Aspernatur aperiam eaque excepturi eligendi ut. Alias sed natus tempore expedita iure. Qui odit necessitatibus temporibus. Ipsam iste alias fuga voluptatem illum nemo.', 6, 3, 0, 19, 8, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(16, 'Carroll Crooks', NULL, '2022-10-10', NULL, 6, 0, 'Corporis ab culpa possimus ut pariatur distinctio quia. Dolorum recusandae fuga voluptatum sed molestiae voluptatem sunt enim. Dolorem est magni unde voluptatem.', 3, 8, 9, 3, 6, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(17, 'Derick Abbott', NULL, '2023-11-12', NULL, 8, 11, 'Voluptatem et ullam doloribus dolorem. Illo consequuntur nostrum cupiditate. Amet occaecati saepe consequatur aut voluptatem reprehenderit dolor.', 4, 4, 8, 19, 4, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(18, 'Dandre McDermott', NULL, '2022-10-31', NULL, 1, 1, 'Omnis iusto tempore non consequuntur. Deleniti in quisquam natus eos reiciendis facilis blanditiis. Esse sint ratione nesciunt sit.', 3, 0, 1, 12, 10, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(19, 'Lavonne Upton', NULL, '2022-11-05', NULL, 0, 0, 'Et expedita totam rerum eum tempore non qui. Eum itaque occaecati doloremque itaque. Iste id ut voluptatem rerum fugiat quia est.', 6, 9, 5, 6, 6, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(20, 'Rodolfo Jakubowski DVM', NULL, '2023-10-08', NULL, 2, 0, 'Asperiores hic vel et nam. Explicabo quibusdam fugiat impedit. Aspernatur rerum esse tenetur molestias.', 8, 2, 9, 15, 7, '2021-12-18 18:56:34', '2021-12-18 18:56:34'),
(26, '11', 'download.png', '2021-12-10', 111, 11, NULL, '111', 11, 11, 11, 22, 11, '2021-12-18 21:56:48', '2021-12-19 16:25:24'),
(27, 'dfd', 'download.png', '2021-12-10', 14134134, 44, NULL, 'adfa', 44, 44, 44, 21, 11, '2021-12-18 21:57:26', '2021-12-18 21:57:26'),
(28, 'dfd', 'download.png', '2021-12-10', 14134134, 44, NULL, 'adfa', 44, 44, 44, 21, 11, '2021-12-18 21:57:29', '2021-12-18 21:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Micaela Monahan', 'jacobs.polly@example.net', '2021-12-18 18:56:21', '$2y$10$RtGcMA55hPYGq8axM9.oU.NLlOm7rYlfVgH2I335TsGeze2LNneIe', 'DG64cgFo7P', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(2, 'Laury Graham', 'max.mann@example.org', '2021-12-18 18:56:21', '$2y$10$L4YWKSFuxSJBSyDKdmpnqeRF9Zqw4V2fMbQxzaZrr9YIMEa6eHaom', 'lErmCNQr5F', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(3, 'Kimberly Yundt', 'heidi.schumm@example.org', '2021-12-18 18:56:21', '$2y$10$eD9Pdq1U77yzNQ5kmCRUAOu./Cm3fqyzQu7bmkr4HC0OO6dS8iXIa', 'PblzkcDLa8', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(4, 'Prof. Jakayla Lehner III', 'powlowski.moriah@example.org', '2021-12-18 18:56:21', '$2y$10$DICfG9zc0SernPxnpAeamupqR1WObYf3q.TUc81G3XvgKmaoQMENW', '2rnliltsKS', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(5, 'Mrs. Otilia Kiehn Jr.', 'bogisich.paxton@example.net', '2021-12-18 18:56:22', '$2y$10$IlfPNS906dpGAiY4z6Ct..iq71sabtWQRHzQGmnSCW8NluLSjaMrC', 'dldZKYmby5', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(6, 'Dr. Emerald Wilderman', 'mateo35@example.com', '2021-12-18 18:56:22', '$2y$10$HzHfb2qsJ50sGY2rhxlbperdKABlTx3HWf6HSDijvEg4RaBFLoNPK', 'NX7L0aibrR', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(7, 'Alvena Kihn', 'froob@example.net', '2021-12-18 18:56:22', '$2y$10$hgVmS393H4QHV.Iw56DWluXQgJcgLsL.XcuOpgogUDk.dtt9Uyhda', 'A4MO58HZvG', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(8, 'Bartholome Greenfelder II', 'coby54@example.org', '2021-12-18 18:56:22', '$2y$10$OUMJwyLv6H8uSy2QdBkWauendc97qxQMU/TuYUMdSEWZp9gZn3nTW', 'a9TL2RQ5YC', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(9, 'William McGlynn', 'dlangosh@example.com', '2021-12-18 18:56:22', '$2y$10$bz9.8YTPfNFvHuWMh3QJhen1BlWkllONqGABV.yviigz/ua/xa21S', 'g3J7VyWNqu', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(10, 'Santiago Volkman', 'fritz.hudson@example.com', '2021-12-18 18:56:22', '$2y$10$qiwjsg6mqtYUY9Aw6r5yjeXkmTI0uXvezWZBqoN0YLyFY94Sp0LYu', '9OFP7qGvKD', '2021-12-18 18:56:22', '2021-12-18 18:56:22'),
(11, 'mo', 'alhaj.mhmd@gmail.com', NULL, '$2y$10$2OUG8t6.xV43cpxLex8it.QxDwC./ZF3vkCczlaNFJakdCnh/dWK6', NULL, '2021-12-18 19:53:08', '2021-12-18 19:53:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
