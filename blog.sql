/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-01-24 16:43:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$uHnNGoPeRaCNobKcfmkrdOiPFX2buqictNYoFAInfI6dxkGyu5vYS', 'Administrator', null, '2017-01-04 07:08:07', '2017-01-04 07:08:07');

-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章标题',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片地址',
  `view` int(10) NOT NULL DEFAULT '100' COMMENT '浏览次数',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '文章排序',
  `is_original` tinyint(1) NOT NULL DEFAULT '0',
  `is_top` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_show` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否发布',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`slug`),
  UNIQUE KEY `slug` (`slug`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Voluptate dolor eum dicta.', 'voluptate', '1', 'image/16cd687877e3d20c8a9f4bb729fcecc7.png', '267', '1', '1', '1', '1', 'Quibusdam doloribus ea tenetur quia praesentium sunt eos. Et et error est omnis quia provident.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('2', 'Ipsam deleniti architecto harum suscipit dolorem velit est blanditiis beatae.', 'ipsam', '1', 'http://lorempixel.com/182/182/?83080', '267', '0', '0', '1', '1', 'Dignissimos officiis est recusandae rerum maiores molestiae minus. Optio necessitatibus reprehenderit occaecati qui. Libero iure recusandae sunt est eum. Facilis repellendus qui dignissimos dolor. Eum qui dolores doloribus aliquid.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('3', 'Adipisci sint excepturi ipsam inventore dignissimos voluptate est sit facere qui.', 'adipisci-', '1', 'http://lorempixel.com/182/182/?52888', '267', '0', '0', '0', '0', 'Qui quam nihil dolor odit. Ipsa dicta unde et nulla aliquam. Eos quaerat sapiente et consequatur velit et magnam. Doloremque ut consequatur similique et enim esse suscipit.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('4', 'Laborum eum occaecati ut maxime dolorem iusto et ab fugit omnis.', 'laborum-eum-occaecati-ut-maxime-dolorem-iusto-et-ab-fugit-omnis', '1', 'image/16cd687877e3d20c8a9f4bb729fcecc7.png', '267', '0', '0', '0', '1', 'Quia est veritatis id adipisci odio aut. In et quae et hic voluptas sit et et. Quod quisquam deleniti vel. Rerum velit omnis nesciunt quod non cupiditate quis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('5', 'Quia molestias neque optio.', 'quia-molestias-neque-optio', '1', 'http://lorempixel.com/182/182/?97326', '267', '0', '0', '0', '1', 'Laudantium optio vitae iusto sint. Consequatur amet aliquam laudantium officiis voluptatem voluptas ipsam mollitia. Quidem aliquid nemo harum quia deserunt est.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('6', 'Ducimus consectetur eveniet iure ullam accusantium esse sit voluptate.', 'ducimus-consectetur-eveniet-iure-ullam-accusantium-esse-sit-voluptate', '1', 'http://lorempixel.com/182/182/?22568', '267', '0', '0', '0', '1', 'Voluptatem odio nostrum sunt asperiores rerum eum. Ad doloremque repellendus ut ut. Quisquam dolores commodi alias repellat cum pariatur ratione. Sunt doloremque laboriosam consequatur sint dolores repellendus.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('7', 'Nobis quam quaerat.', 'nobis-quam-quaerat', '1', 'http://lorempixel.com/182/182/?79965', '267', '0', '0', '0', '1', 'Laboriosam non blanditiis quos quis. Voluptatum harum mollitia ipsa iusto. Vitae cum qui sit qui ratione.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('8', 'Eos est adipisci sit qui et.', 'eos-est-adipisci-sit-qui-et', '1', 'http://lorempixel.com/182/182/?80044', '267', '0', '0', '0', '1', 'Debitis assumenda odio mollitia atque aliquam explicabo numquam. Eius sed magnam sed omnis sit alias sint. Consequatur dolorum ut et illo harum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('9', 'Est accusamus dolores laboriosam similique harum eaque iusto consequuntur eligendi impedit.', 'est-accusamus-dolores-laboriosam-similique-harum-eaque-iusto-consequuntur-eligendi-impedit', '1', 'http://lorempixel.com/182/182/?73384', '267', '0', '0', '0', '1', 'Quia velit laudantium molestiae id nisi veritatis ullam. Omnis voluptatem beatae iure. Rerum labore delectus iste in pariatur ut qui.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('10', 'Et ut eveniet eligendi dolorem facilis vitae.', 'et-ut-eveniet-eligendi-dolorem-facilis-vitae', '1', 'http://lorempixel.com/182/182/?27351', '267', '0', '0', '0', '1', 'Explicabo temporibus odit placeat et laudantium consequatur minima. Aperiam omnis porro commodi non eaque eaque. Quidem unde ex ea et minima.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('11', 'Nostrum exercitationem natus molestiae quos.', 'nostrum-exercitationem-natus-molestiae-quos', '1', 'http://lorempixel.com/182/182/?13128', '267', '0', '0', '0', '1', 'Repellendus repellendus voluptatem itaque nobis eveniet sapiente sed. Et in nam exercitationem labore eos. Aut et in nemo deleniti. Alias non aliquid eos. Et tenetur dolor dolorem ducimus est quisquam.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('12', 'Aliquid a quis et et voluptatem laudantium architecto rem nostrum aut ab distinctio.', 'aliquid-a-quis-et-et-voluptatem-laudantium-architecto-rem-nostrum-aut-ab-distinctio', '1', 'http://lorempixel.com/182/182/?29109', '267', '0', '0', '0', '1', 'Ut ut consequatur qui minus velit eius. Dolores ut laudantium tempora molestiae veniam sequi. Id saepe fugiat unde.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('13', 'Voluptates est cupiditate dolorem culpa quo molestias.', 'voluptates-est-cupiditate-dolorem-culpa-quo-molestias', '1', 'http://lorempixel.com/182/182/?77309', '267', '0', '0', '0', '1', 'Ipsam voluptates quia rerum at. Eaque ad impedit provident et et amet. Sed dolorum sed hic corporis id at. Est aut nisi veritatis doloribus perspiciatis rerum dolores.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('14', 'Quia consequatur voluptatem ut ipsum aliquid quos.', 'quia-consequatur-voluptatem-ut-ipsum-aliquid-quos', '1', 'http://lorempixel.com/182/182/?16205', '267', '0', '0', '0', '1', 'Voluptas rerum nihil quibusdam aspernatur consequatur qui. Rerum debitis rerum laudantium est minima provident dolorum. Eos rem dignissimos voluptatem nulla nam. Dolorem quo omnis nam voluptatem est vel commodi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('15', 'Ut modi iure amet id qui consequatur omnis dolore.', 'ut-modi-iure-amet-id-qui-consequatur-omnis-dolore', '1', 'http://lorempixel.com/182/182/?72901', '267', '0', '0', '0', '1', 'Est voluptatem dolores ratione perferendis nobis ipsa. Non velit harum laboriosam commodi id et. Non temporibus quae molestias reprehenderit nisi. Consequatur ipsam impedit ipsam ut.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('16', 'Itaque perspiciatis eos hic quia rerum iure in nisi.', 'itaque-perspiciatis-eos-hic-quia-rerum-iure-in-nisi', '1', 'http://lorempixel.com/182/182/?62727', '267', '0', '0', '0', '0', 'Quod et eum natus tempore omnis cumque. Porro iste consequuntur asperiores similique corrupti eius. Reprehenderit adipisci a est perspiciatis ut voluptas vel.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('17', 'Enim expedita qui.', 'enim-expedita-qui', '1', 'http://lorempixel.com/182/182/?18537', '267', '0', '0', '0', '0', 'Animi aperiam dolore aut sed aliquid. Doloribus est voluptatem quis earum nemo eligendi voluptatibus reiciendis. Nam tenetur dolorem esse rem qui voluptatum voluptas. Expedita iure ut minima excepturi qui.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('18', 'Ea inventore fugit corporis laudantium ipsa excepturi eveniet sit maiores iste cupiditate.', 'ea-inventore-fugit-corporis-laudantium-ipsa-excepturi-eveniet-sit-maiores-iste-cupiditate', '1', 'http://lorempixel.com/182/182/?31131', '267', '0', '0', '0', '0', 'Iusto nobis ut quis aspernatur esse. Optio unde sequi atque et sint reiciendis aut. Animi qui et et dolores qui et sed. Tempora explicabo deleniti exercitationem harum et ut. Blanditiis sint accusantium ex laboriosam suscipit aut fugiat.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('19', 'Tenetur amet iusto labore dicta necessitatibus ratione quo ipsa.', 'tenetur-amet-iusto-labore-dicta-necessitatibus-ratione-quo-ipsa', '1', 'http://lorempixel.com/182/182/?94815', '267', '0', '0', '0', '0', 'Animi aut magnam id id autem. Incidunt qui sit quaerat ratione. Mollitia neque quam voluptas assumenda culpa deserunt.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('20', 'Qui est doloremque sunt sunt aperiam voluptas mollitia.', 'qui-est-doloremque-sunt-sunt-aperiam-voluptas-mollitia', '1', 'http://lorempixel.com/182/182/?26447', '267', '0', '0', '0', '0', 'Est et et dolorum recusandae. Reiciendis et dolores a recusandae assumenda.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('21', 'Omnis ratione et qui dignissimos aspernatur voluptatem architecto quam sunt.', 'omnis-ratione-et-qui-dignissimos-aspernatur-voluptatem-architecto-quam-sunt', '1', 'http://lorempixel.com/182/182/?22034', '267', '0', '0', '0', '0', 'Consectetur aliquid inventore sit voluptate laborum iste. Eum necessitatibus sed reiciendis voluptas eum. Eum tenetur soluta voluptatem recusandae qui voluptatum. Est iure quia ipsum quis in fuga labore.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('22', 'Impedit eos qui architecto vero delectus placeat qui.', 'impedit-eos-qui-architecto-vero-delectus-placeat-qui', '1', 'http://lorempixel.com/182/182/?54478', '267', '0', '0', '0', '0', 'Quaerat mollitia et nobis perferendis est expedita nostrum consequatur. Aspernatur aut qui quis excepturi in. Quidem aperiam vel accusantium odio eum et.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('23', 'Et maxime molestiae at magnam delectus.', 'et-maxime-molestiae-at-magnam-delectus', '1', 'http://lorempixel.com/182/182/?68558', '267', '0', '0', '0', '0', 'Ipsam ratione consequuntur sit sed. Dolores sit maiores quia debitis doloremque culpa. Nemo animi autem quis tenetur similique aut aut.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('24', 'Odit et ratione perferendis voluptate tempore vitae.', 'odit-et-ratione-perferendis-voluptate-tempore-vitae', '1', 'http://lorempixel.com/182/182/?83508', '267', '0', '0', '0', '0', 'Quaerat id iure blanditiis ex. Maiores similique quia qui et qui consequatur. Molestiae qui quia doloribus eos.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('25', 'Doloremque nihil vero quod est molestiae harum.', 'doloremque-nihil-vero-quod-est-molestiae-harum', '1', 'http://lorempixel.com/182/182/?66117', '267', '0', '0', '0', '0', 'Asperiores velit unde nam libero. Aut nihil officiis qui veniam qui ab. Maiores tenetur voluptatem recusandae quo fuga quas.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('26', 'Autem vero nihil maiores tenetur.', 'autem-vero-nihil-maiores-tenetur', '1', 'http://lorempixel.com/182/182/?34959', '267', '0', '0', '0', '0', 'Quo facere vitae ut. Fugiat quas perspiciatis a esse. Inventore voluptas quisquam itaque ut sit aut est.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('27', 'Rem reprehenderit laboriosam dolorem facilis qui voluptatibus.', 'rem-reprehenderit-laboriosam-dolorem-facilis-qui-voluptatibus', '1', 'http://lorempixel.com/182/182/?61133', '267', '0', '0', '0', '0', 'Ea error incidunt modi non maiores earum voluptas. Repellendus eius vitae deleniti dolores eaque voluptas. Magnam dolorem nemo id dolorem velit est sunt.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('28', 'Neque aut quisquam.', 'neque-aut-quisquam', '1', 'http://lorempixel.com/182/182/?41906', '267', '0', '0', '0', '0', 'Aut possimus cupiditate qui molestiae necessitatibus enim. Harum nesciunt aut magnam tenetur. Ipsa officia iusto sint corporis vel voluptatibus. Ipsa expedita et cum illum velit inventore dolore maxime.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('29', 'Corporis est laudantium nulla.', 'corporis-est-laudantium-nulla', '1', 'http://lorempixel.com/182/182/?11006', '267', '0', '0', '0', '0', 'Ut et ea corrupti molestiae et voluptatem. Ut inventore dolor exercitationem in. Architecto illo ut porro cum. Delectus nihil et autem unde iure voluptatem voluptas.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('30', 'Iste minima accusamus praesentium.', 'iste-minima-accusamus-praesentium', '1', 'http://lorempixel.com/182/182/?99893', '267', '0', '0', '0', '0', 'Maxime error veritatis architecto molestiae sunt quam. Quas nostrum qui reprehenderit temporibus. Mollitia cum dolorem ut qui.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('31', 'Ea veritatis omnis dolorem aut et.', 'ea-veritatis-omnis-dolorem-aut-et', '1', 'http://lorempixel.com/182/182/?42256', '267', '0', '0', '0', '0', 'A sunt aut eos inventore et facilis ut similique. Cumque nisi laborum harum a et ullam voluptas. Temporibus dolorem dignissimos sit vitae accusantium perspiciatis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('32', 'Ut perferendis officiis vel cupiditate iusto atque enim.', 'ut-perferendis-officiis-vel-cupiditate-iusto-atque-enim', '1', 'http://lorempixel.com/182/182/?88402', '267', '0', '0', '0', '0', 'Qui unde rem eum eos qui esse animi. Quia et dolore nam explicabo dolorem corporis. Vero eum quibusdam nihil ea et.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('33', 'Nostrum officiis doloremque enim non fuga sunt praesentium eaque eum placeat.', 'nostrum-officiis-doloremque-enim-non-fuga-sunt-praesentium-eaque-eum-placeat', '1', 'http://lorempixel.com/182/182/?90112', '267', '0', '0', '0', '0', 'Dolores rerum consequatur id soluta asperiores blanditiis. Unde consectetur rem consequatur exercitationem non vitae dolorem hic. Omnis sed sunt aperiam qui cumque voluptatem et. Et velit repellat voluptas magni deserunt.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('34', 'Sapiente dolores nemo.', 'sapiente-dolores-nemo', '1', 'http://lorempixel.com/182/182/?62565', '267', '0', '0', '0', '0', 'Quia eius nobis autem sint facere qui. Et ipsum esse quia voluptatibus non.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('35', 'Corporis id officiis necessitatibus aut quae.', 'corporis-id-officiis-necessitatibus-aut-quae', '1', 'http://lorempixel.com/182/182/?88057', '267', '0', '0', '0', '0', 'Sed possimus sed fuga officia at. Non repellat voluptas assumenda occaecati. Dolorum repudiandae alias pariatur provident sed nemo.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('36', 'Ut molestiae totam itaque velit maiores.', 'ut-molestiae-totam-itaque-velit-maiores', '1', 'http://lorempixel.com/182/182/?91154', '267', '0', '0', '0', '0', 'Omnis officiis velit neque autem enim consequatur consequatur. Dignissimos non officia nihil cum commodi facilis. Molestias nemo quasi nisi omnis omnis et aut. Quibusdam vel aut earum voluptate ipsum provident asperiores. Sint est veniam deleniti modi quae et dicta.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('37', 'Qui tenetur qui eos.', 'qui-tenetur-qui-eos', '1', 'http://lorempixel.com/182/182/?15665', '267', '0', '0', '0', '0', 'Aliquid cum repellat tempora animi quibusdam repudiandae sit. Numquam provident et nobis voluptas voluptate voluptatem. Velit atque repudiandae ut nihil consequatur vel.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('38', 'A placeat nulla culpa aspernatur assumenda dolore dolore asperiores dicta exercitationem laboriosam.', 'a-placeat-nulla-culpa-aspernatur-assumenda-dolore-dolore-asperiores-dicta-exercitationem-laboriosam', '1', 'http://lorempixel.com/182/182/?64933', '267', '0', '0', '0', '0', 'Rerum sit debitis natus voluptatem repellat. Dolor ipsa enim occaecati. Dolor ut quia voluptatum et.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('39', 'Eum laudantium officia natus.', 'eum-laudantium-officia-natus', '1', 'http://lorempixel.com/182/182/?27753', '267', '0', '0', '0', '0', 'Molestiae suscipit asperiores dolorem dolores libero impedit quod. Quae architecto quisquam accusamus non delectus. Natus ut ducimus rem in. Et asperiores quae nobis molestias vitae.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('40', 'Voluptatem non et voluptatem placeat enim delectus natus odio placeat quia.', 'voluptatem-non-et-voluptatem-placeat-enim-delectus-natus-odio-placeat-quia', '1', 'http://lorempixel.com/182/182/?10811', '267', '0', '0', '0', '0', 'Dolorem tempora dolor quis reiciendis sint. Sequi neque dolores harum ab ex aut quisquam iure. Officiis assumenda repellendus maxime sunt ut.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('41', 'Labore dolores vitae omnis eaque modi qui.', 'labore-dolores-vitae-omnis-eaque-modi-qui', '1', 'http://lorempixel.com/182/182/?52636', '267', '0', '0', '0', '0', 'Illo deleniti voluptas soluta velit eum est. Ut amet aperiam est nihil totam ad.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('42', 'Vel et tempora vero alias.', 'vel-et-tempora-vero-alias', '1', 'http://lorempixel.com/182/182/?76567', '267', '0', '0', '0', '0', 'Nam et sequi accusamus ut laboriosam adipisci non. Debitis dolor ut exercitationem. Ut aut quod sequi aspernatur.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('43', 'Repudiandae quisquam nesciunt corporis est explicabo.', 'repudiandae-quisquam-nesciunt-corporis-est-explicabo', '1', 'http://lorempixel.com/182/182/?35524', '267', '0', '0', '0', '0', 'Ut earum perspiciatis dicta et illo. Sed doloremque voluptas similique sint culpa. Et repellat praesentium adipisci repellendus culpa inventore eum aperiam. Dolorem omnis commodi facilis itaque. Voluptatem dolores suscipit consequatur esse blanditiis quidem eius.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('44', 'Velit nulla nobis illo molestiae distinctio tempore.', 'velit-nulla-nobis-illo-molestiae-distinctio-tempore', '1', 'http://lorempixel.com/182/182/?67042', '267', '0', '0', '0', '0', 'Suscipit ullam a officiis quidem ut consequuntur. Maiores ut sunt sed eos modi. Et voluptatibus quisquam sapiente quisquam vel assumenda minus.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('45', 'Quaerat maxime veniam atque est a.', 'quaerat-maxime-veniam-atque-est-a', '1', 'http://lorempixel.com/182/182/?19557', '267', '0', '0', '0', '0', 'Quibusdam deleniti ratione quisquam fugiat omnis ea nihil. Similique quisquam quo sed tempora porro est qui provident. Corrupti necessitatibus in culpa et deleniti ratione. Voluptas excepturi id delectus modi hic voluptatibus.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('46', 'Fuga doloremque rerum expedita dolore incidunt illum unde sed nesciunt doloremque sed sit quidem.', 'fuga-doloremque-rerum-expedita-dolore-incidunt-illum-unde-sed-nesciunt-doloremque-sed-sit-quidem', '1', 'http://lorempixel.com/182/182/?10504', '267', '0', '0', '0', '0', 'Atque autem voluptatibus reiciendis dolores velit minus. Autem quia quia nulla adipisci perspiciatis. Et maxime natus minima rerum iure dicta. Commodi temporibus ducimus debitis pariatur.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('47', 'Debitis inventore architecto culpa minima numquam assumenda molestias.', 'debitis-inventore-architecto-culpa-minima-numquam-assumenda-molestias', '1', 'http://lorempixel.com/182/182/?94925', '267', '0', '0', '0', '0', 'Ab ut assumenda est. Quasi voluptatibus voluptatibus libero explicabo ipsa non. Tempore quaerat officia autem atque velit possimus consequuntur. Earum cupiditate quas quasi laboriosam non voluptatum iure qui. In unde inventore ab perspiciatis quasi nisi cum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('48', 'Perferendis rem eius eligendi ab aliquid quisquam officia et sunt fugit.', 'perferendis-rem-eius-eligendi-ab-aliquid-quisquam-officia-et-sunt-fugit', '1', 'http://lorempixel.com/182/182/?26252', '267', '0', '0', '0', '0', 'Quibusdam voluptas quidem id non. Reiciendis quia quae at dolor provident facilis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('49', 'Aut fuga nulla.', 'aut-fuga-nulla', '1', 'http://lorempixel.com/182/182/?68886', '267', '0', '0', '0', '0', 'Ut cum iure quam voluptatem quasi et in tenetur. Quibusdam qui et accusamus molestiae quis porro deleniti ipsum. Quidem ipsa corrupti saepe ipsa veniam consequatur.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('50', 'Dolores repellendus porro repellendus ea rerum sit repudiandae et.', 'dolores-repellendus-porro-repellendus-ea-rerum-sit-repudiandae-et', '1', 'http://lorempixel.com/182/182/?54894', '267', '0', '0', '0', '0', 'Consequatur assumenda asperiores sunt doloribus voluptatem. Libero quia non dolor eius ut. Aut vel deleniti quasi ullam suscipit.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('51', 'Totam impedit neque similique sapiente adipisci enim dolorem non recusandae.', 'totam-impedit-neque-similique-sapiente-adipisci-enim-dolorem-non-recusandae', '1', 'http://lorempixel.com/182/182/?24132', '267', '0', '0', '0', '0', 'Hic aut ut deserunt provident deleniti. Ipsum maxime quo voluptates nisi consequuntur voluptas ullam. Et aliquid voluptas voluptatem quasi. Excepturi sint eum voluptatem est quia quam natus.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('52', 'Laudantium asperiores corrupti et dolore ut fuga dolorem distinctio.', 'laudantium-asperiores-corrupti-et-dolore-ut-fuga-dolorem-distinctio', '1', 'http://lorempixel.com/182/182/?87938', '267', '0', '0', '0', '0', 'Fugit amet minima in ea eligendi sed porro dignissimos. Aut sint quia quisquam soluta natus. Voluptatem dolores voluptatem rerum accusantium aut.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('53', 'Non ex laboriosam impedit.', 'non-ex-laboriosam-impedit', '1', 'http://lorempixel.com/182/182/?11105', '267', '0', '0', '0', '0', 'Numquam minima illum voluptatem laborum modi ex. Tempore est sapiente et temporibus sit. Dolor est voluptates voluptatem quo molestias fugit. Veniam dolores mollitia excepturi animi incidunt maiores quia tempora.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('54', 'Voluptatem et et officia quis.', 'voluptatem-et-et-officia-quis', '1', 'http://lorempixel.com/182/182/?94548', '267', '0', '0', '0', '0', 'Aut et nostrum ex quia expedita aliquid quia. Odio reprehenderit dolorem consequuntur labore eos quasi et. Laudantium aliquid porro quibusdam ipsam. Commodi molestias rerum magnam.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('55', 'Commodi et quia tenetur.', 'commodi-et-quia-tenetur', '1', 'http://lorempixel.com/182/182/?21716', '267', '0', '0', '0', '0', 'Excepturi odio aperiam sunt eum expedita et itaque. Velit quos porro earum sequi eveniet culpa totam ut. Tempore voluptas ut assumenda qui quis et sed. Aut nisi quis accusamus suscipit animi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('56', 'Aperiam qui voluptatem qui quidem consectetur totam aliquam.', 'aperiam-qui-voluptatem-qui-quidem-consectetur-totam-aliquam', '1', 'http://lorempixel.com/182/182/?37591', '267', '0', '0', '0', '0', 'Vero nostrum at pariatur autem. Ipsa odit libero quis nobis autem suscipit culpa. Doloremque beatae doloremque consequuntur molestiae non aut. Sunt hic omnis qui sed.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('57', 'Nesciunt esse ut similique inventore nihil facilis facilis minima eveniet.', 'nesciunt-esse-ut-similique-inventore-nihil-facilis-facilis-minima-eveniet', '1', 'http://lorempixel.com/182/182/?32060', '267', '0', '0', '0', '0', 'Ullam repellat sed eos aut eaque sed et. Non sunt consequatur rem aut et. Sint et sed quas atque vel quasi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('58', 'Tenetur libero totam corporis eligendi sunt.', 'tenetur-libero-totam-corporis-eligendi-sunt', '1', 'http://lorempixel.com/182/182/?32082', '267', '0', '0', '0', '0', 'Fugiat quo facere hic doloribus. Illum ut hic aut assumenda autem. Libero placeat corporis magnam eos voluptatibus vel eligendi voluptates. Earum occaecati impedit reiciendis et.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('59', 'Delectus repudiandae voluptatem et enim ut delectus autem.', 'delectus-repudiandae-voluptatem-et-enim-ut-delectus-autem', '1', 'http://lorempixel.com/182/182/?13798', '267', '0', '0', '0', '0', 'Eum velit fugiat asperiores ducimus inventore. Molestias rerum qui ut est laudantium possimus quisquam. Quasi nemo alias et excepturi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('60', 'Vero non quae dolorum vel nihil vero soluta.', 'vero-non-quae-dolorum-vel-nihil-vero-soluta', '1', 'http://lorempixel.com/182/182/?72479', '267', '0', '0', '0', '0', 'Commodi officiis vitae ut aliquam deserunt. Consectetur nihil aut velit. Tenetur repellendus et soluta aliquid ex nulla et. Qui ducimus accusantium ratione minima quisquam.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('61', 'Ex eum quasi voluptatibus facere aliquid assumenda dicta neque.', 'ex-eum-quasi-voluptatibus-facere-aliquid-assumenda-dicta-neque', '1', 'http://lorempixel.com/182/182/?59335', '267', '0', '0', '0', '0', 'Sed occaecati repellat nam omnis ut distinctio nisi. Voluptas ut commodi dicta molestiae. Et ea explicabo illo eum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('62', 'Sequi alias veniam eum similique debitis quis voluptatem voluptatum nihil ad.', 'sequi-alias-veniam-eum-similique-debitis-quis-voluptatem-voluptatum-nihil-ad', '1', 'http://lorempixel.com/182/182/?48386', '267', '0', '0', '0', '0', 'Rerum nobis dolorem dignissimos recusandae sunt. Voluptatem facilis facere repellat quasi quod. Repudiandae deleniti odit ratione adipisci velit cupiditate.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('63', 'Qui quia recusandae excepturi.', 'qui-quia-recusandae-excepturi', '1', 'http://lorempixel.com/182/182/?84363', '267', '2', '0', '1', '1', 'Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.Fugit fuga id laborum facere. Non aspernatur reiciendis similique. Ipsam nam et vel earum in sint molestias.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('64', 'Omnis omnis sit et sunt reprehenderit accusantium.', 'omnis-omnis-sit-et-sunt-reprehenderit-accusantium', '1', 'http://lorempixel.com/182/182/?78811', '267', '0', '0', '0', '0', 'Temporibus minus laboriosam quos hic dignissimos est maiores. Id non enim consequuntur fugiat tempora. Excepturi esse cum quisquam quos accusantium.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('65', 'Quisquam modi ducimus at quis enim et autem consequatur.', 'quisquam-modi-ducimus-at-quis-enim-et-autem-consequatur', '1', 'http://lorempixel.com/182/182/?35285', '267', '0', '0', '0', '0', 'Dolorem sunt hic impedit possimus consequatur ut. Sunt reiciendis provident id dolor. Et quisquam minima voluptatem possimus. Dolorum est at fugiat qui consequatur eum aut cum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('66', 'Enim perspiciatis corrupti est.', 'enim-perspiciatis-corrupti-est', '1', 'http://lorempixel.com/182/182/?18046', '267', '0', '0', '0', '0', 'Assumenda architecto omnis nesciunt et facere harum. Dicta quod nesciunt architecto. Quia error ut et sed. Est corporis aut ea cupiditate ea. Alias distinctio rem et quos.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('67', 'Quo vel necessitatibus ut pariatur hic.', 'quo-vel-necessitatibus-ut-pariatur-hic', '1', 'http://lorempixel.com/182/182/?44913', '267', '0', '0', '0', '0', 'Itaque non laboriosam nam. Quia eligendi provident facilis in veritatis. Qui sit et optio tempora minima et.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('68', 'Pariatur non optio.', 'pariatur-non-optio', '1', 'http://lorempixel.com/182/182/?85401', '267', '0', '0', '0', '0', 'Voluptatem dignissimos voluptatem illo. Eligendi nesciunt debitis architecto sint magni ut eos. Iste cum quibusdam veritatis recusandae voluptatum esse doloremque.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('69', 'Fugiat eos dolores ea.', 'fugiat-eos-dolores-ea', '1', 'http://lorempixel.com/182/182/?91571', '267', '0', '0', '0', '0', 'Quia in nihil quis omnis pariatur ut. Et rerum rem velit similique autem et ut. Tempora enim labore et sit sapiente cum. Eaque laudantium molestiae ad mollitia id officia. Cupiditate deserunt et quisquam.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('70', 'Quae est consequatur.', 'quae-est-consequatur', '1', 'http://lorempixel.com/182/182/?73171', '267', '0', '0', '0', '0', 'Minima in accusantium incidunt perspiciatis harum exercitationem ab. Et in officia sequi hic. Error sint facilis et consequatur libero. Consequatur numquam quasi a consequatur et et libero.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('71', 'Eum ipsam quisquam voluptatem.', 'eum-ipsam-quisquam-voluptatem', '1', 'http://lorempixel.com/182/182/?50034', '267', '0', '0', '0', '0', 'Autem rerum praesentium ut quisquam eum. Ut tempore adipisci tenetur a cum. Atque hic vel molestiae est.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('72', 'Vero iure ipsum voluptate ut est impedit et et.', 'vero-iure-ipsum-voluptate-ut-est-impedit-et-et', '1', 'http://lorempixel.com/182/182/?39340', '267', '0', '0', '0', '0', 'Sunt quia quisquam non doloremque quis sit id mollitia. Ea id vel est ea. Voluptatem magni rerum et assumenda id expedita qui. In ea suscipit quasi fugit temporibus. Esse cupiditate ipsam aut vel est.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('73', 'Nam id ab voluptatem aliquid expedita enim.', 'nam-id-ab-voluptatem-aliquid-expedita-enim', '1', 'http://lorempixel.com/182/182/?79013', '267', '0', '0', '0', '0', 'Quasi doloribus ea eos facilis ab voluptas. Iste fuga maxime et. Sequi omnis laudantium qui excepturi laboriosam quae inventore doloremque. Et ut enim occaecati sit soluta.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('74', 'Facere itaque animi itaque.', 'facere-itaque-animi-itaque', '1', 'http://lorempixel.com/182/182/?82712', '267', '0', '0', '0', '0', 'Ipsam sed aut quis adipisci. At quas excepturi sed perferendis reprehenderit sunt veritatis. Occaecati optio cupiditate itaque in. Quisquam molestiae omnis perferendis est doloremque autem. Non quidem id id.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('75', 'Omnis architecto vel eius libero ullam totam.', 'omnis-architecto-vel-eius-libero-ullam-totam', '1', 'http://lorempixel.com/182/182/?20141', '267', '0', '0', '0', '0', 'Illum molestiae nobis labore ducimus accusamus est. Dolorum rerum vitae aut alias soluta enim molestias. Aperiam veniam reprehenderit rerum consequuntur pariatur. Totam nobis quaerat placeat rem aut debitis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('76', 'Repellat ea fugit possimus sapiente et perferendis odit velit ipsam.', 'repellat-ea-fugit-possimus-sapiente-et-perferendis-odit-velit-ipsam', '1', 'http://lorempixel.com/182/182/?27014', '267', '0', '0', '0', '0', 'Quae nostrum voluptates omnis delectus inventore consequatur et. Eum quae laudantium aliquam. Sapiente cum perferendis sit dolor quia ut.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('77', 'Culpa optio rerum vitae dolores dicta.', 'culpa-optio-rerum-vitae-dolores-dicta', '1', 'http://lorempixel.com/182/182/?26267', '267', '0', '0', '0', '0', 'Itaque est nesciunt sequi recusandae. Distinctio exercitationem omnis repellat ut. Omnis itaque iste eius quisquam laboriosam adipisci soluta.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('78', 'Dolorem provident eligendi rerum accusamus eaque qui et ratione.', 'dolorem-provident-eligendi-rerum-accusamus-eaque-qui-et-ratione', '1', 'http://lorempixel.com/182/182/?17937', '267', '0', '0', '0', '0', 'Doloremque dolores sed est aspernatur dolorum nesciunt molestiae dicta. Voluptatem ex sit voluptas molestiae quia recusandae qui. Vero omnis velit dignissimos officiis dolorum sed ut. Ipsam itaque est beatae sint hic modi error quis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('79', 'Vel ratione et tempora iste et repellat autem illum occaecati hic ut cupiditate minima.', 'vel-ratione-et-tempora-iste-et-repellat-autem-illum-occaecati-hic-ut-cupiditate-minima', '1', 'http://lorempixel.com/182/182/?16432', '267', '0', '0', '0', '0', 'Maxime consequatur rerum non aut. Et quasi nisi cum quae impedit nostrum. Et autem sequi temporibus expedita suscipit atque sed. Ea amet sit laborum. Consectetur fugiat delectus quasi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('80', 'Odit quaerat iusto aut.', 'odit-quaerat-iusto-aut', '1', 'http://lorempixel.com/182/182/?72081', '267', '0', '0', '0', '0', 'Consequatur mollitia aut laboriosam omnis quos. Unde voluptatem cumque sint porro nulla sapiente nulla. Vitae ipsum non error quis aliquid. Numquam repellendus et quos porro et nihil.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('81', 'Sed suscipit sit.', 'sed-suscipit-sit', '1', 'http://lorempixel.com/182/182/?72705', '267', '0', '0', '0', '0', 'Sit pariatur dignissimos velit inventore nisi. Sint fuga deleniti nobis est.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('82', 'Optio laudantium facilis expedita odit officiis voluptas.', 'optio-laudantium-facilis-expedita-odit-officiis-voluptas', '1', 'http://lorempixel.com/182/182/?28172', '267', '0', '0', '0', '0', 'Ratione et qui minima ut et. Dolorem qui aliquam dolore doloribus quod modi consequatur. Nihil et molestias excepturi sit. Ea eaque cumque exercitationem incidunt.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('83', 'Tenetur autem ratione ea vel molestias.', 'tenetur-autem-ratione-ea-vel-molestias', '1', 'http://lorempixel.com/182/182/?81254', '267', '0', '0', '0', '0', 'Blanditiis illum voluptatem eum et. Amet sint cum accusantium ratione possimus voluptatem ipsa. Libero labore enim repudiandae ad sed. Enim et commodi commodi facere consequatur iste reiciendis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('84', 'Praesentium perferendis consectetur.', 'praesentium-perferendis-consectetur', '1', 'http://lorempixel.com/182/182/?96735', '267', '0', '0', '0', '0', 'Quae est quisquam enim ipsam eius minima ipsum. Dolores officia aut nam dolor aut. Aspernatur est in sit nihil omnis et quia dolorem. Nostrum at nihil ut vero id et. Deleniti repudiandae et excepturi quia exercitationem molestias at.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('85', 'Consectetur ullam sed at dolorem ea ipsam exercitationem.', 'consectetur-ullam-sed-at-dolorem-ea-ipsam-exercitationem', '1', 'http://lorempixel.com/182/182/?80073', '267', '0', '0', '0', '0', 'Voluptates optio saepe qui dolores qui sapiente. Numquam porro nesciunt omnis aspernatur ea dicta. Atque consequatur quia facere reprehenderit et earum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('86', 'Id laborum nisi voluptatum nemo qui sit quia et aliquam.', 'id-laborum-nisi-voluptatum-nemo-qui-sit-quia-et-aliquam', '1', 'http://lorempixel.com/182/182/?23739', '267', '0', '0', '0', '0', 'Eligendi vitae et ea. Ut sit distinctio perferendis quasi et laborum.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('87', 'Sint unde accusamus aut beatae labore ut.', 'sint-unde-accusamus-aut-beatae-labore-ut', '1', 'http://lorempixel.com/182/182/?35125', '267', '0', '0', '0', '0', 'Sed consequatur eos architecto quod. Qui asperiores tempore et sapiente harum in non quidem. Voluptatum fugiat assumenda iste. Facilis pariatur rerum corrupti voluptatum id commodi.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('88', 'Sapiente vel voluptas voluptatum et recusandae tempore officiis.', 'sapiente-vel-voluptas-voluptatum-et-recusandae-tempore-officiis', '1', 'http://lorempixel.com/182/182/?81610', '267', '0', '0', '0', '0', 'Officiis aliquam reprehenderit fugiat natus nemo. Vel illum optio nihil libero veritatis error. Repellat sed harum dolore sed ea sint repudiandae.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('89', 'Officia minus est qui est.', 'officia-minus-est-qui-est', '1', 'http://lorempixel.com/182/182/?72004', '267', '0', '0', '0', '0', 'Quasi adipisci nobis ducimus. Pariatur enim harum doloremque accusamus voluptas officiis esse. Magnam quia temporibus magni.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('90', 'Officia consequatur temporibus non corporis eveniet sunt corrupti provident.', 'officia-consequatur-temporibus-non-corporis-eveniet-sunt-corrupti-provident', '1', 'http://lorempixel.com/182/182/?12335', '267', '0', '0', '0', '0', 'Ratione non dolore quia error. Et dolore tenetur qui quis tenetur aperiam corrupti.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('91', 'Voluptatum explicabo quo illum natus.', 'voluptatum-explicabo-quo-illum-natus', '1', 'http://lorempixel.com/182/182/?41870', '267', '0', '0', '0', '0', 'Quidem et aut corrupti dolorem cum quo. Aut nam autem vel quos. Labore eum iusto tempore quo voluptatem dolorem. Atque nam laudantium libero.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('92', 'Quae eligendi debitis consequatur et officiis voluptatibus molestiae et quaerat voluptas vel et ad.', 'quae-eligendi-debitis-consequatur-et-officiis-voluptatibus-molestiae-et-quaerat-voluptas-vel-et-ad', '1', 'http://lorempixel.com/182/182/?95984', '267', '0', '0', '0', '0', 'Voluptatibus impedit aut ipsum qui vel veniam reprehenderit. Harum vitae consequatur nobis aut natus. Rerum repellat dolor et consequuntur maiores aut quia. Ab porro ratione officiis libero neque ea optio.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('93', 'Molestiae impedit qui velit omnis.', 'molestiae-impedit-qui-velit-omnis', '1', 'http://lorempixel.com/182/182/?95860', '267', '0', '0', '0', '1', 'Corporis porro non laudantium sed eaque minima similique. Eius quisquam et non et eos voluptatem.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('94', 'Atque ut ullam rerum in eius magnam.', 'atque-ut-ullam-rerum-in-eius-magnam', '1', 'http://lorempixel.com/182/182/?10014', '267', '0', '0', '0', '1', 'Aspernatur impedit quis doloremque in neque dolore. Commodi itaque autem nulla animi accusantium. Non quia a officia tempora perspiciatis iure fugiat.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('95', 'Laboriosam voluptatem sint assumenda vel odit deleniti.', 'laboriosam-voluptatem-sint-assumenda-vel-odit-deleniti', '1', 'http://lorempixel.com/182/182/?67517', '267', '0', '0', '0', '1', '# Laravel PHP Framework\r\n\r\n[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)\r\n[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)\r\n[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)\r\n[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)\r\n[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)\r\n\r\nLaravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, queueing, and caching.\r\n\r\nLaravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb inversion of control container, expressive migration system, and tightly integrated unit testing support give you the tools you need to build any application with which you are tasked.\r\n\r\n## Official Documentation\r\n\r\nDocumentation for the framework can be found on the [Laravel website](http://laravel.com/docs).\r\n\r\n## Contributing\r\n\r\nThank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](http://laravel.com/docs/contributions).\r\n\r\n## Security Vulnerabilities\r\n\r\nIf you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.\r\n\r\n## License\r\n\r\nThe Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).\r\n', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('96', 'In libero eius id perspiciatis voluptatem architecto.', 'in-libero-eius-id-perspiciatis-voluptatem-architecto', '1', 'http://lorempixel.com/182/182/?69004', '267', '0', '0', '0', '1', 'Et corporis sit quia est. Recusandae adipisci aspernatur velit beatae rerum earum vel. Fugit earum cum ratione non illum dolores in. Deserunt velit sit maxime reiciendis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('97', 'Debitis culpa esse dolor quia.', 'debitis-culpa-esse-dolor-quia', '1', 'http://lorempixel.com/182/182/?74227', '267', '0', '0', '0', '1', 'Cum praesentium architecto itaque maiores eos sed. Voluptatem minus distinctio repudiandae libero suscipit similique dolorem. Id nihil adipisci voluptatum dolores sit.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('98', 'Repellat qui voluptates non nostrum quo dolor numquam in quae nemo architecto.', 'repellat-qui-voluptates-non-nostrum-quo-dolor-numquam-in-quae-nemo-architecto', '1', 'http://lorempixel.com/182/182/?40054', '267', '0', '0', '0', '1', 'Dolorem sequi quae dolore et cum. Error assumenda aut voluptatum occaecati. Et consequatur aut esse qui eos harum. Ut in magni tenetur omnis culpa.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('99', 'Rerum assumenda debitis aliquid ea fugiat.', 'rerum-assumenda-debitis-aliquid-ea-fugiat', '1', 'http://lorempixel.com/182/182/?65285', '267', '0', '0', '0', '1', 'Quod voluptas itaque tempore. Autem est quos quod.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('100', 'A sunt quasi debitis fugit doloribus quaerat natus.', 'a-sunt-quasi-debitis-fugit-doloribus-quaerat-natus', '1', 'http://lorempixel.com/182/182/?53295', '267', '0', '0', '0', '1', 'Nihil aut quia quos perferendis. Omnis quos eveniet quidem suscipit omnis. Esse officiis minima mollitia qui. Illo voluptatem totam est corporis impedit id officiis.', null, '2016-12-29 08:48:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('108', '适当放松放松法', 'sdfsfs', '1', 'image/16cd687877e3d20c8a9f4bb729fcecc7.png', '267', '0', '1', '1', '1', '![](http://localhost:8000/avatars/f527cdfabbc229645527d59849c1beb6.png)', null, '2017-01-13 03:10:54', '2017-01-24 08:43:15');
INSERT INTO `articles` VALUES ('107', '大话程序猿眼里的高并发架构', 'a-sunt-quasi-debitis-fugit-doloribus', null, 'image/b8e7366edfb14ea0a7256dc6ec4f8c50.png', '100', '0', '1', '1', '1', '# Header Level 1\r\n\r\n**Pellentesque habitant morbi tristique** senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. _Aenean ultricies mi vitae est_. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, `commodo vitae`, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum  rutrum orci, sagittis tempus lacus enim ac dui. [Donec non enim](#) in turpis pulvinar facilisis. Ut felis.\r\n\r\n## Header Level 2\r\n\r\n  1. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n  2. Aliquam tincidunt mauris eu risus.\r\n\r\n\r\n> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur  massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.\r\n\r\n### Header Level 3\r\n\r\n  * Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n  * Al', '2017-01-13 03:11:29', '2017-01-12 05:58:09', '2017-01-13 03:11:29');

-- ----------------------------
-- Table structure for `article_category`
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES ('1', '2', null, null);
INSERT INTO `article_category` VALUES ('4', '2', null, null);
INSERT INTO `article_category` VALUES ('102', '2', null, null);
INSERT INTO `article_category` VALUES ('103', '2', null, null);
INSERT INTO `article_category` VALUES ('104', '2', null, null);
INSERT INTO `article_category` VALUES ('105', '2', null, null);
INSERT INTO `article_category` VALUES ('106', '2', null, null);
INSERT INTO `article_category` VALUES ('107', '2', null, null);
INSERT INTO `article_category` VALUES ('108', '2', null, null);

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('1', '1', null, null);
INSERT INTO `article_tag` VALUES ('1', '2', null, null);
INSERT INTO `article_tag` VALUES ('1', '3', null, null);
INSERT INTO `article_tag` VALUES ('103', '2', null, null);
INSERT INTO `article_tag` VALUES ('102', '2', null, null);
INSERT INTO `article_tag` VALUES ('101', '2', null, null);
INSERT INTO `article_tag` VALUES ('104', '2', null, null);
INSERT INTO `article_tag` VALUES ('105', '2', null, null);
INSERT INTO `article_tag` VALUES ('106', '2', null, null);
INSERT INTO `article_tag` VALUES ('107', '2', null, null);
INSERT INTO `article_tag` VALUES ('108', '2', null, null);

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否显示',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Rerum', 'fa-tasks', 'rerum-sunt-eum-esse-maiores-corrupti-est-voluptas-quidem', '0', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('2', 'Qui', 'fa-tasks', 'qui-quo-facere-officiis-omnis-itaque-at', '0', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('3', 'Mollitia', 'fa-tasks', 'mollitia-quia-nihil-necessitatibus-vitae-hic-pariatur-voluptatem-minus-assumenda', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('4', 'Ratione', 'fa-tasks', 'ratione-id-vel-esse-repudiandae-reprehenderit-qui-aut-aut', '2', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('5', 'Consequatur', 'fa-tasks', 'consequatur-consequatur-perspiciatis-et-nobis-et', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('6', 'Provident', 'fa-tasks', 'provident-ratione-sunt-sit-eligendi-vel-tempore-id', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('7', 'Corrupti ', 'fa-tasks', 'corrupti-qui-ut-autem-inventore-officia-totam', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('8', 'Nulla', 'fa-tasks', 'nulla-assumenda-nesciunt-excepturi-vero-numquam-repudiandae-quam-voluptates-dolore-sapiente', '2', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('9', 'Illum', 'fa-tasks', 'illum-ut-eum-libero-sit-corrupti-est-est-distinctio', '0', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('10', 'Perspiciatis', 'fa-tasks', 'perspiciatis-enim-eum-voluptas-non-quas-at-et-accusamus-sed-eum-occaecati-dignissimos', '0', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `categories` VALUES ('11', 'abc', 'fa-adjust', 'abc', '2', '0', '1', null, '2017-01-13 06:20:55', '2017-01-13 06:21:11');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8,
  `created_at` timestamp(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '95', '0', '1', '1', 'sdfsffkj', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('2', '95', '0', '1', '1', 'dsfsdfdf', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('3', '95', '1', '1', '1', 'rtrtwerwr', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('4', '95', '1', '1', '1', 'ghjhgjgj', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('5', '95', '3', '1', '1', 'ghjkjljl', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('6', '95', '3', '1', '1', 'jkl;lkl;jfhfgh', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('7', '95', '5', '1', '1', 'dgdgdrtetet', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('8', '95', '7', '1', '1', 'gdfhgfhfdyty', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('9', '95', '8', '1', '1', 'fghfghrtyr', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);
INSERT INTO `comments` VALUES ('10', '95', '9', '1', '1', 'fghtuyj', '2016-12-29 08:48:54.0', '2016-12-29 08:48:54', null);

-- ----------------------------
-- Table structure for `comment_type`
-- ----------------------------
DROP TABLE IF EXISTS `comment_type`;
CREATE TABLE `comment_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `body` text,
  `commentable_id` int(10) unsigned NOT NULL,
  `commentable_type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_type
-- ----------------------------
INSERT INTO `comment_type` VALUES ('4', '1', 'the frist comment', '1', 'App\\Article', null, null);
INSERT INTO `comment_type` VALUES ('3', '1', 'the second comments', '1', 'App\\Article', null, null);
INSERT INTO `comment_type` VALUES ('2', '1', 'the third comments', '1', 'App\\Article', null, null);
INSERT INTO `comment_type` VALUES ('1', '1', 'the four comments', '1', 'App\\Article', null, null);
INSERT INTO `comment_type` VALUES ('5', '1', 'the two article comments', '2', 'App\\Article', null, null);
INSERT INTO `comment_type` VALUES ('6', '1', 'the frist comment for the comment', '1', 'App\\Comment', null, null);
INSERT INTO `comment_type` VALUES ('7', '1', 'the second comments for second comments', '1', 'App\\Comment', null, null);

-- ----------------------------
-- Table structure for `files`
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES ('1', 'http://www.gleichner.com/', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('2', 'https://www.hegmann.info/quia-repudiandae-nihil-quidem-dolorum', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('3', 'http://medhurst.biz/qui-neque-quae-at-nam-aut-omnis', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('4', 'http://www.koss.com/voluptatem-similique-eos-eum-quia-molestiae-deserunt', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('5', 'http://greenholt.com/perferendis-eveniet-excepturi-amet-id-quod-voluptatem.html', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('6', 'http://www.witting.com/fugit-veniam-perferendis-fugit-rerum-perferendis-est-nihil', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('7', 'https://www.harris.com/et-dolores-modi-ut-cumque-est', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('8', 'https://www.jenkins.info/suscipit-dicta-consequuntur-nihil-molestias', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('9', 'http://www.mueller.com/cum-ex-qui-vitae-quia-vitae-tempore', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('10', 'http://abshire.com/maxime-alias-recusandae-cum-non-non-dolorem', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('11', 'http://brekke.info/unde-enim-quod-tenetur-nostrum-quis-vitae-aspernatur-optio', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('12', 'http://www.quigley.com/', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('13', 'https://www.rolfson.com/porro-ut-voluptates-et-qui', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('14', 'http://durgan.com/impedit-et-sequi-pariatur-ipsa-ut-aut-natus-debitis.html', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('15', 'http://walker.info/autem-consequatur-nisi-qui-sit-accusamus-consequatur-laborum.html', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('16', 'http://dietrich.net/omnis-labore-est-nobis-soluta.html', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('17', 'http://wyman.com/fugiat-ex-sunt-eius-labore', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('18', 'https://www.jenkins.com/ab-sunt-molestiae-quod-aliquam-pariatur-sed-et', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('19', 'http://schultz.com/sint-ut-impedit-sapiente-velit-deserunt-rem-necessitatibus-explicabo', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `files` VALUES ('20', 'http://lockman.org/qui-praesentium-consequatur-commodi-reprehenderit-deleniti', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');

-- ----------------------------
-- Table structure for `label`
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('2017-01-10 14:59:16', '1', '2017-01-10 14:59:31', 'btn-success');
INSERT INTO `label` VALUES ('2017-01-10 14:59:14', '2', '2017-01-10 14:59:29', 'btn-info');
INSERT INTO `label` VALUES ('2017-01-10 14:59:11', '3', '2017-01-10 14:59:27', 'btn-danger');
INSERT INTO `label` VALUES ('2017-01-10 14:59:09', '4', '2017-01-10 14:59:24', 'btn-primary');
INSERT INTO `label` VALUES ('2017-01-10 14:59:07', '5', '2017-01-10 14:59:22', 'btn-default');

-- ----------------------------
-- Table structure for `links`
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recommend` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', 'Voluptas ut sed maxime.', 'http://www.wisozk.com/', '1', '1', '0', null, '2016-12-29 08:48:54', '2017-01-10 08:58:37');
INSERT INTO `links` VALUES ('2', 'Veniam soluta qui.', 'http://www.windler.biz/ipsa-eligendi-facilis-maxime.html', '2', '1', '1', null, '2016-12-29 08:48:54', '2017-01-10 08:53:24');
INSERT INTO `links` VALUES ('3', 'Nemo quis consequatur sint incidunt.', 'http://kuhn.biz/eveniet-ut-ex-similique.html', '2', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('4', 'Quas nulla voluptatum modi harum accusantium voluptatem dolor.', 'http://abbott.org/', '3', '0', '1', '2017-01-10 08:53:37', '2016-12-29 08:48:54', '2017-01-10 08:53:37');
INSERT INTO `links` VALUES ('5', 'Molestias aut voluptatem corporis sed voluptas.', 'http://www.becker.info/inventore-nulla-quis-ipsum-mollitia-quaerat-praesentium', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('6', 'Et quia dolorum quibusdam deleniti eos.', 'http://www.jacobs.com/dolorem-et-quo-rerum-rerum-est-blanditiis-qui-dolorum', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('7', 'Tenetur laborum quis autem ut.', 'http://www.upton.org/tempore-harum-distinctio-quo-quis', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('8', 'Repellat impedit et enim modi.', 'http://www.kshlerin.com/', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('9', 'Rem aspernatur neque.', 'https://breitenberg.net/consectetur-iste-corporis-deserunt-neque-autem-in.html', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('10', 'Exercitationem praesentium non quis velit temporibus.', 'https://www.williamson.org/distinctio-at-illo-beatae-autem-libero-quas-blanditiis-quo', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('11', 'Ab ut quae eos omnis tempore.', 'http://waters.com/eius-esse-nam-repellendus-ut-dolores-dolor', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('12', 'Nisi quia optio qui.', 'http://www.gaylord.com/laudantium-eos-et-quaerat-vel-autem-facere-at', '2', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('13', 'Sit tenetur non enim assumenda aut qui est.', 'http://www.steuber.com/', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('14', 'Repellat id reprehenderit adipisci aspernatur numquam.', 'http://kling.biz/velit-qui-molestiae-voluptatem-quaerat.html', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('15', 'Vel vel soluta nesciunt quo ab modi voluptas.', 'http://conroy.com/nihil-necessitatibus-molestias-eos-veniam', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('16', 'Corporis voluptatem nihil.', 'http://www.gislason.info/consectetur-ipsum-libero-eos-saepe', '2', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('17', 'Quos tempora libero distinctio quia repudiandae.', 'http://hessel.com/incidunt-aut-et-quis-ut.html', '1', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('18', 'Reiciendis saepe tenetur et beatae fugiat eius.', 'http://www.mccullough.com/', '4', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('19', 'Deserunt harum quia ut nulla distinctio.', 'http://www.pfannerstill.com/est-ex-sed-officiis-dolorum.html', '3', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `links` VALUES ('20', 'Ut quia quos aut.', 'http://ratke.biz/aut-voluptates-minus-quo', '4', '0', '1', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, '2017-01-09 06:31:41');
INSERT INTO `menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `menu` VALUES ('3', '2', '3', 'User', 'fa-users', 'auth/user', null, null);
INSERT INTO `menu` VALUES ('4', '2', '4', 'Role', 'fa-user', 'auth/role', null, null);
INSERT INTO `menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permission', null, null);
INSERT INTO `menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `menu` VALUES ('9', '2', '3', 'Tag', 'fa-tags', 'auth/tag', '2017-01-09 09:42:26', '2017-01-09 09:42:26');
INSERT INTO `menu` VALUES ('10', '2', '4', 'Link', 'fa-link', 'auth/link', '2017-01-10 08:41:51', '2017-01-10 08:42:05');
INSERT INTO `menu` VALUES ('11', '2', '0', 'Article', 'fa-file-text', 'auth/article', '2017-01-10 09:48:08', '2017-01-10 09:48:08');
INSERT INTO `menu` VALUES ('13', '2', '0', 'Category', 'fa-location-arrow', '/auth/category', '2017-01-13 03:49:51', '2017-01-13 03:50:03');
INSERT INTO `menu` VALUES ('14', '2', '0', 'Comment', 'fa-comments', '/auth/comment', '2017-01-13 08:01:52', '2017-01-13 08:01:52');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('233', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('234', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('235', '2016_12_28_091107_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('236', '2016_12_28_091129_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('237', '2016_12_28_091143_create_links_table', '1');
INSERT INTO `migrations` VALUES ('238', '2016_12_28_094036_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('239', '2016_12_28_094436_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('240', '2016_12_28_094519_create_files_table', '1');
INSERT INTO `migrations` VALUES ('241', '2016_01_04_173148_create_admin_tables', '2');

-- ----------------------------
-- Table structure for `operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `input` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2090 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 06:44:42', '2017-01-04 06:44:42');
INSERT INTO `operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 06:44:47', '2017-01-04 06:44:47');
INSERT INTO `operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:44:53', '2017-01-04 06:44:53');
INSERT INTO `operation_log` VALUES ('4', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:00', '2017-01-04 06:45:00');
INSERT INTO `operation_log` VALUES ('5', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:01', '2017-01-04 06:45:01');
INSERT INTO `operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:02', '2017-01-04 06:45:02');
INSERT INTO `operation_log` VALUES ('7', '1', 'admin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:05', '2017-01-04 06:45:05');
INSERT INTO `operation_log` VALUES ('8', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:07', '2017-01-04 06:45:07');
INSERT INTO `operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:08', '2017-01-04 06:45:08');
INSERT INTO `operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:45:10', '2017-01-04 06:45:10');
INSERT INTO `operation_log` VALUES ('11', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2017-01-04 06:48:18', '2017-01-04 06:48:18');
INSERT INTO `operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:48:34', '2017-01-04 06:48:34');
INSERT INTO `operation_log` VALUES ('13', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Article\",\"icon\":\"fa-automobile\",\"uri\":\"http:\\/\\/localhost:8000\\/admin\\/article\",\"roles\":[\"\"],\"_token\":\"K6oTlf29OHt4o36BTKobiKq0yjwD039K3iA4Tm4z\"}', '2017-01-04 06:49:21', '2017-01-04 06:49:21');
INSERT INTO `operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 06:49:21', '2017-01-04 06:49:21');
INSERT INTO `operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 06:49:25', '2017-01-04 06:49:25');
INSERT INTO `operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:49:38', '2017-01-04 06:49:38');
INSERT INTO `operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:49:40', '2017-01-04 06:49:40');
INSERT INTO `operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:49:42', '2017-01-04 06:49:42');
INSERT INTO `operation_log` VALUES ('19', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 06:49:44', '2017-01-04 06:49:44');
INSERT INTO `operation_log` VALUES ('20', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Article\",\"icon\":\"fa-automobile\",\"uri\":\"\\/admin\\/article\",\"roles\":[\"\"],\"_method\":\"PUT\",\"_token\":\"K6oTlf29OHt4o36BTKobiKq0yjwD039K3iA4Tm4z\"}', '2017-01-04 06:49:50', '2017-01-04 06:49:50');
INSERT INTO `operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 06:49:50', '2017-01-04 06:49:50');
INSERT INTO `operation_log` VALUES ('22', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 06:49:54', '2017-01-04 06:49:54');
INSERT INTO `operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 07:16:54', '2017-01-04 07:16:54');
INSERT INTO `operation_log` VALUES ('24', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:17:45', '2017-01-04 07:17:45');
INSERT INTO `operation_log` VALUES ('25', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:04', '2017-01-04 07:20:04');
INSERT INTO `operation_log` VALUES ('26', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:05', '2017-01-04 07:20:05');
INSERT INTO `operation_log` VALUES ('27', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:06', '2017-01-04 07:20:06');
INSERT INTO `operation_log` VALUES ('28', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:07', '2017-01-04 07:20:07');
INSERT INTO `operation_log` VALUES ('29', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:08', '2017-01-04 07:20:08');
INSERT INTO `operation_log` VALUES ('30', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:09', '2017-01-04 07:20:09');
INSERT INTO `operation_log` VALUES ('31', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-04 07:20:11', '2017-01-04 07:20:11');
INSERT INTO `operation_log` VALUES ('32', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:17', '2017-01-04 07:20:17');
INSERT INTO `operation_log` VALUES ('33', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 07:20:18', '2017-01-04 07:20:18');
INSERT INTO `operation_log` VALUES ('34', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2017-01-04 07:20:21', '2017-01-04 07:20:21');
INSERT INTO `operation_log` VALUES ('35', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:22:20', '2017-01-04 07:22:20');
INSERT INTO `operation_log` VALUES ('36', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:27:10', '2017-01-04 07:27:10');
INSERT INTO `operation_log` VALUES ('37', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:36:19', '2017-01-04 07:36:19');
INSERT INTO `operation_log` VALUES ('38', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:48:18', '2017-01-04 07:48:18');
INSERT INTO `operation_log` VALUES ('39', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:50:01', '2017-01-04 07:50:01');
INSERT INTO `operation_log` VALUES ('40', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:50:11', '2017-01-04 07:50:11');
INSERT INTO `operation_log` VALUES ('41', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:52:51', '2017-01-04 07:52:51');
INSERT INTO `operation_log` VALUES ('42', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 07:54:02', '2017-01-04 07:54:02');
INSERT INTO `operation_log` VALUES ('43', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-04 08:01:17', '2017-01-04 08:01:17');
INSERT INTO `operation_log` VALUES ('44', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 08:01:23', '2017-01-04 08:01:23');
INSERT INTO `operation_log` VALUES ('45', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 08:01:25', '2017-01-04 08:01:25');
INSERT INTO `operation_log` VALUES ('46', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-04 08:02:18', '2017-01-04 08:02:18');
INSERT INTO `operation_log` VALUES ('47', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-04 08:18:42', '2017-01-04 08:18:42');
INSERT INTO `operation_log` VALUES ('48', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-04 08:21:00', '2017-01-04 08:21:00');
INSERT INTO `operation_log` VALUES ('49', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-04 08:21:34', '2017-01-04 08:21:34');
INSERT INTO `operation_log` VALUES ('50', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-04 08:21:35', '2017-01-04 08:21:35');
INSERT INTO `operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-04 08:36:21', '2017-01-04 08:36:21');
INSERT INTO `operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-05 03:52:35', '2017-01-05 03:52:35');
INSERT INTO `operation_log` VALUES ('53', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:52:48', '2017-01-05 03:52:48');
INSERT INTO `operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-05 03:53:25', '2017-01-05 03:53:25');
INSERT INTO `operation_log` VALUES ('55', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:54:06', '2017-01-05 03:54:06');
INSERT INTO `operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-05 03:55:40', '2017-01-05 03:55:40');
INSERT INTO `operation_log` VALUES ('57', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-05 03:56:44', '2017-01-05 03:56:44');
INSERT INTO `operation_log` VALUES ('58', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 03:57:38', '2017-01-05 03:57:38');
INSERT INTO `operation_log` VALUES ('59', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:57:41', '2017-01-05 03:57:41');
INSERT INTO `operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 03:58:17', '2017-01-05 03:58:17');
INSERT INTO `operation_log` VALUES ('61', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:58:24', '2017-01-05 03:58:24');
INSERT INTO `operation_log` VALUES ('62', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:58:25', '2017-01-05 03:58:25');
INSERT INTO `operation_log` VALUES ('63', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 03:58:26', '2017-01-05 03:58:26');
INSERT INTO `operation_log` VALUES ('64', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 03:58:33', '2017-01-05 03:58:33');
INSERT INTO `operation_log` VALUES ('65', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 03:58:42', '2017-01-05 03:58:42');
INSERT INTO `operation_log` VALUES ('66', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 04:01:15', '2017-01-05 04:01:15');
INSERT INTO `operation_log` VALUES ('67', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 04:01:25', '2017-01-05 04:01:25');
INSERT INTO `operation_log` VALUES ('68', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 05:42:14', '2017-01-05 05:42:14');
INSERT INTO `operation_log` VALUES ('69', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 05:42:14', '2017-01-05 05:42:14');
INSERT INTO `operation_log` VALUES ('70', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 05:43:25', '2017-01-05 05:43:25');
INSERT INTO `operation_log` VALUES ('71', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 05:44:11', '2017-01-05 05:44:11');
INSERT INTO `operation_log` VALUES ('72', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 05:46:18', '2017-01-05 05:46:18');
INSERT INTO `operation_log` VALUES ('73', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 05:46:21', '2017-01-05 05:46:21');
INSERT INTO `operation_log` VALUES ('74', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 05:46:21', '2017-01-05 05:46:21');
INSERT INTO `operation_log` VALUES ('75', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 05:46:35', '2017-01-05 05:46:35');
INSERT INTO `operation_log` VALUES ('76', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"$2y$10$mur6goo8ix0sovoxuFOR7e94VZOxgLQUkcT.JcwcwlP9tjrnrWRne\",\"roles\":[\"1\",\"\"],\"permissions\":[\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 05:48:49', '2017-01-05 05:48:49');
INSERT INTO `operation_log` VALUES ('77', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 05:48:49', '2017-01-05 05:48:49');
INSERT INTO `operation_log` VALUES ('78', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 05:48:53', '2017-01-05 05:48:53');
INSERT INTO `operation_log` VALUES ('79', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 05:50:36', '2017-01-05 05:50:36');
INSERT INTO `operation_log` VALUES ('80', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:40:49', '2017-01-05 06:40:49');
INSERT INTO `operation_log` VALUES ('81', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:41:09', '2017-01-05 06:41:09');
INSERT INTO `operation_log` VALUES ('82', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:41:31', '2017-01-05 06:41:31');
INSERT INTO `operation_log` VALUES ('83', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:42:23', '2017-01-05 06:42:23');
INSERT INTO `operation_log` VALUES ('84', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:42:25', '2017-01-05 06:42:25');
INSERT INTO `operation_log` VALUES ('85', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:42:35', '2017-01-05 06:42:35');
INSERT INTO `operation_log` VALUES ('86', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:42:59', '2017-01-05 06:42:59');
INSERT INTO `operation_log` VALUES ('87', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:43:31', '2017-01-05 06:43:31');
INSERT INTO `operation_log` VALUES ('88', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:44:25', '2017-01-05 06:44:25');
INSERT INTO `operation_log` VALUES ('89', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:45:34', '2017-01-05 06:45:34');
INSERT INTO `operation_log` VALUES ('90', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 06:46:42', '2017-01-05 06:46:42');
INSERT INTO `operation_log` VALUES ('91', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:41:55', '2017-01-05 07:41:55');
INSERT INTO `operation_log` VALUES ('92', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:44:28', '2017-01-05 07:44:28');
INSERT INTO `operation_log` VALUES ('93', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:45:54', '2017-01-05 07:45:54');
INSERT INTO `operation_log` VALUES ('94', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:47:40', '2017-01-05 07:47:40');
INSERT INTO `operation_log` VALUES ('95', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:51:04', '2017-01-05 07:51:04');
INSERT INTO `operation_log` VALUES ('96', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:51:41', '2017-01-05 07:51:41');
INSERT INTO `operation_log` VALUES ('97', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 07:53:51', '2017-01-05 07:53:51');
INSERT INTO `operation_log` VALUES ('98', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-05 07:53:55', '2017-01-05 07:53:55');
INSERT INTO `operation_log` VALUES ('99', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-05 07:53:55', '2017-01-05 07:53:55');
INSERT INTO `operation_log` VALUES ('100', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 07:54:05', '2017-01-05 07:54:05');
INSERT INTO `operation_log` VALUES ('101', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 07:54:12', '2017-01-05 07:54:12');
INSERT INTO `operation_log` VALUES ('102', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 07:54:12', '2017-01-05 07:54:12');
INSERT INTO `operation_log` VALUES ('103', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 07:56:37', '2017-01-05 07:56:37');
INSERT INTO `operation_log` VALUES ('104', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 08:00:35', '2017-01-05 08:00:35');
INSERT INTO `operation_log` VALUES ('105', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:09:22', '2017-01-05 08:09:22');
INSERT INTO `operation_log` VALUES ('106', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:09:42', '2017-01-05 08:09:42');
INSERT INTO `operation_log` VALUES ('107', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:20:15', '2017-01-05 08:20:15');
INSERT INTO `operation_log` VALUES ('108', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:20:32', '2017-01-05 08:20:32');
INSERT INTO `operation_log` VALUES ('109', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:20:44', '2017-01-05 08:20:44');
INSERT INTO `operation_log` VALUES ('110', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:20:57', '2017-01-05 08:20:57');
INSERT INTO `operation_log` VALUES ('111', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:22:46', '2017-01-05 08:22:46');
INSERT INTO `operation_log` VALUES ('112', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:22:56', '2017-01-05 08:22:56');
INSERT INTO `operation_log` VALUES ('113', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:23:22', '2017-01-05 08:23:22');
INSERT INTO `operation_log` VALUES ('114', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:24:04', '2017-01-05 08:24:04');
INSERT INTO `operation_log` VALUES ('115', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:26:41', '2017-01-05 08:26:41');
INSERT INTO `operation_log` VALUES ('116', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:26:57', '2017-01-05 08:26:57');
INSERT INTO `operation_log` VALUES ('117', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:27:11', '2017-01-05 08:27:11');
INSERT INTO `operation_log` VALUES ('118', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:27:26', '2017-01-05 08:27:26');
INSERT INTO `operation_log` VALUES ('119', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:27:45', '2017-01-05 08:27:45');
INSERT INTO `operation_log` VALUES ('120', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:27:57', '2017-01-05 08:27:57');
INSERT INTO `operation_log` VALUES ('121', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:29:04', '2017-01-05 08:29:04');
INSERT INTO `operation_log` VALUES ('122', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:29:20', '2017-01-05 08:29:20');
INSERT INTO `operation_log` VALUES ('123', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:30:58', '2017-01-05 08:30:58');
INSERT INTO `operation_log` VALUES ('124', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:31:26', '2017-01-05 08:31:26');
INSERT INTO `operation_log` VALUES ('125', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:32:53', '2017-01-05 08:32:53');
INSERT INTO `operation_log` VALUES ('126', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:33:17', '2017-01-05 08:33:17');
INSERT INTO `operation_log` VALUES ('127', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:36:33', '2017-01-05 08:36:33');
INSERT INTO `operation_log` VALUES ('128', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 08:36:39', '2017-01-05 08:36:39');
INSERT INTO `operation_log` VALUES ('129', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:37:20', '2017-01-05 08:37:20');
INSERT INTO `operation_log` VALUES ('130', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:41:02', '2017-01-05 08:41:02');
INSERT INTO `operation_log` VALUES ('131', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:41:10', '2017-01-05 08:41:10');
INSERT INTO `operation_log` VALUES ('132', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:43:16', '2017-01-05 08:43:16');
INSERT INTO `operation_log` VALUES ('133', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:44:56', '2017-01-05 08:44:56');
INSERT INTO `operation_log` VALUES ('134', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:45:16', '2017-01-05 08:45:16');
INSERT INTO `operation_log` VALUES ('135', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 08:46:00', '2017-01-05 08:46:00');
INSERT INTO `operation_log` VALUES ('136', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:46:01', '2017-01-05 08:46:01');
INSERT INTO `operation_log` VALUES ('137', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 08:46:18', '2017-01-05 08:46:18');
INSERT INTO `operation_log` VALUES ('138', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:46:18', '2017-01-05 08:46:18');
INSERT INTO `operation_log` VALUES ('139', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 08:46:21', '2017-01-05 08:46:21');
INSERT INTO `operation_log` VALUES ('140', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 08:48:44', '2017-01-05 08:48:44');
INSERT INTO `operation_log` VALUES ('141', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:48:44', '2017-01-05 08:48:44');
INSERT INTO `operation_log` VALUES ('142', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 08:48:53', '2017-01-05 08:48:53');
INSERT INTO `operation_log` VALUES ('143', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 08:48:53', '2017-01-05 08:48:53');
INSERT INTO `operation_log` VALUES ('144', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 08:48:55', '2017-01-05 08:48:55');
INSERT INTO `operation_log` VALUES ('145', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 08:49:43', '2017-01-05 08:49:43');
INSERT INTO `operation_log` VALUES ('146', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2017-01-05 09:05:45', '2017-01-05 09:05:45');
INSERT INTO `operation_log` VALUES ('147', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:06:54', '2017-01-05 09:06:54');
INSERT INTO `operation_log` VALUES ('148', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:06:55', '2017-01-05 09:06:55');
INSERT INTO `operation_log` VALUES ('149', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:06:56', '2017-01-05 09:06:56');
INSERT INTO `operation_log` VALUES ('150', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:07:01', '2017-01-05 09:07:01');
INSERT INTO `operation_log` VALUES ('151', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:07:14', '2017-01-05 09:07:14');
INSERT INTO `operation_log` VALUES ('152', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:07:14', '2017-01-05 09:07:14');
INSERT INTO `operation_log` VALUES ('153', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:07:17', '2017-01-05 09:07:17');
INSERT INTO `operation_log` VALUES ('154', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:15:08', '2017-01-05 09:15:08');
INSERT INTO `operation_log` VALUES ('155', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:15:09', '2017-01-05 09:15:09');
INSERT INTO `operation_log` VALUES ('156', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:15:19', '2017-01-05 09:15:19');
INSERT INTO `operation_log` VALUES ('157', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:15:19', '2017-01-05 09:15:19');
INSERT INTO `operation_log` VALUES ('158', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:19:59', '2017-01-05 09:19:59');
INSERT INTO `operation_log` VALUES ('159', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:20:11', '2017-01-05 09:20:11');
INSERT INTO `operation_log` VALUES ('160', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:20:11', '2017-01-05 09:20:11');
INSERT INTO `operation_log` VALUES ('161', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:20:15', '2017-01-05 09:20:15');
INSERT INTO `operation_log` VALUES ('162', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:32:00', '2017-01-05 09:32:00');
INSERT INTO `operation_log` VALUES ('163', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:32:12', '2017-01-05 09:32:12');
INSERT INTO `operation_log` VALUES ('164', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:32:12', '2017-01-05 09:32:12');
INSERT INTO `operation_log` VALUES ('165', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:32:16', '2017-01-05 09:32:16');
INSERT INTO `operation_log` VALUES ('166', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:35:05', '2017-01-05 09:35:05');
INSERT INTO `operation_log` VALUES ('167', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:38:45', '2017-01-05 09:38:45');
INSERT INTO `operation_log` VALUES ('168', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:38:57', '2017-01-05 09:38:57');
INSERT INTO `operation_log` VALUES ('169', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:38:57', '2017-01-05 09:38:57');
INSERT INTO `operation_log` VALUES ('170', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:39:00', '2017-01-05 09:39:00');
INSERT INTO `operation_log` VALUES ('171', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:39:32', '2017-01-05 09:39:32');
INSERT INTO `operation_log` VALUES ('172', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:39:32', '2017-01-05 09:39:32');
INSERT INTO `operation_log` VALUES ('173', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:39:34', '2017-01-05 09:39:34');
INSERT INTO `operation_log` VALUES ('174', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:40:27', '2017-01-05 09:40:27');
INSERT INTO `operation_log` VALUES ('175', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:40:28', '2017-01-05 09:40:28');
INSERT INTO `operation_log` VALUES ('176', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:41:21', '2017-01-05 09:41:21');
INSERT INTO `operation_log` VALUES ('177', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:41:32', '2017-01-05 09:41:32');
INSERT INTO `operation_log` VALUES ('178', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:41:32', '2017-01-05 09:41:32');
INSERT INTO `operation_log` VALUES ('179', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:41:34', '2017-01-05 09:41:34');
INSERT INTO `operation_log` VALUES ('180', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:47:12', '2017-01-05 09:47:12');
INSERT INTO `operation_log` VALUES ('181', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:48:55', '2017-01-05 09:48:55');
INSERT INTO `operation_log` VALUES ('182', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:49:07', '2017-01-05 09:49:07');
INSERT INTO `operation_log` VALUES ('183', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:49:07', '2017-01-05 09:49:07');
INSERT INTO `operation_log` VALUES ('184', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:49:46', '2017-01-05 09:49:46');
INSERT INTO `operation_log` VALUES ('185', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:58:04', '2017-01-05 09:58:04');
INSERT INTO `operation_log` VALUES ('186', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:58:04', '2017-01-05 09:58:04');
INSERT INTO `operation_log` VALUES ('187', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:58:06', '2017-01-05 09:58:06');
INSERT INTO `operation_log` VALUES ('188', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:58:24', '2017-01-05 09:58:24');
INSERT INTO `operation_log` VALUES ('189', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 09:58:25', '2017-01-05 09:58:25');
INSERT INTO `operation_log` VALUES ('190', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 09:58:27', '2017-01-05 09:58:27');
INSERT INTO `operation_log` VALUES ('191', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"1\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 09:59:33', '2017-01-05 09:59:33');
INSERT INTO `operation_log` VALUES ('192', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 09:59:33', '2017-01-05 09:59:33');
INSERT INTO `operation_log` VALUES ('193', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:01:26', '2017-01-05 10:01:26');
INSERT INTO `operation_log` VALUES ('194', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:01:27', '2017-01-05 10:01:27');
INSERT INTO `operation_log` VALUES ('195', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:01:30', '2017-01-05 10:01:30');
INSERT INTO `operation_log` VALUES ('196', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 10:05:17', '2017-01-05 10:05:17');
INSERT INTO `operation_log` VALUES ('197', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:21:21', '2017-01-05 10:21:21');
INSERT INTO `operation_log` VALUES ('198', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:21:22', '2017-01-05 10:21:22');
INSERT INTO `operation_log` VALUES ('199', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:21:48', '2017-01-05 10:21:48');
INSERT INTO `operation_log` VALUES ('200', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:21:58', '2017-01-05 10:21:58');
INSERT INTO `operation_log` VALUES ('201', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:21:58', '2017-01-05 10:21:58');
INSERT INTO `operation_log` VALUES ('202', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:25:20', '2017-01-05 10:25:20');
INSERT INTO `operation_log` VALUES ('203', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:25:30', '2017-01-05 10:25:30');
INSERT INTO `operation_log` VALUES ('204', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:25:30', '2017-01-05 10:25:30');
INSERT INTO `operation_log` VALUES ('205', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:25:33', '2017-01-05 10:25:33');
INSERT INTO `operation_log` VALUES ('206', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:26:09', '2017-01-05 10:26:09');
INSERT INTO `operation_log` VALUES ('207', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:26:09', '2017-01-05 10:26:09');
INSERT INTO `operation_log` VALUES ('208', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:26:45', '2017-01-05 10:26:45');
INSERT INTO `operation_log` VALUES ('209', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:26:54', '2017-01-05 10:26:54');
INSERT INTO `operation_log` VALUES ('210', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:26:54', '2017-01-05 10:26:54');
INSERT INTO `operation_log` VALUES ('211', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:28:51', '2017-01-05 10:28:51');
INSERT INTO `operation_log` VALUES ('212', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:29:01', '2017-01-05 10:29:01');
INSERT INTO `operation_log` VALUES ('213', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:29:01', '2017-01-05 10:29:01');
INSERT INTO `operation_log` VALUES ('214', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:29:46', '2017-01-05 10:29:46');
INSERT INTO `operation_log` VALUES ('215', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"1\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:30:01', '2017-01-05 10:30:01');
INSERT INTO `operation_log` VALUES ('216', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-05 10:30:01', '2017-01-05 10:30:01');
INSERT INTO `operation_log` VALUES ('217', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"MwWKdsDI6MY6LqsA41zMIW0Z2kz7gfwmA1vX8cvC\"}', '2017-01-05 10:30:27', '2017-01-05 10:30:27');
INSERT INTO `operation_log` VALUES ('218', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-05 10:30:27', '2017-01-05 10:30:27');
INSERT INTO `operation_log` VALUES ('219', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-05 10:30:38', '2017-01-05 10:30:38');
INSERT INTO `operation_log` VALUES ('220', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 01:10:31', '2017-01-06 01:10:31');
INSERT INTO `operation_log` VALUES ('221', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 01:11:47', '2017-01-06 01:11:47');
INSERT INTO `operation_log` VALUES ('222', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 01:11:47', '2017-01-06 01:11:47');
INSERT INTO `operation_log` VALUES ('223', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 01:11:50', '2017-01-06 01:11:50');
INSERT INTO `operation_log` VALUES ('224', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 01:13:17', '2017-01-06 01:13:17');
INSERT INTO `operation_log` VALUES ('225', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 01:13:18', '2017-01-06 01:13:18');
INSERT INTO `operation_log` VALUES ('226', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 01:13:19', '2017-01-06 01:13:19');
INSERT INTO `operation_log` VALUES ('227', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 01:15:19', '2017-01-06 01:15:19');
INSERT INTO `operation_log` VALUES ('228', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 01:15:20', '2017-01-06 01:15:20');
INSERT INTO `operation_log` VALUES ('229', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 01:15:22', '2017-01-06 01:15:22');
INSERT INTO `operation_log` VALUES ('230', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 01:15:53', '2017-01-06 01:15:53');
INSERT INTO `operation_log` VALUES ('231', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 01:15:53', '2017-01-06 01:15:53');
INSERT INTO `operation_log` VALUES ('232', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 01:15:55', '2017-01-06 01:15:55');
INSERT INTO `operation_log` VALUES ('233', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 01:29:21', '2017-01-06 01:29:21');
INSERT INTO `operation_log` VALUES ('234', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2017-01-06 01:31:02', '2017-01-06 01:31:02');
INSERT INTO `operation_log` VALUES ('235', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2017-01-06 01:34:57', '2017-01-06 01:34:57');
INSERT INTO `operation_log` VALUES ('236', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2017-01-06 02:10:37', '2017-01-06 02:10:37');
INSERT INTO `operation_log` VALUES ('237', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:11:06', '2017-01-06 02:11:06');
INSERT INTO `operation_log` VALUES ('238', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:11:08', '2017-01-06 02:11:08');
INSERT INTO `operation_log` VALUES ('239', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:11:17', '2017-01-06 02:11:17');
INSERT INTO `operation_log` VALUES ('240', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:11:17', '2017-01-06 02:11:17');
INSERT INTO `operation_log` VALUES ('241', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:12:09', '2017-01-06 02:12:09');
INSERT INTO `operation_log` VALUES ('242', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:12:17', '2017-01-06 02:12:17');
INSERT INTO `operation_log` VALUES ('243', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:12:18', '2017-01-06 02:12:18');
INSERT INTO `operation_log` VALUES ('244', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:13:05', '2017-01-06 02:13:05');
INSERT INTO `operation_log` VALUES ('245', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:13:16', '2017-01-06 02:13:16');
INSERT INTO `operation_log` VALUES ('246', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:13:16', '2017-01-06 02:13:16');
INSERT INTO `operation_log` VALUES ('247', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:13:44', '2017-01-06 02:13:44');
INSERT INTO `operation_log` VALUES ('248', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:13:54', '2017-01-06 02:13:54');
INSERT INTO `operation_log` VALUES ('249', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:13:54', '2017-01-06 02:13:54');
INSERT INTO `operation_log` VALUES ('250', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:14:00', '2017-01-06 02:14:00');
INSERT INTO `operation_log` VALUES ('251', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 02:16:43', '2017-01-06 02:16:43');
INSERT INTO `operation_log` VALUES ('252', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 02:19:11', '2017-01-06 02:19:11');
INSERT INTO `operation_log` VALUES ('253', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 02:19:17', '2017-01-06 02:19:17');
INSERT INTO `operation_log` VALUES ('254', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:19:27', '2017-01-06 02:19:27');
INSERT INTO `operation_log` VALUES ('255', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:19:28', '2017-01-06 02:19:28');
INSERT INTO `operation_log` VALUES ('256', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:20:07', '2017-01-06 02:20:07');
INSERT INTO `operation_log` VALUES ('257', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:20:15', '2017-01-06 02:20:15');
INSERT INTO `operation_log` VALUES ('258', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:20:16', '2017-01-06 02:20:16');
INSERT INTO `operation_log` VALUES ('259', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:21:29', '2017-01-06 02:21:29');
INSERT INTO `operation_log` VALUES ('260', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:24:08', '2017-01-06 02:24:08');
INSERT INTO `operation_log` VALUES ('261', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:24:08', '2017-01-06 02:24:08');
INSERT INTO `operation_log` VALUES ('262', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:24:15', '2017-01-06 02:24:15');
INSERT INTO `operation_log` VALUES ('263', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:25:04', '2017-01-06 02:25:04');
INSERT INTO `operation_log` VALUES ('264', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:25:04', '2017-01-06 02:25:04');
INSERT INTO `operation_log` VALUES ('265', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:26:48', '2017-01-06 02:26:48');
INSERT INTO `operation_log` VALUES ('266', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:26:55', '2017-01-06 02:26:55');
INSERT INTO `operation_log` VALUES ('267', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:26:56', '2017-01-06 02:26:56');
INSERT INTO `operation_log` VALUES ('268', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:27:08', '2017-01-06 02:27:08');
INSERT INTO `operation_log` VALUES ('269', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:27:50', '2017-01-06 02:27:50');
INSERT INTO `operation_log` VALUES ('270', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:27:50', '2017-01-06 02:27:50');
INSERT INTO `operation_log` VALUES ('271', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:28:02', '2017-01-06 02:28:02');
INSERT INTO `operation_log` VALUES ('272', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 02:29:17', '2017-01-06 02:29:17');
INSERT INTO `operation_log` VALUES ('273', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:32:55', '2017-01-06 02:32:55');
INSERT INTO `operation_log` VALUES ('274', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:32:56', '2017-01-06 02:32:56');
INSERT INTO `operation_log` VALUES ('275', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:32:58', '2017-01-06 02:32:58');
INSERT INTO `operation_log` VALUES ('276', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:33:34', '2017-01-06 02:33:34');
INSERT INTO `operation_log` VALUES ('277', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:33:35', '2017-01-06 02:33:35');
INSERT INTO `operation_log` VALUES ('278', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:33:36', '2017-01-06 02:33:36');
INSERT INTO `operation_log` VALUES ('279', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"1\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:34:38', '2017-01-06 02:34:38');
INSERT INTO `operation_log` VALUES ('280', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:34:38', '2017-01-06 02:34:38');
INSERT INTO `operation_log` VALUES ('281', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:34:44', '2017-01-06 02:34:44');
INSERT INTO `operation_log` VALUES ('282', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:36:10', '2017-01-06 02:36:10');
INSERT INTO `operation_log` VALUES ('283', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:36:12', '2017-01-06 02:36:12');
INSERT INTO `operation_log` VALUES ('284', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"lpx\",\"email\":\"admin@admin.com \",\"is_admin\":\"0\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_token\":\"TfieZeSt4h5IgR9J7ICCvZll2434VhtpbbCroXHq\"}', '2017-01-06 02:36:47', '2017-01-06 02:36:47');
INSERT INTO `operation_log` VALUES ('285', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 02:36:47', '2017-01-06 02:36:47');
INSERT INTO `operation_log` VALUES ('286', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:37:21', '2017-01-06 02:37:21');
INSERT INTO `operation_log` VALUES ('287', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:37:25', '2017-01-06 02:37:25');
INSERT INTO `operation_log` VALUES ('288', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 02:37:27', '2017-01-06 02:37:27');
INSERT INTO `operation_log` VALUES ('289', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 02:37:28', '2017-01-06 02:37:28');
INSERT INTO `operation_log` VALUES ('290', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-06 03:09:30', '2017-01-06 03:09:30');
INSERT INTO `operation_log` VALUES ('291', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 05:58:32', '2017-01-06 05:58:32');
INSERT INTO `operation_log` VALUES ('292', '2', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 05:58:46', '2017-01-06 05:58:46');
INSERT INTO `operation_log` VALUES ('293', '2', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 05:58:56', '2017-01-06 05:58:56');
INSERT INTO `operation_log` VALUES ('294', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 05:58:58', '2017-01-06 05:58:58');
INSERT INTO `operation_log` VALUES ('295', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 05:58:58', '2017-01-06 05:58:58');
INSERT INTO `operation_log` VALUES ('296', '2', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 06:02:26', '2017-01-06 06:02:26');
INSERT INTO `operation_log` VALUES ('297', '2', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2017-01-06 06:02:26', '2017-01-06 06:02:26');
INSERT INTO `operation_log` VALUES ('298', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 06:02:26', '2017-01-06 06:02:26');
INSERT INTO `operation_log` VALUES ('299', '2', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 06:03:05', '2017-01-06 06:03:05');
INSERT INTO `operation_log` VALUES ('300', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 06:04:02', '2017-01-06 06:04:02');
INSERT INTO `operation_log` VALUES ('301', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:04:03', '2017-01-06 06:04:03');
INSERT INTO `operation_log` VALUES ('302', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:04:21', '2017-01-06 06:04:21');
INSERT INTO `operation_log` VALUES ('303', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:04:54', '2017-01-06 06:04:54');
INSERT INTO `operation_log` VALUES ('304', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:05:32', '2017-01-06 06:05:32');
INSERT INTO `operation_log` VALUES ('305', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:06:14', '2017-01-06 06:06:14');
INSERT INTO `operation_log` VALUES ('306', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:10:11', '2017-01-06 06:10:11');
INSERT INTO `operation_log` VALUES ('307', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:12:06', '2017-01-06 06:12:06');
INSERT INTO `operation_log` VALUES ('308', '2', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 06:39:32', '2017-01-06 06:39:32');
INSERT INTO `operation_log` VALUES ('309', '2', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 06:42:07', '2017-01-06 06:42:07');
INSERT INTO `operation_log` VALUES ('310', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 09:23:25', '2017-01-06 09:23:25');
INSERT INTO `operation_log` VALUES ('311', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:32', '2017-01-06 09:23:32');
INSERT INTO `operation_log` VALUES ('312', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:33', '2017-01-06 09:23:33');
INSERT INTO `operation_log` VALUES ('313', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:35', '2017-01-06 09:23:35');
INSERT INTO `operation_log` VALUES ('314', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:36', '2017-01-06 09:23:36');
INSERT INTO `operation_log` VALUES ('315', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:39', '2017-01-06 09:23:39');
INSERT INTO `operation_log` VALUES ('316', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:41', '2017-01-06 09:23:41');
INSERT INTO `operation_log` VALUES ('317', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:41', '2017-01-06 09:23:41');
INSERT INTO `operation_log` VALUES ('318', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:23:43', '2017-01-06 09:23:43');
INSERT INTO `operation_log` VALUES ('319', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 09:24:18', '2017-01-06 09:24:18');
INSERT INTO `operation_log` VALUES ('320', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:24:41', '2017-01-06 09:24:41');
INSERT INTO `operation_log` VALUES ('321', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:24:45', '2017-01-06 09:24:45');
INSERT INTO `operation_log` VALUES ('322', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:24:48', '2017-01-06 09:24:48');
INSERT INTO `operation_log` VALUES ('323', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 09:26:36', '2017-01-06 09:26:36');
INSERT INTO `operation_log` VALUES ('324', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 09:27:22', '2017-01-06 09:27:22');
INSERT INTO `operation_log` VALUES ('325', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:34:34', '2017-01-06 09:34:34');
INSERT INTO `operation_log` VALUES ('326', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:34:36', '2017-01-06 09:34:36');
INSERT INTO `operation_log` VALUES ('327', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-06 09:38:00', '2017-01-06 09:38:00');
INSERT INTO `operation_log` VALUES ('328', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:38:06', '2017-01-06 09:38:06');
INSERT INTO `operation_log` VALUES ('329', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:38:08', '2017-01-06 09:38:08');
INSERT INTO `operation_log` VALUES ('330', '1', 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2017-01-06 09:42:50', '2017-01-06 09:42:50');
INSERT INTO `operation_log` VALUES ('331', '1', 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2017-01-06 09:44:20', '2017-01-06 09:44:20');
INSERT INTO `operation_log` VALUES ('332', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-06 09:48:14', '2017-01-06 09:48:14');
INSERT INTO `operation_log` VALUES ('333', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:48:22', '2017-01-06 09:48:22');
INSERT INTO `operation_log` VALUES ('334', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:48:24', '2017-01-06 09:48:24');
INSERT INTO `operation_log` VALUES ('335', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:48:26', '2017-01-06 09:48:26');
INSERT INTO `operation_log` VALUES ('336', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"0\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 09:48:31', '2017-01-06 09:48:31');
INSERT INTO `operation_log` VALUES ('337', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 09:48:32', '2017-01-06 09:48:32');
INSERT INTO `operation_log` VALUES ('338', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:51:44', '2017-01-06 09:51:44');
INSERT INTO `operation_log` VALUES ('339', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:51:45', '2017-01-06 09:51:45');
INSERT INTO `operation_log` VALUES ('340', '1', 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"name\":\"Administrator2\",\"slug\":\"administrator\",\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 09:51:54', '2017-01-06 09:51:54');
INSERT INTO `operation_log` VALUES ('341', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 09:51:54', '2017-01-06 09:51:54');
INSERT INTO `operation_log` VALUES ('342', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:51:56', '2017-01-06 09:51:56');
INSERT INTO `operation_log` VALUES ('343', '1', 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"slug\":\"administrator\",\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 09:52:00', '2017-01-06 09:52:00');
INSERT INTO `operation_log` VALUES ('344', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 09:52:00', '2017-01-06 09:52:00');
INSERT INTO `operation_log` VALUES ('345', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:52:02', '2017-01-06 09:52:02');
INSERT INTO `operation_log` VALUES ('346', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"name\":\"wo\",\"slug\":\"wo\",\"permissions\":[\"1\",\"\"],\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 09:53:28', '2017-01-06 09:53:28');
INSERT INTO `operation_log` VALUES ('347', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-06 09:53:28', '2017-01-06 09:53:28');
INSERT INTO `operation_log` VALUES ('348', '1', 'admin/auth/roles/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 09:54:54', '2017-01-06 09:54:54');
INSERT INTO `operation_log` VALUES ('349', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:54:54', '2017-01-06 09:54:54');
INSERT INTO `operation_log` VALUES ('350', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:54:57', '2017-01-06 09:54:57');
INSERT INTO `operation_log` VALUES ('351', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 09:54:59', '2017-01-06 09:54:59');
INSERT INTO `operation_log` VALUES ('352', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 09:56:33', '2017-01-06 09:56:33');
INSERT INTO `operation_log` VALUES ('353', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:03:31', '2017-01-06 10:03:31');
INSERT INTO `operation_log` VALUES ('354', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:03:37', '2017-01-06 10:03:37');
INSERT INTO `operation_log` VALUES ('355', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:04:15', '2017-01-06 10:04:15');
INSERT INTO `operation_log` VALUES ('356', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:04:21', '2017-01-06 10:04:21');
INSERT INTO `operation_log` VALUES ('357', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 10:04:37', '2017-01-06 10:04:37');
INSERT INTO `operation_log` VALUES ('358', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 10:05:13', '2017-01-06 10:05:13');
INSERT INTO `operation_log` VALUES ('359', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 10:05:46', '2017-01-06 10:05:46');
INSERT INTO `operation_log` VALUES ('360', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 10:09:39', '2017-01-06 10:09:39');
INSERT INTO `operation_log` VALUES ('361', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-06 10:09:49', '2017-01-06 10:09:49');
INSERT INTO `operation_log` VALUES ('362', '1', 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"name\":\"edit2\",\"slug\":\"edit\",\"roles\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 10:10:37', '2017-01-06 10:10:37');
INSERT INTO `operation_log` VALUES ('363', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:10:38', '2017-01-06 10:10:38');
INSERT INTO `operation_log` VALUES ('364', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:10:40', '2017-01-06 10:10:40');
INSERT INTO `operation_log` VALUES ('365', '1', 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"name\":\"edit2\",\"slug\":\"edit\",\"roles\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 10:10:43', '2017-01-06 10:10:43');
INSERT INTO `operation_log` VALUES ('366', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:10:43', '2017-01-06 10:10:43');
INSERT INTO `operation_log` VALUES ('367', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:10:45', '2017-01-06 10:10:45');
INSERT INTO `operation_log` VALUES ('368', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"name\":\"update\",\"slug\":\"update\",\"roles\":[\"1\",\"\"],\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 10:10:53', '2017-01-06 10:10:53');
INSERT INTO `operation_log` VALUES ('369', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:10:53', '2017-01-06 10:10:53');
INSERT INTO `operation_log` VALUES ('370', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:10:56', '2017-01-06 10:10:56');
INSERT INTO `operation_log` VALUES ('371', '1', 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"name\":\"edit\",\"slug\":\"edit\",\"roles\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"KUnf2QTUg0YZgnVmEUlgQs0mmwKqB9OAfAE3Morb\"}', '2017-01-06 10:10:59', '2017-01-06 10:10:59');
INSERT INTO `operation_log` VALUES ('372', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-06 10:10:59', '2017-01-06 10:10:59');
INSERT INTO `operation_log` VALUES ('373', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-06 10:14:14', '2017-01-06 10:14:14');
INSERT INTO `operation_log` VALUES ('374', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-06 10:14:19', '2017-01-06 10:14:19');
INSERT INTO `operation_log` VALUES ('375', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:15:59', '2017-01-06 10:15:59');
INSERT INTO `operation_log` VALUES ('376', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:16:03', '2017-01-06 10:16:03');
INSERT INTO `operation_log` VALUES ('377', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:17:03', '2017-01-06 10:17:03');
INSERT INTO `operation_log` VALUES ('378', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:17:44', '2017-01-06 10:17:44');
INSERT INTO `operation_log` VALUES ('379', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:17:53', '2017-01-06 10:17:53');
INSERT INTO `operation_log` VALUES ('380', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:19:17', '2017-01-06 10:19:17');
INSERT INTO `operation_log` VALUES ('381', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:20:06', '2017-01-06 10:20:06');
INSERT INTO `operation_log` VALUES ('382', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:20:35', '2017-01-06 10:20:35');
INSERT INTO `operation_log` VALUES ('383', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:21:30', '2017-01-06 10:21:30');
INSERT INTO `operation_log` VALUES ('384', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:22:20', '2017-01-06 10:22:20');
INSERT INTO `operation_log` VALUES ('385', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:26:55', '2017-01-06 10:26:55');
INSERT INTO `operation_log` VALUES ('386', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-06 10:30:05', '2017-01-06 10:30:05');
INSERT INTO `operation_log` VALUES ('387', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 02:36:55', '2017-01-09 02:36:55');
INSERT INTO `operation_log` VALUES ('388', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 02:39:40', '2017-01-09 02:39:40');
INSERT INTO `operation_log` VALUES ('389', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 02:39:42', '2017-01-09 02:39:42');
INSERT INTO `operation_log` VALUES ('390', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 02:39:43', '2017-01-09 02:39:43');
INSERT INTO `operation_log` VALUES ('391', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:39:43', '2017-01-09 02:39:43');
INSERT INTO `operation_log` VALUES ('392', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:41:23', '2017-01-09 02:41:23');
INSERT INTO `operation_log` VALUES ('393', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:46:12', '2017-01-09 02:46:12');
INSERT INTO `operation_log` VALUES ('394', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:47:59', '2017-01-09 02:47:59');
INSERT INTO `operation_log` VALUES ('395', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:48:17', '2017-01-09 02:48:17');
INSERT INTO `operation_log` VALUES ('396', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:48:56', '2017-01-09 02:48:56');
INSERT INTO `operation_log` VALUES ('397', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:49:12', '2017-01-09 02:49:12');
INSERT INTO `operation_log` VALUES ('398', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 02:51:36', '2017-01-09 02:51:36');
INSERT INTO `operation_log` VALUES ('399', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 02:59:04', '2017-01-09 02:59:04');
INSERT INTO `operation_log` VALUES ('400', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:03:24', '2017-01-09 03:03:24');
INSERT INTO `operation_log` VALUES ('401', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:04:25', '2017-01-09 03:04:25');
INSERT INTO `operation_log` VALUES ('402', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:08:58', '2017-01-09 03:08:58');
INSERT INTO `operation_log` VALUES ('403', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:09:07', '2017-01-09 03:09:07');
INSERT INTO `operation_log` VALUES ('404', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:09:22', '2017-01-09 03:09:22');
INSERT INTO `operation_log` VALUES ('405', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:29:24', '2017-01-09 03:29:24');
INSERT INTO `operation_log` VALUES ('406', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:30:28', '2017-01-09 03:30:28');
INSERT INTO `operation_log` VALUES ('407', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 03:30:34', '2017-01-09 03:30:34');
INSERT INTO `operation_log` VALUES ('408', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 03:30:37', '2017-01-09 03:30:37');
INSERT INTO `operation_log` VALUES ('409', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:49:15', '2017-01-09 03:49:15');
INSERT INTO `operation_log` VALUES ('410', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:49:26', '2017-01-09 03:49:26');
INSERT INTO `operation_log` VALUES ('411', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 03:49:44', '2017-01-09 03:49:44');
INSERT INTO `operation_log` VALUES ('412', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 05:34:15', '2017-01-09 05:34:15');
INSERT INTO `operation_log` VALUES ('413', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 05:39:41', '2017-01-09 05:39:41');
INSERT INTO `operation_log` VALUES ('414', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 05:39:43', '2017-01-09 05:39:43');
INSERT INTO `operation_log` VALUES ('415', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 06:01:29', '2017-01-09 06:01:29');
INSERT INTO `operation_log` VALUES ('416', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 06:19:22', '2017-01-09 06:19:22');
INSERT INTO `operation_log` VALUES ('417', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 06:22:45', '2017-01-09 06:22:45');
INSERT INTO `operation_log` VALUES ('418', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:23:59', '2017-01-09 06:23:59');
INSERT INTO `operation_log` VALUES ('419', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:24:01', '2017-01-09 06:24:01');
INSERT INTO `operation_log` VALUES ('420', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:25:17', '2017-01-09 06:25:17');
INSERT INTO `operation_log` VALUES ('421', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:25:18', '2017-01-09 06:25:18');
INSERT INTO `operation_log` VALUES ('422', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"icon\":\"fa-500px\",\"uri\":\"auth\\/abc\",\"order\":\"3\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 06:25:40', '2017-01-09 06:25:40');
INSERT INTO `operation_log` VALUES ('423', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 06:25:40', '2017-01-09 06:25:40');
INSERT INTO `operation_log` VALUES ('424', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:25:56', '2017-01-09 06:25:56');
INSERT INTO `operation_log` VALUES ('425', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:25:59', '2017-01-09 06:25:59');
INSERT INTO `operation_log` VALUES ('426', '1', 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 06:26:02', '2017-01-09 06:26:02');
INSERT INTO `operation_log` VALUES ('427', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:26:03', '2017-01-09 06:26:03');
INSERT INTO `operation_log` VALUES ('428', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:26:08', '2017-01-09 06:26:08');
INSERT INTO `operation_log` VALUES ('429', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:26:08', '2017-01-09 06:26:08');
INSERT INTO `operation_log` VALUES ('430', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:26:10', '2017-01-09 06:26:10');
INSERT INTO `operation_log` VALUES ('431', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:29:15', '2017-01-09 06:29:15');
INSERT INTO `operation_log` VALUES ('432', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:29:17', '2017-01-09 06:29:17');
INSERT INTO `operation_log` VALUES ('433', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:31:28', '2017-01-09 06:31:28');
INSERT INTO `operation_log` VALUES ('434', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:31:30', '2017-01-09 06:31:30');
INSERT INTO `operation_log` VALUES ('435', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/1\",\"order\":\"1\",\"parent_id\":\"1\",\"_method\":\"PUT\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 06:31:35', '2017-01-09 06:31:35');
INSERT INTO `operation_log` VALUES ('436', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 06:31:35', '2017-01-09 06:31:35');
INSERT INTO `operation_log` VALUES ('437', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:31:37', '2017-01-09 06:31:37');
INSERT INTO `operation_log` VALUES ('438', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"order\":\"1\",\"parent_id\":\"2\",\"_method\":\"PUT\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 06:31:41', '2017-01-09 06:31:41');
INSERT INTO `operation_log` VALUES ('439', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 06:31:41', '2017-01-09 06:31:41');
INSERT INTO `operation_log` VALUES ('440', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:34:25', '2017-01-09 06:34:25');
INSERT INTO `operation_log` VALUES ('441', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 06:48:21', '2017-01-09 06:48:21');
INSERT INTO `operation_log` VALUES ('442', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 06:48:21', '2017-01-09 06:48:21');
INSERT INTO `operation_log` VALUES ('443', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 06:48:29', '2017-01-09 06:48:29');
INSERT INTO `operation_log` VALUES ('444', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 06:50:17', '2017-01-09 06:50:17');
INSERT INTO `operation_log` VALUES ('445', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 06:50:45', '2017-01-09 06:50:45');
INSERT INTO `operation_log` VALUES ('446', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 06:51:35', '2017-01-09 06:51:35');
INSERT INTO `operation_log` VALUES ('447', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:02:31', '2017-01-09 07:02:31');
INSERT INTO `operation_log` VALUES ('448', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:02:44', '2017-01-09 07:02:44');
INSERT INTO `operation_log` VALUES ('449', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:02:55', '2017-01-09 07:02:55');
INSERT INTO `operation_log` VALUES ('450', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:06:43', '2017-01-09 07:06:43');
INSERT INTO `operation_log` VALUES ('451', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:09', '2017-01-09 07:11:09');
INSERT INTO `operation_log` VALUES ('452', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:11', '2017-01-09 07:11:11');
INSERT INTO `operation_log` VALUES ('453', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:13', '2017-01-09 07:11:13');
INSERT INTO `operation_log` VALUES ('454', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:15', '2017-01-09 07:11:15');
INSERT INTO `operation_log` VALUES ('455', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:16', '2017-01-09 07:11:16');
INSERT INTO `operation_log` VALUES ('456', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:17', '2017-01-09 07:11:17');
INSERT INTO `operation_log` VALUES ('457', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:19', '2017-01-09 07:11:19');
INSERT INTO `operation_log` VALUES ('458', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:20', '2017-01-09 07:11:20');
INSERT INTO `operation_log` VALUES ('459', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:22', '2017-01-09 07:11:22');
INSERT INTO `operation_log` VALUES ('460', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:27', '2017-01-09 07:11:27');
INSERT INTO `operation_log` VALUES ('461', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:35', '2017-01-09 07:11:35');
INSERT INTO `operation_log` VALUES ('462', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:11:37', '2017-01-09 07:11:37');
INSERT INTO `operation_log` VALUES ('463', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:13:07', '2017-01-09 07:13:07');
INSERT INTO `operation_log` VALUES ('464', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:17:36', '2017-01-09 07:17:36');
INSERT INTO `operation_log` VALUES ('465', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:17:38', '2017-01-09 07:17:38');
INSERT INTO `operation_log` VALUES ('466', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:17:39', '2017-01-09 07:17:39');
INSERT INTO `operation_log` VALUES ('467', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:17:40', '2017-01-09 07:17:40');
INSERT INTO `operation_log` VALUES ('468', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:17:42', '2017-01-09 07:17:42');
INSERT INTO `operation_log` VALUES ('469', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:21:16', '2017-01-09 07:21:16');
INSERT INTO `operation_log` VALUES ('470', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:34:34', '2017-01-09 07:34:34');
INSERT INTO `operation_log` VALUES ('471', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:34:43', '2017-01-09 07:34:43');
INSERT INTO `operation_log` VALUES ('472', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:34:44', '2017-01-09 07:34:44');
INSERT INTO `operation_log` VALUES ('473', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:34:53', '2017-01-09 07:34:53');
INSERT INTO `operation_log` VALUES ('474', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:34:57', '2017-01-09 07:34:57');
INSERT INTO `operation_log` VALUES ('475', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:37:08', '2017-01-09 07:37:08');
INSERT INTO `operation_log` VALUES ('476', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:37:35', '2017-01-09 07:37:35');
INSERT INTO `operation_log` VALUES ('477', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:37:36', '2017-01-09 07:37:36');
INSERT INTO `operation_log` VALUES ('478', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:37:38', '2017-01-09 07:37:38');
INSERT INTO `operation_log` VALUES ('479', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:37:39', '2017-01-09 07:37:39');
INSERT INTO `operation_log` VALUES ('480', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:37:40', '2017-01-09 07:37:40');
INSERT INTO `operation_log` VALUES ('481', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:37:44', '2017-01-09 07:37:44');
INSERT INTO `operation_log` VALUES ('482', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"id\":\"3\",\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:38:18', '2017-01-09 07:38:18');
INSERT INTO `operation_log` VALUES ('483', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:38:28', '2017-01-09 07:38:28');
INSERT INTO `operation_log` VALUES ('484', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:39:23', '2017-01-09 07:39:23');
INSERT INTO `operation_log` VALUES ('485', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:23', '2017-01-09 07:39:23');
INSERT INTO `operation_log` VALUES ('486', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:24', '2017-01-09 07:39:24');
INSERT INTO `operation_log` VALUES ('487', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:24', '2017-01-09 07:39:24');
INSERT INTO `operation_log` VALUES ('488', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:24', '2017-01-09 07:39:24');
INSERT INTO `operation_log` VALUES ('489', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:24', '2017-01-09 07:39:24');
INSERT INTO `operation_log` VALUES ('490', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:24', '2017-01-09 07:39:24');
INSERT INTO `operation_log` VALUES ('491', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:25', '2017-01-09 07:39:25');
INSERT INTO `operation_log` VALUES ('492', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:25', '2017-01-09 07:39:25');
INSERT INTO `operation_log` VALUES ('493', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:25', '2017-01-09 07:39:25');
INSERT INTO `operation_log` VALUES ('494', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:25', '2017-01-09 07:39:25');
INSERT INTO `operation_log` VALUES ('495', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:39:26', '2017-01-09 07:39:26');
INSERT INTO `operation_log` VALUES ('496', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:26', '2017-01-09 07:39:26');
INSERT INTO `operation_log` VALUES ('497', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:39:26', '2017-01-09 07:39:26');
INSERT INTO `operation_log` VALUES ('498', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:39:27', '2017-01-09 07:39:27');
INSERT INTO `operation_log` VALUES ('499', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:27', '2017-01-09 07:39:27');
INSERT INTO `operation_log` VALUES ('500', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:27', '2017-01-09 07:39:27');
INSERT INTO `operation_log` VALUES ('501', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:27', '2017-01-09 07:39:27');
INSERT INTO `operation_log` VALUES ('502', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:28', '2017-01-09 07:39:28');
INSERT INTO `operation_log` VALUES ('503', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:28', '2017-01-09 07:39:28');
INSERT INTO `operation_log` VALUES ('504', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:28', '2017-01-09 07:39:28');
INSERT INTO `operation_log` VALUES ('505', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:50', '2017-01-09 07:39:50');
INSERT INTO `operation_log` VALUES ('506', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:56', '2017-01-09 07:39:56');
INSERT INTO `operation_log` VALUES ('507', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:39:57', '2017-01-09 07:39:57');
INSERT INTO `operation_log` VALUES ('508', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:40:02', '2017-01-09 07:40:02');
INSERT INTO `operation_log` VALUES ('509', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:40:02', '2017-01-09 07:40:02');
INSERT INTO `operation_log` VALUES ('510', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:40:40', '2017-01-09 07:40:40');
INSERT INTO `operation_log` VALUES ('511', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-01-09 07:42:56', '2017-01-09 07:42:56');
INSERT INTO `operation_log` VALUES ('512', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:43:12', '2017-01-09 07:43:12');
INSERT INTO `operation_log` VALUES ('513', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:43:17', '2017-01-09 07:43:17');
INSERT INTO `operation_log` VALUES ('514', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:43:19', '2017-01-09 07:43:19');
INSERT INTO `operation_log` VALUES ('515', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:43:21', '2017-01-09 07:43:21');
INSERT INTO `operation_log` VALUES ('516', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:43:21', '2017-01-09 07:43:21');
INSERT INTO `operation_log` VALUES ('517', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:43:42', '2017-01-09 07:43:42');
INSERT INTO `operation_log` VALUES ('518', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:43:43', '2017-01-09 07:43:43');
INSERT INTO `operation_log` VALUES ('519', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:43:43', '2017-01-09 07:43:43');
INSERT INTO `operation_log` VALUES ('520', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:44:27', '2017-01-09 07:44:27');
INSERT INTO `operation_log` VALUES ('521', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-09 07:44:28', '2017-01-09 07:44:28');
INSERT INTO `operation_log` VALUES ('522', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:44:52', '2017-01-09 07:44:52');
INSERT INTO `operation_log` VALUES ('523', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 07:46:15', '2017-01-09 07:46:15');
INSERT INTO `operation_log` VALUES ('524', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 07:46:27', '2017-01-09 07:46:27');
INSERT INTO `operation_log` VALUES ('525', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:46:30', '2017-01-09 07:46:30');
INSERT INTO `operation_log` VALUES ('526', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:46:35', '2017-01-09 07:46:35');
INSERT INTO `operation_log` VALUES ('527', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:46:36', '2017-01-09 07:46:36');
INSERT INTO `operation_log` VALUES ('528', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:46:38', '2017-01-09 07:46:38');
INSERT INTO `operation_log` VALUES ('529', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:46:54', '2017-01-09 07:46:54');
INSERT INTO `operation_log` VALUES ('530', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:46:55', '2017-01-09 07:46:55');
INSERT INTO `operation_log` VALUES ('531', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:47:17', '2017-01-09 07:47:17');
INSERT INTO `operation_log` VALUES ('532', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:47:19', '2017-01-09 07:47:19');
INSERT INTO `operation_log` VALUES ('533', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:47:20', '2017-01-09 07:47:20');
INSERT INTO `operation_log` VALUES ('534', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:47:21', '2017-01-09 07:47:21');
INSERT INTO `operation_log` VALUES ('535', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:47:31', '2017-01-09 07:47:31');
INSERT INTO `operation_log` VALUES ('536', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:48:26', '2017-01-09 07:48:26');
INSERT INTO `operation_log` VALUES ('537', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:48:28', '2017-01-09 07:48:28');
INSERT INTO `operation_log` VALUES ('538', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:48:34', '2017-01-09 07:48:34');
INSERT INTO `operation_log` VALUES ('539', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:49:09', '2017-01-09 07:49:09');
INSERT INTO `operation_log` VALUES ('540', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:49:17', '2017-01-09 07:49:17');
INSERT INTO `operation_log` VALUES ('541', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:49:40', '2017-01-09 07:49:40');
INSERT INTO `operation_log` VALUES ('542', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:49:44', '2017-01-09 07:49:44');
INSERT INTO `operation_log` VALUES ('543', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:49:58', '2017-01-09 07:49:58');
INSERT INTO `operation_log` VALUES ('544', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:50:20', '2017-01-09 07:50:20');
INSERT INTO `operation_log` VALUES ('545', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:50:28', '2017-01-09 07:50:28');
INSERT INTO `operation_log` VALUES ('546', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:51:02', '2017-01-09 07:51:02');
INSERT INTO `operation_log` VALUES ('547', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:51:30', '2017-01-09 07:51:30');
INSERT INTO `operation_log` VALUES ('548', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 07:51:48', '2017-01-09 07:51:48');
INSERT INTO `operation_log` VALUES ('549', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:52:07', '2017-01-09 07:52:07');
INSERT INTO `operation_log` VALUES ('550', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:52:11', '2017-01-09 07:52:11');
INSERT INTO `operation_log` VALUES ('551', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '[]', '2017-01-09 07:52:54', '2017-01-09 07:52:54');
INSERT INTO `operation_log` VALUES ('552', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '[]', '2017-01-09 07:53:26', '2017-01-09 07:53:26');
INSERT INTO `operation_log` VALUES ('553', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:55:11', '2017-01-09 07:55:11');
INSERT INTO `operation_log` VALUES ('554', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:55:47', '2017-01-09 07:55:47');
INSERT INTO `operation_log` VALUES ('555', '1', 'admin/auth/permission/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:55:49', '2017-01-09 07:55:49');
INSERT INTO `operation_log` VALUES ('556', '1', 'admin/auth/permission/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:56:42', '2017-01-09 07:56:42');
INSERT INTO `operation_log` VALUES ('557', '1', 'admin/auth/permission/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:57:02', '2017-01-09 07:57:02');
INSERT INTO `operation_log` VALUES ('558', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:57:37', '2017-01-09 07:57:37');
INSERT INTO `operation_log` VALUES ('559', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 07:58:36', '2017-01-09 07:58:36');
INSERT INTO `operation_log` VALUES ('560', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:58:50', '2017-01-09 07:58:50');
INSERT INTO `operation_log` VALUES ('561', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:59:07', '2017-01-09 07:59:07');
INSERT INTO `operation_log` VALUES ('562', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '[]', '2017-01-09 07:59:10', '2017-01-09 07:59:10');
INSERT INTO `operation_log` VALUES ('563', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 07:59:24', '2017-01-09 07:59:24');
INSERT INTO `operation_log` VALUES ('564', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:01:22', '2017-01-09 08:01:22');
INSERT INTO `operation_log` VALUES ('565', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:01:23', '2017-01-09 08:01:23');
INSERT INTO `operation_log` VALUES ('566', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:01:25', '2017-01-09 08:01:25');
INSERT INTO `operation_log` VALUES ('567', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 08:01:31', '2017-01-09 08:01:31');
INSERT INTO `operation_log` VALUES ('568', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 08:01:55', '2017-01-09 08:01:55');
INSERT INTO `operation_log` VALUES ('569', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:02:01', '2017-01-09 08:02:01');
INSERT INTO `operation_log` VALUES ('570', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:02:03', '2017-01-09 08:02:03');
INSERT INTO `operation_log` VALUES ('571', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 08:02:31', '2017-01-09 08:02:31');
INSERT INTO `operation_log` VALUES ('572', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 08:02:36', '2017-01-09 08:02:36');
INSERT INTO `operation_log` VALUES ('573', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:07:02', '2017-01-09 08:07:02');
INSERT INTO `operation_log` VALUES ('574', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:07:35', '2017-01-09 08:07:35');
INSERT INTO `operation_log` VALUES ('575', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:07:36', '2017-01-09 08:07:36');
INSERT INTO `operation_log` VALUES ('576', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:07:38', '2017-01-09 08:07:38');
INSERT INTO `operation_log` VALUES ('577', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:05', '2017-01-09 08:08:05');
INSERT INTO `operation_log` VALUES ('578', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:08', '2017-01-09 08:08:08');
INSERT INTO `operation_log` VALUES ('579', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:10', '2017-01-09 08:08:10');
INSERT INTO `operation_log` VALUES ('580', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:11', '2017-01-09 08:08:11');
INSERT INTO `operation_log` VALUES ('581', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:17', '2017-01-09 08:08:17');
INSERT INTO `operation_log` VALUES ('582', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:18', '2017-01-09 08:08:18');
INSERT INTO `operation_log` VALUES ('583', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:08:19', '2017-01-09 08:08:19');
INSERT INTO `operation_log` VALUES ('584', '1', 'admin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:32', '2017-01-09 08:10:32');
INSERT INTO `operation_log` VALUES ('585', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:33', '2017-01-09 08:10:33');
INSERT INTO `operation_log` VALUES ('586', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:36', '2017-01-09 08:10:36');
INSERT INTO `operation_log` VALUES ('587', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:38', '2017-01-09 08:10:38');
INSERT INTO `operation_log` VALUES ('588', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:41', '2017-01-09 08:10:41');
INSERT INTO `operation_log` VALUES ('589', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:44', '2017-01-09 08:10:44');
INSERT INTO `operation_log` VALUES ('590', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:10:49', '2017-01-09 08:10:49');
INSERT INTO `operation_log` VALUES ('591', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:11:15', '2017-01-09 08:11:15');
INSERT INTO `operation_log` VALUES ('592', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:11:17', '2017-01-09 08:11:17');
INSERT INTO `operation_log` VALUES ('593', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:11:18', '2017-01-09 08:11:18');
INSERT INTO `operation_log` VALUES ('594', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:11:19', '2017-01-09 08:11:19');
INSERT INTO `operation_log` VALUES ('595', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:11:49', '2017-01-09 08:11:49');
INSERT INTO `operation_log` VALUES ('596', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:40', '2017-01-09 08:12:40');
INSERT INTO `operation_log` VALUES ('597', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:42', '2017-01-09 08:12:42');
INSERT INTO `operation_log` VALUES ('598', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:44', '2017-01-09 08:12:44');
INSERT INTO `operation_log` VALUES ('599', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:54', '2017-01-09 08:12:54');
INSERT INTO `operation_log` VALUES ('600', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:57', '2017-01-09 08:12:57');
INSERT INTO `operation_log` VALUES ('601', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:12:59', '2017-01-09 08:12:59');
INSERT INTO `operation_log` VALUES ('602', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:13:01', '2017-01-09 08:13:01');
INSERT INTO `operation_log` VALUES ('603', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:13:02', '2017-01-09 08:13:02');
INSERT INTO `operation_log` VALUES ('604', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-09 08:14:05', '2017-01-09 08:14:05');
INSERT INTO `operation_log` VALUES ('605', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:14:14', '2017-01-09 08:14:14');
INSERT INTO `operation_log` VALUES ('606', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:14:52', '2017-01-09 08:14:52');
INSERT INTO `operation_log` VALUES ('607', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:15:17', '2017-01-09 08:15:17');
INSERT INTO `operation_log` VALUES ('608', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:15:34', '2017-01-09 08:15:34');
INSERT INTO `operation_log` VALUES ('609', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:16:40', '2017-01-09 08:16:40');
INSERT INTO `operation_log` VALUES ('610', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-09 08:18:21', '2017-01-09 08:18:21');
INSERT INTO `operation_log` VALUES ('611', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:18:25', '2017-01-09 08:18:25');
INSERT INTO `operation_log` VALUES ('612', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:18:29', '2017-01-09 08:18:29');
INSERT INTO `operation_log` VALUES ('613', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:18:39', '2017-01-09 08:18:39');
INSERT INTO `operation_log` VALUES ('614', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:18:40', '2017-01-09 08:18:40');
INSERT INTO `operation_log` VALUES ('615', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 08:19:41', '2017-01-09 08:19:41');
INSERT INTO `operation_log` VALUES ('616', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:20:46', '2017-01-09 08:20:46');
INSERT INTO `operation_log` VALUES ('617', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:20:49', '2017-01-09 08:20:49');
INSERT INTO `operation_log` VALUES ('618', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 08:20:52', '2017-01-09 08:20:52');
INSERT INTO `operation_log` VALUES ('619', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 08:21:06', '2017-01-09 08:21:06');
INSERT INTO `operation_log` VALUES ('620', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:21:17', '2017-01-09 08:21:17');
INSERT INTO `operation_log` VALUES ('621', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '[]', '2017-01-09 08:22:38', '2017-01-09 08:22:38');
INSERT INTO `operation_log` VALUES ('622', '1', 'admin/auth/permission/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:22:43', '2017-01-09 08:22:43');
INSERT INTO `operation_log` VALUES ('623', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:22:47', '2017-01-09 08:22:47');
INSERT INTO `operation_log` VALUES ('624', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:22:51', '2017-01-09 08:22:51');
INSERT INTO `operation_log` VALUES ('625', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:23:14', '2017-01-09 08:23:14');
INSERT INTO `operation_log` VALUES ('626', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 08:23:16', '2017-01-09 08:23:16');
INSERT INTO `operation_log` VALUES ('627', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-09 09:33:29', '2017-01-09 09:33:29');
INSERT INTO `operation_log` VALUES ('628', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:33:35', '2017-01-09 09:33:35');
INSERT INTO `operation_log` VALUES ('629', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:33:37', '2017-01-09 09:33:37');
INSERT INTO `operation_log` VALUES ('630', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:33:39', '2017-01-09 09:33:39');
INSERT INTO `operation_log` VALUES ('631', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:33:47', '2017-01-09 09:33:47');
INSERT INTO `operation_log` VALUES ('632', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:36:17', '2017-01-09 09:36:17');
INSERT INTO `operation_log` VALUES ('633', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:36:21', '2017-01-09 09:36:21');
INSERT INTO `operation_log` VALUES ('634', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:36:28', '2017-01-09 09:36:28');
INSERT INTO `operation_log` VALUES ('635', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"Tag\",\"icon\":\"fa-tag\",\"uri\":\"auth\\/tag\",\"order\":\"0\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 09:37:13', '2017-01-09 09:37:13');
INSERT INTO `operation_log` VALUES ('636', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:37:13', '2017-01-09 09:37:13');
INSERT INTO `operation_log` VALUES ('637', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"Tag\",\"icon\":\"fa-tag\",\"uri\":\"auth\\/tag\",\"order\":\"0\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 09:38:07', '2017-01-09 09:38:07');
INSERT INTO `operation_log` VALUES ('638', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:07', '2017-01-09 09:38:07');
INSERT INTO `operation_log` VALUES ('639', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:07', '2017-01-09 09:38:07');
INSERT INTO `operation_log` VALUES ('640', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:07', '2017-01-09 09:38:07');
INSERT INTO `operation_log` VALUES ('641', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:07', '2017-01-09 09:38:07');
INSERT INTO `operation_log` VALUES ('642', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:08', '2017-01-09 09:38:08');
INSERT INTO `operation_log` VALUES ('643', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:08', '2017-01-09 09:38:08');
INSERT INTO `operation_log` VALUES ('644', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:08', '2017-01-09 09:38:08');
INSERT INTO `operation_log` VALUES ('645', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:08', '2017-01-09 09:38:08');
INSERT INTO `operation_log` VALUES ('646', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:09', '2017-01-09 09:38:09');
INSERT INTO `operation_log` VALUES ('647', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"Tag\",\"icon\":\"fa-tag\",\"uri\":\"auth\\/tag\",\"order\":\"0\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 09:38:09', '2017-01-09 09:38:09');
INSERT INTO `operation_log` VALUES ('648', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:09', '2017-01-09 09:38:09');
INSERT INTO `operation_log` VALUES ('649', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:38:52', '2017-01-09 09:38:52');
INSERT INTO `operation_log` VALUES ('650', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 09:38:52', '2017-01-09 09:38:52');
INSERT INTO `operation_log` VALUES ('651', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 09:39:45', '2017-01-09 09:39:45');
INSERT INTO `operation_log` VALUES ('652', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:40:24', '2017-01-09 09:40:24');
INSERT INTO `operation_log` VALUES ('653', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"Tag\",\"icon\":\"fa-tags\",\"uri\":\"auth\\/tag\",\"order\":\"3\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 09:40:45', '2017-01-09 09:40:45');
INSERT INTO `operation_log` VALUES ('654', '1', 'admin/auth/menu/create', 'GET', '127.0.0.1', '[]', '2017-01-09 09:40:45', '2017-01-09 09:40:45');
INSERT INTO `operation_log` VALUES ('655', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"title\":\"Tag\",\"icon\":\"fa-tags\",\"uri\":\"auth\\/tag\",\"order\":\"3\",\"parent_id\":\"2\",\"_token\":\"GXzIEsVY3AmULUEFBnBsy8b7GJkUFYQsDv8njvX2\"}', '2017-01-09 09:42:26', '2017-01-09 09:42:26');
INSERT INTO `operation_log` VALUES ('656', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 09:42:27', '2017-01-09 09:42:27');
INSERT INTO `operation_log` VALUES ('657', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 09:42:42', '2017-01-09 09:42:42');
INSERT INTO `operation_log` VALUES ('658', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-09 09:45:57', '2017-01-09 09:45:57');
INSERT INTO `operation_log` VALUES ('659', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-09 09:47:42', '2017-01-09 09:47:42');
INSERT INTO `operation_log` VALUES ('660', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-09 09:49:08', '2017-01-09 09:49:08');
INSERT INTO `operation_log` VALUES ('661', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-09 09:50:11', '2017-01-09 09:50:11');
INSERT INTO `operation_log` VALUES ('662', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-09 09:50:39', '2017-01-09 09:50:39');
INSERT INTO `operation_log` VALUES ('663', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-09 09:59:28', '2017-01-09 09:59:28');
INSERT INTO `operation_log` VALUES ('664', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 10:00:04', '2017-01-09 10:00:04');
INSERT INTO `operation_log` VALUES ('665', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-09 10:05:07', '2017-01-09 10:05:07');
INSERT INTO `operation_log` VALUES ('666', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-10 01:41:50', '2017-01-10 01:41:50');
INSERT INTO `operation_log` VALUES ('667', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 01:41:57', '2017-01-10 01:41:57');
INSERT INTO `operation_log` VALUES ('668', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 01:42:27', '2017-01-10 01:42:27');
INSERT INTO `operation_log` VALUES ('669', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 01:42:33', '2017-01-10 01:42:33');
INSERT INTO `operation_log` VALUES ('670', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 01:42:40', '2017-01-10 01:42:40');
INSERT INTO `operation_log` VALUES ('671', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 01:42:44', '2017-01-10 01:42:44');
INSERT INTO `operation_log` VALUES ('672', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 01:42:46', '2017-01-10 01:42:46');
INSERT INTO `operation_log` VALUES ('673', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:47:41', '2017-01-10 01:47:41');
INSERT INTO `operation_log` VALUES ('674', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:48:08', '2017-01-10 01:48:08');
INSERT INTO `operation_log` VALUES ('675', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:49:44', '2017-01-10 01:49:44');
INSERT INTO `operation_log` VALUES ('676', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:50:10', '2017-01-10 01:50:10');
INSERT INTO `operation_log` VALUES ('677', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:51:18', '2017-01-10 01:51:18');
INSERT INTO `operation_log` VALUES ('678', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:52:04', '2017-01-10 01:52:04');
INSERT INTO `operation_log` VALUES ('679', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:52:42', '2017-01-10 01:52:42');
INSERT INTO `operation_log` VALUES ('680', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:53:02', '2017-01-10 01:53:02');
INSERT INTO `operation_log` VALUES ('681', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:53:45', '2017-01-10 01:53:45');
INSERT INTO `operation_log` VALUES ('682', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 01:56:02', '2017-01-10 01:56:02');
INSERT INTO `operation_log` VALUES ('683', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:17:46', '2017-01-10 02:17:46');
INSERT INTO `operation_log` VALUES ('684', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:19:39', '2017-01-10 02:19:39');
INSERT INTO `operation_log` VALUES ('685', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:20:05', '2017-01-10 02:20:05');
INSERT INTO `operation_log` VALUES ('686', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:21:37', '2017-01-10 02:21:37');
INSERT INTO `operation_log` VALUES ('687', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:22:56', '2017-01-10 02:22:56');
INSERT INTO `operation_log` VALUES ('688', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:24:26', '2017-01-10 02:24:26');
INSERT INTO `operation_log` VALUES ('689', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:25:13', '2017-01-10 02:25:13');
INSERT INTO `operation_log` VALUES ('690', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:26:05', '2017-01-10 02:26:05');
INSERT INTO `operation_log` VALUES ('691', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:26:40', '2017-01-10 02:26:40');
INSERT INTO `operation_log` VALUES ('692', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:27:35', '2017-01-10 02:27:35');
INSERT INTO `operation_log` VALUES ('693', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:31:28', '2017-01-10 02:31:28');
INSERT INTO `operation_log` VALUES ('694', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:31:46', '2017-01-10 02:31:46');
INSERT INTO `operation_log` VALUES ('695', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:31:55', '2017-01-10 02:31:55');
INSERT INTO `operation_log` VALUES ('696', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:32:06', '2017-01-10 02:32:06');
INSERT INTO `operation_log` VALUES ('697', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:32:42', '2017-01-10 02:32:42');
INSERT INTO `operation_log` VALUES ('698', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:32:55', '2017-01-10 02:32:55');
INSERT INTO `operation_log` VALUES ('699', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:34:20', '2017-01-10 02:34:20');
INSERT INTO `operation_log` VALUES ('700', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 02:36:59', '2017-01-10 02:36:59');
INSERT INTO `operation_log` VALUES ('701', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:37:06', '2017-01-10 02:37:06');
INSERT INTO `operation_log` VALUES ('702', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 02:38:07', '2017-01-10 02:38:07');
INSERT INTO `operation_log` VALUES ('703', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:38:15', '2017-01-10 02:38:15');
INSERT INTO `operation_log` VALUES ('704', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:38:17', '2017-01-10 02:38:17');
INSERT INTO `operation_log` VALUES ('705', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 02:39:25', '2017-01-10 02:39:25');
INSERT INTO `operation_log` VALUES ('706', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 02:40:05', '2017-01-10 02:40:05');
INSERT INTO `operation_log` VALUES ('707', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:42:16', '2017-01-10 02:42:16');
INSERT INTO `operation_log` VALUES ('708', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:42:19', '2017-01-10 02:42:19');
INSERT INTO `operation_log` VALUES ('709', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 02:42:20', '2017-01-10 02:42:20');
INSERT INTO `operation_log` VALUES ('710', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:42:47', '2017-01-10 02:42:47');
INSERT INTO `operation_log` VALUES ('711', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:42:52', '2017-01-10 02:42:52');
INSERT INTO `operation_log` VALUES ('712', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:42:53', '2017-01-10 02:42:53');
INSERT INTO `operation_log` VALUES ('713', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-10 02:43:21', '2017-01-10 02:43:21');
INSERT INTO `operation_log` VALUES ('714', '1', 'admin/auth/permission', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:43:27', '2017-01-10 02:43:27');
INSERT INTO `operation_log` VALUES ('715', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:43:43', '2017-01-10 02:43:43');
INSERT INTO `operation_log` VALUES ('716', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:49:11', '2017-01-10 02:49:11');
INSERT INTO `operation_log` VALUES ('717', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:49:16', '2017-01-10 02:49:16');
INSERT INTO `operation_log` VALUES ('718', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 02:49:19', '2017-01-10 02:49:19');
INSERT INTO `operation_log` VALUES ('719', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 02:51:57', '2017-01-10 02:51:57');
INSERT INTO `operation_log` VALUES ('720', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:00:53', '2017-01-10 03:00:53');
INSERT INTO `operation_log` VALUES ('721', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:03:57', '2017-01-10 03:03:57');
INSERT INTO `operation_log` VALUES ('722', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:06:19', '2017-01-10 03:06:19');
INSERT INTO `operation_log` VALUES ('723', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:06:34', '2017-01-10 03:06:34');
INSERT INTO `operation_log` VALUES ('724', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:07:23', '2017-01-10 03:07:23');
INSERT INTO `operation_log` VALUES ('725', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:22:52', '2017-01-10 03:22:52');
INSERT INTO `operation_log` VALUES ('726', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:30:42', '2017-01-10 03:30:42');
INSERT INTO `operation_log` VALUES ('727', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 03:31:33', '2017-01-10 03:31:33');
INSERT INTO `operation_log` VALUES ('728', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 04:04:03', '2017-01-10 04:04:03');
INSERT INTO `operation_log` VALUES ('729', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 04:28:28', '2017-01-10 04:28:28');
INSERT INTO `operation_log` VALUES ('730', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 04:28:46', '2017-01-10 04:28:46');
INSERT INTO `operation_log` VALUES ('731', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 04:51:10', '2017-01-10 04:51:10');
INSERT INTO `operation_log` VALUES ('732', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 05:33:58', '2017-01-10 05:33:58');
INSERT INTO `operation_log` VALUES ('733', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:34:28', '2017-01-10 05:34:28');
INSERT INTO `operation_log` VALUES ('734', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:34:31', '2017-01-10 05:34:31');
INSERT INTO `operation_log` VALUES ('735', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 05:36:01', '2017-01-10 05:36:01');
INSERT INTO `operation_log` VALUES ('736', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:36:38', '2017-01-10 05:36:38');
INSERT INTO `operation_log` VALUES ('737', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:37:34', '2017-01-10 05:37:34');
INSERT INTO `operation_log` VALUES ('738', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:37:36', '2017-01-10 05:37:36');
INSERT INTO `operation_log` VALUES ('739', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:37:52', '2017-01-10 05:37:52');
INSERT INTO `operation_log` VALUES ('740', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:37:55', '2017-01-10 05:37:55');
INSERT INTO `operation_log` VALUES ('741', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:37:56', '2017-01-10 05:37:56');
INSERT INTO `operation_log` VALUES ('742', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:38:43', '2017-01-10 05:38:43');
INSERT INTO `operation_log` VALUES ('743', '1', 'admin/auth/role/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:38:48', '2017-01-10 05:38:48');
INSERT INTO `operation_log` VALUES ('744', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:41:47', '2017-01-10 05:41:47');
INSERT INTO `operation_log` VALUES ('745', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"username\",\"type\":\"desc\"}}', '2017-01-10 05:41:51', '2017-01-10 05:41:51');
INSERT INTO `operation_log` VALUES ('746', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"username\",\"type\":\"asc\"}}', '2017-01-10 05:41:53', '2017-01-10 05:41:53');
INSERT INTO `operation_log` VALUES ('747', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:41:58', '2017-01-10 05:41:58');
INSERT INTO `operation_log` VALUES ('748', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:42:05', '2017-01-10 05:42:05');
INSERT INTO `operation_log` VALUES ('749', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:49:32', '2017-01-10 05:49:32');
INSERT INTO `operation_log` VALUES ('750', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:51:40', '2017-01-10 05:51:40');
INSERT INTO `operation_log` VALUES ('751', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 05:52:30', '2017-01-10 05:52:30');
INSERT INTO `operation_log` VALUES ('752', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 05:54:16', '2017-01-10 05:54:16');
INSERT INTO `operation_log` VALUES ('753', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 06:01:10', '2017-01-10 06:01:10');
INSERT INTO `operation_log` VALUES ('754', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:04:09', '2017-01-10 06:04:09');
INSERT INTO `operation_log` VALUES ('755', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:05:06', '2017-01-10 06:05:06');
INSERT INTO `operation_log` VALUES ('756', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:05:49', '2017-01-10 06:05:49');
INSERT INTO `operation_log` VALUES ('757', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:14:55', '2017-01-10 06:14:55');
INSERT INTO `operation_log` VALUES ('758', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:15:14', '2017-01-10 06:15:14');
INSERT INTO `operation_log` VALUES ('759', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:17:26', '2017-01-10 06:17:26');
INSERT INTO `operation_log` VALUES ('760', '1', 'admin/auth/tag/1', 'PUT', '127.0.0.1', '{\"recommend\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 06:17:32', '2017-01-10 06:17:32');
INSERT INTO `operation_log` VALUES ('761', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:17:43', '2017-01-10 06:17:43');
INSERT INTO `operation_log` VALUES ('762', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 06:18:17', '2017-01-10 06:18:17');
INSERT INTO `operation_log` VALUES ('763', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2017-01-10 06:18:58', '2017-01-10 06:18:58');
INSERT INTO `operation_log` VALUES ('764', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2017-01-10 06:19:00', '2017-01-10 06:19:00');
INSERT INTO `operation_log` VALUES ('765', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 06:19:02', '2017-01-10 06:19:02');
INSERT INTO `operation_log` VALUES ('766', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:21:59', '2017-01-10 06:21:59');
INSERT INTO `operation_log` VALUES ('767', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:22:50', '2017-01-10 06:22:50');
INSERT INTO `operation_log` VALUES ('768', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:23:08', '2017-01-10 06:23:08');
INSERT INTO `operation_log` VALUES ('769', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:23:35', '2017-01-10 06:23:35');
INSERT INTO `operation_log` VALUES ('770', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:28:21', '2017-01-10 06:28:21');
INSERT INTO `operation_log` VALUES ('771', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:28:37', '2017-01-10 06:28:37');
INSERT INTO `operation_log` VALUES ('772', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:28:58', '2017-01-10 06:28:58');
INSERT INTO `operation_log` VALUES ('773', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:51:21', '2017-01-10 06:51:21');
INSERT INTO `operation_log` VALUES ('774', '1', 'admin/auth/tag/11/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 06:53:49', '2017-01-10 06:53:49');
INSERT INTO `operation_log` VALUES ('775', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 06:57:05', '2017-01-10 06:57:05');
INSERT INTO `operation_log` VALUES ('776', '1', 'admin/auth/tag/1', 'PUT', '127.0.0.1', '{\"recommend\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 06:57:09', '2017-01-10 06:57:09');
INSERT INTO `operation_log` VALUES ('777', '1', 'admin/auth/tag/1', 'PUT', '127.0.0.1', '{\"new\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 06:57:18', '2017-01-10 06:57:18');
INSERT INTO `operation_log` VALUES ('778', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:00:35', '2017-01-10 07:00:35');
INSERT INTO `operation_log` VALUES ('779', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:00:41', '2017-01-10 07:00:41');
INSERT INTO `operation_log` VALUES ('780', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:06:19', '2017-01-10 07:06:19');
INSERT INTO `operation_log` VALUES ('781', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:06:35', '2017-01-10 07:06:35');
INSERT INTO `operation_log` VALUES ('782', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:06:56', '2017-01-10 07:06:56');
INSERT INTO `operation_log` VALUES ('783', '1', 'admin/auth/tag/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:07:00', '2017-01-10 07:07:00');
INSERT INTO `operation_log` VALUES ('784', '1', 'admin/auth/tag/2/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:09:05', '2017-01-10 07:09:05');
INSERT INTO `operation_log` VALUES ('785', '1', 'admin/auth/tag/2', 'PUT', '127.0.0.1', '{\"name\":\"Aut optio optio itaque qui rem assumenda id.\",\"tag_class\":\"3\",\"recommend\":\"off\",\"hot\":\"off\",\"new\":\"off\",\"status\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 07:09:14', '2017-01-10 07:09:14');
INSERT INTO `operation_log` VALUES ('786', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-01-10 07:09:14', '2017-01-10 07:09:14');
INSERT INTO `operation_log` VALUES ('787', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-10 07:09:15', '2017-01-10 07:09:15');
INSERT INTO `operation_log` VALUES ('788', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:09:18', '2017-01-10 07:09:18');
INSERT INTO `operation_log` VALUES ('789', '1', 'admin/auth/tag/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:09:21', '2017-01-10 07:09:21');
INSERT INTO `operation_log` VALUES ('790', '1', 'admin/auth/tag/2', 'PUT', '127.0.0.1', '{\"name\":\"Aut optio optio itaque qui rem assumenda id.\",\"tag_class\":\"5\",\"recommend\":\"off\",\"hot\":\"off\",\"new\":\"off\",\"status\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/tag\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 07:10:54', '2017-01-10 07:10:54');
INSERT INTO `operation_log` VALUES ('791', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:10:55', '2017-01-10 07:10:55');
INSERT INTO `operation_log` VALUES ('792', '1', 'admin/auth/tag/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:10:58', '2017-01-10 07:10:58');
INSERT INTO `operation_log` VALUES ('793', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:11:20', '2017-01-10 07:11:20');
INSERT INTO `operation_log` VALUES ('794', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:13:08', '2017-01-10 07:13:08');
INSERT INTO `operation_log` VALUES ('795', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:14:50', '2017-01-10 07:14:50');
INSERT INTO `operation_log` VALUES ('796', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:22:28', '2017-01-10 07:22:28');
INSERT INTO `operation_log` VALUES ('797', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:23:12', '2017-01-10 07:23:12');
INSERT INTO `operation_log` VALUES ('798', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:23:28', '2017-01-10 07:23:28');
INSERT INTO `operation_log` VALUES ('799', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:23:55', '2017-01-10 07:23:55');
INSERT INTO `operation_log` VALUES ('800', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:25:25', '2017-01-10 07:25:25');
INSERT INTO `operation_log` VALUES ('801', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:25:33', '2017-01-10 07:25:33');
INSERT INTO `operation_log` VALUES ('802', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:27:39', '2017-01-10 07:27:39');
INSERT INTO `operation_log` VALUES ('803', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:28:08', '2017-01-10 07:28:08');
INSERT INTO `operation_log` VALUES ('804', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:29:04', '2017-01-10 07:29:04');
INSERT INTO `operation_log` VALUES ('805', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:29:30', '2017-01-10 07:29:30');
INSERT INTO `operation_log` VALUES ('806', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:30:12', '2017-01-10 07:30:12');
INSERT INTO `operation_log` VALUES ('807', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:30:19', '2017-01-10 07:30:19');
INSERT INTO `operation_log` VALUES ('808', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:30:45', '2017-01-10 07:30:45');
INSERT INTO `operation_log` VALUES ('809', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:31:07', '2017-01-10 07:31:07');
INSERT INTO `operation_log` VALUES ('810', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:35:53', '2017-01-10 07:35:53');
INSERT INTO `operation_log` VALUES ('811', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:36:08', '2017-01-10 07:36:08');
INSERT INTO `operation_log` VALUES ('812', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:37:14', '2017-01-10 07:37:14');
INSERT INTO `operation_log` VALUES ('813', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:37:36', '2017-01-10 07:37:36');
INSERT INTO `operation_log` VALUES ('814', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '[]', '2017-01-10 07:38:29', '2017-01-10 07:38:29');
INSERT INTO `operation_log` VALUES ('815', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 07:38:38', '2017-01-10 07:38:38');
INSERT INTO `operation_log` VALUES ('816', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:43:06', '2017-01-10 07:43:06');
INSERT INTO `operation_log` VALUES ('817', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:43:52', '2017-01-10 07:43:52');
INSERT INTO `operation_log` VALUES ('818', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:44:04', '2017-01-10 07:44:04');
INSERT INTO `operation_log` VALUES ('819', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:44:18', '2017-01-10 07:44:18');
INSERT INTO `operation_log` VALUES ('820', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:45:15', '2017-01-10 07:45:15');
INSERT INTO `operation_log` VALUES ('821', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:46:14', '2017-01-10 07:46:14');
INSERT INTO `operation_log` VALUES ('822', '1', 'admin/auth/tag/1', 'PUT', '127.0.0.1', '{\"name\":\"Consequatur perspiciatis autem perferendis autem qui praesentium.\",\"tag_class\":\"btn-info\",\"recommend\":\"on\",\"hot\":\"off\",\"new\":\"on\",\"status\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 07:46:26', '2017-01-10 07:46:26');
INSERT INTO `operation_log` VALUES ('823', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:46:27', '2017-01-10 07:46:27');
INSERT INTO `operation_log` VALUES ('824', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:47:52', '2017-01-10 07:47:52');
INSERT INTO `operation_log` VALUES ('825', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:51:32', '2017-01-10 07:51:32');
INSERT INTO `operation_log` VALUES ('826', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:51:41', '2017-01-10 07:51:41');
INSERT INTO `operation_log` VALUES ('827', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:52:22', '2017-01-10 07:52:22');
INSERT INTO `operation_log` VALUES ('828', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:52:36', '2017-01-10 07:52:36');
INSERT INTO `operation_log` VALUES ('829', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:52:54', '2017-01-10 07:52:54');
INSERT INTO `operation_log` VALUES ('830', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:53:26', '2017-01-10 07:53:26');
INSERT INTO `operation_log` VALUES ('831', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:54:25', '2017-01-10 07:54:25');
INSERT INTO `operation_log` VALUES ('832', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:58:16', '2017-01-10 07:58:16');
INSERT INTO `operation_log` VALUES ('833', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:58:29', '2017-01-10 07:58:29');
INSERT INTO `operation_log` VALUES ('834', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:58:50', '2017-01-10 07:58:50');
INSERT INTO `operation_log` VALUES ('835', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 07:59:42', '2017-01-10 07:59:42');
INSERT INTO `operation_log` VALUES ('836', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:04:44', '2017-01-10 08:04:44');
INSERT INTO `operation_log` VALUES ('837', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:05:04', '2017-01-10 08:05:04');
INSERT INTO `operation_log` VALUES ('838', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:05:15', '2017-01-10 08:05:15');
INSERT INTO `operation_log` VALUES ('839', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:05:22', '2017-01-10 08:05:22');
INSERT INTO `operation_log` VALUES ('840', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:06:03', '2017-01-10 08:06:03');
INSERT INTO `operation_log` VALUES ('841', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:08:02', '2017-01-10 08:08:02');
INSERT INTO `operation_log` VALUES ('842', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:11:27', '2017-01-10 08:11:27');
INSERT INTO `operation_log` VALUES ('843', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:14:20', '2017-01-10 08:14:20');
INSERT INTO `operation_log` VALUES ('844', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:18:05', '2017-01-10 08:18:05');
INSERT INTO `operation_log` VALUES ('845', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:19:06', '2017-01-10 08:19:06');
INSERT INTO `operation_log` VALUES ('846', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:19:18', '2017-01-10 08:19:18');
INSERT INTO `operation_log` VALUES ('847', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:19:42', '2017-01-10 08:19:42');
INSERT INTO `operation_log` VALUES ('848', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:19:56', '2017-01-10 08:19:56');
INSERT INTO `operation_log` VALUES ('849', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:20:25', '2017-01-10 08:20:25');
INSERT INTO `operation_log` VALUES ('850', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:23:05', '2017-01-10 08:23:05');
INSERT INTO `operation_log` VALUES ('851', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:23:17', '2017-01-10 08:23:17');
INSERT INTO `operation_log` VALUES ('852', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:24:35', '2017-01-10 08:24:35');
INSERT INTO `operation_log` VALUES ('853', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-10 08:25:33', '2017-01-10 08:25:33');
INSERT INTO `operation_log` VALUES ('854', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:41:13', '2017-01-10 08:41:13');
INSERT INTO `operation_log` VALUES ('855', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Link\",\"icon\":\"fa-link\",\"uri\":\"auth\\/link\",\"order\":\"4\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 08:41:51', '2017-01-10 08:41:51');
INSERT INTO `operation_log` VALUES ('856', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 08:41:51', '2017-01-10 08:41:51');
INSERT INTO `operation_log` VALUES ('857', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:41:59', '2017-01-10 08:41:59');
INSERT INTO `operation_log` VALUES ('858', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"title\":\"Link\",\"icon\":\"fa-link\",\"uri\":\"auth\\/link\",\"order\":\"4\",\"parent_id\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 08:42:05', '2017-01-10 08:42:05');
INSERT INTO `operation_log` VALUES ('859', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 08:42:05', '2017-01-10 08:42:05');
INSERT INTO `operation_log` VALUES ('860', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 08:42:11', '2017-01-10 08:42:11');
INSERT INTO `operation_log` VALUES ('861', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:43:57', '2017-01-10 08:43:57');
INSERT INTO `operation_log` VALUES ('862', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:44:23', '2017-01-10 08:44:23');
INSERT INTO `operation_log` VALUES ('863', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:45:33', '2017-01-10 08:45:33');
INSERT INTO `operation_log` VALUES ('864', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:46:04', '2017-01-10 08:46:04');
INSERT INTO `operation_log` VALUES ('865', '1', 'admin/auth/link/1', 'PUT', '127.0.0.1', '{\"recommend\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 08:46:10', '2017-01-10 08:46:10');
INSERT INTO `operation_log` VALUES ('866', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:46:11', '2017-01-10 08:46:11');
INSERT INTO `operation_log` VALUES ('867', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:47:13', '2017-01-10 08:47:13');
INSERT INTO `operation_log` VALUES ('868', '1', 'admin/auth/link/1', 'PUT', '127.0.0.1', '{\"recommend\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 08:47:30', '2017-01-10 08:47:30');
INSERT INTO `operation_log` VALUES ('869', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:48:16', '2017-01-10 08:48:16');
INSERT INTO `operation_log` VALUES ('870', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:48:16', '2017-01-10 08:48:16');
INSERT INTO `operation_log` VALUES ('871', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:51:30', '2017-01-10 08:51:30');
INSERT INTO `operation_log` VALUES ('872', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:51:35', '2017-01-10 08:51:35');
INSERT INTO `operation_log` VALUES ('873', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:51:35', '2017-01-10 08:51:35');
INSERT INTO `operation_log` VALUES ('874', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:53:11', '2017-01-10 08:53:11');
INSERT INTO `operation_log` VALUES ('875', '1', 'admin/auth/link/1', 'PUT', '127.0.0.1', '{\"name\":\"Voluptas ut sed maxime.\",\"link_url\":\"http:\\/\\/www.wisozk.com\\/\",\"link_class\":\"1\",\"recommend\":\"on\",\"status\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/link\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 08:53:22', '2017-01-10 08:53:22');
INSERT INTO `operation_log` VALUES ('876', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:53:22', '2017-01-10 08:53:22');
INSERT INTO `operation_log` VALUES ('877', '1', 'admin/auth/link/2', 'PUT', '127.0.0.1', '{\"recommend\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 08:53:24', '2017-01-10 08:53:24');
INSERT INTO `operation_log` VALUES ('878', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:53:26', '2017-01-10 08:53:26');
INSERT INTO `operation_log` VALUES ('879', '1', 'admin/auth/link/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 08:53:37', '2017-01-10 08:53:37');
INSERT INTO `operation_log` VALUES ('880', '1', 'admin/auth/link', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:53:38', '2017-01-10 08:53:38');
INSERT INTO `operation_log` VALUES ('881', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:53:40', '2017-01-10 08:53:40');
INSERT INTO `operation_log` VALUES ('882', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:54:07', '2017-01-10 08:54:07');
INSERT INTO `operation_log` VALUES ('883', '1', 'admin/auth/link', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:54:15', '2017-01-10 08:54:15');
INSERT INTO `operation_log` VALUES ('884', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:55:44', '2017-01-10 08:55:44');
INSERT INTO `operation_log` VALUES ('885', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:58:27', '2017-01-10 08:58:27');
INSERT INTO `operation_log` VALUES ('886', '1', 'admin/auth/link', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:58:31', '2017-01-10 08:58:31');
INSERT INTO `operation_log` VALUES ('887', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:58:34', '2017-01-10 08:58:34');
INSERT INTO `operation_log` VALUES ('888', '1', 'admin/auth/link/1', 'PUT', '127.0.0.1', '{\"name\":\"Voluptas ut sed maxime.\",\"link_url\":\"http:\\/\\/www.wisozk.com\\/\",\"link_class\":\"1\",\"recommend\":\"on\",\"status\":\"off\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/link\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 08:58:37', '2017-01-10 08:58:37');
INSERT INTO `operation_log` VALUES ('889', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:58:37', '2017-01-10 08:58:37');
INSERT INTO `operation_log` VALUES ('890', '1', 'admin/auth/link/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:58:40', '2017-01-10 08:58:40');
INSERT INTO `operation_log` VALUES ('891', '1', 'admin/auth/link', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 08:58:57', '2017-01-10 08:58:57');
INSERT INTO `operation_log` VALUES ('892', '1', 'admin/auth/link', 'GET', '127.0.0.1', '[]', '2017-01-10 08:59:20', '2017-01-10 08:59:20');
INSERT INTO `operation_log` VALUES ('893', '1', 'admin/auth/link/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:01:14', '2017-01-10 09:01:14');
INSERT INTO `operation_log` VALUES ('894', '1', 'admin/auth/link', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:01:16', '2017-01-10 09:01:16');
INSERT INTO `operation_log` VALUES ('895', '1', 'admin/auth/link/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:01:18', '2017-01-10 09:01:18');
INSERT INTO `operation_log` VALUES ('896', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:24:14', '2017-01-10 09:24:14');
INSERT INTO `operation_log` VALUES ('897', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:24:15', '2017-01-10 09:24:15');
INSERT INTO `operation_log` VALUES ('898', '1', 'admin/auth/role/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:24:17', '2017-01-10 09:24:17');
INSERT INTO `operation_log` VALUES ('899', '1', 'admin/auth/role', 'POST', '127.0.0.1', '{\"\\u89d2\\u8272\\u540d\\u79f0\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"2\",\"\"],\"menus\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/role\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:24:38', '2017-01-10 09:24:38');
INSERT INTO `operation_log` VALUES ('900', '1', 'admin/auth/role/create', 'GET', '127.0.0.1', '[]', '2017-01-10 09:24:38', '2017-01-10 09:24:38');
INSERT INTO `operation_log` VALUES ('901', '1', 'admin/auth/role', 'POST', '127.0.0.1', '{\"\\u89d2\\u8272\\u540d\\u79f0\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"2\",\"\"],\"menus\":[\"1\",\"\"],\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:26:12', '2017-01-10 09:26:12');
INSERT INTO `operation_log` VALUES ('902', '1', 'admin/auth/role/create', 'GET', '127.0.0.1', '[]', '2017-01-10 09:26:12', '2017-01-10 09:26:12');
INSERT INTO `operation_log` VALUES ('903', '1', 'admin/auth/role', 'POST', '127.0.0.1', '{\"name\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"2\",\"\"],\"menus\":[\"1\",\"\"],\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:26:29', '2017-01-10 09:26:29');
INSERT INTO `operation_log` VALUES ('904', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-10 09:26:30', '2017-01-10 09:26:30');
INSERT INTO `operation_log` VALUES ('905', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:26:32', '2017-01-10 09:26:32');
INSERT INTO `operation_log` VALUES ('906', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:26:35', '2017-01-10 09:26:35');
INSERT INTO `operation_log` VALUES ('907', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:26:37', '2017-01-10 09:26:37');
INSERT INTO `operation_log` VALUES ('908', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:26:39', '2017-01-10 09:26:39');
INSERT INTO `operation_log` VALUES ('909', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:26:45', '2017-01-10 09:26:45');
INSERT INTO `operation_log` VALUES ('910', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 09:26:45', '2017-01-10 09:26:45');
INSERT INTO `operation_log` VALUES ('911', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:26:49', '2017-01-10 09:26:49');
INSERT INTO `operation_log` VALUES ('912', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:27:35', '2017-01-10 09:27:35');
INSERT INTO `operation_log` VALUES ('913', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-10 09:27:35', '2017-01-10 09:27:35');
INSERT INTO `operation_log` VALUES ('914', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:28:10', '2017-01-10 09:28:10');
INSERT INTO `operation_log` VALUES ('915', '1', 'admin/auth/tag/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:28:12', '2017-01-10 09:28:12');
INSERT INTO `operation_log` VALUES ('916', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:28:15', '2017-01-10 09:28:15');
INSERT INTO `operation_log` VALUES ('917', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:28:18', '2017-01-10 09:28:18');
INSERT INTO `operation_log` VALUES ('918', '1', 'admin/auth/role/3', 'PUT', '127.0.0.1', '{\"name\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"2\",\"\"],\"menus\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/role\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:28:21', '2017-01-10 09:28:21');
INSERT INTO `operation_log` VALUES ('919', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-10 09:28:21', '2017-01-10 09:28:21');
INSERT INTO `operation_log` VALUES ('920', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:28:23', '2017-01-10 09:28:23');
INSERT INTO `operation_log` VALUES ('921', '1', 'admin/auth/role/3', 'PUT', '127.0.0.1', '{\"name\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"1\",\"2\",\"\"],\"menus\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/role\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:40:46', '2017-01-10 09:40:46');
INSERT INTO `operation_log` VALUES ('922', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-10 09:40:47', '2017-01-10 09:40:47');
INSERT INTO `operation_log` VALUES ('923', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:40:49', '2017-01-10 09:40:49');
INSERT INTO `operation_log` VALUES ('924', '1', 'admin/auth/role/3', 'PUT', '127.0.0.1', '{\"name\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"1\",\"2\",\"\"],\"menus\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/role\",\"_method\":\"PUT\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:40:55', '2017-01-10 09:40:55');
INSERT INTO `operation_log` VALUES ('925', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-10 09:40:56', '2017-01-10 09:40:56');
INSERT INTO `operation_log` VALUES ('926', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:40:58', '2017-01-10 09:40:58');
INSERT INTO `operation_log` VALUES ('927', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:47:36', '2017-01-10 09:47:36');
INSERT INTO `operation_log` VALUES ('928', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Article\",\"icon\":\"fa-file-text\",\"uri\":\"auth\\/article\",\"order\":\"0\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\"}', '2017-01-10 09:48:08', '2017-01-10 09:48:08');
INSERT INTO `operation_log` VALUES ('929', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 09:48:08', '2017-01-10 09:48:08');
INSERT INTO `operation_log` VALUES ('930', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 09:48:11', '2017-01-10 09:48:11');
INSERT INTO `operation_log` VALUES ('931', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:48:18', '2017-01-10 09:48:18');
INSERT INTO `operation_log` VALUES ('932', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 09:48:18', '2017-01-10 09:48:18');
INSERT INTO `operation_log` VALUES ('933', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 09:48:47', '2017-01-10 09:48:47');
INSERT INTO `operation_log` VALUES ('934', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:48:52', '2017-01-10 09:48:52');
INSERT INTO `operation_log` VALUES ('935', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-10 09:48:53', '2017-01-10 09:48:53');
INSERT INTO `operation_log` VALUES ('936', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 09:49:06', '2017-01-10 09:49:06');
INSERT INTO `operation_log` VALUES ('937', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:49:22', '2017-01-10 09:49:22');
INSERT INTO `operation_log` VALUES ('938', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"is_top\":\"on\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 09:49:31', '2017-01-10 09:49:31');
INSERT INTO `operation_log` VALUES ('939', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"is_top\":\"off\",\"_token\":\"hogJSujHjIS9t2MTXYuOPpbvXJOhWDMaMknDIvJm\",\"_method\":\"PUT\"}', '2017-01-10 09:49:33', '2017-01-10 09:49:33');
INSERT INTO `operation_log` VALUES ('940', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:49:49', '2017-01-10 09:49:49');
INSERT INTO `operation_log` VALUES ('941', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:50:55', '2017-01-10 09:50:55');
INSERT INTO `operation_log` VALUES ('942', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:51:05', '2017-01-10 09:51:05');
INSERT INTO `operation_log` VALUES ('943', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:51:24', '2017-01-10 09:51:24');
INSERT INTO `operation_log` VALUES ('944', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:51:32', '2017-01-10 09:51:32');
INSERT INTO `operation_log` VALUES ('945', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:52:53', '2017-01-10 09:52:53');
INSERT INTO `operation_log` VALUES ('946', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 09:53:04', '2017-01-10 09:53:04');
INSERT INTO `operation_log` VALUES ('947', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 10:01:14', '2017-01-10 10:01:14');
INSERT INTO `operation_log` VALUES ('948', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 10:03:41', '2017-01-10 10:03:41');
INSERT INTO `operation_log` VALUES ('949', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 10:03:51', '2017-01-10 10:03:51');
INSERT INTO `operation_log` VALUES ('950', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 10:04:19', '2017-01-10 10:04:19');
INSERT INTO `operation_log` VALUES ('951', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-10 10:20:07', '2017-01-10 10:20:07');
INSERT INTO `operation_log` VALUES ('952', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2017-01-10 10:20:12', '2017-01-10 10:20:12');
INSERT INTO `operation_log` VALUES ('953', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2017-01-10 10:20:16', '2017-01-10 10:20:16');
INSERT INTO `operation_log` VALUES ('954', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2017-01-10 10:20:19', '2017-01-10 10:20:19');
INSERT INTO `operation_log` VALUES ('955', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:21:37', '2017-01-10 10:21:37');
INSERT INTO `operation_log` VALUES ('956', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:22:10', '2017-01-10 10:22:10');
INSERT INTO `operation_log` VALUES ('957', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:22:31', '2017-01-10 10:22:31');
INSERT INTO `operation_log` VALUES ('958', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:23:57', '2017-01-10 10:23:57');
INSERT INTO `operation_log` VALUES ('959', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:24:04', '2017-01-10 10:24:04');
INSERT INTO `operation_log` VALUES ('960', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-10 10:24:13', '2017-01-10 10:24:13');
INSERT INTO `operation_log` VALUES ('961', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:24:14', '2017-01-10 10:24:14');
INSERT INTO `operation_log` VALUES ('962', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:25:43', '2017-01-10 10:25:43');
INSERT INTO `operation_log` VALUES ('963', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:27:59', '2017-01-10 10:27:59');
INSERT INTO `operation_log` VALUES ('964', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:29:13', '2017-01-10 10:29:13');
INSERT INTO `operation_log` VALUES ('965', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2017-01-10 10:29:43', '2017-01-10 10:29:43');
INSERT INTO `operation_log` VALUES ('966', '2', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 01:15:52', '2017-01-11 01:15:52');
INSERT INTO `operation_log` VALUES ('967', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:16:03', '2017-01-11 01:16:03');
INSERT INTO `operation_log` VALUES ('968', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 01:16:21', '2017-01-11 01:16:21');
INSERT INTO `operation_log` VALUES ('969', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 01:16:48', '2017-01-11 01:16:48');
INSERT INTO `operation_log` VALUES ('970', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:16:54', '2017-01-11 01:16:54');
INSERT INTO `operation_log` VALUES ('971', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:17:06', '2017-01-11 01:17:06');
INSERT INTO `operation_log` VALUES ('972', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:17:27', '2017-01-11 01:17:27');
INSERT INTO `operation_log` VALUES ('973', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:17:44', '2017-01-11 01:17:44');
INSERT INTO `operation_log` VALUES ('974', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:20:08', '2017-01-11 01:20:08');
INSERT INTO `operation_log` VALUES ('975', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:20:38', '2017-01-11 01:20:38');
INSERT INTO `operation_log` VALUES ('976', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:21:11', '2017-01-11 01:21:11');
INSERT INTO `operation_log` VALUES ('977', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:24:38', '2017-01-11 01:24:38');
INSERT INTO `operation_log` VALUES ('978', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:24:46', '2017-01-11 01:24:46');
INSERT INTO `operation_log` VALUES ('979', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:26:43', '2017-01-11 01:26:43');
INSERT INTO `operation_log` VALUES ('980', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:27:34', '2017-01-11 01:27:34');
INSERT INTO `operation_log` VALUES ('981', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:36:27', '2017-01-11 01:36:27');
INSERT INTO `operation_log` VALUES ('982', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:36:54', '2017-01-11 01:36:54');
INSERT INTO `operation_log` VALUES ('983', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:37:29', '2017-01-11 01:37:29');
INSERT INTO `operation_log` VALUES ('984', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-11 01:38:08', '2017-01-11 01:38:08');
INSERT INTO `operation_log` VALUES ('985', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:41:17', '2017-01-11 01:41:17');
INSERT INTO `operation_log` VALUES ('986', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:41:30', '2017-01-11 01:41:30');
INSERT INTO `operation_log` VALUES ('987', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 01:41:34', '2017-01-11 01:41:34');
INSERT INTO `operation_log` VALUES ('988', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:41:35', '2017-01-11 01:41:35');
INSERT INTO `operation_log` VALUES ('989', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:41:38', '2017-01-11 01:41:38');
INSERT INTO `operation_log` VALUES ('990', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:45:34', '2017-01-11 01:45:34');
INSERT INTO `operation_log` VALUES ('991', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:46:03', '2017-01-11 01:46:03');
INSERT INTO `operation_log` VALUES ('992', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:53:23', '2017-01-11 01:53:23');
INSERT INTO `operation_log` VALUES ('993', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:53:26', '2017-01-11 01:53:26');
INSERT INTO `operation_log` VALUES ('994', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:53:41', '2017-01-11 01:53:41');
INSERT INTO `operation_log` VALUES ('995', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 01:53:51', '2017-01-11 01:53:51');
INSERT INTO `operation_log` VALUES ('996', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:54:07', '2017-01-11 01:54:07');
INSERT INTO `operation_log` VALUES ('997', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 01:54:24', '2017-01-11 01:54:24');
INSERT INTO `operation_log` VALUES ('998', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:03:48', '2017-01-11 02:03:48');
INSERT INTO `operation_log` VALUES ('999', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:04:38', '2017-01-11 02:04:38');
INSERT INTO `operation_log` VALUES ('1000', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:33:53', '2017-01-11 02:33:53');
INSERT INTO `operation_log` VALUES ('1001', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:39:23', '2017-01-11 02:39:23');
INSERT INTO `operation_log` VALUES ('1002', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:40:08', '2017-01-11 02:40:08');
INSERT INTO `operation_log` VALUES ('1003', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:42:05', '2017-01-11 02:42:05');
INSERT INTO `operation_log` VALUES ('1004', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:43:19', '2017-01-11 02:43:19');
INSERT INTO `operation_log` VALUES ('1005', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:43:47', '2017-01-11 02:43:47');
INSERT INTO `operation_log` VALUES ('1006', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:44:05', '2017-01-11 02:44:05');
INSERT INTO `operation_log` VALUES ('1007', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:45:21', '2017-01-11 02:45:21');
INSERT INTO `operation_log` VALUES ('1008', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:45:47', '2017-01-11 02:45:47');
INSERT INTO `operation_log` VALUES ('1009', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:46:34', '2017-01-11 02:46:34');
INSERT INTO `operation_log` VALUES ('1010', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 02:46:45', '2017-01-11 02:46:45');
INSERT INTO `operation_log` VALUES ('1011', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 02:46:49', '2017-01-11 02:46:49');
INSERT INTO `operation_log` VALUES ('1012', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 02:46:54', '2017-01-11 02:46:54');
INSERT INTO `operation_log` VALUES ('1013', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 02:47:04', '2017-01-11 02:47:04');
INSERT INTO `operation_log` VALUES ('1014', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 02:47:04', '2017-01-11 02:47:04');
INSERT INTO `operation_log` VALUES ('1015', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 02:47:09', '2017-01-11 02:47:09');
INSERT INTO `operation_log` VALUES ('1016', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:47:09', '2017-01-11 02:47:09');
INSERT INTO `operation_log` VALUES ('1017', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 02:47:14', '2017-01-11 02:47:14');
INSERT INTO `operation_log` VALUES ('1018', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 02:47:21', '2017-01-11 02:47:21');
INSERT INTO `operation_log` VALUES ('1019', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:54:39', '2017-01-11 02:54:39');
INSERT INTO `operation_log` VALUES ('1020', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 02:54:57', '2017-01-11 02:54:57');
INSERT INTO `operation_log` VALUES ('1021', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:08:49', '2017-01-11 03:08:49');
INSERT INTO `operation_log` VALUES ('1022', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:11:40', '2017-01-11 03:11:40');
INSERT INTO `operation_log` VALUES ('1023', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:15:01', '2017-01-11 03:15:01');
INSERT INTO `operation_log` VALUES ('1024', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:18:48', '2017-01-11 03:18:48');
INSERT INTO `operation_log` VALUES ('1025', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:20:24', '2017-01-11 03:20:24');
INSERT INTO `operation_log` VALUES ('1026', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:22:18', '2017-01-11 03:22:18');
INSERT INTO `operation_log` VALUES ('1027', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:22:36', '2017-01-11 03:22:36');
INSERT INTO `operation_log` VALUES ('1028', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:22:48', '2017-01-11 03:22:48');
INSERT INTO `operation_log` VALUES ('1029', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:23:10', '2017-01-11 03:23:10');
INSERT INTO `operation_log` VALUES ('1030', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:23:33', '2017-01-11 03:23:33');
INSERT INTO `operation_log` VALUES ('1031', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:23:44', '2017-01-11 03:23:44');
INSERT INTO `operation_log` VALUES ('1032', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:26:06', '2017-01-11 03:26:06');
INSERT INTO `operation_log` VALUES ('1033', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:26:06', '2017-01-11 03:26:06');
INSERT INTO `operation_log` VALUES ('1034', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:28:20', '2017-01-11 03:28:20');
INSERT INTO `operation_log` VALUES ('1035', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:28:24', '2017-01-11 03:28:24');
INSERT INTO `operation_log` VALUES ('1036', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:28:27', '2017-01-11 03:28:27');
INSERT INTO `operation_log` VALUES ('1037', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:28:29', '2017-01-11 03:28:29');
INSERT INTO `operation_log` VALUES ('1038', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:28:36', '2017-01-11 03:28:36');
INSERT INTO `operation_log` VALUES ('1039', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:28:36', '2017-01-11 03:28:36');
INSERT INTO `operation_log` VALUES ('1040', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:30:27', '2017-01-11 03:30:27');
INSERT INTO `operation_log` VALUES ('1041', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"admin@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:30:53', '2017-01-11 03:30:53');
INSERT INTO `operation_log` VALUES ('1042', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '[]', '2017-01-11 03:30:53', '2017-01-11 03:30:53');
INSERT INTO `operation_log` VALUES ('1043', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:31:42', '2017-01-11 03:31:42');
INSERT INTO `operation_log` VALUES ('1044', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:31:43', '2017-01-11 03:31:43');
INSERT INTO `operation_log` VALUES ('1045', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:34:41', '2017-01-11 03:34:41');
INSERT INTO `operation_log` VALUES ('1046', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:34:46', '2017-01-11 03:34:46');
INSERT INTO `operation_log` VALUES ('1047', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:34:46', '2017-01-11 03:34:46');
INSERT INTO `operation_log` VALUES ('1048', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:34:51', '2017-01-11 03:34:51');
INSERT INTO `operation_log` VALUES ('1049', '1', 'admin/auth/user/3', 'GET', '127.0.0.1', '[]', '2017-01-11 03:35:25', '2017-01-11 03:35:25');
INSERT INTO `operation_log` VALUES ('1050', '1', 'admin/auth/user/3', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:02', '2017-01-11 03:36:02');
INSERT INTO `operation_log` VALUES ('1051', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:31', '2017-01-11 03:36:31');
INSERT INTO `operation_log` VALUES ('1052', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:31', '2017-01-11 03:36:31');
INSERT INTO `operation_log` VALUES ('1053', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:36:36', '2017-01-11 03:36:36');
INSERT INTO `operation_log` VALUES ('1054', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:36', '2017-01-11 03:36:36');
INSERT INTO `operation_log` VALUES ('1055', '1', 'admin/auth/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:36:38', '2017-01-11 03:36:38');
INSERT INTO `operation_log` VALUES ('1056', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:39', '2017-01-11 03:36:39');
INSERT INTO `operation_log` VALUES ('1057', '1', 'admin/auth/role', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:36:41', '2017-01-11 03:36:41');
INSERT INTO `operation_log` VALUES ('1058', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:36:43', '2017-01-11 03:36:43');
INSERT INTO `operation_log` VALUES ('1059', '1', 'admin/auth/role/3', 'PUT', '127.0.0.1', '{\"name\":\"Guest\",\"slug\":\"guest\",\"permissions\":[\"2\",\"\"],\"menus\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/role\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:36:46', '2017-01-11 03:36:46');
INSERT INTO `operation_log` VALUES ('1060', '1', 'admin/auth/role', 'GET', '127.0.0.1', '[]', '2017-01-11 03:36:46', '2017-01-11 03:36:46');
INSERT INTO `operation_log` VALUES ('1061', '1', 'admin/auth/role/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:36:49', '2017-01-11 03:36:49');
INSERT INTO `operation_log` VALUES ('1062', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:37:24', '2017-01-11 03:37:24');
INSERT INTO `operation_log` VALUES ('1063', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:37:28', '2017-01-11 03:37:28');
INSERT INTO `operation_log` VALUES ('1064', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:37:30', '2017-01-11 03:37:30');
INSERT INTO `operation_log` VALUES ('1065', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:37:31', '2017-01-11 03:37:31');
INSERT INTO `operation_log` VALUES ('1066', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:37:35', '2017-01-11 03:37:35');
INSERT INTO `operation_log` VALUES ('1067', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:37:35', '2017-01-11 03:37:35');
INSERT INTO `operation_log` VALUES ('1068', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:37:38', '2017-01-11 03:37:38');
INSERT INTO `operation_log` VALUES ('1069', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:37:43', '2017-01-11 03:37:43');
INSERT INTO `operation_log` VALUES ('1070', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:37:44', '2017-01-11 03:37:44');
INSERT INTO `operation_log` VALUES ('1071', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:37:47', '2017-01-11 03:37:47');
INSERT INTO `operation_log` VALUES ('1072', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:39:26', '2017-01-11 03:39:26');
INSERT INTO `operation_log` VALUES ('1073', '1', 'admin/auth/user/3', 'GET', '127.0.0.1', '[]', '2017-01-11 03:39:46', '2017-01-11 03:39:46');
INSERT INTO `operation_log` VALUES ('1074', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:39:54', '2017-01-11 03:39:54');
INSERT INTO `operation_log` VALUES ('1075', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:39:57', '2017-01-11 03:39:57');
INSERT INTO `operation_log` VALUES ('1076', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:40:01', '2017-01-11 03:40:01');
INSERT INTO `operation_log` VALUES ('1077', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:40:01', '2017-01-11 03:40:01');
INSERT INTO `operation_log` VALUES ('1078', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:40:06', '2017-01-11 03:40:06');
INSERT INTO `operation_log` VALUES ('1079', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:40:17', '2017-01-11 03:40:17');
INSERT INTO `operation_log` VALUES ('1080', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:40:45', '2017-01-11 03:40:45');
INSERT INTO `operation_log` VALUES ('1081', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:41:14', '2017-01-11 03:41:14');
INSERT INTO `operation_log` VALUES ('1082', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:41:23', '2017-01-11 03:41:23');
INSERT INTO `operation_log` VALUES ('1083', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:41:43', '2017-01-11 03:41:43');
INSERT INTO `operation_log` VALUES ('1084', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:41:46', '2017-01-11 03:41:46');
INSERT INTO `operation_log` VALUES ('1085', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:41:46', '2017-01-11 03:41:46');
INSERT INTO `operation_log` VALUES ('1086', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:41:49', '2017-01-11 03:41:49');
INSERT INTO `operation_log` VALUES ('1087', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:41:54', '2017-01-11 03:41:54');
INSERT INTO `operation_log` VALUES ('1088', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:41:54', '2017-01-11 03:41:54');
INSERT INTO `operation_log` VALUES ('1089', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:42:08', '2017-01-11 03:42:08');
INSERT INTO `operation_log` VALUES ('1090', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:42:12', '2017-01-11 03:42:12');
INSERT INTO `operation_log` VALUES ('1091', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:43:57', '2017-01-11 03:43:57');
INSERT INTO `operation_log` VALUES ('1092', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:44:01', '2017-01-11 03:44:01');
INSERT INTO `operation_log` VALUES ('1093', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:44:24', '2017-01-11 03:44:24');
INSERT INTO `operation_log` VALUES ('1094', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:44:28', '2017-01-11 03:44:28');
INSERT INTO `operation_log` VALUES ('1095', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:47:39', '2017-01-11 03:47:39');
INSERT INTO `operation_log` VALUES ('1096', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:47:43', '2017-01-11 03:47:43');
INSERT INTO `operation_log` VALUES ('1097', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:48:29', '2017-01-11 03:48:29');
INSERT INTO `operation_log` VALUES ('1098', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:48:33', '2017-01-11 03:48:33');
INSERT INTO `operation_log` VALUES ('1099', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:48:39', '2017-01-11 03:48:39');
INSERT INTO `operation_log` VALUES ('1100', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:48:42', '2017-01-11 03:48:42');
INSERT INTO `operation_log` VALUES ('1101', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:48:58', '2017-01-11 03:48:58');
INSERT INTO `operation_log` VALUES ('1102', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:49:00', '2017-01-11 03:49:00');
INSERT INTO `operation_log` VALUES ('1103', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:49:01', '2017-01-11 03:49:01');
INSERT INTO `operation_log` VALUES ('1104', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:49:14', '2017-01-11 03:49:14');
INSERT INTO `operation_log` VALUES ('1105', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:49:17', '2017-01-11 03:49:17');
INSERT INTO `operation_log` VALUES ('1106', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:49:18', '2017-01-11 03:49:18');
INSERT INTO `operation_log` VALUES ('1107', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:52:02', '2017-01-11 03:52:02');
INSERT INTO `operation_log` VALUES ('1108', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:52:19', '2017-01-11 03:52:19');
INSERT INTO `operation_log` VALUES ('1109', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:52:25', '2017-01-11 03:52:25');
INSERT INTO `operation_log` VALUES ('1110', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:52:25', '2017-01-11 03:52:25');
INSERT INTO `operation_log` VALUES ('1111', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:52:30', '2017-01-11 03:52:30');
INSERT INTO `operation_log` VALUES ('1112', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:52:31', '2017-01-11 03:52:31');
INSERT INTO `operation_log` VALUES ('1113', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:52:35', '2017-01-11 03:52:35');
INSERT INTO `operation_log` VALUES ('1114', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:52:56', '2017-01-11 03:52:56');
INSERT INTO `operation_log` VALUES ('1115', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:52:58', '2017-01-11 03:52:58');
INSERT INTO `operation_log` VALUES ('1116', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:53:05', '2017-01-11 03:53:05');
INSERT INTO `operation_log` VALUES ('1117', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 03:53:05', '2017-01-11 03:53:05');
INSERT INTO `operation_log` VALUES ('1118', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 03:59:40', '2017-01-11 03:59:40');
INSERT INTO `operation_log` VALUES ('1119', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 03:59:43', '2017-01-11 03:59:43');
INSERT INTO `operation_log` VALUES ('1120', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 03:59:44', '2017-01-11 03:59:44');
INSERT INTO `operation_log` VALUES ('1121', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:00:10', '2017-01-11 04:00:10');
INSERT INTO `operation_log` VALUES ('1122', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:00:12', '2017-01-11 04:00:12');
INSERT INTO `operation_log` VALUES ('1123', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:00:15', '2017-01-11 04:00:15');
INSERT INTO `operation_log` VALUES ('1124', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:00:40', '2017-01-11 04:00:40');
INSERT INTO `operation_log` VALUES ('1125', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:00:41', '2017-01-11 04:00:41');
INSERT INTO `operation_log` VALUES ('1126', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:01:15', '2017-01-11 04:01:15');
INSERT INTO `operation_log` VALUES ('1127', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:01:17', '2017-01-11 04:01:17');
INSERT INTO `operation_log` VALUES ('1128', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:23:34', '2017-01-11 04:23:34');
INSERT INTO `operation_log` VALUES ('1129', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:23:35', '2017-01-11 04:23:35');
INSERT INTO `operation_log` VALUES ('1130', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"mygod22\",\"email\":\"sdssn@admin.com \",\"is_admin\":\"off\",\"password\":\"123\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:24:30', '2017-01-11 04:24:30');
INSERT INTO `operation_log` VALUES ('1131', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:25:16', '2017-01-11 04:25:16');
INSERT INTO `operation_log` VALUES ('1132', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"852in@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:25:33', '2017-01-11 04:25:33');
INSERT INTO `operation_log` VALUES ('1133', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 04:25:43', '2017-01-11 04:25:43');
INSERT INTO `operation_log` VALUES ('1134', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 04:25:57', '2017-01-11 04:25:57');
INSERT INTO `operation_log` VALUES ('1135', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:44:42', '2017-01-11 05:44:42');
INSERT INTO `operation_log` VALUES ('1136', '1', 'admin/auth/user/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:44:44', '2017-01-11 05:44:44');
INSERT INTO `operation_log` VALUES ('1137', '1', 'admin/auth/user/6', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"\"],\"permissions\":[\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:44:46', '2017-01-11 05:44:46');
INSERT INTO `operation_log` VALUES ('1138', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:44:46', '2017-01-11 05:44:46');
INSERT INTO `operation_log` VALUES ('1139', '1', 'admin/auth/user/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:44:49', '2017-01-11 05:44:49');
INSERT INTO `operation_log` VALUES ('1140', '1', 'admin/auth/user/6', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:44:52', '2017-01-11 05:44:52');
INSERT INTO `operation_log` VALUES ('1141', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:44:53', '2017-01-11 05:44:53');
INSERT INTO `operation_log` VALUES ('1142', '1', 'admin/auth/user/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:44:59', '2017-01-11 05:44:59');
INSERT INTO `operation_log` VALUES ('1143', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:00', '2017-01-11 05:45:00');
INSERT INTO `operation_log` VALUES ('1144', '1', 'admin/auth/user/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:45:10', '2017-01-11 05:45:10');
INSERT INTO `operation_log` VALUES ('1145', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:11', '2017-01-11 05:45:11');
INSERT INTO `operation_log` VALUES ('1146', '1', 'admin/auth/user/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:45:15', '2017-01-11 05:45:15');
INSERT INTO `operation_log` VALUES ('1147', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:15', '2017-01-11 05:45:15');
INSERT INTO `operation_log` VALUES ('1148', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:21', '2017-01-11 05:45:21');
INSERT INTO `operation_log` VALUES ('1149', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:45:25', '2017-01-11 05:45:25');
INSERT INTO `operation_log` VALUES ('1150', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:45:26', '2017-01-11 05:45:26');
INSERT INTO `operation_log` VALUES ('1151', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:29', '2017-01-11 05:45:29');
INSERT INTO `operation_log` VALUES ('1152', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:45:32', '2017-01-11 05:45:32');
INSERT INTO `operation_log` VALUES ('1153', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:45:33', '2017-01-11 05:45:33');
INSERT INTO `operation_log` VALUES ('1154', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:45:36', '2017-01-11 05:45:36');
INSERT INTO `operation_log` VALUES ('1155', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:45:43', '2017-01-11 05:45:43');
INSERT INTO `operation_log` VALUES ('1156', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:45:44', '2017-01-11 05:45:44');
INSERT INTO `operation_log` VALUES ('1157', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:46:52', '2017-01-11 05:46:52');
INSERT INTO `operation_log` VALUES ('1158', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"abc\",\"icon\":\"fa-adjust\",\"uri\":\"auth\\/tags\",\"order\":\"0\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:47:12', '2017-01-11 05:47:12');
INSERT INTO `operation_log` VALUES ('1159', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-11 05:47:12', '2017-01-11 05:47:12');
INSERT INTO `operation_log` VALUES ('1160', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:47:15', '2017-01-11 05:47:15');
INSERT INTO `operation_log` VALUES ('1161', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:47:17', '2017-01-11 05:47:17');
INSERT INTO `operation_log` VALUES ('1162', '1', 'admin/auth/menu/12', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:47:21', '2017-01-11 05:47:21');
INSERT INTO `operation_log` VALUES ('1163', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:47:21', '2017-01-11 05:47:21');
INSERT INTO `operation_log` VALUES ('1164', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:47:23', '2017-01-11 05:47:23');
INSERT INTO `operation_log` VALUES ('1165', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:47:26', '2017-01-11 05:47:26');
INSERT INTO `operation_log` VALUES ('1166', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:47:29', '2017-01-11 05:47:29');
INSERT INTO `operation_log` VALUES ('1167', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:47:30', '2017-01-11 05:47:30');
INSERT INTO `operation_log` VALUES ('1168', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:50:37', '2017-01-11 05:50:37');
INSERT INTO `operation_log` VALUES ('1169', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:50:50', '2017-01-11 05:50:50');
INSERT INTO `operation_log` VALUES ('1170', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:51:07', '2017-01-11 05:51:07');
INSERT INTO `operation_log` VALUES ('1171', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:51:19', '2017-01-11 05:51:19');
INSERT INTO `operation_log` VALUES ('1172', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:51:40', '2017-01-11 05:51:40');
INSERT INTO `operation_log` VALUES ('1173', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:56:49', '2017-01-11 05:56:49');
INSERT INTO `operation_log` VALUES ('1174', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:56:51', '2017-01-11 05:56:51');
INSERT INTO `operation_log` VALUES ('1175', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:56:56', '2017-01-11 05:56:56');
INSERT INTO `operation_log` VALUES ('1176', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:56:56', '2017-01-11 05:56:56');
INSERT INTO `operation_log` VALUES ('1177', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 05:57:00', '2017-01-11 05:57:00');
INSERT INTO `operation_log` VALUES ('1178', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 05:57:04', '2017-01-11 05:57:04');
INSERT INTO `operation_log` VALUES ('1179', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:57:05', '2017-01-11 05:57:05');
INSERT INTO `operation_log` VALUES ('1180', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 05:58:08', '2017-01-11 05:58:08');
INSERT INTO `operation_log` VALUES ('1181', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:00:33', '2017-01-11 06:00:33');
INSERT INTO `operation_log` VALUES ('1182', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 06:00:38', '2017-01-11 06:00:38');
INSERT INTO `operation_log` VALUES ('1183', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:00:54', '2017-01-11 06:00:54');
INSERT INTO `operation_log` VALUES ('1184', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:03:07', '2017-01-11 06:03:07');
INSERT INTO `operation_log` VALUES ('1185', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:03:14', '2017-01-11 06:03:14');
INSERT INTO `operation_log` VALUES ('1186', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:03:14', '2017-01-11 06:03:14');
INSERT INTO `operation_log` VALUES ('1187', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:03:29', '2017-01-11 06:03:29');
INSERT INTO `operation_log` VALUES ('1188', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:03:34', '2017-01-11 06:03:34');
INSERT INTO `operation_log` VALUES ('1189', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:03:38', '2017-01-11 06:03:38');
INSERT INTO `operation_log` VALUES ('1190', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:03:38', '2017-01-11 06:03:38');
INSERT INTO `operation_log` VALUES ('1191', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:17:47', '2017-01-11 06:17:47');
INSERT INTO `operation_log` VALUES ('1192', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:17:49', '2017-01-11 06:17:49');
INSERT INTO `operation_log` VALUES ('1193', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:18:45', '2017-01-11 06:18:45');
INSERT INTO `operation_log` VALUES ('1194', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:18:46', '2017-01-11 06:18:46');
INSERT INTO `operation_log` VALUES ('1195', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:20:43', '2017-01-11 06:20:43');
INSERT INTO `operation_log` VALUES ('1196', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:20:44', '2017-01-11 06:20:44');
INSERT INTO `operation_log` VALUES ('1197', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:21:11', '2017-01-11 06:21:11');
INSERT INTO `operation_log` VALUES ('1198', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:21:12', '2017-01-11 06:21:12');
INSERT INTO `operation_log` VALUES ('1199', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:22:03', '2017-01-11 06:22:03');
INSERT INTO `operation_log` VALUES ('1200', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:22:04', '2017-01-11 06:22:04');
INSERT INTO `operation_log` VALUES ('1201', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:23:04', '2017-01-11 06:23:04');
INSERT INTO `operation_log` VALUES ('1202', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:23:05', '2017-01-11 06:23:05');
INSERT INTO `operation_log` VALUES ('1203', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:23:43', '2017-01-11 06:23:43');
INSERT INTO `operation_log` VALUES ('1204', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:23:44', '2017-01-11 06:23:44');
INSERT INTO `operation_log` VALUES ('1205', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 06:23:45', '2017-01-11 06:23:45');
INSERT INTO `operation_log` VALUES ('1206', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:24:47', '2017-01-11 06:24:47');
INSERT INTO `operation_log` VALUES ('1207', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:25:04', '2017-01-11 06:25:04');
INSERT INTO `operation_log` VALUES ('1208', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:25:05', '2017-01-11 06:25:05');
INSERT INTO `operation_log` VALUES ('1209', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:25:48', '2017-01-11 06:25:48');
INSERT INTO `operation_log` VALUES ('1210', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:25:50', '2017-01-11 06:25:50');
INSERT INTO `operation_log` VALUES ('1211', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:25:56', '2017-01-11 06:25:56');
INSERT INTO `operation_log` VALUES ('1212', '1', 'admin/auth/user/3', 'PUT', '127.0.0.1', '{\"username\":\"mygod\",\"email\":\"myn@admin.com \",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:25:58', '2017-01-11 06:25:58');
INSERT INTO `operation_log` VALUES ('1213', '1', 'admin/auth/user/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:25:59', '2017-01-11 06:25:59');
INSERT INTO `operation_log` VALUES ('1214', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:26:41', '2017-01-11 06:26:41');
INSERT INTO `operation_log` VALUES ('1215', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:26:42', '2017-01-11 06:26:42');
INSERT INTO `operation_log` VALUES ('1216', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"admin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:26:57', '2017-01-11 06:26:57');
INSERT INTO `operation_log` VALUES ('1217', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '[]', '2017-01-11 06:26:58', '2017-01-11 06:26:58');
INSERT INTO `operation_log` VALUES ('1218', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:27:17', '2017-01-11 06:27:17');
INSERT INTO `operation_log` VALUES ('1219', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '[]', '2017-01-11 06:27:17', '2017-01-11 06:27:17');
INSERT INTO `operation_log` VALUES ('1220', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:27:28', '2017-01-11 06:27:28');
INSERT INTO `operation_log` VALUES ('1221', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:27:28', '2017-01-11 06:27:28');
INSERT INTO `operation_log` VALUES ('1222', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:27:56', '2017-01-11 06:27:56');
INSERT INTO `operation_log` VALUES ('1223', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"849400sdfsf324@qq.com\",\"email\":\"sdfsfsin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:28:16', '2017-01-11 06:28:16');
INSERT INTO `operation_log` VALUES ('1224', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:30:52', '2017-01-11 06:30:52');
INSERT INTO `operation_log` VALUES ('1225', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"lpxsd\",\"email\":\"dsfsfsfin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:31:31', '2017-01-11 06:31:31');
INSERT INTO `operation_log` VALUES ('1226', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:32:24', '2017-01-11 06:32:24');
INSERT INTO `operation_log` VALUES ('1227', '1', 'admin/auth/user', 'POST', '127.0.0.1', '{\"username\":\"lpx20000sdfsf\",\"email\":\"sdfdsfsdfdsin@admin.com \",\"is_admin\":\"off\",\"password\":\"123456\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"2\",\"\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:32:38', '2017-01-11 06:32:38');
INSERT INTO `operation_log` VALUES ('1228', '1', 'admin/auth/user/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:33:39', '2017-01-11 06:33:39');
INSERT INTO `operation_log` VALUES ('1229', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:33:41', '2017-01-11 06:33:41');
INSERT INTO `operation_log` VALUES ('1230', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:33:43', '2017-01-11 06:33:43');
INSERT INTO `operation_log` VALUES ('1231', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:33:46', '2017-01-11 06:33:46');
INSERT INTO `operation_log` VALUES ('1232', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:34:29', '2017-01-11 06:34:29');
INSERT INTO `operation_log` VALUES ('1233', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:34:31', '2017-01-11 06:34:31');
INSERT INTO `operation_log` VALUES ('1234', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:34:44', '2017-01-11 06:34:44');
INSERT INTO `operation_log` VALUES ('1235', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:34:46', '2017-01-11 06:34:46');
INSERT INTO `operation_log` VALUES ('1236', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:34:47', '2017-01-11 06:34:47');
INSERT INTO `operation_log` VALUES ('1237', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:35:53', '2017-01-11 06:35:53');
INSERT INTO `operation_log` VALUES ('1238', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:36:03', '2017-01-11 06:36:03');
INSERT INTO `operation_log` VALUES ('1239', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:36:05', '2017-01-11 06:36:05');
INSERT INTO `operation_log` VALUES ('1240', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:36:33', '2017-01-11 06:36:33');
INSERT INTO `operation_log` VALUES ('1241', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:36:34', '2017-01-11 06:36:34');
INSERT INTO `operation_log` VALUES ('1242', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:36:44', '2017-01-11 06:36:44');
INSERT INTO `operation_log` VALUES ('1243', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:36:45', '2017-01-11 06:36:45');
INSERT INTO `operation_log` VALUES ('1244', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:37:26', '2017-01-11 06:37:26');
INSERT INTO `operation_log` VALUES ('1245', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:37:27', '2017-01-11 06:37:27');
INSERT INTO `operation_log` VALUES ('1246', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:37:28', '2017-01-11 06:37:28');
INSERT INTO `operation_log` VALUES ('1247', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:37:41', '2017-01-11 06:37:41');
INSERT INTO `operation_log` VALUES ('1248', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:37:42', '2017-01-11 06:37:42');
INSERT INTO `operation_log` VALUES ('1249', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:40:30', '2017-01-11 06:40:30');
INSERT INTO `operation_log` VALUES ('1250', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:40:32', '2017-01-11 06:40:32');
INSERT INTO `operation_log` VALUES ('1251', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:40:58', '2017-01-11 06:40:58');
INSERT INTO `operation_log` VALUES ('1252', '1', 'admin/auth/user/1', 'PUT', '127.0.0.1', '{\"username\":\"Lacey McClure0\",\"email\":\"travis.zieme@example.net\",\"is_admin\":\"on\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"\"],\"permissions\":[\"1\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:40:59', '2017-01-11 06:40:59');
INSERT INTO `operation_log` VALUES ('1253', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:41:00', '2017-01-11 06:41:00');
INSERT INTO `operation_log` VALUES ('1254', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:41:30', '2017-01-11 06:41:30');
INSERT INTO `operation_log` VALUES ('1255', '1', 'admin/auth/user/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:41:32', '2017-01-11 06:41:32');
INSERT INTO `operation_log` VALUES ('1256', '1', 'admin/auth/user/8', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000sdfsf\",\"email\":\"sdfdsfsdfdsin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"\"],\"permissions\":[\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:41:36', '2017-01-11 06:41:36');
INSERT INTO `operation_log` VALUES ('1257', '1', 'admin/auth/user/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:41:57', '2017-01-11 06:41:57');
INSERT INTO `operation_log` VALUES ('1258', '1', 'admin/auth/user/8', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000sdfsf\",\"email\":\"sdfdsfsdfdsin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"\"],\"permissions\":[\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:41:59', '2017-01-11 06:41:59');
INSERT INTO `operation_log` VALUES ('1259', '1', 'admin/auth/user/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:24', '2017-01-11 06:42:24');
INSERT INTO `operation_log` VALUES ('1260', '1', 'admin/auth/user/8', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000sdfsf\",\"email\":\"sdfdsfsdfdsin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"\"],\"permissions\":[\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:42:25', '2017-01-11 06:42:25');
INSERT INTO `operation_log` VALUES ('1261', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:42:25', '2017-01-11 06:42:25');
INSERT INTO `operation_log` VALUES ('1262', '1', 'admin/auth/user/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:31', '2017-01-11 06:42:31');
INSERT INTO `operation_log` VALUES ('1263', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:34', '2017-01-11 06:42:34');
INSERT INTO `operation_log` VALUES ('1264', '1', 'admin/auth/user/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:42:36', '2017-01-11 06:42:36');
INSERT INTO `operation_log` VALUES ('1265', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:37', '2017-01-11 06:42:37');
INSERT INTO `operation_log` VALUES ('1266', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:38', '2017-01-11 06:42:38');
INSERT INTO `operation_log` VALUES ('1267', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:42:40', '2017-01-11 06:42:40');
INSERT INTO `operation_log` VALUES ('1268', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:42:40', '2017-01-11 06:42:40');
INSERT INTO `operation_log` VALUES ('1269', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:42:44', '2017-01-11 06:42:44');
INSERT INTO `operation_log` VALUES ('1270', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:42:47', '2017-01-11 06:42:47');
INSERT INTO `operation_log` VALUES ('1271', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:42:47', '2017-01-11 06:42:47');
INSERT INTO `operation_log` VALUES ('1272', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:43:20', '2017-01-11 06:43:20');
INSERT INTO `operation_log` VALUES ('1273', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:43:23', '2017-01-11 06:43:23');
INSERT INTO `operation_log` VALUES ('1274', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:43:23', '2017-01-11 06:43:23');
INSERT INTO `operation_log` VALUES ('1275', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:43:26', '2017-01-11 06:43:26');
INSERT INTO `operation_log` VALUES ('1276', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:43:29', '2017-01-11 06:43:29');
INSERT INTO `operation_log` VALUES ('1277', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-11 06:43:30', '2017-01-11 06:43:30');
INSERT INTO `operation_log` VALUES ('1278', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:43:32', '2017-01-11 06:43:32');
INSERT INTO `operation_log` VALUES ('1279', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:48:47', '2017-01-11 06:48:47');
INSERT INTO `operation_log` VALUES ('1280', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 06:51:39', '2017-01-11 06:51:39');
INSERT INTO `operation_log` VALUES ('1281', '1', 'admin/auth/user/7', 'PUT', '127.0.0.1', '{\"username\":\"849400324@qq.com\",\"email\":\"sdfsfn@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"1\",\"3\",\"\"],\"permissions\":[\"1\",\"2\",\"\"],\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 06:51:40', '2017-01-11 06:51:40');
INSERT INTO `operation_log` VALUES ('1282', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:08:00', '2017-01-11 07:08:00');
INSERT INTO `operation_log` VALUES ('1283', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:01', '2017-01-11 07:08:01');
INSERT INTO `operation_log` VALUES ('1284', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:01', '2017-01-11 07:08:01');
INSERT INTO `operation_log` VALUES ('1285', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:01', '2017-01-11 07:08:01');
INSERT INTO `operation_log` VALUES ('1286', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:02', '2017-01-11 07:08:02');
INSERT INTO `operation_log` VALUES ('1287', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:02', '2017-01-11 07:08:02');
INSERT INTO `operation_log` VALUES ('1288', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:02', '2017-01-11 07:08:02');
INSERT INTO `operation_log` VALUES ('1289', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:02', '2017-01-11 07:08:02');
INSERT INTO `operation_log` VALUES ('1290', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:03', '2017-01-11 07:08:03');
INSERT INTO `operation_log` VALUES ('1291', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:03', '2017-01-11 07:08:03');
INSERT INTO `operation_log` VALUES ('1292', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:03', '2017-01-11 07:08:03');
INSERT INTO `operation_log` VALUES ('1293', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:04', '2017-01-11 07:08:04');
INSERT INTO `operation_log` VALUES ('1294', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:04', '2017-01-11 07:08:04');
INSERT INTO `operation_log` VALUES ('1295', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:04', '2017-01-11 07:08:04');
INSERT INTO `operation_log` VALUES ('1296', '1', 'admin/auth/user/7', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:04', '2017-01-11 07:08:04');
INSERT INTO `operation_log` VALUES ('1297', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:08:05', '2017-01-11 07:08:05');
INSERT INTO `operation_log` VALUES ('1298', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:05', '2017-01-11 07:08:05');
INSERT INTO `operation_log` VALUES ('1299', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:05', '2017-01-11 07:08:05');
INSERT INTO `operation_log` VALUES ('1300', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:06', '2017-01-11 07:08:06');
INSERT INTO `operation_log` VALUES ('1301', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:06', '2017-01-11 07:08:06');
INSERT INTO `operation_log` VALUES ('1302', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:06', '2017-01-11 07:08:06');
INSERT INTO `operation_log` VALUES ('1303', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:07', '2017-01-11 07:08:07');
INSERT INTO `operation_log` VALUES ('1304', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:07', '2017-01-11 07:08:07');
INSERT INTO `operation_log` VALUES ('1305', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:07', '2017-01-11 07:08:07');
INSERT INTO `operation_log` VALUES ('1306', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:08', '2017-01-11 07:08:08');
INSERT INTO `operation_log` VALUES ('1307', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:08', '2017-01-11 07:08:08');
INSERT INTO `operation_log` VALUES ('1308', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:09', '2017-01-11 07:08:09');
INSERT INTO `operation_log` VALUES ('1309', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:09', '2017-01-11 07:08:09');
INSERT INTO `operation_log` VALUES ('1310', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:09', '2017-01-11 07:08:09');
INSERT INTO `operation_log` VALUES ('1311', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:10', '2017-01-11 07:08:10');
INSERT INTO `operation_log` VALUES ('1312', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:35', '2017-01-11 07:08:35');
INSERT INTO `operation_log` VALUES ('1313', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:08:59', '2017-01-11 07:08:59');
INSERT INTO `operation_log` VALUES ('1314', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:08:59', '2017-01-11 07:08:59');
INSERT INTO `operation_log` VALUES ('1315', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:12:47', '2017-01-11 07:12:47');
INSERT INTO `operation_log` VALUES ('1316', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:13:05', '2017-01-11 07:13:05');
INSERT INTO `operation_log` VALUES ('1317', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:13:27', '2017-01-11 07:13:27');
INSERT INTO `operation_log` VALUES ('1318', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:15:40', '2017-01-11 07:15:40');
INSERT INTO `operation_log` VALUES ('1319', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:15:50', '2017-01-11 07:15:50');
INSERT INTO `operation_log` VALUES ('1320', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"tags\":[\"1\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\",\"_method\":\"PUT\"}', '2017-01-11 07:15:55', '2017-01-11 07:15:55');
INSERT INTO `operation_log` VALUES ('1321', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"tags\":[\"1\",\"2\"],\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\",\"_method\":\"PUT\"}', '2017-01-11 07:15:58', '2017-01-11 07:15:58');
INSERT INTO `operation_log` VALUES ('1322', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:19:36', '2017-01-11 07:19:36');
INSERT INTO `operation_log` VALUES ('1323', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:19:37', '2017-01-11 07:19:37');
INSERT INTO `operation_log` VALUES ('1324', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:37', '2017-01-11 07:19:37');
INSERT INTO `operation_log` VALUES ('1325', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:37', '2017-01-11 07:19:37');
INSERT INTO `operation_log` VALUES ('1326', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:37', '2017-01-11 07:19:37');
INSERT INTO `operation_log` VALUES ('1327', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:38', '2017-01-11 07:19:38');
INSERT INTO `operation_log` VALUES ('1328', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:38', '2017-01-11 07:19:38');
INSERT INTO `operation_log` VALUES ('1329', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:38', '2017-01-11 07:19:38');
INSERT INTO `operation_log` VALUES ('1330', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:39', '2017-01-11 07:19:39');
INSERT INTO `operation_log` VALUES ('1331', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:39', '2017-01-11 07:19:39');
INSERT INTO `operation_log` VALUES ('1332', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:39', '2017-01-11 07:19:39');
INSERT INTO `operation_log` VALUES ('1333', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:19:39', '2017-01-11 07:19:39');
INSERT INTO `operation_log` VALUES ('1334', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:40', '2017-01-11 07:19:40');
INSERT INTO `operation_log` VALUES ('1335', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:40', '2017-01-11 07:19:40');
INSERT INTO `operation_log` VALUES ('1336', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:40', '2017-01-11 07:19:40');
INSERT INTO `operation_log` VALUES ('1337', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:41', '2017-01-11 07:19:41');
INSERT INTO `operation_log` VALUES ('1338', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:41', '2017-01-11 07:19:41');
INSERT INTO `operation_log` VALUES ('1339', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:41', '2017-01-11 07:19:41');
INSERT INTO `operation_log` VALUES ('1340', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:41', '2017-01-11 07:19:41');
INSERT INTO `operation_log` VALUES ('1341', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:42', '2017-01-11 07:19:42');
INSERT INTO `operation_log` VALUES ('1342', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:42', '2017-01-11 07:19:42');
INSERT INTO `operation_log` VALUES ('1343', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:42', '2017-01-11 07:19:42');
INSERT INTO `operation_log` VALUES ('1344', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:43', '2017-01-11 07:19:43');
INSERT INTO `operation_log` VALUES ('1345', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:43', '2017-01-11 07:19:43');
INSERT INTO `operation_log` VALUES ('1346', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:43', '2017-01-11 07:19:43');
INSERT INTO `operation_log` VALUES ('1347', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:43', '2017-01-11 07:19:43');
INSERT INTO `operation_log` VALUES ('1348', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:44', '2017-01-11 07:19:44');
INSERT INTO `operation_log` VALUES ('1349', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:44', '2017-01-11 07:19:44');
INSERT INTO `operation_log` VALUES ('1350', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:44', '2017-01-11 07:19:44');
INSERT INTO `operation_log` VALUES ('1351', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:19:44', '2017-01-11 07:19:44');
INSERT INTO `operation_log` VALUES ('1352', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:30:31', '2017-01-11 07:30:31');
INSERT INTO `operation_log` VALUES ('1353', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:33:11', '2017-01-11 07:33:11');
INSERT INTO `operation_log` VALUES ('1354', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:33:18', '2017-01-11 07:33:18');
INSERT INTO `operation_log` VALUES ('1355', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:34:31', '2017-01-11 07:34:31');
INSERT INTO `operation_log` VALUES ('1356', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:35:57', '2017-01-11 07:35:57');
INSERT INTO `operation_log` VALUES ('1357', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:36:12', '2017-01-11 07:36:12');
INSERT INTO `operation_log` VALUES ('1358', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:36:28', '2017-01-11 07:36:28');
INSERT INTO `operation_log` VALUES ('1359', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:36:47', '2017-01-11 07:36:47');
INSERT INTO `operation_log` VALUES ('1360', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:37:55', '2017-01-11 07:37:55');
INSERT INTO `operation_log` VALUES ('1361', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:38:07', '2017-01-11 07:38:07');
INSERT INTO `operation_log` VALUES ('1362', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:39:21', '2017-01-11 07:39:21');
INSERT INTO `operation_log` VALUES ('1363', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:39:42', '2017-01-11 07:39:42');
INSERT INTO `operation_log` VALUES ('1364', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:45:11', '2017-01-11 07:45:11');
INSERT INTO `operation_log` VALUES ('1365', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"title\":\"Voluptate dolor eum dicta.\",\"slug\":\"voluptate\",\"tags\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"1\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 07:45:24', '2017-01-11 07:45:24');
INSERT INTO `operation_log` VALUES ('1366', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:45:25', '2017-01-11 07:45:25');
INSERT INTO `operation_log` VALUES ('1367', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:45:32', '2017-01-11 07:45:32');
INSERT INTO `operation_log` VALUES ('1368', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"title\":\"Voluptate dolor eum dicta.\",\"slug\":\"voluptate\",\"tags\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\"],\"categories\":[\"2\",\"4\",\"\"],\"image_url_action\":\"0\",\"order\":\"1\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 07:45:43', '2017-01-11 07:45:43');
INSERT INTO `operation_log` VALUES ('1369', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:45:43', '2017-01-11 07:45:43');
INSERT INTO `operation_log` VALUES ('1370', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-11 07:45:57', '2017-01-11 07:45:57');
INSERT INTO `operation_log` VALUES ('1371', '1', 'admin/auth/article/1', 'PUT', '127.0.0.1', '{\"title\":\"Voluptate dolor eum dicta.\",\"slug\":\"voluptate\",\"tags\":[\"1\",\"2\",\"3\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"1\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_method\":\"PUT\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 07:46:09', '2017-01-11 07:46:09');
INSERT INTO `operation_log` VALUES ('1372', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-11 07:46:09', '2017-01-11 07:46:09');
INSERT INTO `operation_log` VALUES ('1373', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-11 07:46:13', '2017-01-11 07:46:13');
INSERT INTO `operation_log` VALUES ('1374', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"my first article\",\"slug\":\"my-first-article\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 07:47:23', '2017-01-11 07:47:23');
INSERT INTO `operation_log` VALUES ('1375', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 07:47:24', '2017-01-11 07:47:24');
INSERT INTO `operation_log` VALUES ('1376', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"my first article\",\"slug\":\"my-first-article\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"_token\":\"PIunMo5DgegMygXZ2c5Ba5nciNmw0K9ZO93wcFDt\"}', '2017-01-11 07:47:54', '2017-01-11 07:47:54');
INSERT INTO `operation_log` VALUES ('1377', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 07:47:55', '2017-01-11 07:47:55');
INSERT INTO `operation_log` VALUES ('1378', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 07:58:01', '2017-01-11 07:58:01');
INSERT INTO `operation_log` VALUES ('1379', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 07:58:19', '2017-01-11 07:58:19');
INSERT INTO `operation_log` VALUES ('1380', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 07:59:06', '2017-01-11 07:59:06');
INSERT INTO `operation_log` VALUES ('1381', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:01:35', '2017-01-11 08:01:35');
INSERT INTO `operation_log` VALUES ('1382', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:15:55', '2017-01-11 08:15:55');
INSERT INTO `operation_log` VALUES ('1383', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:16:26', '2017-01-11 08:16:26');
INSERT INTO `operation_log` VALUES ('1384', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:16:42', '2017-01-11 08:16:42');
INSERT INTO `operation_log` VALUES ('1385', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:31:01', '2017-01-11 08:31:01');
INSERT INTO `operation_log` VALUES ('1386', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:39:41', '2017-01-11 08:39:41');
INSERT INTO `operation_log` VALUES ('1387', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:40:19', '2017-01-11 08:40:19');
INSERT INTO `operation_log` VALUES ('1388', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:46:39', '2017-01-11 08:46:39');
INSERT INTO `operation_log` VALUES ('1389', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:51:57', '2017-01-11 08:51:57');
INSERT INTO `operation_log` VALUES ('1390', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:52:47', '2017-01-11 08:52:47');
INSERT INTO `operation_log` VALUES ('1391', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:54:48', '2017-01-11 08:54:48');
INSERT INTO `operation_log` VALUES ('1392', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:54:54', '2017-01-11 08:54:54');
INSERT INTO `operation_log` VALUES ('1393', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:55:36', '2017-01-11 08:55:36');
INSERT INTO `operation_log` VALUES ('1394', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 08:59:15', '2017-01-11 08:59:15');
INSERT INTO `operation_log` VALUES ('1395', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:04:08', '2017-01-11 09:04:08');
INSERT INTO `operation_log` VALUES ('1396', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:05:05', '2017-01-11 09:05:05');
INSERT INTO `operation_log` VALUES ('1397', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:05:27', '2017-01-11 09:05:27');
INSERT INTO `operation_log` VALUES ('1398', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:06:28', '2017-01-11 09:06:28');
INSERT INTO `operation_log` VALUES ('1399', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:07:54', '2017-01-11 09:07:54');
INSERT INTO `operation_log` VALUES ('1400', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:08:11', '2017-01-11 09:08:11');
INSERT INTO `operation_log` VALUES ('1401', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:17:02', '2017-01-11 09:17:02');
INSERT INTO `operation_log` VALUES ('1402', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:20:57', '2017-01-11 09:20:57');
INSERT INTO `operation_log` VALUES ('1403', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:21:31', '2017-01-11 09:21:31');
INSERT INTO `operation_log` VALUES ('1404', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:21:48', '2017-01-11 09:21:48');
INSERT INTO `operation_log` VALUES ('1405', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:22:43', '2017-01-11 09:22:43');
INSERT INTO `operation_log` VALUES ('1406', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:25:34', '2017-01-11 09:25:34');
INSERT INTO `operation_log` VALUES ('1407', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:26:04', '2017-01-11 09:26:04');
INSERT INTO `operation_log` VALUES ('1408', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:27:03', '2017-01-11 09:27:03');
INSERT INTO `operation_log` VALUES ('1409', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:27:29', '2017-01-11 09:27:29');
INSERT INTO `operation_log` VALUES ('1410', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:33:58', '2017-01-11 09:33:58');
INSERT INTO `operation_log` VALUES ('1411', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:35:17', '2017-01-11 09:35:17');
INSERT INTO `operation_log` VALUES ('1412', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:36:21', '2017-01-11 09:36:21');
INSERT INTO `operation_log` VALUES ('1413', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:37:34', '2017-01-11 09:37:34');
INSERT INTO `operation_log` VALUES ('1414', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:38:45', '2017-01-11 09:38:45');
INSERT INTO `operation_log` VALUES ('1415', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 09:40:57', '2017-01-11 09:40:57');
INSERT INTO `operation_log` VALUES ('1416', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 09:40:57', '2017-01-11 09:40:57');
INSERT INTO `operation_log` VALUES ('1417', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-11 09:42:22', '2017-01-11 09:42:22');
INSERT INTO `operation_log` VALUES ('1418', '1', 'admin/upload', 'GET', '127.0.0.1', '[]', '2017-01-11 09:42:24', '2017-01-11 09:42:24');
INSERT INTO `operation_log` VALUES ('1419', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:43:36', '2017-01-11 09:43:36');
INSERT INTO `operation_log` VALUES ('1420', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:43:50', '2017-01-11 09:43:50');
INSERT INTO `operation_log` VALUES ('1421', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:44:04', '2017-01-11 09:44:04');
INSERT INTO `operation_log` VALUES ('1422', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:44:25', '2017-01-11 09:44:25');
INSERT INTO `operation_log` VALUES ('1423', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:45:03', '2017-01-11 09:45:03');
INSERT INTO `operation_log` VALUES ('1424', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:45:41', '2017-01-11 09:45:41');
INSERT INTO `operation_log` VALUES ('1425', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:45:53', '2017-01-11 09:45:53');
INSERT INTO `operation_log` VALUES ('1426', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:46:21', '2017-01-11 09:46:21');
INSERT INTO `operation_log` VALUES ('1427', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:46:33', '2017-01-11 09:46:33');
INSERT INTO `operation_log` VALUES ('1428', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:46:37', '2017-01-11 09:46:37');
INSERT INTO `operation_log` VALUES ('1429', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:46:52', '2017-01-11 09:46:52');
INSERT INTO `operation_log` VALUES ('1430', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:48:11', '2017-01-11 09:48:11');
INSERT INTO `operation_log` VALUES ('1431', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:48:19', '2017-01-11 09:48:19');
INSERT INTO `operation_log` VALUES ('1432', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:48:41', '2017-01-11 09:48:41');
INSERT INTO `operation_log` VALUES ('1433', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:49:40', '2017-01-11 09:49:40');
INSERT INTO `operation_log` VALUES ('1434', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:49:55', '2017-01-11 09:49:55');
INSERT INTO `operation_log` VALUES ('1435', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:50:18', '2017-01-11 09:50:18');
INSERT INTO `operation_log` VALUES ('1436', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 09:54:38', '2017-01-11 09:54:38');
INSERT INTO `operation_log` VALUES ('1437', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:54:46', '2017-01-11 09:54:46');
INSERT INTO `operation_log` VALUES ('1438', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 09:56:01', '2017-01-11 09:56:01');
INSERT INTO `operation_log` VALUES ('1439', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 10:02:05', '2017-01-11 10:02:05');
INSERT INTO `operation_log` VALUES ('1440', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 10:02:21', '2017-01-11 10:02:21');
INSERT INTO `operation_log` VALUES ('1441', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 10:02:38', '2017-01-11 10:02:38');
INSERT INTO `operation_log` VALUES ('1442', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 10:03:17', '2017-01-11 10:03:17');
INSERT INTO `operation_log` VALUES ('1443', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 10:03:39', '2017-01-11 10:03:39');
INSERT INTO `operation_log` VALUES ('1444', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 10:03:49', '2017-01-11 10:03:49');
INSERT INTO `operation_log` VALUES ('1445', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 10:29:54', '2017-01-11 10:29:54');
INSERT INTO `operation_log` VALUES ('1446', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 10:30:08', '2017-01-11 10:30:08');
INSERT INTO `operation_log` VALUES ('1447', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-11 10:31:22', '2017-01-11 10:31:22');
INSERT INTO `operation_log` VALUES ('1448', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-11 10:31:33', '2017-01-11 10:31:33');
INSERT INTO `operation_log` VALUES ('1449', '2', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 01:32:35', '2017-01-12 01:32:35');
INSERT INTO `operation_log` VALUES ('1450', '2', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"\",\"slug\":\"\",\"tags\":[\"\"],\"categories\":[\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"off\",\"is_show\":\"off\",\"is_top\":\"off\",\"content\":\"\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 01:32:46', '2017-01-12 01:32:46');
INSERT INTO `operation_log` VALUES ('1451', '2', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 01:32:46', '2017-01-12 01:32:46');
INSERT INTO `operation_log` VALUES ('1452', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 01:32:51', '2017-01-12 01:32:51');
INSERT INTO `operation_log` VALUES ('1453', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-12 01:33:08', '2017-01-12 01:33:08');
INSERT INTO `operation_log` VALUES ('1454', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 01:35:20', '2017-01-12 01:35:20');
INSERT INTO `operation_log` VALUES ('1455', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 01:35:24', '2017-01-12 01:35:24');
INSERT INTO `operation_log` VALUES ('1456', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-12 01:36:17', '2017-01-12 01:36:17');
INSERT INTO `operation_log` VALUES ('1457', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 01:40:21', '2017-01-12 01:40:21');
INSERT INTO `operation_log` VALUES ('1458', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 01:40:22', '2017-01-12 01:40:22');
INSERT INTO `operation_log` VALUES ('1459', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 01:43:58', '2017-01-12 01:43:58');
INSERT INTO `operation_log` VALUES ('1460', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 01:44:06', '2017-01-12 01:44:06');
INSERT INTO `operation_log` VALUES ('1461', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 02:59:53', '2017-01-12 02:59:53');
INSERT INTO `operation_log` VALUES ('1462', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:07:42', '2017-01-12 03:07:42');
INSERT INTO `operation_log` VALUES ('1463', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:14:49', '2017-01-12 03:14:49');
INSERT INTO `operation_log` VALUES ('1464', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:15:01', '2017-01-12 03:15:01');
INSERT INTO `operation_log` VALUES ('1465', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:18:05', '2017-01-12 03:18:05');
INSERT INTO `operation_log` VALUES ('1466', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:18:28', '2017-01-12 03:18:28');
INSERT INTO `operation_log` VALUES ('1467', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:24:26', '2017-01-12 03:24:26');
INSERT INTO `operation_log` VALUES ('1468', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:24:35', '2017-01-12 03:24:35');
INSERT INTO `operation_log` VALUES ('1469', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:26:28', '2017-01-12 03:26:28');
INSERT INTO `operation_log` VALUES ('1470', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:26:37', '2017-01-12 03:26:37');
INSERT INTO `operation_log` VALUES ('1471', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:27:27', '2017-01-12 03:27:27');
INSERT INTO `operation_log` VALUES ('1472', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:27:33', '2017-01-12 03:27:33');
INSERT INTO `operation_log` VALUES ('1473', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:28:16', '2017-01-12 03:28:16');
INSERT INTO `operation_log` VALUES ('1474', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:28:26', '2017-01-12 03:28:26');
INSERT INTO `operation_log` VALUES ('1475', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:29:41', '2017-01-12 03:29:41');
INSERT INTO `operation_log` VALUES ('1476', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:29:52', '2017-01-12 03:29:52');
INSERT INTO `operation_log` VALUES ('1477', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:30:22', '2017-01-12 03:30:22');
INSERT INTO `operation_log` VALUES ('1478', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-12 03:30:54', '2017-01-12 03:30:54');
INSERT INTO `operation_log` VALUES ('1479', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"![](http:\\/\\/localhost:8000\\/avatars\\/68c6530f98f7107d2cd95629f5b75a07.png)123\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/1b9fae4a9e33e1a10662b4f3706552b3.png)![](http:\\/\\/localhost:8000\\/avatars\\/a1d3710d14c9e42d2c7461df67947e08.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/ffa65b4a294bdbe2995b94e8b98b2993.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/1b9fae4a9e33e1a10662b4f3706552b3.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/511597505ade971f5d4f4dedb77ae345.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/3844d304fc916ae1f17537d72ff3858c.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4516dc9975cdbdf47975e878cf08e20d.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4d0c35e0d6917d9e6d0f56a86c76110e.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/dc2a9ff7ef55ac36fb4d39d00af31ff3.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/872169f3f280bcc1d71959f8ca3ce833.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/a6d166e7620304a3d9d186b29ede1fce.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/3ee91703a931819ccd78de44f882dcfe.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/f527cdfabbc229645527d59849c1beb6.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4aff39b0a12c48c5b8b69f1cbc568cdb.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/d62bf593f716659ad548789f4af68c40.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/0d984c4498b8741da35e8b5fd1e21679.png)\\r\\n1\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:34:43', '2017-01-12 03:34:43');
INSERT INTO `operation_log` VALUES ('1480', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-01-12 03:34:44', '2017-01-12 03:34:44');
INSERT INTO `operation_log` VALUES ('1481', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-12 03:34:44', '2017-01-12 03:34:44');
INSERT INTO `operation_log` VALUES ('1482', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:36:24', '2017-01-12 03:36:24');
INSERT INTO `operation_log` VALUES ('1483', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-12 03:36:45', '2017-01-12 03:36:45');
INSERT INTO `operation_log` VALUES ('1484', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:36:49', '2017-01-12 03:36:49');
INSERT INTO `operation_log` VALUES ('1485', '1', 'admin/auth/article/101/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:36:52', '2017-01-12 03:36:52');
INSERT INTO `operation_log` VALUES ('1486', '1', 'admin/auth/article/101', 'PUT', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"![](http:\\/\\/localhost:8000\\/avatars\\/68c6530f98f7107d2cd95629f5b75a07.png)123\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/1b9fae4a9e33e1a10662b4f3706552b3.png)![](http:\\/\\/localhost:8000\\/avatars\\/a1d3710d14c9e42d2c7461df67947e08.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/ffa65b4a294bdbe2995b94e8b98b2993.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/1b9fae4a9e33e1a10662b4f3706552b3.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/511597505ade971f5d4f4dedb77ae345.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/3844d304fc916ae1f17537d72ff3858c.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4516dc9975cdbdf47975e878cf08e20d.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4d0c35e0d6917d9e6d0f56a86c76110e.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/dc2a9ff7ef55ac36fb4d39d00af31ff3.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/872169f3f280bcc1d71959f8ca3ce833.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/a6d166e7620304a3d9d186b29ede1fce.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/3ee91703a931819ccd78de44f882dcfe.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/f527cdfabbc229645527d59849c1beb6.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/4aff39b0a12c48c5b8b69f1cbc568cdb.jpeg)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/d62bf593f716659ad548789f4af68c40.png)\\r\\n![](http:\\/\\/localhost:8000\\/avatars\\/0d984c4498b8741da35e8b5fd1e21679.png)\\r\\n1\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_method\":\"PUT\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:37:02', '2017-01-12 03:37:02');
INSERT INTO `operation_log` VALUES ('1487', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:37:02', '2017-01-12 03:37:02');
INSERT INTO `operation_log` VALUES ('1488', '1', 'admin/auth/article/101', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:37:07', '2017-01-12 03:37:07');
INSERT INTO `operation_log` VALUES ('1489', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:37:07', '2017-01-12 03:37:07');
INSERT INTO `operation_log` VALUES ('1490', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:37:09', '2017-01-12 03:37:09');
INSERT INTO `operation_log` VALUES ('1491', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"dsfdsfs\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfdsfdsfdsfsdfdsfdsfsdf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:37:26', '2017-01-12 03:37:26');
INSERT INTO `operation_log` VALUES ('1492', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:37:27', '2017-01-12 03:37:27');
INSERT INTO `operation_log` VALUES ('1493', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:37:51', '2017-01-12 03:37:51');
INSERT INTO `operation_log` VALUES ('1494', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:37:56', '2017-01-12 03:37:56');
INSERT INTO `operation_log` VALUES ('1495', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:39:39', '2017-01-12 03:39:39');
INSERT INTO `operation_log` VALUES ('1496', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:40:49', '2017-01-12 03:40:49');
INSERT INTO `operation_log` VALUES ('1497', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:41:31', '2017-01-12 03:41:31');
INSERT INTO `operation_log` VALUES ('1498', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:43:32', '2017-01-12 03:43:32');
INSERT INTO `operation_log` VALUES ('1499', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:44:19', '2017-01-12 03:44:19');
INSERT INTO `operation_log` VALUES ('1500', '1', 'admin/auth/article/102/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:46:50', '2017-01-12 03:46:50');
INSERT INTO `operation_log` VALUES ('1501', '1', 'admin/auth/article/102', 'PUT', '127.0.0.1', '{\"title\":\"dsfdsfs\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfdsfdsfdsfsdfdsfdsfsdf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_method\":\"PUT\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:46:53', '2017-01-12 03:46:53');
INSERT INTO `operation_log` VALUES ('1502', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:46:53', '2017-01-12 03:46:53');
INSERT INTO `operation_log` VALUES ('1503', '1', 'admin/auth/article/102', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:46:57', '2017-01-12 03:46:57');
INSERT INTO `operation_log` VALUES ('1504', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:46:57', '2017-01-12 03:46:57');
INSERT INTO `operation_log` VALUES ('1505', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:46:59', '2017-01-12 03:46:59');
INSERT INTO `operation_log` VALUES ('1506', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"dfsdfdsfsfsf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:47:15', '2017-01-12 03:47:15');
INSERT INTO `operation_log` VALUES ('1507', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:47:15', '2017-01-12 03:47:15');
INSERT INTO `operation_log` VALUES ('1508', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:48:31', '2017-01-12 03:48:31');
INSERT INTO `operation_log` VALUES ('1509', '1', 'admin/auth/article/103', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:48:37', '2017-01-12 03:48:37');
INSERT INTO `operation_log` VALUES ('1510', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:48:38', '2017-01-12 03:48:38');
INSERT INTO `operation_log` VALUES ('1511', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:48:39', '2017-01-12 03:48:39');
INSERT INTO `operation_log` VALUES ('1512', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sfdsfdfdsfds\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:49:02', '2017-01-12 03:49:02');
INSERT INTO `operation_log` VALUES ('1513', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:49:02', '2017-01-12 03:49:02');
INSERT INTO `operation_log` VALUES ('1514', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:53:19', '2017-01-12 03:53:19');
INSERT INTO `operation_log` VALUES ('1515', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:53:58', '2017-01-12 03:53:58');
INSERT INTO `operation_log` VALUES ('1516', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 03:54:08', '2017-01-12 03:54:08');
INSERT INTO `operation_log` VALUES ('1517', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:57:54', '2017-01-12 03:57:54');
INSERT INTO `operation_log` VALUES ('1518', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfsfdsf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:58:08', '2017-01-12 03:58:08');
INSERT INTO `operation_log` VALUES ('1519', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:58:29', '2017-01-12 03:58:29');
INSERT INTO `operation_log` VALUES ('1520', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:58:57', '2017-01-12 03:58:57');
INSERT INTO `operation_log` VALUES ('1521', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"off\",\"content\":\"sdfdsfsfsf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 03:59:18', '2017-01-12 03:59:18');
INSERT INTO `operation_log` VALUES ('1522', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 03:59:46', '2017-01-12 03:59:46');
INSERT INTO `operation_log` VALUES ('1523', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 03:59:51', '2017-01-12 03:59:51');
INSERT INTO `operation_log` VALUES ('1524', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"administrator\",\"tags\":[\"2\",\"3\",\"4\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfsfds\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 04:00:15', '2017-01-12 04:00:15');
INSERT INTO `operation_log` VALUES ('1525', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-12 04:00:28', '2017-01-12 04:00:28');
INSERT INTO `operation_log` VALUES ('1526', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 04:00:32', '2017-01-12 04:00:32');
INSERT INTO `operation_log` VALUES ('1527', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"sdfsfsf\",\"slug\":\"sdfsfdsf\",\"tags\":[\"2\",\"3\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfsfsf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 04:00:58', '2017-01-12 04:00:58');
INSERT INTO `operation_log` VALUES ('1528', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 04:01:24', '2017-01-12 04:01:24');
INSERT INTO `operation_log` VALUES ('1529', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"dsfsfsfsf\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 04:01:39', '2017-01-12 04:01:39');
INSERT INTO `operation_log` VALUES ('1530', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 04:01:39', '2017-01-12 04:01:39');
INSERT INTO `operation_log` VALUES ('1531', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"dsfsfsfsf\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 04:01:52', '2017-01-12 04:01:52');
INSERT INTO `operation_log` VALUES ('1532', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-12 04:01:52', '2017-01-12 04:01:52');
INSERT INTO `operation_log` VALUES ('1533', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 04:02:56', '2017-01-12 04:02:56');
INSERT INTO `operation_log` VALUES ('1534', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"dsfdsfs\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"off\",\"content\":\"sdfsfsffs\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 04:03:12', '2017-01-12 04:03:12');
INSERT INTO `operation_log` VALUES ('1535', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 04:03:12', '2017-01-12 04:03:12');
INSERT INTO `operation_log` VALUES ('1536', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 05:33:45', '2017-01-12 05:33:45');
INSERT INTO `operation_log` VALUES ('1537', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 05:33:54', '2017-01-12 05:33:54');
INSERT INTO `operation_log` VALUES ('1538', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfsffs\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 05:34:13', '2017-01-12 05:34:13');
INSERT INTO `operation_log` VALUES ('1539', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-12 05:34:14', '2017-01-12 05:34:14');
INSERT INTO `operation_log` VALUES ('1540', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"abc\",\"slug\":\"lpx\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"sdfsffs\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 05:34:37', '2017-01-12 05:34:37');
INSERT INTO `operation_log` VALUES ('1541', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-12 05:34:37', '2017-01-12 05:34:37');
INSERT INTO `operation_log` VALUES ('1542', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 05:34:43', '2017-01-12 05:34:43');
INSERT INTO `operation_log` VALUES ('1543', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 05:57:53', '2017-01-12 05:57:53');
INSERT INTO `operation_log` VALUES ('1544', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"\\u5927\\u8bdd\\u7a0b\\u5e8f\\u733f\\u773c\\u91cc\\u7684\\u9ad8\\u5e76\\u53d1\\u67b6\\u6784\",\"slug\":\"administrator\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"# Header Level 1\\r\\n\\r\\n**Pellentesque habitant morbi tristique** senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. _Aenean ultricies mi vitae est_. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, `commodo vitae`, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum  rutrum orci, sagittis tempus lacus enim ac dui. [Donec non enim](#) in turpis pulvinar facilisis. Ut felis.\\r\\n\\r\\n## Header Level 2\\r\\n\\r\\n  1. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\\r\\n  2. Aliquam tincidunt mauris eu risus.\\r\\n\\r\\n\\r\\n> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur  massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.\\r\\n\\r\\n### Header Level 3\\r\\n\\r\\n  * Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\\r\\n  * Aliquam tincidunt mauris eu risus.\\r\\n\\r\\n```\\r\\n#header h1 a {\\r\\n  display: block;\\r\\n  width: 300px;\\r\\n  height: 80px;\\r\\n}\\r\\n```\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/article?_sort%5Bcolumn%5D=created_at&_sort%5Btype%5D=desc\",\"_token\":\"6dEqfVbtmth5O6vK08OBGsQMVUfVXMe1IINTCEJI\"}', '2017-01-12 05:58:09', '2017-01-12 05:58:09');
INSERT INTO `operation_log` VALUES ('1545', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-12 05:58:09', '2017-01-12 05:58:09');
INSERT INTO `operation_log` VALUES ('1546', '1', 'admin/auth/article/107/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-12 05:58:15', '2017-01-12 05:58:15');
INSERT INTO `operation_log` VALUES ('1547', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-12 05:58:20', '2017-01-12 05:58:20');
INSERT INTO `operation_log` VALUES ('1548', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 02:08:56', '2017-01-13 02:08:56');
INSERT INTO `operation_log` VALUES ('1549', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 02:09:11', '2017-01-13 02:09:11');
INSERT INTO `operation_log` VALUES ('1550', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:09:38', '2017-01-13 02:09:38');
INSERT INTO `operation_log` VALUES ('1551', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:38:14', '2017-01-13 02:38:14');
INSERT INTO `operation_log` VALUES ('1552', '1', 'admin/auth/user/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:38:30', '2017-01-13 02:38:30');
INSERT INTO `operation_log` VALUES ('1553', '1', 'admin/auth/user/2', 'PUT', '127.0.0.1', '{\"username\":\"lpx20000\",\"email\":\"Admin@admin.com \",\"is_admin\":\"off\",\"password\":\"\",\"avatar_action\":\"0\",\"roles\":[\"3\",\"\"],\"permissions\":[\"1\",\"\"],\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/user\",\"_method\":\"PUT\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 02:38:44', '2017-01-13 02:38:44');
INSERT INTO `operation_log` VALUES ('1554', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:38:44', '2017-01-13 02:38:44');
INSERT INTO `operation_log` VALUES ('1555', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:40:31', '2017-01-13 02:40:31');
INSERT INTO `operation_log` VALUES ('1556', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:41:05', '2017-01-13 02:41:05');
INSERT INTO `operation_log` VALUES ('1557', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:41:18', '2017-01-13 02:41:18');
INSERT INTO `operation_log` VALUES ('1558', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:42:25', '2017-01-13 02:42:25');
INSERT INTO `operation_log` VALUES ('1559', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:45:14', '2017-01-13 02:45:14');
INSERT INTO `operation_log` VALUES ('1560', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:45:31', '2017-01-13 02:45:31');
INSERT INTO `operation_log` VALUES ('1561', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:45:50', '2017-01-13 02:45:50');
INSERT INTO `operation_log` VALUES ('1562', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:48:05', '2017-01-13 02:48:05');
INSERT INTO `operation_log` VALUES ('1563', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:48:43', '2017-01-13 02:48:43');
INSERT INTO `operation_log` VALUES ('1564', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:48:46', '2017-01-13 02:48:46');
INSERT INTO `operation_log` VALUES ('1565', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:48:51', '2017-01-13 02:48:51');
INSERT INTO `operation_log` VALUES ('1566', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:49:07', '2017-01-13 02:49:07');
INSERT INTO `operation_log` VALUES ('1567', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:49:26', '2017-01-13 02:49:26');
INSERT INTO `operation_log` VALUES ('1568', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 02:49:36', '2017-01-13 02:49:36');
INSERT INTO `operation_log` VALUES ('1569', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 02:53:12', '2017-01-13 02:53:12');
INSERT INTO `operation_log` VALUES ('1570', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:53:29', '2017-01-13 02:53:29');
INSERT INTO `operation_log` VALUES ('1571', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:54:33', '2017-01-13 02:54:33');
INSERT INTO `operation_log` VALUES ('1572', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:54:44', '2017-01-13 02:54:44');
INSERT INTO `operation_log` VALUES ('1573', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:55:11', '2017-01-13 02:55:11');
INSERT INTO `operation_log` VALUES ('1574', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:55:28', '2017-01-13 02:55:28');
INSERT INTO `operation_log` VALUES ('1575', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:55:37', '2017-01-13 02:55:37');
INSERT INTO `operation_log` VALUES ('1576', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:55:56', '2017-01-13 02:55:56');
INSERT INTO `operation_log` VALUES ('1577', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 02:56:16', '2017-01-13 02:56:16');
INSERT INTO `operation_log` VALUES ('1578', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 03:00:05', '2017-01-13 03:00:05');
INSERT INTO `operation_log` VALUES ('1579', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 03:01:29', '2017-01-13 03:01:29');
INSERT INTO `operation_log` VALUES ('1580', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:01:35', '2017-01-13 03:01:35');
INSERT INTO `operation_log` VALUES ('1581', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-13 03:02:34', '2017-01-13 03:02:34');
INSERT INTO `operation_log` VALUES ('1582', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-13 03:03:04', '2017-01-13 03:03:04');
INSERT INTO `operation_log` VALUES ('1583', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-13 03:03:32', '2017-01-13 03:03:32');
INSERT INTO `operation_log` VALUES ('1584', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-13 03:04:08', '2017-01-13 03:04:08');
INSERT INTO `operation_log` VALUES ('1585', '1', 'admin/auth/article/1/edit', 'GET', '127.0.0.1', '[]', '2017-01-13 03:05:42', '2017-01-13 03:05:42');
INSERT INTO `operation_log` VALUES ('1586', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:07:17', '2017-01-13 03:07:17');
INSERT INTO `operation_log` VALUES ('1587', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:07:20', '2017-01-13 03:07:20');
INSERT INTO `operation_log` VALUES ('1588', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-13 03:07:33', '2017-01-13 03:07:33');
INSERT INTO `operation_log` VALUES ('1589', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '[]', '2017-01-13 03:10:14', '2017-01-13 03:10:14');
INSERT INTO `operation_log` VALUES ('1590', '1', 'admin/upload', 'POST', '127.0.0.1', '[]', '2017-01-13 03:10:48', '2017-01-13 03:10:48');
INSERT INTO `operation_log` VALUES ('1591', '1', 'admin/auth/article', 'POST', '127.0.0.1', '{\"title\":\"\\u9002\\u5f53\\u653e\\u677e\\u653e\\u677e\\u6cd5\",\"slug\":\"\\u662f\\u5bf9\\u65b9\\u8eab\\u4efd\",\"user_id\":\"1\",\"tags\":[\"2\",\"\"],\"categories\":[\"2\",\"\"],\"image_url_action\":\"0\",\"order\":\"0\",\"is_original\":\"on\",\"is_show\":\"on\",\"is_top\":\"on\",\"content\":\"![](http:\\/\\/localhost:8000\\/avatars\\/f527cdfabbc229645527d59849c1beb6.png)\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/login\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 03:10:54', '2017-01-13 03:10:54');
INSERT INTO `operation_log` VALUES ('1592', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-01-13 03:10:55', '2017-01-13 03:10:55');
INSERT INTO `operation_log` VALUES ('1593', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 03:10:55', '2017-01-13 03:10:55');
INSERT INTO `operation_log` VALUES ('1594', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:10:58', '2017-01-13 03:10:58');
INSERT INTO `operation_log` VALUES ('1595', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-13 03:11:08', '2017-01-13 03:11:08');
INSERT INTO `operation_log` VALUES ('1596', '1', 'admin/auth/article/107/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:11:12', '2017-01-13 03:11:12');
INSERT INTO `operation_log` VALUES ('1597', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:11:21', '2017-01-13 03:11:21');
INSERT INTO `operation_log` VALUES ('1598', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2017-01-13 03:11:25', '2017-01-13 03:11:25');
INSERT INTO `operation_log` VALUES ('1599', '1', 'admin/auth/article/107', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 03:11:29', '2017-01-13 03:11:29');
INSERT INTO `operation_log` VALUES ('1600', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:11:29', '2017-01-13 03:11:29');
INSERT INTO `operation_log` VALUES ('1601', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:19:34', '2017-01-13 03:19:34');
INSERT INTO `operation_log` VALUES ('1602', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:19:36', '2017-01-13 03:19:36');
INSERT INTO `operation_log` VALUES ('1603', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:20:12', '2017-01-13 03:20:12');
INSERT INTO `operation_log` VALUES ('1604', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:20:51', '2017-01-13 03:20:51');
INSERT INTO `operation_log` VALUES ('1605', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:26:03', '2017-01-13 03:26:03');
INSERT INTO `operation_log` VALUES ('1606', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:26:39', '2017-01-13 03:26:39');
INSERT INTO `operation_log` VALUES ('1607', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:27:11', '2017-01-13 03:27:11');
INSERT INTO `operation_log` VALUES ('1608', '1', 'admin/auth/user/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:27:59', '2017-01-13 03:27:59');
INSERT INTO `operation_log` VALUES ('1609', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:28:12', '2017-01-13 03:28:12');
INSERT INTO `operation_log` VALUES ('1610', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:28:56', '2017-01-13 03:28:56');
INSERT INTO `operation_log` VALUES ('1611', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:29:17', '2017-01-13 03:29:17');
INSERT INTO `operation_log` VALUES ('1612', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:31:48', '2017-01-13 03:31:48');
INSERT INTO `operation_log` VALUES ('1613', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:31:58', '2017-01-13 03:31:58');
INSERT INTO `operation_log` VALUES ('1614', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:32:33', '2017-01-13 03:32:33');
INSERT INTO `operation_log` VALUES ('1615', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:33:06', '2017-01-13 03:33:06');
INSERT INTO `operation_log` VALUES ('1616', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:34:04', '2017-01-13 03:34:04');
INSERT INTO `operation_log` VALUES ('1617', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:38:37', '2017-01-13 03:38:37');
INSERT INTO `operation_log` VALUES ('1618', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:38:48', '2017-01-13 03:38:48');
INSERT INTO `operation_log` VALUES ('1619', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:39:10', '2017-01-13 03:39:10');
INSERT INTO `operation_log` VALUES ('1620', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:39:40', '2017-01-13 03:39:40');
INSERT INTO `operation_log` VALUES ('1621', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:41:00', '2017-01-13 03:41:00');
INSERT INTO `operation_log` VALUES ('1622', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:41:25', '2017-01-13 03:41:25');
INSERT INTO `operation_log` VALUES ('1623', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:41:42', '2017-01-13 03:41:42');
INSERT INTO `operation_log` VALUES ('1624', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:42:22', '2017-01-13 03:42:22');
INSERT INTO `operation_log` VALUES ('1625', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:42:44', '2017-01-13 03:42:44');
INSERT INTO `operation_log` VALUES ('1626', '1', 'admin/auth/user', 'GET', '127.0.0.1', '[]', '2017-01-13 03:42:58', '2017-01-13 03:42:58');
INSERT INTO `operation_log` VALUES ('1627', '1', 'admin/auth/user/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:43:09', '2017-01-13 03:43:09');
INSERT INTO `operation_log` VALUES ('1628', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:43:13', '2017-01-13 03:43:13');
INSERT INTO `operation_log` VALUES ('1629', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:46:03', '2017-01-13 03:46:03');
INSERT INTO `operation_log` VALUES ('1630', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:46:11', '2017-01-13 03:46:11');
INSERT INTO `operation_log` VALUES ('1631', '1', 'admin/auth/article/2', 'PUT', '127.0.0.1', '{\"is_top\":\"on\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\",\"_method\":\"PUT\"}', '2017-01-13 03:46:20', '2017-01-13 03:46:20');
INSERT INTO `operation_log` VALUES ('1632', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:46:21', '2017-01-13 03:46:21');
INSERT INTO `operation_log` VALUES ('1633', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:46:32', '2017-01-13 03:46:32');
INSERT INTO `operation_log` VALUES ('1634', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Category\",\"icon\":\"fa-location-arrow\",\"uri\":\"\\/admin\\/auth\\/category\",\"order\":\"0\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 03:47:06', '2017-01-13 03:47:06');
INSERT INTO `operation_log` VALUES ('1635', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 03:47:06', '2017-01-13 03:47:06');
INSERT INTO `operation_log` VALUES ('1636', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Category\",\"icon\":\"fa-location-arrow\",\"uri\":\"\\/admin\\/auth\\/category\",\"order\":\"0\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 03:49:51', '2017-01-13 03:49:51');
INSERT INTO `operation_log` VALUES ('1637', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 03:49:51', '2017-01-13 03:49:51');
INSERT INTO `operation_log` VALUES ('1638', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:49:58', '2017-01-13 03:49:58');
INSERT INTO `operation_log` VALUES ('1639', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"title\":\"Category\",\"icon\":\"fa-location-arrow\",\"uri\":\"\\/auth\\/category\",\"order\":\"0\",\"parent_id\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\",\"_method\":\"PUT\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 03:50:03', '2017-01-13 03:50:03');
INSERT INTO `operation_log` VALUES ('1640', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 03:50:04', '2017-01-13 03:50:04');
INSERT INTO `operation_log` VALUES ('1641', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 03:50:10', '2017-01-13 03:50:10');
INSERT INTO `operation_log` VALUES ('1642', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:55:54', '2017-01-13 03:55:54');
INSERT INTO `operation_log` VALUES ('1643', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 03:56:09', '2017-01-13 03:56:09');
INSERT INTO `operation_log` VALUES ('1644', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-13 03:56:39', '2017-01-13 03:56:39');
INSERT INTO `operation_log` VALUES ('1645', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:55:36', '2017-01-13 05:55:36');
INSERT INTO `operation_log` VALUES ('1646', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:56:02', '2017-01-13 05:56:02');
INSERT INTO `operation_log` VALUES ('1647', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:56:21', '2017-01-13 05:56:21');
INSERT INTO `operation_log` VALUES ('1648', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:57:07', '2017-01-13 05:57:07');
INSERT INTO `operation_log` VALUES ('1649', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:57:57', '2017-01-13 05:57:57');
INSERT INTO `operation_log` VALUES ('1650', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:58:34', '2017-01-13 05:58:34');
INSERT INTO `operation_log` VALUES ('1651', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 05:58:46', '2017-01-13 05:58:46');
INSERT INTO `operation_log` VALUES ('1652', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:00:14', '2017-01-13 06:00:14');
INSERT INTO `operation_log` VALUES ('1653', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:02:14', '2017-01-13 06:02:14');
INSERT INTO `operation_log` VALUES ('1654', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:02:39', '2017-01-13 06:02:39');
INSERT INTO `operation_log` VALUES ('1655', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:04:57', '2017-01-13 06:04:57');
INSERT INTO `operation_log` VALUES ('1656', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:05:11', '2017-01-13 06:05:11');
INSERT INTO `operation_log` VALUES ('1657', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:06:02', '2017-01-13 06:06:02');
INSERT INTO `operation_log` VALUES ('1658', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:06:25', '2017-01-13 06:06:25');
INSERT INTO `operation_log` VALUES ('1659', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:09:47', '2017-01-13 06:09:47');
INSERT INTO `operation_log` VALUES ('1660', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:09:54', '2017-01-13 06:09:54');
INSERT INTO `operation_log` VALUES ('1661', '1', 'admin/auth/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 06:10:50', '2017-01-13 06:10:50');
INSERT INTO `operation_log` VALUES ('1662', '1', 'admin/auth/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 06:11:10', '2017-01-13 06:11:10');
INSERT INTO `operation_log` VALUES ('1663', '1', 'admin/auth/category', 'POST', '127.0.0.1', '{\"parent_id\":\"6\",\"name\":\"abc\",\"icon\":\"fa-adn\",\"slug\":\"abc\",\"order\":\"3\",\"is_show\":\"on\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 06:12:45', '2017-01-13 06:12:45');
INSERT INTO `operation_log` VALUES ('1664', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:12:45', '2017-01-13 06:12:45');
INSERT INTO `operation_log` VALUES ('1665', '1', 'admin/auth/category', 'POST', '127.0.0.1', '{\"parent_id\":\"6\",\"name\":\"abc\",\"icon\":\"fa-adn\",\"slug\":\"abc\",\"order\":\"3\",\"is_show\":\"on\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 06:13:22', '2017-01-13 06:13:22');
INSERT INTO `operation_log` VALUES ('1666', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:13:22', '2017-01-13 06:13:22');
INSERT INTO `operation_log` VALUES ('1667', '1', 'admin/auth/category', 'POST', '127.0.0.1', '{\"parent_id\":\"6\",\"name\":\"abc\",\"icon\":\"fa-adn\",\"slug\":\"abc\",\"order\":\"3\",\"is_show\":\"on\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 06:13:43', '2017-01-13 06:13:43');
INSERT INTO `operation_log` VALUES ('1668', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:13:44', '2017-01-13 06:13:44');
INSERT INTO `operation_log` VALUES ('1669', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:16:53', '2017-01-13 06:16:53');
INSERT INTO `operation_log` VALUES ('1670', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:17:16', '2017-01-13 06:17:16');
INSERT INTO `operation_log` VALUES ('1671', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:17:37', '2017-01-13 06:17:37');
INSERT INTO `operation_log` VALUES ('1672', '1', 'admin/auth/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"abc\",\"icon\":\"fa-adjust\",\"slug\":\"abc\",\"order\":\"0\",\"is_show\":\"on\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 06:20:55', '2017-01-13 06:20:55');
INSERT INTO `operation_log` VALUES ('1673', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:20:55', '2017-01-13 06:20:55');
INSERT INTO `operation_log` VALUES ('1674', '1', 'admin/auth/category/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 06:21:01', '2017-01-13 06:21:01');
INSERT INTO `operation_log` VALUES ('1675', '1', 'admin/auth/category/11', 'PUT', '127.0.0.1', '{\"title\":\"abc\",\"parent_id\":\"5\",\"icon\":\"fa-adjust\",\"slug\":\"abc\",\"order\":\"0\",\"is_show\":\"on\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/category\",\"_method\":\"PUT\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 06:21:11', '2017-01-13 06:21:11');
INSERT INTO `operation_log` VALUES ('1676', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:21:12', '2017-01-13 06:21:12');
INSERT INTO `operation_log` VALUES ('1677', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:24:17', '2017-01-13 06:24:17');
INSERT INTO `operation_log` VALUES ('1678', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:25:23', '2017-01-13 06:25:23');
INSERT INTO `operation_log` VALUES ('1679', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:26:59', '2017-01-13 06:26:59');
INSERT INTO `operation_log` VALUES ('1680', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:27:29', '2017-01-13 06:27:29');
INSERT INTO `operation_log` VALUES ('1681', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:27:56', '2017-01-13 06:27:56');
INSERT INTO `operation_log` VALUES ('1682', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:28:14', '2017-01-13 06:28:14');
INSERT INTO `operation_log` VALUES ('1683', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:29:34', '2017-01-13 06:29:34');
INSERT INTO `operation_log` VALUES ('1684', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:30:24', '2017-01-13 06:30:24');
INSERT INTO `operation_log` VALUES ('1685', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:31:52', '2017-01-13 06:31:52');
INSERT INTO `operation_log` VALUES ('1686', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:32:03', '2017-01-13 06:32:03');
INSERT INTO `operation_log` VALUES ('1687', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:32:39', '2017-01-13 06:32:39');
INSERT INTO `operation_log` VALUES ('1688', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:35:59', '2017-01-13 06:35:59');
INSERT INTO `operation_log` VALUES ('1689', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:36:55', '2017-01-13 06:36:55');
INSERT INTO `operation_log` VALUES ('1690', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:37:46', '2017-01-13 06:37:46');
INSERT INTO `operation_log` VALUES ('1691', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:38:01', '2017-01-13 06:38:01');
INSERT INTO `operation_log` VALUES ('1692', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:38:25', '2017-01-13 06:38:25');
INSERT INTO `operation_log` VALUES ('1693', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:38:32', '2017-01-13 06:38:32');
INSERT INTO `operation_log` VALUES ('1694', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:38:51', '2017-01-13 06:38:51');
INSERT INTO `operation_log` VALUES ('1695', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:39:07', '2017-01-13 06:39:07');
INSERT INTO `operation_log` VALUES ('1696', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:39:23', '2017-01-13 06:39:23');
INSERT INTO `operation_log` VALUES ('1697', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:39:34', '2017-01-13 06:39:34');
INSERT INTO `operation_log` VALUES ('1698', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:40:30', '2017-01-13 06:40:30');
INSERT INTO `operation_log` VALUES ('1699', '1', 'admin/auth/category', 'GET', '127.0.0.1', '[]', '2017-01-13 06:40:53', '2017-01-13 06:40:53');
INSERT INTO `operation_log` VALUES ('1700', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:00:19', '2017-01-13 08:00:19');
INSERT INTO `operation_log` VALUES ('1701', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:00:21', '2017-01-13 08:00:21');
INSERT INTO `operation_log` VALUES ('1702', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 08:01:19', '2017-01-13 08:01:19');
INSERT INTO `operation_log` VALUES ('1703', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\",\"icon\":\"fa-comments\",\"uri\":\"\\/auth\\/comment\",\"order\":\"0\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 08:01:44', '2017-01-13 08:01:44');
INSERT INTO `operation_log` VALUES ('1704', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 08:01:45', '2017-01-13 08:01:45');
INSERT INTO `operation_log` VALUES ('1705', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Comment\",\"icon\":\"fa-comments\",\"uri\":\"\\/auth\\/comment\",\"order\":\"0\",\"_token\":\"DMgEktFXbJTJ2HzU04679ZNW4xGzsJCXalTxQV09\"}', '2017-01-13 08:01:52', '2017-01-13 08:01:52');
INSERT INTO `operation_log` VALUES ('1706', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 08:01:52', '2017-01-13 08:01:52');
INSERT INTO `operation_log` VALUES ('1707', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 08:01:54', '2017-01-13 08:01:54');
INSERT INTO `operation_log` VALUES ('1708', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:05:43', '2017-01-13 08:05:43');
INSERT INTO `operation_log` VALUES ('1709', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:06:06', '2017-01-13 08:06:06');
INSERT INTO `operation_log` VALUES ('1710', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:06:45', '2017-01-13 08:06:45');
INSERT INTO `operation_log` VALUES ('1711', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:08:21', '2017-01-13 08:08:21');
INSERT INTO `operation_log` VALUES ('1712', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:10:25', '2017-01-13 08:10:25');
INSERT INTO `operation_log` VALUES ('1713', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:15:00', '2017-01-13 08:15:00');
INSERT INTO `operation_log` VALUES ('1714', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 08:15:06', '2017-01-13 08:15:06');
INSERT INTO `operation_log` VALUES ('1715', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:15:13', '2017-01-13 08:15:13');
INSERT INTO `operation_log` VALUES ('1716', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 08:15:13', '2017-01-13 08:15:13');
INSERT INTO `operation_log` VALUES ('1717', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:15:15', '2017-01-13 08:15:15');
INSERT INTO `operation_log` VALUES ('1718', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 08:15:15', '2017-01-13 08:15:15');
INSERT INTO `operation_log` VALUES ('1719', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:15:44', '2017-01-13 08:15:44');
INSERT INTO `operation_log` VALUES ('1720', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 08:15:44', '2017-01-13 08:15:44');
INSERT INTO `operation_log` VALUES ('1721', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 08:16:09', '2017-01-13 08:16:09');
INSERT INTO `operation_log` VALUES ('1722', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:16:38', '2017-01-13 08:16:38');
INSERT INTO `operation_log` VALUES ('1723', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:16:39', '2017-01-13 08:16:39');
INSERT INTO `operation_log` VALUES ('1724', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:16:39', '2017-01-13 08:16:39');
INSERT INTO `operation_log` VALUES ('1725', '1', 'admin/auth/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:16:40', '2017-01-13 08:16:40');
INSERT INTO `operation_log` VALUES ('1726', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 08:16:41', '2017-01-13 08:16:41');
INSERT INTO `operation_log` VALUES ('1727', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:17:06', '2017-01-13 08:17:06');
INSERT INTO `operation_log` VALUES ('1728', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 08:18:44', '2017-01-13 08:18:44');
INSERT INTO `operation_log` VALUES ('1729', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:16:07', '2017-01-13 09:16:07');
INSERT INTO `operation_log` VALUES ('1730', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:17:34', '2017-01-13 09:17:34');
INSERT INTO `operation_log` VALUES ('1731', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:18:13', '2017-01-13 09:18:13');
INSERT INTO `operation_log` VALUES ('1732', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:21:36', '2017-01-13 09:21:36');
INSERT INTO `operation_log` VALUES ('1733', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:22:34', '2017-01-13 09:22:34');
INSERT INTO `operation_log` VALUES ('1734', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:22:59', '2017-01-13 09:22:59');
INSERT INTO `operation_log` VALUES ('1735', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:31:10', '2017-01-13 09:31:10');
INSERT INTO `operation_log` VALUES ('1736', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:31:22', '2017-01-13 09:31:22');
INSERT INTO `operation_log` VALUES ('1737', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:32:11', '2017-01-13 09:32:11');
INSERT INTO `operation_log` VALUES ('1738', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:40:45', '2017-01-13 09:40:45');
INSERT INTO `operation_log` VALUES ('1739', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:41:49', '2017-01-13 09:41:49');
INSERT INTO `operation_log` VALUES ('1740', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:42:17', '2017-01-13 09:42:17');
INSERT INTO `operation_log` VALUES ('1741', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:42:42', '2017-01-13 09:42:42');
INSERT INTO `operation_log` VALUES ('1742', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:43:23', '2017-01-13 09:43:23');
INSERT INTO `operation_log` VALUES ('1743', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:44:08', '2017-01-13 09:44:08');
INSERT INTO `operation_log` VALUES ('1744', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:45:59', '2017-01-13 09:45:59');
INSERT INTO `operation_log` VALUES ('1745', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:46:05', '2017-01-13 09:46:05');
INSERT INTO `operation_log` VALUES ('1746', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:46:50', '2017-01-13 09:46:50');
INSERT INTO `operation_log` VALUES ('1747', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:47:13', '2017-01-13 09:47:13');
INSERT INTO `operation_log` VALUES ('1748', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:49:56', '2017-01-13 09:49:56');
INSERT INTO `operation_log` VALUES ('1749', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:50:45', '2017-01-13 09:50:45');
INSERT INTO `operation_log` VALUES ('1750', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:51:45', '2017-01-13 09:51:45');
INSERT INTO `operation_log` VALUES ('1751', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:55:38', '2017-01-13 09:55:38');
INSERT INTO `operation_log` VALUES ('1752', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 09:56:54', '2017-01-13 09:56:54');
INSERT INTO `operation_log` VALUES ('1753', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:02:01', '2017-01-13 10:02:01');
INSERT INTO `operation_log` VALUES ('1754', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 10:02:52', '2017-01-13 10:02:52');
INSERT INTO `operation_log` VALUES ('1755', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 10:06:03', '2017-01-13 10:06:03');
INSERT INTO `operation_log` VALUES ('1756', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-13 10:06:41', '2017-01-13 10:06:41');
INSERT INTO `operation_log` VALUES ('1757', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:06:54', '2017-01-13 10:06:54');
INSERT INTO `operation_log` VALUES ('1758', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:04', '2017-01-13 10:08:04');
INSERT INTO `operation_log` VALUES ('1759', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:13', '2017-01-13 10:08:13');
INSERT INTO `operation_log` VALUES ('1760', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 10:08:22', '2017-01-13 10:08:22');
INSERT INTO `operation_log` VALUES ('1761', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:23', '2017-01-13 10:08:23');
INSERT INTO `operation_log` VALUES ('1762', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-13 10:08:25', '2017-01-13 10:08:25');
INSERT INTO `operation_log` VALUES ('1763', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:25', '2017-01-13 10:08:25');
INSERT INTO `operation_log` VALUES ('1764', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:29', '2017-01-13 10:08:29');
INSERT INTO `operation_log` VALUES ('1765', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:08:47', '2017-01-13 10:08:47');
INSERT INTO `operation_log` VALUES ('1766', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:10:44', '2017-01-13 10:10:44');
INSERT INTO `operation_log` VALUES ('1767', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:14:08', '2017-01-13 10:14:08');
INSERT INTO `operation_log` VALUES ('1768', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:17:24', '2017-01-13 10:17:24');
INSERT INTO `operation_log` VALUES ('1769', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:32:32', '2017-01-13 10:32:32');
INSERT INTO `operation_log` VALUES ('1770', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:35:13', '2017-01-13 10:35:13');
INSERT INTO `operation_log` VALUES ('1771', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:35:27', '2017-01-13 10:35:27');
INSERT INTO `operation_log` VALUES ('1772', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:35:50', '2017-01-13 10:35:50');
INSERT INTO `operation_log` VALUES ('1773', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-13 10:36:04', '2017-01-13 10:36:04');
INSERT INTO `operation_log` VALUES ('1774', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-16 05:41:05', '2017-01-16 05:41:05');
INSERT INTO `operation_log` VALUES ('1775', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:41:15', '2017-01-16 05:41:15');
INSERT INTO `operation_log` VALUES ('1776', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:43:54', '2017-01-16 05:43:54');
INSERT INTO `operation_log` VALUES ('1777', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:44:22', '2017-01-16 05:44:22');
INSERT INTO `operation_log` VALUES ('1778', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:46:31', '2017-01-16 05:46:31');
INSERT INTO `operation_log` VALUES ('1779', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:47:28', '2017-01-16 05:47:28');
INSERT INTO `operation_log` VALUES ('1780', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:47:41', '2017-01-16 05:47:41');
INSERT INTO `operation_log` VALUES ('1781', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:50:02', '2017-01-16 05:50:02');
INSERT INTO `operation_log` VALUES ('1782', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:52:32', '2017-01-16 05:52:32');
INSERT INTO `operation_log` VALUES ('1783', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:56:14', '2017-01-16 05:56:14');
INSERT INTO `operation_log` VALUES ('1784', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:14', '2017-01-16 05:56:14');
INSERT INTO `operation_log` VALUES ('1785', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:14', '2017-01-16 05:56:14');
INSERT INTO `operation_log` VALUES ('1786', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:14', '2017-01-16 05:56:14');
INSERT INTO `operation_log` VALUES ('1787', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:15', '2017-01-16 05:56:15');
INSERT INTO `operation_log` VALUES ('1788', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:15', '2017-01-16 05:56:15');
INSERT INTO `operation_log` VALUES ('1789', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:56:15', '2017-01-16 05:56:15');
INSERT INTO `operation_log` VALUES ('1790', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:15', '2017-01-16 05:56:15');
INSERT INTO `operation_log` VALUES ('1791', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:56:16', '2017-01-16 05:56:16');
INSERT INTO `operation_log` VALUES ('1792', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:16', '2017-01-16 05:56:16');
INSERT INTO `operation_log` VALUES ('1793', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:16', '2017-01-16 05:56:16');
INSERT INTO `operation_log` VALUES ('1794', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 05:56:17', '2017-01-16 05:56:17');
INSERT INTO `operation_log` VALUES ('1795', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:17', '2017-01-16 05:56:17');
INSERT INTO `operation_log` VALUES ('1796', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:18', '2017-01-16 05:56:18');
INSERT INTO `operation_log` VALUES ('1797', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:18', '2017-01-16 05:56:18');
INSERT INTO `operation_log` VALUES ('1798', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:18', '2017-01-16 05:56:18');
INSERT INTO `operation_log` VALUES ('1799', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:18', '2017-01-16 05:56:18');
INSERT INTO `operation_log` VALUES ('1800', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:20', '2017-01-16 05:56:20');
INSERT INTO `operation_log` VALUES ('1801', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:20', '2017-01-16 05:56:20');
INSERT INTO `operation_log` VALUES ('1802', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:20', '2017-01-16 05:56:20');
INSERT INTO `operation_log` VALUES ('1803', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:21', '2017-01-16 05:56:21');
INSERT INTO `operation_log` VALUES ('1804', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:21', '2017-01-16 05:56:21');
INSERT INTO `operation_log` VALUES ('1805', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:21', '2017-01-16 05:56:21');
INSERT INTO `operation_log` VALUES ('1806', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:21', '2017-01-16 05:56:21');
INSERT INTO `operation_log` VALUES ('1807', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:22', '2017-01-16 05:56:22');
INSERT INTO `operation_log` VALUES ('1808', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 05:56:29', '2017-01-16 05:56:29');
INSERT INTO `operation_log` VALUES ('1809', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:00:21', '2017-01-16 06:00:21');
INSERT INTO `operation_log` VALUES ('1810', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:03:20', '2017-01-16 06:03:20');
INSERT INTO `operation_log` VALUES ('1811', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:04:53', '2017-01-16 06:04:53');
INSERT INTO `operation_log` VALUES ('1812', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:05:31', '2017-01-16 06:05:31');
INSERT INTO `operation_log` VALUES ('1813', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:07:23', '2017-01-16 06:07:23');
INSERT INTO `operation_log` VALUES ('1814', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:09:24', '2017-01-16 06:09:24');
INSERT INTO `operation_log` VALUES ('1815', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 06:09:54', '2017-01-16 06:09:54');
INSERT INTO `operation_log` VALUES ('1816', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:10:00', '2017-01-16 06:10:00');
INSERT INTO `operation_log` VALUES ('1817', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:10:33', '2017-01-16 06:10:33');
INSERT INTO `operation_log` VALUES ('1818', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 06:29:22', '2017-01-16 06:29:22');
INSERT INTO `operation_log` VALUES ('1819', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 06:30:33', '2017-01-16 06:30:33');
INSERT INTO `operation_log` VALUES ('1820', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 06:30:38', '2017-01-16 06:30:38');
INSERT INTO `operation_log` VALUES ('1821', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:37:18', '2017-01-16 06:37:18');
INSERT INTO `operation_log` VALUES ('1822', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:40:48', '2017-01-16 06:40:48');
INSERT INTO `operation_log` VALUES ('1823', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:42:04', '2017-01-16 06:42:04');
INSERT INTO `operation_log` VALUES ('1824', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:43:53', '2017-01-16 06:43:53');
INSERT INTO `operation_log` VALUES ('1825', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:44:09', '2017-01-16 06:44:09');
INSERT INTO `operation_log` VALUES ('1826', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:44:44', '2017-01-16 06:44:44');
INSERT INTO `operation_log` VALUES ('1827', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:45:25', '2017-01-16 06:45:25');
INSERT INTO `operation_log` VALUES ('1828', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:45:43', '2017-01-16 06:45:43');
INSERT INTO `operation_log` VALUES ('1829', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:46:09', '2017-01-16 06:46:09');
INSERT INTO `operation_log` VALUES ('1830', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:46:47', '2017-01-16 06:46:47');
INSERT INTO `operation_log` VALUES ('1831', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:48:44', '2017-01-16 06:48:44');
INSERT INTO `operation_log` VALUES ('1832', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:53:29', '2017-01-16 06:53:29');
INSERT INTO `operation_log` VALUES ('1833', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:53:56', '2017-01-16 06:53:56');
INSERT INTO `operation_log` VALUES ('1834', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:55:44', '2017-01-16 06:55:44');
INSERT INTO `operation_log` VALUES ('1835', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:56:54', '2017-01-16 06:56:54');
INSERT INTO `operation_log` VALUES ('1836', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 06:59:13', '2017-01-16 06:59:13');
INSERT INTO `operation_log` VALUES ('1837', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:01:06', '2017-01-16 07:01:06');
INSERT INTO `operation_log` VALUES ('1838', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:01:37', '2017-01-16 07:01:37');
INSERT INTO `operation_log` VALUES ('1839', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 07:05:59', '2017-01-16 07:05:59');
INSERT INTO `operation_log` VALUES ('1840', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 07:07:24', '2017-01-16 07:07:24');
INSERT INTO `operation_log` VALUES ('1841', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:09:22', '2017-01-16 07:09:22');
INSERT INTO `operation_log` VALUES ('1842', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:11:59', '2017-01-16 07:11:59');
INSERT INTO `operation_log` VALUES ('1843', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:12:44', '2017-01-16 07:12:44');
INSERT INTO `operation_log` VALUES ('1844', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:14:24', '2017-01-16 07:14:24');
INSERT INTO `operation_log` VALUES ('1845', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:14:52', '2017-01-16 07:14:52');
INSERT INTO `operation_log` VALUES ('1846', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:15:10', '2017-01-16 07:15:10');
INSERT INTO `operation_log` VALUES ('1847', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:16:39', '2017-01-16 07:16:39');
INSERT INTO `operation_log` VALUES ('1848', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:17:10', '2017-01-16 07:17:10');
INSERT INTO `operation_log` VALUES ('1849', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:18:30', '2017-01-16 07:18:30');
INSERT INTO `operation_log` VALUES ('1850', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:19:09', '2017-01-16 07:19:09');
INSERT INTO `operation_log` VALUES ('1851', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:19:23', '2017-01-16 07:19:23');
INSERT INTO `operation_log` VALUES ('1852', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:20:17', '2017-01-16 07:20:17');
INSERT INTO `operation_log` VALUES ('1853', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:20:32', '2017-01-16 07:20:32');
INSERT INTO `operation_log` VALUES ('1854', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:20:45', '2017-01-16 07:20:45');
INSERT INTO `operation_log` VALUES ('1855', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:20:57', '2017-01-16 07:20:57');
INSERT INTO `operation_log` VALUES ('1856', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:21:12', '2017-01-16 07:21:12');
INSERT INTO `operation_log` VALUES ('1857', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:22:24', '2017-01-16 07:22:24');
INSERT INTO `operation_log` VALUES ('1858', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:22:50', '2017-01-16 07:22:50');
INSERT INTO `operation_log` VALUES ('1859', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:22:56', '2017-01-16 07:22:56');
INSERT INTO `operation_log` VALUES ('1860', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:26:52', '2017-01-16 07:26:52');
INSERT INTO `operation_log` VALUES ('1861', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:27:02', '2017-01-16 07:27:02');
INSERT INTO `operation_log` VALUES ('1862', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:27:17', '2017-01-16 07:27:17');
INSERT INTO `operation_log` VALUES ('1863', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:27:32', '2017-01-16 07:27:32');
INSERT INTO `operation_log` VALUES ('1864', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:27:47', '2017-01-16 07:27:47');
INSERT INTO `operation_log` VALUES ('1865', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:28:13', '2017-01-16 07:28:13');
INSERT INTO `operation_log` VALUES ('1866', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:28:24', '2017-01-16 07:28:24');
INSERT INTO `operation_log` VALUES ('1867', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:28:33', '2017-01-16 07:28:33');
INSERT INTO `operation_log` VALUES ('1868', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:28:46', '2017-01-16 07:28:46');
INSERT INTO `operation_log` VALUES ('1869', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:29:03', '2017-01-16 07:29:03');
INSERT INTO `operation_log` VALUES ('1870', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:29:16', '2017-01-16 07:29:16');
INSERT INTO `operation_log` VALUES ('1871', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:30:30', '2017-01-16 07:30:30');
INSERT INTO `operation_log` VALUES ('1872', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:30:55', '2017-01-16 07:30:55');
INSERT INTO `operation_log` VALUES ('1873', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:33:09', '2017-01-16 07:33:09');
INSERT INTO `operation_log` VALUES ('1874', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:33:40', '2017-01-16 07:33:40');
INSERT INTO `operation_log` VALUES ('1875', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:34:05', '2017-01-16 07:34:05');
INSERT INTO `operation_log` VALUES ('1876', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:34:45', '2017-01-16 07:34:45');
INSERT INTO `operation_log` VALUES ('1877', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:35:57', '2017-01-16 07:35:57');
INSERT INTO `operation_log` VALUES ('1878', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:36:10', '2017-01-16 07:36:10');
INSERT INTO `operation_log` VALUES ('1879', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:36:35', '2017-01-16 07:36:35');
INSERT INTO `operation_log` VALUES ('1880', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:39:08', '2017-01-16 07:39:08');
INSERT INTO `operation_log` VALUES ('1881', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:39:36', '2017-01-16 07:39:36');
INSERT INTO `operation_log` VALUES ('1882', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:40:08', '2017-01-16 07:40:08');
INSERT INTO `operation_log` VALUES ('1883', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:40:17', '2017-01-16 07:40:17');
INSERT INTO `operation_log` VALUES ('1884', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:45:58', '2017-01-16 07:45:58');
INSERT INTO `operation_log` VALUES ('1885', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:46:58', '2017-01-16 07:46:58');
INSERT INTO `operation_log` VALUES ('1886', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:47:31', '2017-01-16 07:47:31');
INSERT INTO `operation_log` VALUES ('1887', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:48:30', '2017-01-16 07:48:30');
INSERT INTO `operation_log` VALUES ('1888', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:50:23', '2017-01-16 07:50:23');
INSERT INTO `operation_log` VALUES ('1889', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:50:47', '2017-01-16 07:50:47');
INSERT INTO `operation_log` VALUES ('1890', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:51:03', '2017-01-16 07:51:03');
INSERT INTO `operation_log` VALUES ('1891', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:51:36', '2017-01-16 07:51:36');
INSERT INTO `operation_log` VALUES ('1892', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:53:55', '2017-01-16 07:53:55');
INSERT INTO `operation_log` VALUES ('1893', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:54:07', '2017-01-16 07:54:07');
INSERT INTO `operation_log` VALUES ('1894', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:54:21', '2017-01-16 07:54:21');
INSERT INTO `operation_log` VALUES ('1895', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:54:48', '2017-01-16 07:54:48');
INSERT INTO `operation_log` VALUES ('1896', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:55:06', '2017-01-16 07:55:06');
INSERT INTO `operation_log` VALUES ('1897', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:55:17', '2017-01-16 07:55:17');
INSERT INTO `operation_log` VALUES ('1898', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 07:55:25', '2017-01-16 07:55:25');
INSERT INTO `operation_log` VALUES ('1899', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:56:02', '2017-01-16 07:56:02');
INSERT INTO `operation_log` VALUES ('1900', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:59:03', '2017-01-16 07:59:03');
INSERT INTO `operation_log` VALUES ('1901', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 07:59:16', '2017-01-16 07:59:16');
INSERT INTO `operation_log` VALUES ('1902', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:00:19', '2017-01-16 08:00:19');
INSERT INTO `operation_log` VALUES ('1903', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:01:20', '2017-01-16 08:01:20');
INSERT INTO `operation_log` VALUES ('1904', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:02:30', '2017-01-16 08:02:30');
INSERT INTO `operation_log` VALUES ('1905', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:03:00', '2017-01-16 08:03:00');
INSERT INTO `operation_log` VALUES ('1906', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:03:21', '2017-01-16 08:03:21');
INSERT INTO `operation_log` VALUES ('1907', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:03:35', '2017-01-16 08:03:35');
INSERT INTO `operation_log` VALUES ('1908', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:05:40', '2017-01-16 08:05:40');
INSERT INTO `operation_log` VALUES ('1909', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:08:03', '2017-01-16 08:08:03');
INSERT INTO `operation_log` VALUES ('1910', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:09:44', '2017-01-16 08:09:44');
INSERT INTO `operation_log` VALUES ('1911', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:10:39', '2017-01-16 08:10:39');
INSERT INTO `operation_log` VALUES ('1912', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:11:32', '2017-01-16 08:11:32');
INSERT INTO `operation_log` VALUES ('1913', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:13:06', '2017-01-16 08:13:06');
INSERT INTO `operation_log` VALUES ('1914', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:21:30', '2017-01-16 08:21:30');
INSERT INTO `operation_log` VALUES ('1915', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:21:43', '2017-01-16 08:21:43');
INSERT INTO `operation_log` VALUES ('1916', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:22:10', '2017-01-16 08:22:10');
INSERT INTO `operation_log` VALUES ('1917', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:22:18', '2017-01-16 08:22:18');
INSERT INTO `operation_log` VALUES ('1918', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:22:45', '2017-01-16 08:22:45');
INSERT INTO `operation_log` VALUES ('1919', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:23:28', '2017-01-16 08:23:28');
INSERT INTO `operation_log` VALUES ('1920', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:23:50', '2017-01-16 08:23:50');
INSERT INTO `operation_log` VALUES ('1921', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:24:11', '2017-01-16 08:24:11');
INSERT INTO `operation_log` VALUES ('1922', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:27:40', '2017-01-16 08:27:40');
INSERT INTO `operation_log` VALUES ('1923', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:27:52', '2017-01-16 08:27:52');
INSERT INTO `operation_log` VALUES ('1924', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:30:08', '2017-01-16 08:30:08');
INSERT INTO `operation_log` VALUES ('1925', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:30:50', '2017-01-16 08:30:50');
INSERT INTO `operation_log` VALUES ('1926', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:32:59', '2017-01-16 08:32:59');
INSERT INTO `operation_log` VALUES ('1927', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:35:53', '2017-01-16 08:35:53');
INSERT INTO `operation_log` VALUES ('1928', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:36:05', '2017-01-16 08:36:05');
INSERT INTO `operation_log` VALUES ('1929', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:37:46', '2017-01-16 08:37:46');
INSERT INTO `operation_log` VALUES ('1930', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:38:57', '2017-01-16 08:38:57');
INSERT INTO `operation_log` VALUES ('1931', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-16 08:39:17', '2017-01-16 08:39:17');
INSERT INTO `operation_log` VALUES ('1932', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2017-01-16 08:39:49', '2017-01-16 08:39:49');
INSERT INTO `operation_log` VALUES ('1933', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\"}', '2017-01-16 08:39:58', '2017-01-16 08:39:58');
INSERT INTO `operation_log` VALUES ('1934', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\"}', '2017-01-16 08:42:21', '2017-01-16 08:42:21');
INSERT INTO `operation_log` VALUES ('1935', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\"}', '2017-01-16 08:42:44', '2017-01-16 08:42:44');
INSERT INTO `operation_log` VALUES ('1936', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\"}', '2017-01-16 08:42:48', '2017-01-16 08:42:48');
INSERT INTO `operation_log` VALUES ('1937', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"page\":\"4\"}', '2017-01-16 08:43:39', '2017-01-16 08:43:39');
INSERT INTO `operation_log` VALUES ('1938', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 08:43:44', '2017-01-16 08:43:44');
INSERT INTO `operation_log` VALUES ('1939', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 09:37:44', '2017-01-16 09:37:44');
INSERT INTO `operation_log` VALUES ('1940', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:44', '2017-01-16 09:37:44');
INSERT INTO `operation_log` VALUES ('1941', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:45', '2017-01-16 09:37:45');
INSERT INTO `operation_log` VALUES ('1942', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:45', '2017-01-16 09:37:45');
INSERT INTO `operation_log` VALUES ('1943', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:45', '2017-01-16 09:37:45');
INSERT INTO `operation_log` VALUES ('1944', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:45', '2017-01-16 09:37:45');
INSERT INTO `operation_log` VALUES ('1945', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:46', '2017-01-16 09:37:46');
INSERT INTO `operation_log` VALUES ('1946', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:46', '2017-01-16 09:37:46');
INSERT INTO `operation_log` VALUES ('1947', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-16 09:37:46', '2017-01-16 09:37:46');
INSERT INTO `operation_log` VALUES ('1948', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:46', '2017-01-16 09:37:46');
INSERT INTO `operation_log` VALUES ('1949', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:47', '2017-01-16 09:37:47');
INSERT INTO `operation_log` VALUES ('1950', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:47', '2017-01-16 09:37:47');
INSERT INTO `operation_log` VALUES ('1951', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:48', '2017-01-16 09:37:48');
INSERT INTO `operation_log` VALUES ('1952', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:48', '2017-01-16 09:37:48');
INSERT INTO `operation_log` VALUES ('1953', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:37:48', '2017-01-16 09:37:48');
INSERT INTO `operation_log` VALUES ('1954', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:39:43', '2017-01-16 09:39:43');
INSERT INTO `operation_log` VALUES ('1955', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:40:26', '2017-01-16 09:40:26');
INSERT INTO `operation_log` VALUES ('1956', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:47:10', '2017-01-16 09:47:10');
INSERT INTO `operation_log` VALUES ('1957', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:47:44', '2017-01-16 09:47:44');
INSERT INTO `operation_log` VALUES ('1958', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:48:02', '2017-01-16 09:48:02');
INSERT INTO `operation_log` VALUES ('1959', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:49:48', '2017-01-16 09:49:48');
INSERT INTO `operation_log` VALUES ('1960', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-16 09:51:00', '2017-01-16 09:51:00');
INSERT INTO `operation_log` VALUES ('1961', '1', 'admin', 'GET', '127.0.0.1', '[]', '2017-01-17 02:03:46', '2017-01-17 02:03:46');
INSERT INTO `operation_log` VALUES ('1962', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 02:03:54', '2017-01-17 02:03:54');
INSERT INTO `operation_log` VALUES ('1963', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 02:15:53', '2017-01-17 02:15:53');
INSERT INTO `operation_log` VALUES ('1964', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 02:17:58', '2017-01-17 02:17:58');
INSERT INTO `operation_log` VALUES ('1965', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 02:21:45', '2017-01-17 02:21:45');
INSERT INTO `operation_log` VALUES ('1966', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 02:22:18', '2017-01-17 02:22:18');
INSERT INTO `operation_log` VALUES ('1967', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:22:32', '2017-01-17 02:22:32');
INSERT INTO `operation_log` VALUES ('1968', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:24:52', '2017-01-17 02:24:52');
INSERT INTO `operation_log` VALUES ('1969', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:25:26', '2017-01-17 02:25:26');
INSERT INTO `operation_log` VALUES ('1970', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:25:44', '2017-01-17 02:25:44');
INSERT INTO `operation_log` VALUES ('1971', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:25:56', '2017-01-17 02:25:56');
INSERT INTO `operation_log` VALUES ('1972', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:41:37', '2017-01-17 02:41:37');
INSERT INTO `operation_log` VALUES ('1973', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:42:31', '2017-01-17 02:42:31');
INSERT INTO `operation_log` VALUES ('1974', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:51:08', '2017-01-17 02:51:08');
INSERT INTO `operation_log` VALUES ('1975', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:51:23', '2017-01-17 02:51:23');
INSERT INTO `operation_log` VALUES ('1976', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:51:41', '2017-01-17 02:51:41');
INSERT INTO `operation_log` VALUES ('1977', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:52:09', '2017-01-17 02:52:09');
INSERT INTO `operation_log` VALUES ('1978', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 02:54:02', '2017-01-17 02:54:02');
INSERT INTO `operation_log` VALUES ('1979', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:15:05', '2017-01-17 03:15:05');
INSERT INTO `operation_log` VALUES ('1980', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:16:38', '2017-01-17 03:16:38');
INSERT INTO `operation_log` VALUES ('1981', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:16:58', '2017-01-17 03:16:58');
INSERT INTO `operation_log` VALUES ('1982', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:17:50', '2017-01-17 03:17:50');
INSERT INTO `operation_log` VALUES ('1983', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:18:26', '2017-01-17 03:18:26');
INSERT INTO `operation_log` VALUES ('1984', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:18:32', '2017-01-17 03:18:32');
INSERT INTO `operation_log` VALUES ('1985', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:18:59', '2017-01-17 03:18:59');
INSERT INTO `operation_log` VALUES ('1986', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:21:21', '2017-01-17 03:21:21');
INSERT INTO `operation_log` VALUES ('1987', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:21:44', '2017-01-17 03:21:44');
INSERT INTO `operation_log` VALUES ('1988', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:21:56', '2017-01-17 03:21:56');
INSERT INTO `operation_log` VALUES ('1989', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:25:37', '2017-01-17 03:25:37');
INSERT INTO `operation_log` VALUES ('1990', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:27:52', '2017-01-17 03:27:52');
INSERT INTO `operation_log` VALUES ('1991', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:28:17', '2017-01-17 03:28:17');
INSERT INTO `operation_log` VALUES ('1992', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:28:27', '2017-01-17 03:28:27');
INSERT INTO `operation_log` VALUES ('1993', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:28:49', '2017-01-17 03:28:49');
INSERT INTO `operation_log` VALUES ('1994', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:29:06', '2017-01-17 03:29:06');
INSERT INTO `operation_log` VALUES ('1995', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:29:52', '2017-01-17 03:29:52');
INSERT INTO `operation_log` VALUES ('1996', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:31:37', '2017-01-17 03:31:37');
INSERT INTO `operation_log` VALUES ('1997', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:32:09', '2017-01-17 03:32:09');
INSERT INTO `operation_log` VALUES ('1998', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:32:25', '2017-01-17 03:32:25');
INSERT INTO `operation_log` VALUES ('1999', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:33:56', '2017-01-17 03:33:56');
INSERT INTO `operation_log` VALUES ('2000', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:34:19', '2017-01-17 03:34:19');
INSERT INTO `operation_log` VALUES ('2001', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:34:32', '2017-01-17 03:34:32');
INSERT INTO `operation_log` VALUES ('2002', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:34:42', '2017-01-17 03:34:42');
INSERT INTO `operation_log` VALUES ('2003', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:36:07', '2017-01-17 03:36:07');
INSERT INTO `operation_log` VALUES ('2004', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:36:40', '2017-01-17 03:36:40');
INSERT INTO `operation_log` VALUES ('2005', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:37:40', '2017-01-17 03:37:40');
INSERT INTO `operation_log` VALUES ('2006', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:37:52', '2017-01-17 03:37:52');
INSERT INTO `operation_log` VALUES ('2007', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:37:59', '2017-01-17 03:37:59');
INSERT INTO `operation_log` VALUES ('2008', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:38:09', '2017-01-17 03:38:09');
INSERT INTO `operation_log` VALUES ('2009', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:40:23', '2017-01-17 03:40:23');
INSERT INTO `operation_log` VALUES ('2010', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:40:30', '2017-01-17 03:40:30');
INSERT INTO `operation_log` VALUES ('2011', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:41:47', '2017-01-17 03:41:47');
INSERT INTO `operation_log` VALUES ('2012', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:41:57', '2017-01-17 03:41:57');
INSERT INTO `operation_log` VALUES ('2013', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:42:07', '2017-01-17 03:42:07');
INSERT INTO `operation_log` VALUES ('2014', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:42:15', '2017-01-17 03:42:15');
INSERT INTO `operation_log` VALUES ('2015', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:42:26', '2017-01-17 03:42:26');
INSERT INTO `operation_log` VALUES ('2016', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:42:34', '2017-01-17 03:42:34');
INSERT INTO `operation_log` VALUES ('2017', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:42:49', '2017-01-17 03:42:49');
INSERT INTO `operation_log` VALUES ('2018', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:43:14', '2017-01-17 03:43:14');
INSERT INTO `operation_log` VALUES ('2019', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:44:07', '2017-01-17 03:44:07');
INSERT INTO `operation_log` VALUES ('2020', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:48:13', '2017-01-17 03:48:13');
INSERT INTO `operation_log` VALUES ('2021', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:49:38', '2017-01-17 03:49:38');
INSERT INTO `operation_log` VALUES ('2022', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:49:49', '2017-01-17 03:49:49');
INSERT INTO `operation_log` VALUES ('2023', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:51:23', '2017-01-17 03:51:23');
INSERT INTO `operation_log` VALUES ('2024', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:51:53', '2017-01-17 03:51:53');
INSERT INTO `operation_log` VALUES ('2025', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:54:39', '2017-01-17 03:54:39');
INSERT INTO `operation_log` VALUES ('2026', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:54:54', '2017-01-17 03:54:54');
INSERT INTO `operation_log` VALUES ('2027', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:56:11', '2017-01-17 03:56:11');
INSERT INTO `operation_log` VALUES ('2028', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 03:57:03', '2017-01-17 03:57:03');
INSERT INTO `operation_log` VALUES ('2029', '1', 'admin/auth/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 03:57:14', '2017-01-17 03:57:14');
INSERT INTO `operation_log` VALUES ('2030', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 03:57:17', '2017-01-17 03:57:17');
INSERT INTO `operation_log` VALUES ('2031', '1', 'admin/auth/comment/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 03:57:22', '2017-01-17 03:57:22');
INSERT INTO `operation_log` VALUES ('2032', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 03:57:26', '2017-01-17 03:57:26');
INSERT INTO `operation_log` VALUES ('2033', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:47:09', '2017-01-17 05:47:09');
INSERT INTO `operation_log` VALUES ('2034', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:48:00', '2017-01-17 05:48:00');
INSERT INTO `operation_log` VALUES ('2035', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:48:21', '2017-01-17 05:48:21');
INSERT INTO `operation_log` VALUES ('2036', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:48:57', '2017-01-17 05:48:57');
INSERT INTO `operation_log` VALUES ('2037', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:49:24', '2017-01-17 05:49:24');
INSERT INTO `operation_log` VALUES ('2038', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 05:50:15', '2017-01-17 05:50:15');
INSERT INTO `operation_log` VALUES ('2039', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-01-17 05:53:19', '2017-01-17 05:53:19');
INSERT INTO `operation_log` VALUES ('2040', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 05:53:24', '2017-01-17 05:53:24');
INSERT INTO `operation_log` VALUES ('2041', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:54:00', '2017-01-17 05:54:00');
INSERT INTO `operation_log` VALUES ('2042', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 05:54:20', '2017-01-17 05:54:20');
INSERT INTO `operation_log` VALUES ('2043', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:55:49', '2017-01-17 05:55:49');
INSERT INTO `operation_log` VALUES ('2044', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:58:28', '2017-01-17 05:58:28');
INSERT INTO `operation_log` VALUES ('2045', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:58:38', '2017-01-17 05:58:38');
INSERT INTO `operation_log` VALUES ('2046', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 05:58:56', '2017-01-17 05:58:56');
INSERT INTO `operation_log` VALUES ('2047', '1', 'admin/auth/comment', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"sdfsfds\",\"user_id\":\"1\",\"is_show\":\"on\",\"_token\":\"xrPNBEipDh1Da8vMyc4ToqgVBkfSXTvPr8NP8iRs\"}', '2017-01-17 06:07:01', '2017-01-17 06:07:01');
INSERT INTO `operation_log` VALUES ('2048', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:07:01', '2017-01-17 06:07:01');
INSERT INTO `operation_log` VALUES ('2049', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:07:13', '2017-01-17 06:07:13');
INSERT INTO `operation_log` VALUES ('2050', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:08:11', '2017-01-17 06:08:11');
INSERT INTO `operation_log` VALUES ('2051', '1', 'admin/auth/comment', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"sdfsfs\",\"user_id\":\"1\",\"article_id\":\"\",\"is_show\":\"on\",\"_token\":\"xrPNBEipDh1Da8vMyc4ToqgVBkfSXTvPr8NP8iRs\"}', '2017-01-17 06:08:49', '2017-01-17 06:08:49');
INSERT INTO `operation_log` VALUES ('2052', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:08:49', '2017-01-17 06:08:49');
INSERT INTO `operation_log` VALUES ('2053', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 06:09:13', '2017-01-17 06:09:13');
INSERT INTO `operation_log` VALUES ('2054', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 06:09:19', '2017-01-17 06:09:19');
INSERT INTO `operation_log` VALUES ('2055', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:09:22', '2017-01-17 06:09:22');
INSERT INTO `operation_log` VALUES ('2056', '1', 'admin/auth/comment', 'POST', '127.0.0.1', '{\"parent_id\":\"3\",\"title\":\"dfsfdsfsf\",\"user_id\":\"1\",\"article_id\":\"\",\"is_show\":\"on\",\"_token\":\"xrPNBEipDh1Da8vMyc4ToqgVBkfSXTvPr8NP8iRs\"}', '2017-01-17 06:09:32', '2017-01-17 06:09:32');
INSERT INTO `operation_log` VALUES ('2057', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:09:32', '2017-01-17 06:09:32');
INSERT INTO `operation_log` VALUES ('2058', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 06:09:42', '2017-01-17 06:09:42');
INSERT INTO `operation_log` VALUES ('2059', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:12:27', '2017-01-17 06:12:27');
INSERT INTO `operation_log` VALUES ('2060', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:12:56', '2017-01-17 06:12:56');
INSERT INTO `operation_log` VALUES ('2061', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 06:13:28', '2017-01-17 06:13:28');
INSERT INTO `operation_log` VALUES ('2062', '1', 'admin/auth/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:03:09', '2017-01-17 08:03:09');
INSERT INTO `operation_log` VALUES ('2063', '1', 'admin/auth/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:03:10', '2017-01-17 08:03:10');
INSERT INTO `operation_log` VALUES ('2064', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:03:13', '2017-01-17 08:03:13');
INSERT INTO `operation_log` VALUES ('2065', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:09:56', '2017-01-17 08:09:56');
INSERT INTO `operation_log` VALUES ('2066', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:10:17', '2017-01-17 08:10:17');
INSERT INTO `operation_log` VALUES ('2067', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:16:29', '2017-01-17 08:16:29');
INSERT INTO `operation_log` VALUES ('2068', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:16:53', '2017-01-17 08:16:53');
INSERT INTO `operation_log` VALUES ('2069', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:17:32', '2017-01-17 08:17:32');
INSERT INTO `operation_log` VALUES ('2070', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:21:45', '2017-01-17 08:21:45');
INSERT INTO `operation_log` VALUES ('2071', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:23:12', '2017-01-17 08:23:12');
INSERT INTO `operation_log` VALUES ('2072', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:23:33', '2017-01-17 08:23:33');
INSERT INTO `operation_log` VALUES ('2073', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:23:53', '2017-01-17 08:23:53');
INSERT INTO `operation_log` VALUES ('2074', '1', 'admin/auth/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:24:07', '2017-01-17 08:24:07');
INSERT INTO `operation_log` VALUES ('2075', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:24:09', '2017-01-17 08:24:09');
INSERT INTO `operation_log` VALUES ('2076', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:24:16', '2017-01-17 08:24:16');
INSERT INTO `operation_log` VALUES ('2077', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:25:21', '2017-01-17 08:25:21');
INSERT INTO `operation_log` VALUES ('2078', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:25:35', '2017-01-17 08:25:35');
INSERT INTO `operation_log` VALUES ('2079', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:26:13', '2017-01-17 08:26:13');
INSERT INTO `operation_log` VALUES ('2080', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:26:26', '2017-01-17 08:26:26');
INSERT INTO `operation_log` VALUES ('2081', '1', 'admin/auth/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:27:33', '2017-01-17 08:27:33');
INSERT INTO `operation_log` VALUES ('2082', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:27:36', '2017-01-17 08:27:36');
INSERT INTO `operation_log` VALUES ('2083', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:27:40', '2017-01-17 08:27:40');
INSERT INTO `operation_log` VALUES ('2084', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 08:28:24', '2017-01-17 08:28:24');
INSERT INTO `operation_log` VALUES ('2085', '1', 'admin/auth/comment', 'GET', '127.0.0.1', '[]', '2017-01-17 08:31:51', '2017-01-17 08:31:51');
INSERT INTO `operation_log` VALUES ('2086', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 09:01:53', '2017-01-17 09:01:53');
INSERT INTO `operation_log` VALUES ('2087', '1', 'admin/auth/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 09:02:00', '2017-01-17 09:02:00');
INSERT INTO `operation_log` VALUES ('2088', '1', 'admin/auth/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-01-17 09:02:03', '2017-01-17 09:02:03');
INSERT INTO `operation_log` VALUES ('2089', '1', 'admin/auth/article', 'GET', '127.0.0.1', '[]', '2017-01-17 09:16:55', '2017-01-17 09:16:55');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'edit', 'edit', '2017-01-05 13:50:14', '2017-01-06 10:10:59');
INSERT INTO `permissions` VALUES ('2', 'update', 'update', '2017-01-06 10:10:53', '2017-01-06 10:10:53');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrator', 'administrator', '2017-01-04 07:08:07', '2017-01-06 09:52:00');
INSERT INTO `roles` VALUES ('3', 'Guest', 'guest', '2017-01-10 09:26:29', '2017-01-10 09:26:29');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '2', null, null);
INSERT INTO `role_menu` VALUES ('1', '2', null, null);
INSERT INTO `role_menu` VALUES ('3', '1', null, null);

-- ----------------------------
-- Table structure for `role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES ('1', '1', '2017-01-06 17:27:17', '2017-01-06 17:27:19');
INSERT INTO `role_permissions` VALUES ('2', '1', null, null);
INSERT INTO `role_permissions` VALUES ('3', '2', null, null);

-- ----------------------------
-- Table structure for `role_users`
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('3', '2', null, null);
INSERT INTO `role_users` VALUES ('1', '1', null, null);
INSERT INTO `role_users` VALUES ('1', '3', null, null);
INSERT INTO `role_users` VALUES ('3', '3', null, null);
INSERT INTO `role_users` VALUES ('3', '7', null, null);
INSERT INTO `role_users` VALUES ('1', '7', null, null);

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_class` tinyint(2) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `recommend` tinyint(2) unsigned DEFAULT '0',
  `new` tinyint(2) unsigned DEFAULT '0',
  `hot` tinyint(2) unsigned DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Consequatur', '2', '1', '1', '1', '0', null, '2016-12-29 08:48:54', '2017-01-10 06:57:18');
INSERT INTO `tags` VALUES ('2', 'Aut ', '5', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2017-01-10 07:10:54');
INSERT INTO `tags` VALUES ('3', 'Auts', '3', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('4', 'Dolorem i', '5', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('5', 'Adipisci ipsa', '1', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('6', 'Aspernatur ', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('7', 'Quibusdam est est in eum recusandae quaerat qui.', '3', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('8', 'Tempora suscipit repellendus quibusdam cum voluptates est quis.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('9', 'Consequatur in doloribus expedita atque esse quidem vitae.', '1', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('10', 'Autem autem expedita natus commodi fugit recusandae.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('11', 'Voluptas eos natus voluptatibus ut vitae exercitationem rerum neque.', '3', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('12', 'Quaerat ratione pariatur blanditiis.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('13', 'Totam cum voluptatem aut.', '1', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('14', 'Distinctio alias nulla.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('15', 'Ut velit quis eum.', '3', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('16', 'Dolores laudantium dolorem deleniti saepe ut optio.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('17', 'Adipisci distinctio repudiandae ducimus fugiat et.', '1', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('18', 'Omnis cum aut impedit asperiores eveniet tempora totam autem corrupti.', '4', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('19', 'Et quos deserunt nisi incidunt nemo cum eos.', '2', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');
INSERT INTO `tags` VALUES ('20', 'Error excepturi sit libero fugit.', '3', '1', '0', '0', '0', null, '2016-12-29 08:48:54', '2016-12-29 08:48:54');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirm_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weibo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weibo_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_confirm_code_unique` (`confirm_code`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Lacey McClure0', 'travis.zieme@example.net', null, '1', null, null, null, null, null, 'image/260404274972836926.jpg', '$2y$10$Fs9nH32RR24OSwRW4P4XxOu2o5pRQ.KI9h5lb6LVeBnF7ZGKjTuWC', '6huX1SR5aP', '2016-12-29 08:48:54', '2017-01-11 03:37:35');
INSERT INTO `users` VALUES ('2', 'lpx20000', 'admin@admin.com ', null, '0', null, null, null, null, null, 'image/透支记录7.png', '$2y$10$Fs9nH32RR24OSwRW4P4XxOu2o5pRQ.KI9h5lb6LVeBnF7ZGKjTuWC', 'XjKU7VOXeen5Vja8nV96okEmuQdAcTJWASsJicoXhQkyANl8l0fteKzz4wf6', '2017-01-06 02:36:47', '2017-01-12 01:32:51');
INSERT INTO `users` VALUES ('3', 'mygod', 'myn@admin.com ', null, '1', null, null, null, null, null, 'image/b59f92c14abe63bb02ecb342ae89c968.png', '$2y$10$nFcd0thl4Cci454yRxGN8eploe2bVobZUWBXcQxIlcoWCeafFJzOC', null, '2017-01-11 03:31:42', '2017-01-11 03:52:31');
INSERT INTO `users` VALUES ('7', '849400324@qq.com', 'sdfsfn@admin.com ', null, '0', null, null, null, null, null, 'image/透支6.png', '$2y$10$ATk1v8ZaKoIgN9zVF2Lj2.Qq5FmKf8tJOWkmhSxBPBXdeja/a8Bri', null, '2017-01-11 06:27:28', '2017-01-11 06:27:28');

-- ----------------------------
-- Table structure for `user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_permissions
-- ----------------------------
INSERT INTO `user_permissions` VALUES ('1', '1', '2017-01-05 13:50:29', '2017-01-05 13:50:31');
INSERT INTO `user_permissions` VALUES ('2', '1', null, null);
INSERT INTO `user_permissions` VALUES ('3', '1', null, null);
INSERT INTO `user_permissions` VALUES ('3', '2', null, null);
INSERT INTO `user_permissions` VALUES ('7', '2', null, null);
INSERT INTO `user_permissions` VALUES ('7', '1', null, null);
