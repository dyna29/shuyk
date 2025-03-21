-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2,	4,	'A WordPress Commenter',	'wapuu@wordpress.example',	'https://wordpress.org/',	'',	'2022-02-06 00:00:00',	'2022-02-06 00:00:00',	'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\" rel=\"nofollow ugc\">Gravatar</a>.',	0,	'1',	'',	'comment',	0,	0);

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1,	'siteurl',	'https://wordpress-192693-2426196.cloudwaysapps.com',	'yes'),
(2,	'home',	'https://wordpress-192693-2426196.cloudwaysapps.com',	'yes'),
(3,	'blogname',	'wordpress-192693-2426196.cloudwaysapps.com',	'yes'),
(4,	'blogdescription',	'Just another WordPress site',	'yes'),
(5,	'users_can_register',	'0',	'yes'),
(6,	'admin_email',	'jafarsadik@outlook.com',	'yes'),
(7,	'start_of_week',	'1',	'yes'),
(8,	'use_balanceTags',	'0',	'yes'),
(9,	'use_smilies',	'1',	'yes'),
(10,	'require_name_email',	'1',	'yes'),
(11,	'comments_notify',	'1',	'yes'),
(12,	'posts_per_rss',	'10',	'yes'),
(13,	'rss_use_excerpt',	'0',	'yes'),
(14,	'mailserver_url',	'mail.example.com',	'yes'),
(15,	'mailserver_login',	'login@example.com',	'yes'),
(16,	'mailserver_pass',	'password',	'yes'),
(17,	'mailserver_port',	'110',	'yes'),
(18,	'default_category',	'1',	'yes'),
(19,	'default_comment_status',	'open',	'yes'),
(20,	'default_ping_status',	'open',	'yes'),
(21,	'default_pingback_flag',	'1',	'yes'),
(22,	'posts_per_page',	'10',	'yes'),
(23,	'date_format',	'F j, Y',	'yes'),
(24,	'time_format',	'g:i a',	'yes'),
(25,	'links_updated_date_format',	'F j, Y g:i a',	'yes'),
(26,	'comment_moderation',	'0',	'yes'),
(27,	'moderation_notify',	'1',	'yes'),
(28,	'permalink_structure',	'/index.php/%year%/%monthnum%/%day%/%postname%/',	'yes'),
(29,	'rewrite_rules',	'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}',	'yes'),
(30,	'hack_file',	'0',	'yes'),
(31,	'blog_charset',	'UTF-8',	'yes'),
(32,	'moderation_keys',	'',	'no'),
(33,	'active_plugins',	'a:2:{i:0;s:17:\"breeze/breeze.php\";i:2;s:41:\"wordpress-importer/wordpress-importer.php\";}',	'yes'),
(34,	'category_base',	'',	'yes'),
(35,	'ping_sites',	'http://rpc.pingomatic.com/',	'yes'),
(36,	'comment_max_links',	'2',	'yes'),
(37,	'gmt_offset',	'0',	'yes'),
(38,	'default_email_category',	'1',	'yes'),
(39,	'recently_edited',	'',	'no'),
(40,	'template',	'elsie',	'yes'),
(41,	'stylesheet',	'elsie',	'yes'),
(42,	'comment_registration',	'0',	'yes'),
(43,	'html_type',	'text/html',	'yes'),
(44,	'use_trackback',	'0',	'yes'),
(45,	'default_role',	'subscriber',	'yes'),
(46,	'db_version',	'58975',	'yes'),
(47,	'uploads_use_yearmonth_folders',	'1',	'yes'),
(48,	'upload_path',	'',	'yes'),
(49,	'blog_public',	'1',	'yes'),
(50,	'default_link_category',	'2',	'yes'),
(51,	'show_on_front',	'posts',	'yes'),
(52,	'tag_base',	'',	'yes'),
(53,	'show_avatars',	'1',	'yes'),
(54,	'avatar_rating',	'G',	'yes'),
(55,	'upload_url_path',	'',	'yes'),
(56,	'thumbnail_size_w',	'150',	'yes'),
(57,	'thumbnail_size_h',	'150',	'yes'),
(58,	'thumbnail_crop',	'1',	'yes'),
(59,	'medium_size_w',	'300',	'yes'),
(60,	'medium_size_h',	'300',	'yes'),
(61,	'avatar_default',	'mystery',	'yes'),
(62,	'large_size_w',	'1024',	'yes'),
(63,	'large_size_h',	'1024',	'yes'),
(64,	'image_default_link_type',	'none',	'yes'),
(65,	'image_default_size',	'',	'yes'),
(66,	'image_default_align',	'',	'yes'),
(67,	'close_comments_for_old_posts',	'0',	'yes'),
(68,	'close_comments_days_old',	'14',	'yes'),
(69,	'thread_comments',	'1',	'yes'),
(70,	'thread_comments_depth',	'5',	'yes'),
(71,	'page_comments',	'0',	'yes'),
(72,	'comments_per_page',	'50',	'yes'),
(73,	'default_comments_page',	'newest',	'yes'),
(74,	'comment_order',	'asc',	'yes'),
(75,	'sticky_posts',	'a:0:{}',	'yes'),
(76,	'widget_categories',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(77,	'widget_text',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(78,	'widget_rss',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(79,	'uninstall_plugins',	'a:1:{s:28:\"malcare-security/malcare.php\";a:2:{i:0;s:10:\"MCWPAction\";i:1;s:9:\"uninstall\";}}',	'no'),
(80,	'timezone_string',	'',	'yes'),
(81,	'page_for_posts',	'0',	'yes'),
(82,	'page_on_front',	'0',	'yes'),
(83,	'default_post_format',	'0',	'yes'),
(84,	'link_manager_enabled',	'0',	'yes'),
(85,	'finished_splitting_shared_terms',	'1',	'yes'),
(86,	'site_icon',	'0',	'yes'),
(87,	'medium_large_size_w',	'768',	'yes'),
(88,	'medium_large_size_h',	'0',	'yes'),
(89,	'wp_page_for_privacy_policy',	'3',	'yes'),
(90,	'show_comments_cookies_opt_in',	'1',	'yes'),
(91,	'admin_email_lifespan',	'1659698505',	'yes'),
(92,	'disallowed_keys',	'',	'no'),
(93,	'comment_previously_approved',	'1',	'yes'),
(94,	'auto_plugin_theme_update_emails',	'a:0:{}',	'no'),
(95,	'auto_update_core_dev',	'enabled',	'yes'),
(96,	'auto_update_core_minor',	'enabled',	'yes'),
(97,	'auto_update_core_major',	'enabled',	'yes'),
(98,	'wp_force_deactivated_plugins',	'a:0:{}',	'off'),
(99,	'initial_db_version',	'49752',	'yes'),
(100,	'wp_user_roles',	'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',	'yes'),
(101,	'fresh_site',	'0',	'off'),
(102,	'widget_block',	'a:3:{i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(103,	'sidebars_widgets',	'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}',	'yes'),
(104,	'cron',	'a:7:{i:1742199706;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1742210506;a:5:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742210555;a:1:{s:18:\"breeze_purge_cache\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:19:\"breeze_varnish_time\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742212647;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742212649;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742382143;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',	'on'),
(105,	'widget_pages',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(106,	'widget_calendar',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(107,	'widget_archives',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(108,	'widget_media_audio',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(109,	'widget_media_image',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(110,	'widget_media_gallery',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(111,	'widget_media_video',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(112,	'widget_meta',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(113,	'widget_search',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(114,	'widget_tag_cloud',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(115,	'widget_nav_menu',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(116,	'widget_custom_html',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(118,	'recovery_keys',	'a:0:{}',	'off'),
(119,	'theme_mods_twentytwentyone',	'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1644148734;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}',	'off'),
(120,	'https_detection_errors',	'a:0:{}',	'off'),
(129,	'category_children',	'a:0:{}',	'yes'),
(130,	'recently_activated',	'a:1:{s:28:\"malcare-security/malcare.php\";i:1735381359;}',	'off'),
(131,	'db_upgraded',	'1',	'yes'),
(133,	'breeze_advanced_settings_120',	'yes',	'yes'),
(134,	'breeze_basic_settings',	'a:10:{s:13:\"breeze-active\";s:1:\"1\";s:19:\"breeze-cross-origin\";s:1:\"0\";s:20:\"breeze-disable-admin\";a:5:{s:13:\"administrator\";i:0;s:6:\"editor\";i:0;s:6:\"author\";i:0;s:11:\"contributor\";i:0;s:10:\"subscriber\";i:0;}s:23:\"breeze-gzip-compression\";s:1:\"1\";s:20:\"breeze-desktop-cache\";s:1:\"1\";s:19:\"breeze-mobile-cache\";s:1:\"1\";s:20:\"breeze-browser-cache\";s:1:\"1\";s:16:\"breeze-lazy-load\";s:1:\"0\";s:23:\"breeze-lazy-load-native\";s:1:\"0\";s:20:\"breeze-display-clean\";s:1:\"1\";}',	'yes'),
(135,	'breeze_advanced_settings',	'a:3:{s:19:\"breeze-exclude-urls\";a:0:{}s:20:\"cached-query-strings\";a:0:{}s:15:\"breeze-wp-emoji\";s:1:\"0\";}',	'yes'),
(136,	'breeze_preload_settings',	'a:2:{s:20:\"breeze-preload-fonts\";a:0:{}s:20:\"breeze-preload-links\";s:1:\"0\";}',	'yes'),
(137,	'breeze_file_settings',	'a:4:{s:19:\"breeze-exclude-urls\";a:0:{}s:20:\"cached-query-strings\";a:0:{}s:15:\"breeze-wp-emoji\";s:1:\"0\";s:23:\"breeze-delay-js-scripts\";a:32:{i:0;s:4:\"gtag\";i:1;s:14:\"document.write\";i:2;s:8:\"html5.js\";i:3;s:11:\"show_ads.js\";i:4;s:9:\"google_ad\";i:5;s:17:\"blogcatalog.com/w\";i:6;s:15:\"tweetmeme.com/i\";i:7;s:14:\"mybloglog.com/\";i:8;s:14:\"histats.com/js\";i:9;s:22:\"ads.smowtion.com/ad.js\";i:10;s:34:\"statcounter.com/counter/counter.js\";i:11;s:16:\"widgets.amung.us\";i:12;s:21:\"ws.amazon.com/widgets\";i:13;s:19:\"media.fastclick.net\";i:14;s:5:\"/ads/\";i:15;s:36:\"comment-form-quicktags/quicktags.php\";i:16;s:9:\"edToolbar\";i:17;s:17:\"intensedebate.com\";i:18;s:20:\"scripts.chitika.net/\";i:19;s:9:\"_gaq.push\";i:20;s:12:\"jotform.com/\";i:21;s:16:\"admin-bar.min.js\";i:22;s:21:\"GoogleAnalyticsObject\";i:23;s:20:\"plupload.full.min.js\";i:24;s:17:\"syntaxhighlighter\";i:25;s:11:\"adsbygoogle\";i:26;s:15:\"gist.github.com\";i:27;s:4:\"_stq\";i:28;s:5:\"nonce\";i:29;s:7:\"post_id\";i:30;s:14:\"data-noptimize\";i:31;s:16:\"googletagmanager\";}}',	'yes'),
(138,	'breeze_cdn_integration',	'a:5:{s:10:\"cdn-active\";s:1:\"0\";s:7:\"cdn-url\";s:0:\"\";s:11:\"cdn-content\";a:2:{i:0;s:11:\"wp-includes\";i:1;s:10:\"wp-content\";}s:19:\"cdn-exclude-content\";a:1:{i:0;s:4:\".php\";}s:17:\"cdn-relative-path\";s:1:\"1\";}',	'yes'),
(139,	'breeze_varnish_cache',	'a:3:{s:18:\"auto-purge-varnish\";s:1:\"1\";s:24:\"breeze-varnish-server-ip\";s:9:\"127.0.0.1\";s:10:\"breeze-ttl\";i:1440;}',	'yes'),
(143,	'auto_core_update_notified',	'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"jafarsadik@outlook.com\";s:7:\"version\";s:5:\"6.7.2\";s:9:\"timestamp\";i:1739358149;}',	'off'),
(144,	'breeze_first_install',	'no',	'yes'),
(148,	'mcredirect',	'no',	'no'),
(149,	'bvActivateTime',	'1644146567',	'no'),
(151,	'bvAccountsList',	'a:0:{}',	'no'),
(152,	'bvLastRecvTime',	'1735381166',	'no'),
(153,	'bvApiPublic',	'94b9a827b01bd6d561a9a0771379859c',	'no'),
(154,	'bvwatchtime',	'1735381167',	'no'),
(180,	'finished_updating_comment_type',	'1',	'yes'),
(183,	'current_theme',	'Elsie',	'yes'),
(184,	'theme_mods_elsie',	'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}',	'yes'),
(185,	'theme_switched',	'',	'yes'),
(186,	'elsie_theme_installed_time',	'1644148735',	'yes'),
(194,	'widget_recent-comments',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(195,	'widget_recent-posts',	'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',	'yes'),
(213,	'_transient_health-check-site-status-result',	'{\"good\":21,\"recommended\":1,\"critical\":1}',	'yes'),
(285,	'breeze_show_incompatibility',	'd751713988987e9331980363e24189ce',	'no'),
(3334,	'user_count',	'1',	'no'),
(4082,	'bv_site_settings',	'a:0:{}',	'no'),
(13359,	'wp_attachment_pages_enabled',	'1',	'on'),
(13365,	'_transient_wp_styles_for_blocks',	'a:2:{s:4:\"hash\";s:32:\"07e9edcea731399799bcce5f75718e22\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}',	'on'),
(13383,	'_site_transient_update_core',	'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1742196633;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}',	'off'),
(13510,	'_site_transient_timeout_theme_roots',	'1742198433',	'off'),
(13511,	'_site_transient_theme_roots',	'a:3:{s:5:\"elsie\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}',	'off'),
(13512,	'_site_transient_update_themes',	'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1742196637;s:7:\"checked\";a:3:{s:5:\"elsie\";s:5:\"1.0.5\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";}s:8:\"response\";a:2:{s:5:\"elsie\";a:6:{s:5:\"theme\";s:5:\"elsie\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:35:\"https://wordpress.org/themes/elsie/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/elsie.1.0.8.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}',	'off'),
(13513,	'_site_transient_update_plugins',	'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1742196635;s:8:\"response\";a:2:{s:17:\"breeze/breeze.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:20:\"w.org/plugins/breeze\";s:4:\"slug\";s:6:\"breeze\";s:6:\"plugin\";s:17:\"breeze/breeze.php\";s:11:\"new_version\";s:5:\"2.2.7\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/breeze/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/breeze.2.2.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/breeze/assets/icon-256x256.gif?rev=2594160\";s:2:\"1x\";s:59:\"https://ps.w.org/breeze/assets/icon-128x128.gif?rev=2594160\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/breeze/assets/banner-772x250.jpg?rev=1705548\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.8.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:2:{s:17:\"breeze/breeze.php\";s:5:\"2.0.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}}',	'off'),
(13514,	'_site_transient_timeout_wp_theme_files_patterns-1b1c1ba43228bedb1f6a012c63eec96b',	'1742198437',	'off'),
(13515,	'_site_transient_wp_theme_files_patterns-1b1c1ba43228bedb1f6a012c63eec96b',	'a:2:{s:7:\"version\";s:5:\"1.0.5\";s:8:\"patterns\";a:0:{}}',	'off');

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1,	2,	'_wp_page_template',	'default'),
(2,	3,	'_wp_page_template',	'default'),
(3,	4,	'_edit_last',	'1');

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2,	1,	'2022-02-06 11:21:46',	'2022-02-06 11:21:46',	'<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://wordpress-192693-2426196.cloudwaysapps.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',	'Sample Page',	'',	'publish',	'closed',	'open',	'',	'sample-page',	'',	'',	'2022-02-06 11:21:46',	'2022-02-06 11:21:46',	'',	0,	'https://wordpress-192693-2426196.cloudwaysapps.com/?page_id=2',	0,	'page',	'',	0),
(3,	1,	'2022-02-06 11:21:46',	'2022-02-06 11:21:46',	'<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://wordpress-192693-2426196.cloudwaysapps.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->',	'Privacy Policy',	'',	'draft',	'closed',	'open',	'',	'privacy-policy',	'',	'',	'2022-02-06 11:21:46',	'2022-02-06 11:21:46',	'',	0,	'https://wordpress-192693-2426196.cloudwaysapps.com/?page_id=3',	0,	'page',	'',	0),
(4,	1,	'2022-02-06 00:00:00',	'2022-02-06 00:00:00',	'<p>It seems like you’re running a default WordPress website. Here are a few useful links to get you started:</p>\n			<h3>Migration</h3>\n			<ul>\n				<li><a href=\"https://support.cloudways.com/how-to-migrate-wordpress-to-cloudways/?utm_source=WordPress&amp;Staging&amp;Sites&amp;utm_medium=WP&amp;Staging&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to use WordPress Migrator Plugin?</a></li>\n				<li><a href=\"https://support.cloudways.com/siteground-to-cloudways-wordpress-migration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Migrate WordPress from Siteground to Cloudways</a></li>\n				<li><a href=\"https://support.cloudways.com/godaddy-to-cloudways-wordpress-migration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Migrate WordPress from GoDaddy to Cloudways</a></li>\n				</ul>\n				<h3>General</h3>\n				<ul>\n					<li><a href=\"https://support.cloudways.com/how-do-i-take-my-website-live-from-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How do I take my website live from Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/how-to-manage-wordpress-with-wp-cli/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to manage WordPress via WP-CLI on Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/how-to-setup-a-wordpress-multisite-on-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to configure WordPress Multisite on Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/mysql-database-access-options/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to access your databases on Cloudways?</a></li>\n					</ul>\n					<h3>Performance</h3>\n					<ul>\n						<li><a href=\"https://support.cloudways.com/breeze-wordpress-cache-configuration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to install and configure Breeze WordPress cache plugin?</a></li>\n						<li><a href=\"https://support.cloudways.com/wordpress-cloudways-cdn/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to integrate CloudwaysCDN with your WordPress website?</a></li>\n						<li><a href=\"https://support.cloudways.com/how-to-configure-wp-rocket-plugin-wordpress/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to configure WP Rocket plugin for WordPress?</a></li>\n						</ul>\n						<h3>Security</h3>\n						<ul>\n							<li><a href=\"https://support.cloudways.com/what-can-i-do-with-an-htaccess-file/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\" data-wplink-edit=\"true\">What can I do with an .htaccess file?</a></li>\n							<li><a href=\"https://www.cloudways.com/blog/add-free-ssl-certificate-to-wordpress-websites/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Add free SSL certificate to WordPress websites</a></li>\n							<li><a href=\"https://support.cloudways.com/how-to-set-up-sucuri-antivirus-website-monitoring/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to setup Sucuri on WordPress websites at Cloudways?</a></li>\n							</ul>\n							<h3>Email</h3>\n							<ul>\n								<li><a href=\"https://support.cloudways.com/emailing-with-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Which email add-on should I use?</a></li>\n								<li><a href=\"https://support.cloudways.com/how-to-activate-rackspace-email-addon/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to activate Rackspace email addon?</a></li>\n								<li><a href=\"https://support.cloudways.com/how-to-activate-elasticemail-addon/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to activate the Elastic email add-on?</a></li>\n								</ul>\n\n								<!-- wp:heading {\"level\":4} -->\n								<h4>Our Partners</h4>\n								<!-- /wp:heading -->\n\n								<!-- wp:image {\"id\":15,\"linkDestination\":\"custom\"} -->\n								<figure class=\"wp-block-image\"><a href=\"https://mainwp.com/?utm_source=cloudways-partner&amp;utm_campaign=cloudways\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/mainWP-Banner-1.jpg\" alt=\"\" class=\"wp-image-15\"/></a></figure>\n								<!-- /wp:image -->\n\n								<!-- wp:image {\"id\":20,\"linkDestination\":\"custom\"} -->\n								<figure class=\"wp-block-image\"><a href=\"https://oceanwp.org/?utm_source=cloudways-partner&amp;utm_campaign=cloudways\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/OceanWP-Banner.jpg\" alt=\"\" class=\"wp-image-20\"/></a></figure>\n								<!-- /wp:image -->\n\n								<!-- wp:heading {\"level\":4} -->\n								<h4>Join The Community Forum<br></h4>\n									<!-- /wp:heading -->\n\n									<!-- wp:image {\"id\":23,\"linkDestination\":\"custom\"} -->\n									<figure class=\"wp-block-image\"><a href=\"https://community.cloudways.com/?utm_source=cloudways-wp&amp;utm_medium=cloudways&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/cloudways-community1.jpg\" alt=\"\" class=\"wp-image-23\"/></a></figure>\n									<!-- /wp:image -->\n\n</ul>',	'Some Useful Links for You to Get Started',	'',	'publish',	'open',	'open',	'',	'welcome-to-cloudways',	'',	'',	'2022-02-06 00:00:00',	'2022-02-06 00:00:00',	'',	0,	'http://wordpress-192693-2426196.cloudwaysapps.com/?p=1',	0,	'post',	'',	1);

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1,	'Uncategorized',	'uncategorized',	0);

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(4,	1,	0);

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1,	1,	'category',	'',	0,	1);

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1,	1,	'nickname',	'jafarsadik@outlook.com'),
(2,	1,	'first_name',	''),
(3,	1,	'last_name',	''),
(4,	1,	'description',	''),
(5,	1,	'rich_editing',	'true'),
(6,	1,	'syntax_highlighting',	'true'),
(7,	1,	'comment_shortcuts',	'false'),
(8,	1,	'admin_color',	'fresh'),
(9,	1,	'use_ssl',	'0'),
(10,	1,	'show_admin_bar_front',	'true'),
(11,	1,	'locale',	''),
(12,	1,	'wp_capabilities',	'a:1:{s:13:\"administrator\";b:1;}'),
(13,	1,	'wp_user_level',	'10'),
(14,	1,	'dismissed_wp_pointers',	''),
(15,	1,	'show_welcome_panel',	'1'),
(16,	1,	'session_tokens',	'a:2:{s:64:\"bd3a8f3d6f92fd1b64390c2587314d7bdf5a25e21640a83bfcf5af27715a078a\";a:4:{s:10:\"expiration\";i:1645358246;s:2:\"ip\";s:15:\"188.236.230.211\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43\";s:5:\"login\";i:1644148646;}s:64:\"e154bf8a0b5ec9e24e1abf79f42c65e578f067e50467742eaf57a234c5ef0fe1\";a:4:{s:10:\"expiration\";i:1644738382;s:2:\"ip\";s:12:\"59.94.11.206\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36\";s:5:\"login\";i:1644565582;}}'),
(17,	1,	'wp_dashboard_quick_press_last_post_id',	'6'),
(18,	1,	'community-events-location',	'a:1:{s:2:\"ip\";s:10:\"59.94.11.0\";}');

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1,	'jafarsadik@outlook.com',	'$P$B6QSfr4yGfTPCl4/kV2HFff8EUpzKO.',	'jafarsadik',	'jafarsadik@outlook.com',	'https://wordpress-192693-2426196.cloudwaysapps.com',	'2022-02-06 11:21:46',	'',	0,	'Jafarsadik');

-- 2025-03-17 09:45:50
