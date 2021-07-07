-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 07 juil. 2021 à 16:36
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ingrwf09_wp`
--

-- --------------------------------------------------------

--
-- Structure de la table `wf09_commentmeta`
--

CREATE TABLE `wf09_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wf09_comments`
--

CREATE TABLE `wf09_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_comments`
--

INSERT INTO `wf09_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-07-05 09:51:15', '2021-07-05 07:51:15', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_links`
--

CREATE TABLE `wf09_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wf09_options`
--

CREATE TABLE `wf09_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_options`
--

INSERT INTO `wf09_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ingrwf09/wp', 'yes'),
(2, 'home', 'http://localhost/ingrwf09/wp', 'yes'),
(3, 'blogname', 'wp pour wf09', 'yes'),
(4, 'blogdescription', 'Un site pour découvrir WordPress', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'pcepegra@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', 'cul\nsexe', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:24:\"simple-lightbox/main.php\";i:5;s:27:\"theme-check/theme-check.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'my-theme', 'yes'),
(41, 'stylesheet', 'my-theme', 'yes'),
(42, 'comment_registration', '1', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '100', 'yes'),
(57, 'thumbnail_size_h', '100', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '900', 'yes'),
(63, 'large_size_h', '600', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '11', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '19', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1641023475', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wf09_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_FR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:17:\"recent-comments-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"sidebar-right\";a:1:{i:0;s:10:\"calendar-2\";}s:14:\"sidebar-footer\";a:1:{i:0;s:13:\"custom_html-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:9:{i:1625669476;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625687476;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625730676;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625730695;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625730696;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625732755;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626162676;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1626164755;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:13:\"test calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:16:\"Notre partenaire\";s:7:\"content\";s:43:\"<a href=\"http://www.cepegra.be\">Cepegra</a>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:5:{s:18:\"custom_css_post_id\";i:24;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:11:\"custom_logo\";i:21;s:29:\"respect_user_color_preference\";b:1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625484842;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}}', 'yes'),
(131, '_site_transient_timeout_browser_3a19c5b2ea764b667094aa0ea89035cb', '1626076295', 'no'),
(132, '_site_transient_browser_3a19c5b2ea764b667094aa0ea89035cb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"91.0.4472.77\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1626076296', 'no'),
(134, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(142, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(155, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":9,\"critical\":1}', 'yes'),
(156, 'new_admin_email', 'pcepegra@gmail.com', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(199, 'slb_version', '2.8.1', 'yes'),
(200, 'slb_options', 'a:27:{s:7:\"enabled\";b:1;s:12:\"enabled_home\";b:1;s:12:\"enabled_post\";b:1;s:12:\"enabled_page\";b:1;s:15:\"enabled_archive\";b:1;s:14:\"enabled_widget\";b:0;s:12:\"enabled_menu\";b:0;s:11:\"group_links\";b:1;s:10:\"group_post\";b:1;s:13:\"group_gallery\";b:0;s:12:\"group_widget\";b:0;s:10:\"group_menu\";b:0;s:10:\"ui_autofit\";b:1;s:10:\"ui_animate\";b:1;s:19:\"slideshow_autostart\";b:1;s:18:\"slideshow_duration\";s:1:\"6\";s:10:\"group_loop\";b:1;s:18:\"ui_overlay_opacity\";s:3:\"0.8\";s:16:\"ui_title_default\";b:0;s:11:\"txt_loading\";s:7:\"Loading\";s:9:\"txt_close\";s:5:\"Close\";s:12:\"txt_nav_next\";s:4:\"Next\";s:12:\"txt_nav_prev\";s:8:\"Previous\";s:19:\"txt_slideshow_start\";s:15:\"Start slideshow\";s:18:\"txt_slideshow_stop\";s:14:\"Stop slideshow\";s:16:\"txt_group_status\";s:25:\"Item %current% of %total%\";s:13:\"theme_default\";s:11:\"slb_default\";}', 'yes'),
(212, 'current_theme', 'My-theme', 'yes'),
(213, 'theme_mods_travel-trip-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625484939;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:22:\"footer-widget-column-1\";a:0:{}s:22:\"footer-widget-column-2\";a:0:{}s:22:\"footer-widget-column-3\";a:0:{}s:22:\"footer-widget-column-4\";a:0:{}}}}', 'yes'),
(214, 'theme_switched', '', 'yes'),
(221, 'theme_mods_suki', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:13:\"header-menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625485218;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:17:\"recent-comments-2\";}s:7:\"sidebar\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:16:\"footer-widgets-1\";a:0:{}s:16:\"footer-widgets-2\";a:0:{}s:16:\"footer-widgets-3\";a:0:{}s:16:\"footer-widgets-4\";a:0:{}s:16:\"footer-widgets-5\";a:0:{}s:16:\"footer-widgets-6\";a:0:{}}}}', 'yes'),
(222, 'widget_suki_widget_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'widget_suki_widget_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'suki_theme_version', '1.2.13', 'yes'),
(225, 'suki_installed_time', '1625484940', 'yes'),
(226, 'suki_rating_notice_is_dismissed', '0', 'yes'),
(228, 'theme_mods_my-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(260, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"16.6.1\";}', 'yes'),
(261, 'wpseo', 'a:44:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:6:\"16.6.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:10:\"production\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1625559955;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:28:\"http://localhost/ingrwf09/wp\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}', 'yes'),
(262, 'wpseo_titles', 'a:108:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:50:\"%%name%%, auteur/autrice sur %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:65:\"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:38:\"Page non trouvée %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:64:\"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:1;s:12:\"disable-date\";b:1;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Erreur 404 : Page introuvable\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:1;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Listing pour\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:7:\"Accueil\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:18:\"Vous avez cherché\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:81:\"Un site qui utilise WordPress et qui permet de voir comment fonctionne un thème.\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(263, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(276, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1625559958;}', 'yes'),
(277, '_transient_timeout_yoast_i18n_wordpress-seo_fr_FR', '1625646370', 'no'),
(278, '_transient_yoast_i18n_wordpress-seo_fr_FR', 'O:8:\"stdClass\":14:{s:2:\"id\";i:396146;s:4:\"name\";s:15:\"French (France)\";s:4:\"slug\";s:7:\"default\";s:10:\"project_id\";i:3158;s:6:\"locale\";s:2:\"fr\";s:13:\"current_count\";i:1306;s:18:\"untranslated_count\";i:0;s:13:\"waiting_count\";i:0;s:11:\"fuzzy_count\";i:0;s:9:\"all_count\";i:1306;s:14:\"warnings_count\";i:0;s:18:\"percent_translated\";i:100;s:9:\"wp_locale\";s:5:\"fr_FR\";s:13:\"last_modified\";s:19:\"2021-06-29 08:55:46\";}', 'no'),
(318, 'category_children', 'a:0:{}', 'yes'),
(341, 'cptui_new_install', 'false', 'yes'),
(342, 'cptui_post_types', 'a:1:{s:14:\"collaborateurs\";a:30:{s:4:\"name\";s:14:\"collaborateurs\";s:5:\"label\";s:14:\"Collaborateurs\";s:14:\"singular_label\";s:13:\"Collaborateur\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"5\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:21:\"dashicons-admin-users\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:18:\"Mes Collaborateurs\";s:9:\"all_items\";s:23:\"Tous les Collaborateurs\";s:7:\"add_new\";s:24:\"Ajouter un collaborateur\";s:12:\"add_new_item\";s:32:\"Ajouter un nouveau Collaborateur\";s:9:\"edit_item\";s:25:\"Modifier un collaborateur\";s:8:\"new_item\";s:21:\"Nouveau Collaborateur\";s:9:\"view_item\";s:18:\"Voir Collaborateur\";s:10:\"view_items\";s:19:\"Voir Collaborateurs\";s:12:\"search_items\";s:27:\"Recherche de Collaborateurs\";s:9:\"not_found\";s:28:\"Aucun Collaborateurs trouvé\";s:18:\"not_found_in_trash\";s:46:\"Aucun Collaborateurs trouvé dans la corbeille\";s:6:\"parent\";s:22:\"Parent Collaborateur :\";s:14:\"featured_image\";s:41:\"Image mise en avant pour ce Collaborateur\";s:18:\"set_featured_image\";s:54:\"Définir l’image mise en avant pour ce Collaborateur\";s:21:\"remove_featured_image\";s:53:\"Retirer l’image mise en avant pour ce Collaborateur\";s:18:\"use_featured_image\";s:56:\"Utiliser comme image mise en avant pour ce Collaborateur\";s:8:\"archives\";s:25:\"Archives de Collaborateur\";s:16:\"insert_into_item\";s:27:\"Insérer dans Collaborateur\";s:21:\"uploaded_to_this_item\";s:33:\"Téléverser sur ce Collaborateur\";s:17:\"filter_items_list\";s:34:\"Filtrer la liste de Collaborateurs\";s:21:\"items_list_navigation\";s:37:\"Navigation de liste de Collaborateurs\";s:10:\"items_list\";s:23:\"Liste de Collaborateurs\";s:10:\"attributes\";s:27:\"Attributs de Collaborateurs\";s:14:\"name_admin_bar\";s:13:\"Collaborateur\";s:14:\"item_published\";s:21:\"Collaborateur publié\";s:24:\"item_published_privately\";s:32:\"Collaborateur publié en privé.\";s:22:\"item_reverted_to_draft\";s:37:\"Collaborateur repassés en brouillon.\";s:14:\"item_scheduled\";s:23:\"Collaborateur planifié\";s:12:\"item_updated\";s:26:\"Collaborateur mis à jour.\";s:17:\"parent_item_colon\";s:22:\"Parent Collaborateur :\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(347, 'cptui_taxonomies', 'a:2:{s:8:\"secteurs\";a:25:{s:4:\"name\";s:8:\"secteurs\";s:5:\"label\";s:8:\"Secteurs\";s:14:\"singular_label\";s:7:\"Secteur\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:14:\"collaborateurs\";}}s:11:\"competences\";a:25:{s:4:\"name\";s:11:\"competences\";s:5:\"label\";s:12:\"Compétences\";s:14:\"singular_label\";s:11:\"Compétence\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:12:\"Compétences\";s:9:\"all_items\";s:23:\"Toutes les Compétences\";s:9:\"edit_item\";s:20:\"Modifier Compétence\";s:9:\"view_item\";s:16:\"Voir Compétence\";s:11:\"update_item\";s:36:\"Mettre à jour le nom de Compétence\";s:12:\"add_new_item\";s:30:\"Ajouter un nouveau Compétence\";s:13:\"new_item_name\";s:26:\"Nom du nouveau Compétence\";s:11:\"parent_item\";s:19:\"Parent dCompétence\";s:17:\"parent_item_colon\";s:20:\"Parent Compétence :\";s:12:\"search_items\";s:25:\"Recherche de Compétences\";s:13:\"popular_items\";s:23:\"Compétences populaires\";s:26:\"separate_items_with_commas\";s:43:\"Séparer les Compétences avec des virgules\";s:19:\"add_or_remove_items\";s:37:\"Ajouter ou supprimer des Compétences\";s:21:\"choose_from_most_used\";s:49:\"Choisir parmi les Compétences les plus utilisés\";s:9:\"not_found\";s:26:\"Aucun Compétences trouvé\";s:8:\"no_terms\";s:18:\"Aucun Compétences\";s:21:\"items_list_navigation\";s:35:\"Navigation de liste de Compétences\";s:10:\"items_list\";s:21:\"Liste de Compétences\";s:13:\"back_to_items\";s:25:\"Retourner à Compétences\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:14:\"collaborateurs\";}}}', 'yes'),
(354, 'acf_version', '5.9.7', 'yes'),
(395, '_transient_timeout_wpseo_unindexed_post_link_count', '1625732832', 'no'),
(396, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(397, '_transient_timeout_wpseo_unindexed_term_link_count', '1625732832', 'no'),
(398, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(437, '_transient_timeout_wpseo_total_unindexed_posts', '1625744045', 'no'),
(438, '_transient_wpseo_total_unindexed_posts', '23', 'no'),
(439, '_transient_timeout_wpseo_total_unindexed_terms', '1625744045', 'no'),
(440, '_transient_wpseo_total_unindexed_terms', '10', 'no'),
(441, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1625744045', 'no'),
(442, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(443, 'rewrite_rules', 'a:128:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:17:\"collaborateurs/?$\";s:34:\"index.php?post_type=collaborateurs\";s:47:\"collaborateurs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=collaborateurs&feed=$matches[1]\";s:42:\"collaborateurs/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=collaborateurs&feed=$matches[1]\";s:34:\"collaborateurs/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=collaborateurs&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"secteurs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?secteurs=$matches[1]&feed=$matches[2]\";s:44:\"secteurs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?secteurs=$matches[1]&feed=$matches[2]\";s:25:\"secteurs/([^/]+)/embed/?$\";s:41:\"index.php?secteurs=$matches[1]&embed=true\";s:37:\"secteurs/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?secteurs=$matches[1]&paged=$matches[2]\";s:19:\"secteurs/([^/]+)/?$\";s:30:\"index.php?secteurs=$matches[1]\";s:52:\"competences/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?competences=$matches[1]&feed=$matches[2]\";s:47:\"competences/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?competences=$matches[1]&feed=$matches[2]\";s:28:\"competences/([^/]+)/embed/?$\";s:44:\"index.php?competences=$matches[1]&embed=true\";s:40:\"competences/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?competences=$matches[1]&paged=$matches[2]\";s:22:\"competences/([^/]+)/?$\";s:33:\"index.php?competences=$matches[1]\";s:42:\"collaborateurs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"collaborateurs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"collaborateurs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"collaborateurs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"collaborateurs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"collaborateurs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"collaborateurs/([^/]+)/embed/?$\";s:47:\"index.php?collaborateurs=$matches[1]&embed=true\";s:35:\"collaborateurs/([^/]+)/trackback/?$\";s:41:\"index.php?collaborateurs=$matches[1]&tb=1\";s:55:\"collaborateurs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?collaborateurs=$matches[1]&feed=$matches[2]\";s:50:\"collaborateurs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?collaborateurs=$matches[1]&feed=$matches[2]\";s:43:\"collaborateurs/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?collaborateurs=$matches[1]&paged=$matches[2]\";s:50:\"collaborateurs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?collaborateurs=$matches[1]&cpage=$matches[2]\";s:39:\"collaborateurs/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?collaborateurs=$matches[1]&page=$matches[2]\";s:31:\"collaborateurs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"collaborateurs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"collaborateurs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"collaborateurs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"collaborateurs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"collaborateurs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(458, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1625677392', 'no');
INSERT INTO `wf09_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(459, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4993;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4773;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2719;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2593;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2005;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1859;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1839;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1520;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1504;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1503;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1498;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1488;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1472;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1311;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1273;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1260;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1233;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1157;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1128;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1060;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:961;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:936;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:910;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:887;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:883;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:829;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:825;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:814;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:808;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:787;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:764;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:747;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:721;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:715;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:689;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:683;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:668;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:665;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:661;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:657;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:650;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:647;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:620;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:601;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:599;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:590;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:590;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:575;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:573;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:566;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:561;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:560;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:559;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:547;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:547;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:545;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:539;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:530;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:525;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:523;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:516;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:512;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:504;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:499;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:497;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:495;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:488;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:479;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:467;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:464;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:462;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:456;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:448;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:447;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:447;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:446;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:443;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:420;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:415;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:411;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:410;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:408;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:396;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:389;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:388;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:381;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:380;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:379;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:371;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:368;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:367;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:358;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:357;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:357;}}', 'no'),
(461, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625666627;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(462, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625666628;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.7.1\";s:24:\"simple-lightbox/main.php\";s:5:\"2.8.1\";s:27:\"theme-check/theme-check.php\";s:8:\"20210617\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"16.6.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"simple-lightbox/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/simple-lightbox\";s:4:\"slug\";s:15:\"simple-lightbox\";s:6:\"plugin\";s:24:\"simple-lightbox/main.php\";s:11:\"new_version\";s:5:\"2.8.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/simple-lightbox/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/simple-lightbox.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/simple-lightbox.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"theme-check/theme-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/theme-check\";s:4:\"slug\";s:11:\"theme-check\";s:6:\"plugin\";s:27:\"theme-check/theme-check.php\";s:11:\"new_version\";s:8:\"20210617\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/theme-check/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/theme-check.20210617.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/theme-check/assets/icon-128x128.png?rev=972579\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/theme-check/assets/banner-1544x500.png?rev=904294\";s:2:\"1x\";s:65:\"https://ps.w.org/theme-check/assets/banner-772x250.png?rev=904294\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"16.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.16.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(463, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625666628;s:7:\"checked\";a:4:{s:8:\"my-theme\";s:3:\"0.1\";s:4:\"suki\";s:6:\"1.2.13\";s:16:\"travel-trip-lite\";s:3:\"1.2\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:4:\"suki\";a:6:{s:5:\"theme\";s:4:\"suki\";s:11:\"new_version\";s:6:\"1.2.13\";s:3:\"url\";s:34:\"https://wordpress.org/themes/suki/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/suki.1.2.13.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"travel-trip-lite\";a:6:{s:5:\"theme\";s:16:\"travel-trip-lite\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/travel-trip-lite/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/travel-trip-lite.1.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(464, 'classic-editor-replace', 'block', 'yes'),
(465, 'classic-editor-allow-users', 'allow', 'yes'),
(469, '_site_transient_timeout_theme_roots', '1625669274', 'no'),
(470, '_site_transient_theme_roots', 'a:4:{s:8:\"my-theme\";s:7:\"/themes\";s:4:\"suki\";s:7:\"/themes\";s:16:\"travel-trip-lite\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wf09_postmeta`
--

CREATE TABLE `wf09_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_postmeta`
--

INSERT INTO `wf09_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1625472212:1'),
(4, 5, '_edit_lock', '1625561436:1'),
(7, 8, '_edit_lock', '1625666289:1'),
(8, 11, '_edit_lock', '1625477418:1'),
(9, 13, '_menu_item_type', 'post_type'),
(10, 13, '_menu_item_menu_item_parent', '0'),
(11, 13, '_menu_item_object_id', '8'),
(12, 13, '_menu_item_object', 'page'),
(13, 13, '_menu_item_target', ''),
(14, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 13, '_menu_item_xfn', ''),
(16, 13, '_menu_item_url', ''),
(18, 14, '_menu_item_type', 'post_type'),
(19, 14, '_menu_item_menu_item_parent', '0'),
(20, 14, '_menu_item_object_id', '11'),
(21, 14, '_menu_item_object', 'page'),
(22, 14, '_menu_item_target', ''),
(23, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 14, '_menu_item_xfn', ''),
(25, 14, '_menu_item_url', ''),
(27, 15, '_wp_attached_file', '2021/07/hackathon.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1689;s:6:\"height\";i:950;s:4:\"file\";s:21:\"2021/07/hackathon.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hackathon-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"hackathon-900x506.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hackathon-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"hackathon-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"hackathon-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"hackathon-1568x882.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2021/07/vue.png'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/07/vue.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"vue-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"vue-900x489.png\";s:5:\"width\";i:900;s:6:\"height\";i:489;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"vue-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"vue-768x417.png\";s:5:\"width\";i:768;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2021/07/cropped-vue.png'),
(32, 19, '_wp_attachment_context', 'site-icon'),
(33, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2021/07/cropped-vue.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-vue-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-vue-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:23:\"cropped-vue-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:23:\"cropped-vue-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:23:\"cropped-vue-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:21:\"cropped-vue-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 20, '_wp_trash_meta_status', 'publish'),
(35, 20, '_wp_trash_meta_time', '1625484480'),
(36, 21, '_wp_attached_file', '2021/07/cropped-cropped-vue.png'),
(37, 21, '_wp_attachment_context', 'custom-logo'),
(38, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:399;s:6:\"height\";i:341;s:4:\"file\";s:31:\"2021/07/cropped-cropped-vue.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-cropped-vue-300x256.png\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-cropped-vue-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 22, '_wp_trash_meta_status', 'publish'),
(40, 22, '_wp_trash_meta_time', '1625484516'),
(41, 23, '_edit_lock', '1625484751:1'),
(42, 23, '_wp_trash_meta_status', 'publish'),
(43, 23, '_wp_trash_meta_time', '1625484778'),
(45, 5, '_wp_old_slug', '5-2'),
(46, 21, '_oembed_d465396b794296fd0279c02c33cea493', '{{unknown}}'),
(47, 19, '_oembed_ea53b16ba8c4231cef628c248c2dcff4', '{{unknown}}'),
(48, 13, '_wp_old_date', '2021-07-05'),
(49, 14, '_wp_old_date', '2021-07-05'),
(50, 26, '_menu_item_type', 'post_type'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '2'),
(53, 26, '_menu_item_object', 'page'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', ''),
(59, 27, '_wp_attached_file', '2021/07/72583044_10220800408619519_5872988140825739264_o.jpg'),
(60, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1162;s:4:\"file\";s:60:\"2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"72583044_10220800408619519_5872988140825739264_o-300x242.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"72583044_10220800408619519_5872988140825739264_o-744x600.jpg\";s:5:\"width\";i:744;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"72583044_10220800408619519_5872988140825739264_o-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"72583044_10220800408619519_5872988140825739264_o-768x620.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 27, '_wp_attachment_image_alt', 'Malte'),
(62, 29, '_wp_attached_file', '2021/07/IMG_20210527_185643-scaled.jpg'),
(63, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:38:\"2021/07/IMG_20210527_185643-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20210527_185643-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"IMG_20210527_185643-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20210527_185643-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20210527_185643-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"IMG_20210527_185643-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:33:\"IMG_20210527_185643-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20210527_185643-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"ONEPLUS A3003\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1622141803\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.26\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"IMG_20210527_185643.jpg\";}'),
(64, 8, '_thumbnail_id', '29'),
(65, 8, '_edit_last', '1'),
(66, 8, '_yoast_wpseo_title', 'Bienvenue %%page%% %%sep%% %%sitename%%'),
(67, 8, '_yoast_wpseo_metadesc', 'Bienvenue sur WF09'),
(68, 8, '_yoast_wpseo_content_score', '60'),
(69, 8, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(71, 5, '_edit_last', '1'),
(73, 5, '_yoast_wpseo_content_score', '60'),
(74, 5, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(76, 31, '_menu_item_type', 'taxonomy'),
(77, 31, '_menu_item_menu_item_parent', '0'),
(78, 31, '_menu_item_object_id', '1'),
(79, 31, '_menu_item_object', 'category'),
(80, 31, '_menu_item_target', ''),
(81, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 31, '_menu_item_xfn', ''),
(83, 31, '_menu_item_url', ''),
(85, 1, '_edit_lock', '1625565438:1'),
(87, 1, '_edit_last', '1'),
(89, 1, '_yoast_wpseo_content_score', '90'),
(90, 1, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(91, 33, '_edit_lock', '1625571998:1'),
(93, 33, '_edit_last', '1'),
(95, 33, '_yoast_wpseo_content_score', '60'),
(96, 33, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(97, 35, '_edit_lock', '1625571972:1'),
(99, 35, '_edit_last', '1'),
(101, 35, '_yoast_wpseo_primary_category', '3'),
(102, 35, '_yoast_wpseo_content_score', '60'),
(103, 35, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(106, 33, '_yoast_wpseo_primary_category', '3'),
(107, 37, '_edit_lock', '1625573591:1'),
(109, 37, '_edit_last', '1'),
(111, 37, '_yoast_wpseo_primary_category', '3'),
(112, 37, '_yoast_wpseo_content_score', '60'),
(113, 37, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(114, 39, '_edit_lock', '1625573519:1'),
(116, 39, '_edit_last', '1'),
(118, 39, '_yoast_wpseo_primary_category', '4'),
(119, 39, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(120, 41, '_edit_lock', '1625665295:1'),
(121, 41, 'Nom de famille', 'Charlier'),
(123, 41, 'Adresse', 'Philippeville'),
(124, 41, '_edit_last', '1'),
(126, 41, '_yoast_wpseo_primary_category', '4'),
(127, 41, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(128, 43, '_edit_lock', '1625574569:1'),
(129, 44, '_edit_last', '1'),
(130, 44, '_edit_lock', '1625580508:1'),
(131, 50, '_edit_lock', '1625651025:1'),
(132, 50, '_edit_last', '1'),
(133, 50, 'collaborateurs-nom', 'Charlier'),
(134, 50, '_collaborateurs-nom', 'field_60e44db27d479'),
(135, 50, 'collaborateurs-prenom', 'Pierre'),
(136, 50, '_collaborateurs-prenom', 'field_60e44e057d47a'),
(137, 50, 'collaborateurs-email', 'charlier.pierre@gmail.com'),
(138, 50, '_collaborateurs-email', 'field_60e44e257d47b'),
(139, 50, 'collaborateurs-salaire', '1250.32'),
(140, 50, '_collaborateurs-salaire', 'field_60e44e457d47c'),
(141, 50, '_', 'field_60e44e707d47d'),
(142, 50, '_yoast_wpseo_content_score', '60'),
(143, 50, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(144, 51, '_edit_lock', '1625575838:1'),
(145, 51, '_edit_last', '1'),
(146, 51, 'collaborateurs-nom', 'Charlier'),
(147, 51, '_collaborateurs-nom', 'field_60e44db27d479'),
(148, 51, 'collaborateurs-prenom', 'Benoit'),
(149, 51, '_collaborateurs-prenom', 'field_60e44e057d47a'),
(150, 51, 'collaborateurs-email', 'charlier.benoit@gmail.com'),
(151, 51, '_collaborateurs-email', 'field_60e44e257d47b'),
(152, 51, 'collaborateurs-salaire', '2852.32'),
(153, 51, '_collaborateurs-salaire', 'field_60e44e457d47c'),
(154, 51, 'collaborateurs-superieur', 'a:1:{i:0;s:2:\"50\";}'),
(155, 51, '_collaborateurs-superieur', 'field_60e44e707d47d'),
(156, 51, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(157, 52, '_edit_lock', '1625659650:1'),
(158, 52, '_edit_last', '1'),
(159, 52, 'collaborateurs-nom', 'Fichère'),
(160, 52, '_collaborateurs-nom', 'field_60e44db27d479'),
(161, 52, 'collaborateurs-prenom', 'Gregory'),
(162, 52, '_collaborateurs-prenom', 'field_60e44e057d47a'),
(163, 52, 'collaborateurs-email', 'greg@cepegra.be'),
(164, 52, '_collaborateurs-email', 'field_60e44e257d47b'),
(165, 52, 'collaborateurs-salaire', ''),
(166, 52, '_collaborateurs-salaire', 'field_60e44e457d47c'),
(167, 52, 'collaborateurs-superieur', 'a:1:{i:0;s:2:\"51\";}'),
(168, 52, '_collaborateurs-superieur', 'field_60e44e707d47d'),
(169, 52, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(170, 53, '_menu_item_type', 'taxonomy'),
(171, 53, '_menu_item_menu_item_parent', '0'),
(172, 53, '_menu_item_object_id', '5'),
(173, 53, '_menu_item_object', 'secteurs'),
(174, 53, '_menu_item_target', ''),
(175, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 53, '_menu_item_xfn', ''),
(177, 53, '_menu_item_url', ''),
(179, 54, '_menu_item_type', 'taxonomy'),
(180, 54, '_menu_item_menu_item_parent', '0'),
(181, 54, '_menu_item_object_id', '6'),
(182, 54, '_menu_item_object', 'secteurs'),
(183, 54, '_menu_item_target', ''),
(184, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 54, '_menu_item_xfn', ''),
(186, 54, '_menu_item_url', ''),
(188, 56, '_wp_attached_file', '2021/07/portrait.jpg'),
(189, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:641;s:4:\"file\";s:20:\"2021/07/portrait.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"portrait-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"portrait-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"portrait-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"portrait-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"fullscreen\";a:4:{s:4:\"file\";s:20:\"portrait-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 50, 'collaborateurs-superieur', ''),
(191, 50, '_collaborateurs-superieur', 'field_60e44e707d47d'),
(192, 50, 'collaborateurs-photo', '56'),
(193, 50, '_collaborateurs-photo', 'field_60e45cf14553a'),
(194, 52, 'collaborateurs-photo', ''),
(195, 52, '_collaborateurs-photo', 'field_60e45cf14553a'),
(196, 58, '_menu_item_type', 'taxonomy'),
(197, 58, '_menu_item_menu_item_parent', '0'),
(198, 58, '_menu_item_object_id', '13'),
(199, 58, '_menu_item_object', 'competences'),
(200, 58, '_menu_item_target', ''),
(201, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 58, '_menu_item_xfn', ''),
(203, 58, '_menu_item_url', ''),
(205, 13, '_wp_old_date', '2021-07-06'),
(206, 14, '_wp_old_date', '2021-07-06'),
(207, 26, '_wp_old_date', '2021-07-06'),
(208, 31, '_wp_old_date', '2021-07-06'),
(209, 53, '_wp_old_date', '2021-07-06'),
(210, 54, '_wp_old_date', '2021-07-06'),
(211, 59, '_edit_lock', '1625666749:1'),
(213, 59, '_edit_last', '1'),
(215, 59, '_yoast_wpseo_content_score', '30'),
(216, 59, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(219, 59, '_yoast_wpseo_primary_category', '3'),
(221, 59, 'classic-editor-remember', 'classic-editor'),
(222, 61, '_edit_lock', '1625666764:1'),
(223, 61, 'classic-editor-remember', 'block-editor'),
(224, 62, 'classic-editor-remember', 'block-editor'),
(225, 62, '_edit_last', '1'),
(226, 62, '_edit_lock', '1625668535:1'),
(228, 62, '_yoast_wpseo_content_score', '60'),
(229, 62, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(230, 62, '_yoast_wpseo_primary_category', '3');

-- --------------------------------------------------------

--
-- Structure de la table `wf09_posts`
--

CREATE TABLE `wf09_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_posts`
--

INSERT INTO `wf09_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-07-05 09:51:15', '2021-07-05 07:51:15', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2021-07-06 10:53:25', '2021-07-06 08:53:25', '', 0, 'http://localhost/ingrwf09/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-07-05 09:51:15', '2021-07-05 07:51:15', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/ingrwf09/wp/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2021-07-05 09:51:15', '2021-07-05 07:51:15', '', 0, 'http://localhost/ingrwf09/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-07-05 09:51:15', '2021-07-05 07:51:15', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/ingrwf09/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-07-05 09:51:15', '2021-07-05 07:51:15', '', 0, 'http://localhost/ingrwf09/wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-07-05 09:51:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-05 09:51:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/ingrwf09/wp/?p=4', 0, 'post', '', 0),
(5, 1, '2021-07-05 11:28:20', '2021-07-05 09:28:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dsdsdsdsd</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>paragraphe 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Nouvel article', 'Extrait pour nouvel article', 'publish', 'open', 'open', '', 'nouvel-article', '', '', '2021-07-06 10:50:34', '2021-07-06 08:50:34', '', 0, 'http://localhost/ingrwf09/wp/?p=5', 0, 'post', '', 0),
(6, 1, '2021-07-05 11:28:20', '2021-07-05 09:28:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dsdsdsdsd</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>paragraphe 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-07-05 11:28:20', '2021-07-05 09:28:20', '', 5, 'http://localhost/ingrwf09/wp/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-07-05 11:28:54', '2021-07-05 09:28:54', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dsdsdsdsd</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>paragraphe 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Nouvel article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-07-05 11:28:54', '2021-07-05 09:28:54', '', 5, 'http://localhost/ingrwf09/wp/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-07-05 11:30:04', '2021-07-05 09:30:04', '<!-- wp:paragraph -->\n<p>bla bla</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"media\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon-900x506.jpg\" alt=\"\" class=\"wp-image-15\"/></a></figure>\n<!-- /wp:image -->', 'Accueil 2', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-07-06 16:23:46', '2021-07-06 14:23:46', '', 0, 'http://localhost/ingrwf09/wp/?page_id=8', 0, 'page', '', 0),
(11, 1, '2021-07-05 11:32:36', '2021-07-05 09:32:36', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-07-05 11:32:36', '2021-07-05 09:32:36', '', 0, 'http://localhost/ingrwf09/wp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-07-05 11:32:36', '2021-07-05 09:32:36', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-07-05 11:32:36', '2021-07-05 09:32:36', '', 11, 'http://localhost/ingrwf09/wp/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-07-07 11:46:22', '2021-07-05 09:34:04', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2021-07-07 11:46:22', '2021-07-05 09:34:04', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2021-07-05 11:49:15', '2021-07-05 09:49:15', '', 'hackathon', '', 'inherit', 'open', 'closed', '', 'hackathon', '', '', '2021-07-05 11:49:15', '2021-07-05 09:49:15', '', 8, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-07-05 11:55:22', '2021-07-05 09:55:22', '<!-- wp:paragraph -->\n<p>bla bla</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"media\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon-900x506.jpg\" alt=\"\" class=\"wp-image-15\"/></a></figure>\n<!-- /wp:image -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-07-05 11:55:22', '2021-07-05 09:55:22', '', 8, 'http://localhost/ingrwf09/wp/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-07-05 13:27:36', '2021-07-05 11:27:36', '', 'vue', '', 'inherit', 'open', 'closed', '', 'vue', '', '', '2021-07-05 13:27:36', '2021-07-05 11:27:36', '', 0, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/vue.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-07-05 13:27:48', '2021-07-05 11:27:48', 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-vue.png', 'cropped-vue.png', '', 'inherit', 'open', 'closed', '', 'cropped-vue-png', '', '', '2021-07-05 13:27:48', '2021-07-05 11:27:48', '', 0, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-vue.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-07-05 13:28:00', '2021-07-05 11:28:00', '{\n    \"site_icon\": {\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-05 11:28:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '619b9490-8da1-46c1-beca-c9f2b7f54311', '', '', '2021-07-05 13:28:00', '2021-07-05 11:28:00', '', 0, 'http://localhost/ingrwf09/wp/619b9490-8da1-46c1-beca-c9f2b7f54311/', 0, 'customize_changeset', '', 0),
(21, 1, '2021-07-05 13:28:24', '2021-07-05 11:28:24', 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-cropped-vue.png', 'cropped-cropped-vue.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-vue-png', '', '', '2021-07-05 13:28:24', '2021-07-05 11:28:24', '', 0, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-cropped-vue.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-07-05 13:28:36', '2021-07-05 11:28:36', '{\n    \"twentytwentyone::custom_logo\": {\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-05 11:28:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b44dac4f-40f5-4b35-9559-498829f005ca', '', '', '2021-07-05 13:28:36', '2021-07-05 11:28:36', '', 0, 'http://localhost/ingrwf09/wp/b44dac4f-40f5-4b35-9559-498829f005ca/', 0, 'customize_changeset', '', 0),
(23, 1, '2021-07-05 13:32:58', '2021-07-05 11:32:58', '{\n    \"twentytwentyone::respect_user_color_preference\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-05 11:29:02\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-05 11:30:02\"\n    },\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \".powered-by{\\n\\tdisplay:none;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-05 11:32:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6e7fdb9-752c-41ea-9de8-02a605159a33', '', '', '2021-07-05 13:32:58', '2021-07-05 11:32:58', '', 0, 'http://localhost/ingrwf09/wp/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2021-07-05 13:32:58', '2021-07-05 11:32:58', '.powered-by{\n	display:none;\n}', 'twentytwentyone', '', 'publish', 'closed', 'closed', '', 'twentytwentyone', '', '', '2021-07-05 13:32:58', '2021-07-05 11:32:58', '', 0, 'http://localhost/ingrwf09/wp/twentytwentyone/', 0, 'custom_css', '', 0),
(25, 1, '2021-07-05 13:32:58', '2021-07-05 11:32:58', '.powered-by{\n	display:none;\n}', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-07-05 13:32:58', '2021-07-05 11:32:58', '', 24, 'http://localhost/ingrwf09/wp/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-07-07 11:46:22', '2021-07-06 07:38:55', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2021-07-06 09:42:50', '2021-07-06 07:42:50', '', '72583044_10220800408619519_5872988140825739264_o', '', 'inherit', 'open', 'closed', '', '72583044_10220800408619519_5872988140825739264_o', '', '', '2021-07-06 09:42:58', '2021-07-06 07:42:58', '', 8, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-07-06 09:45:21', '2021-07-06 07:45:21', '', 'IMG_20210527_185643', '', 'inherit', 'open', 'closed', '', 'img_20210527_185643', '', '', '2021-07-06 09:45:21', '2021-07-06 07:45:21', '', 8, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2021-07-06 10:50:00', '2021-07-06 08:50:00', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dsdsdsdsd</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>paragraphe 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Titre 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Nouvel article', 'Extrait pour nouvel article', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-07-06 10:50:00', '2021-07-06 08:50:00', '', 5, 'http://localhost/ingrwf09/wp/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-07-07 11:46:22', '2021-07-06 08:50:55', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2021-07-06 10:53:22', '2021-07-06 08:53:22', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire ! Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-07-06 10:53:22', '2021-07-06 08:53:22', '', 1, 'http://localhost/ingrwf09/wp/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-07-06 13:45:13', '2021-07-06 11:45:13', '<!-- wp:paragraph -->\n<p>Texte de la news 1</p>\n<!-- /wp:paragraph -->', 'News 1', 'Extrait news 1', 'publish', 'open', 'open', '', 'news-1', '', '', '2021-07-06 13:46:35', '2021-07-06 11:46:35', '', 0, 'http://localhost/ingrwf09/wp/?p=33', 0, 'post', '', 0),
(34, 1, '2021-07-06 13:45:13', '2021-07-06 11:45:13', '<!-- wp:paragraph -->\n<p>Texte de la news 1</p>\n<!-- /wp:paragraph -->', 'News 1', 'Extrait news 1', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-07-06 13:45:13', '2021-07-06 11:45:13', '', 33, 'http://localhost/ingrwf09/wp/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-07-06 13:46:06', '2021-07-06 11:46:06', '<!-- wp:paragraph -->\n<p>Texte de la news 2</p>\n<!-- /wp:paragraph -->', 'News 2', 'Extrait news 2', 'publish', 'open', 'open', '', 'news-2', '', '', '2021-07-06 13:46:10', '2021-07-06 11:46:10', '', 0, 'http://localhost/ingrwf09/wp/?p=35', 0, 'post', '', 0),
(36, 1, '2021-07-06 13:46:06', '2021-07-06 11:46:06', '<!-- wp:paragraph -->\n<p>Texte de la news 2</p>\n<!-- /wp:paragraph -->', 'News 2', 'Extrait news 2', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-06 13:46:06', '2021-07-06 11:46:06', '', 35, 'http://localhost/ingrwf09/wp/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-07-06 13:47:13', '2021-07-06 11:47:13', '<!-- wp:paragraph -->\n<p>Texte de la news 3</p>\n<!-- /wp:paragraph -->', 'News 3', 'Extrait news 3', 'publish', 'open', 'open', '', 'news-3', '', '', '2021-07-06 13:47:16', '2021-07-06 11:47:16', '', 0, 'http://localhost/ingrwf09/wp/?p=37', 0, 'post', '', 0),
(38, 1, '2021-07-06 13:47:13', '2021-07-06 11:47:13', '<!-- wp:paragraph -->\n<p>Texte de la news 3</p>\n<!-- /wp:paragraph -->', 'News 3', 'Extrait news 3', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-07-06 13:47:13', '2021-07-06 11:47:13', '', 37, 'http://localhost/ingrwf09/wp/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-07-06 14:11:29', '2021-07-06 12:11:29', '', 'Pierre', '', 'publish', 'open', 'open', '', 'pierre', '', '', '2021-07-06 14:11:32', '2021-07-06 12:11:32', '', 0, 'http://localhost/ingrwf09/wp/?p=39', 0, 'post', '', 0),
(40, 1, '2021-07-06 14:11:29', '2021-07-06 12:11:29', '', 'Pierre', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-07-06 14:11:29', '2021-07-06 12:11:29', '', 39, 'http://localhost/ingrwf09/wp/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-07-06 14:14:29', '2021-07-06 12:14:29', '', 'Pierre', '', 'publish', 'open', 'open', '', 'pierre-2', '', '', '2021-07-06 14:14:32', '2021-07-06 12:14:32', '', 0, 'http://localhost/ingrwf09/wp/?p=41', 0, 'post', '', 0),
(42, 1, '2021-07-06 14:14:29', '2021-07-06 12:14:29', '', 'Pierre', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-07-06 14:14:29', '2021-07-06 12:14:29', '', 41, 'http://localhost/ingrwf09/wp/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-07-06 14:31:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-07-06 14:31:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/ingrwf09/wp/?post_type=collaborateurs&p=43', 0, 'collaborateurs', '', 0),
(44, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"collaborateurs\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'collaborateurs', 'collaborateurs', 'publish', 'closed', 'closed', '', 'group_60e44da193b64', '', '', '2021-07-06 15:43:17', '2021-07-06 13:43:17', '', 0, 'http://localhost/ingrwf09/wp/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nom', 'collaborateurs-nom', 'publish', 'closed', 'closed', '', 'field_60e44db27d479', '', '', '2021-07-06 14:38:33', '2021-07-06 12:38:33', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Prénom', 'collaborateurs-prenom', 'publish', 'closed', 'closed', '', 'field_60e44e057d47a', '', '', '2021-07-06 14:38:33', '2021-07-06 12:38:33', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:16:\"user@domaine.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'email', 'collaborateurs-email', 'publish', 'closed', 'closed', '', 'field_60e44e257d47b', '', '', '2021-07-06 14:38:33', '2021-07-06 12:38:33', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:3:\".01\";}', 'Salaire', 'collaborateurs-salaire', 'publish', 'closed', 'closed', '', 'field_60e44e457d47c', '', '', '2021-07-06 14:38:33', '2021-07-06 12:38:33', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 1, '2021-07-06 14:38:33', '2021-07-06 12:38:33', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:14:\"collaborateurs\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:1;s:13:\"return_format\";s:6:\"object\";}', 'Supérieur', 'collaborateurs-superieur', 'publish', 'closed', 'closed', '', 'field_60e44e707d47d', '', '', '2021-07-06 15:41:05', '2021-07-06 13:41:05', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&#038;p=49', 4, 'acf-field', '', 0),
(50, 1, '2021-07-06 14:40:44', '2021-07-06 12:40:44', '<!-- wp:paragraph -->\n<p>Description de Pierre</p>\n<!-- /wp:paragraph -->', 'Pierre', '', 'publish', 'closed', 'closed', '', 'pierre', '', '', '2021-07-07 11:27:19', '2021-07-07 09:27:19', '', 0, 'http://localhost/ingrwf09/wp/?post_type=collaborateurs&#038;p=50', 0, 'collaborateurs', '', 0),
(51, 1, '2021-07-06 14:50:26', '2021-07-06 12:50:26', '', 'Benoit', '', 'publish', 'closed', 'closed', '', 'benoit', '', '', '2021-07-06 14:50:28', '2021-07-06 12:50:28', '', 0, 'http://localhost/ingrwf09/wp/?post_type=collaborateurs&#038;p=51', 0, 'collaborateurs', '', 0),
(52, 1, '2021-07-06 14:52:42', '2021-07-06 12:52:42', '', 'Greg', '', 'publish', 'closed', 'closed', '', 'greg', '', '', '2021-07-07 13:37:01', '2021-07-07 11:37:01', '', 0, 'http://localhost/ingrwf09/wp/?post_type=collaborateurs&#038;p=52', 0, 'collaborateurs', '', 0),
(53, 1, '2021-07-07 11:46:22', '2021-07-06 13:26:39', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=53', 5, 'nav_menu_item', '', 0),
(54, 1, '2021-07-07 11:46:22', '2021-07-06 13:26:39', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-07-07 11:46:22', '2021-07-07 09:46:22', '', 0, 'http://localhost/ingrwf09/wp/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2021-07-06 15:41:05', '2021-07-06 13:41:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:14:\"post-thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'collaborateurs-photo', 'publish', 'closed', 'closed', '', 'field_60e45cf14553a', '', '', '2021-07-06 15:43:17', '2021-07-06 13:43:17', '', 44, 'http://localhost/ingrwf09/wp/?post_type=acf-field&#038;p=55', 5, 'acf-field', '', 0),
(56, 1, '2021-07-06 15:43:49', '2021-07-06 13:43:49', '', 'portrait', '', 'inherit', 'open', 'closed', '', 'portrait', '', '', '2021-07-06 15:43:49', '2021-07-06 13:43:49', '', 50, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-07-06 16:23:45', '2021-07-06 14:23:45', '<!-- wp:paragraph -->\n<p>bla bla</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"media\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon-900x506.jpg\" alt=\"\" class=\"wp-image-15\"/></a></figure>\n<!-- /wp:image -->', 'Accueil 2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-07-06 16:23:45', '2021-07-06 14:23:45', '', 8, 'http://localhost/ingrwf09/wp/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-07-07 11:46:23', '2021-07-07 09:46:23', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2021-07-07 11:46:23', '2021-07-07 09:46:23', '', 0, 'http://localhost/ingrwf09/wp/?p=58', 7, 'nav_menu_item', '', 0),
(59, 1, '2021-07-07 15:45:16', '2021-07-07 13:45:16', '<!-- wp:gallery {\"ids\":[56,29,27],\"columns\":3,\"linkTo\":\"file\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait-600x600.jpg\" alt=\"\" data-id=\"56\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg\" data-link=\"http://localhost/ingrwf09/wp/collaborateurs/pierre/portrait/\" class=\"wp-image-56\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-800x600.jpg\" alt=\"\" data-id=\"29\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\" data-link=\"http://localhost/ingrwf09/wp/accueil/img_20210527_185643/\" class=\"wp-image-29\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o-744x600.jpg\" alt=\"Malte\" data-id=\"27\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\" data-link=\"http://localhost/ingrwf09/wp/accueil/72583044_10220800408619519_5872988140825739264_o/\" class=\"wp-image-27\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'En images', '', 'publish', 'open', 'open', '', 'en-images', '', '', '2021-07-07 15:45:46', '2021-07-07 13:45:46', '', 0, 'http://localhost/ingrwf09/wp/?p=59', 0, 'post', '', 0),
(60, 1, '2021-07-07 15:45:16', '2021-07-07 13:45:16', '<!-- wp:gallery {\"ids\":[56,29,27],\"columns\":3,\"linkTo\":\"file\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait-600x600.jpg\" alt=\"\" data-id=\"56\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg\" data-link=\"http://localhost/ingrwf09/wp/collaborateurs/pierre/portrait/\" class=\"wp-image-56\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-800x600.jpg\" alt=\"\" data-id=\"29\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\" data-link=\"http://localhost/ingrwf09/wp/accueil/img_20210527_185643/\" class=\"wp-image-29\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\"><img src=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o-744x600.jpg\" alt=\"Malte\" data-id=\"27\" data-full-url=\"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\" data-link=\"http://localhost/ingrwf09/wp/accueil/72583044_10220800408619519_5872988140825739264_o/\" class=\"wp-image-27\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'En images', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-07-07 15:45:16', '2021-07-07 13:45:16', '', 59, 'http://localhost/ingrwf09/wp/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-07-07 16:08:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-07 16:08:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/ingrwf09/wp/?p=61', 0, 'post', '', 0),
(62, 1, '2021-07-07 16:09:30', '2021-07-07 14:09:30', '<!-- wp:heading -->\n<h2>Titre</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->', 'Ancien editor', '', 'publish', 'open', 'open', '', 'ancien-editor', '', '', '2021-07-07 16:19:10', '2021-07-07 14:19:10', '', 0, 'http://localhost/ingrwf09/wp/?p=62', 0, 'post', '', 0),
(63, 1, '2021-07-07 16:09:30', '2021-07-07 14:09:30', '<h2>Titre</h2>\r\nlorem', 'Ancien editor', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2021-07-07 16:09:30', '2021-07-07 14:09:30', '', 62, 'http://localhost/ingrwf09/wp/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-07-07 16:19:07', '2021-07-07 14:19:07', '<!-- wp:heading -->\n<h2>Titre</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->', 'Ancien editor', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2021-07-07 16:19:07', '2021-07-07 14:19:07', '', 62, 'http://localhost/ingrwf09/wp/?p=64', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_termmeta`
--

CREATE TABLE `wf09_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wf09_terms`
--

CREATE TABLE `wf09_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_terms`
--

INSERT INTO `wf09_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'principal', 'principal', 0),
(3, 'News', 'news', 0),
(4, 'Team', 'team', 0),
(5, 'WebDesign', 'webdesign', 0),
(6, 'IT', 'it', 0),
(11, 'WebDev', 'webdev', 0),
(12, 'PHP', 'php', 0),
(13, 'HTML', 'html', 0),
(14, 'JS', 'js', 0),
(15, 'css', 'css', 0),
(16, 'post-format-gallery', 'post-format-gallery', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_term_relationships`
--

CREATE TABLE `wf09_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_term_relationships`
--

INSERT INTO `wf09_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(13, 2, 0),
(14, 2, 0),
(26, 2, 0),
(31, 2, 0),
(33, 3, 0),
(35, 3, 0),
(37, 3, 0),
(39, 4, 0),
(41, 4, 0),
(50, 11, 0),
(50, 12, 0),
(50, 13, 0),
(50, 14, 0),
(51, 6, 0),
(52, 5, 0),
(52, 13, 0),
(52, 15, 0),
(53, 2, 0),
(54, 2, 0),
(58, 2, 0),
(59, 3, 0),
(59, 16, 0),
(62, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_term_taxonomy`
--

CREATE TABLE `wf09_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_term_taxonomy`
--

INSERT INTO `wf09_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 5),
(4, 4, 'category', '', 0, 2),
(5, 5, 'secteurs', '', 0, 1),
(6, 6, 'secteurs', '', 0, 1),
(11, 11, 'secteurs', '', 0, 1),
(12, 12, 'competences', '', 0, 1),
(13, 13, 'competences', '', 0, 2),
(14, 14, 'competences', '', 0, 1),
(15, 15, 'competences', '', 0, 1),
(16, 16, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_usermeta`
--

CREATE TABLE `wf09_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_usermeta`
--

INSERT INTO `wf09_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wf09_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wf09_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ac13c85b71294c31dd6ae9e7673151fc2a4f9c3e197e7bde772e13e554123c54\";a:4:{s:10:\"expiration\";i:1626681094;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36\";s:5:\"login\";i:1625471494;}}'),
(17, 1, 'wf09_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wf09_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(21, 1, 'wf09_user-settings-time', '1625666887'),
(22, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wf09_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:393:\"<p>Nous voyons que vous avez activé les mises à jour automatiques pour WordPress. Nous vous recommandons le faire pour Yoast SEO également. Cela nous assurera que WordPress et Yoast SEO continuera de bien fonctionner ensemble. <a href=\"http://localhost/ingrwf09/wp/wp-admin/plugins.php\">Allez dans la listes des extensions pour activer les mises à jour automatiques pour Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BoVhH46uqTg/aHF9Smn3Ex3M9B1Bas0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:18:\"pcepegra@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost/ingrwf09/wp\";s:15:\"user_registered\";s:19:\"2021-07-05 07:51:15\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"wf09_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:343:\"<p>À cause d’un changement dans la structure de vos permaliens, une partie de vos données SEO doit être re-traitée.</p><p>Nous estimons que cela prendra moins d’une minute.</p><a class=\"button\" href=\"http://localhost/ingrwf09/wp/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Démarrer l’optimisation des données SEO</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BoVhH46uqTg/aHF9Smn3Ex3M9B1Bas0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:18:\"pcepegra@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost/ingrwf09/wp\";s:15:\"user_registered\";s:19:\"2021-07-05 07:51:15\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"wf09_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:318:\"Vous avez précédemment réglé votre site en tant que représentant d’une personne. Nous avons amélioré les fonctionnalités de données structurées (Schema et Knowledge Graph), donc nous vous invitons à <a href=\"http://localhost/ingrwf09/wp/wp-admin/admin.php?page=wpseo_titles\"> compléter ces réglages</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:27:\"wpseo-schema-person-upgrade\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BoVhH46uqTg/aHF9Smn3Ex3M9B1Bas0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:18:\"pcepegra@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost/ingrwf09/wp\";s:15:\"user_registered\";s:19:\"2021-07-05 07:51:15\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"wf09_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, 'closedpostboxes_', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(26, 1, 'metaboxhidden_', 'a:0:{}'),
(27, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wf09_users`
--

CREATE TABLE `wf09_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_users`
--

INSERT INTO `wf09_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoVhH46uqTg/aHF9Smn3Ex3M9B1Bas0', 'admin', 'pcepegra@gmail.com', 'http://localhost/ingrwf09/wp', '2021-07-05 07:51:15', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wf09_yoast_indexable`
--

CREATE TABLE `wf09_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_yoast_indexable`
--

INSERT INTO `wf09_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(1, 'http://localhost/ingrwf09/wp/author/admin/', '42:a77349e4e8b94c3763e8dda2ba97ab24', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/b41768c2ede932bc2361a40cc9265505?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/b41768c2ede932bc2361a40cc9265505?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 12:19:10', 1, NULL, NULL, NULL, NULL, 0, NULL),
(2, 'http://localhost/ingrwf09/wp/', '29:a5cc460566b0ffd2ec0eaed7295e02cf', 8, 'post', 'page', 1, 0, 'Bienvenue %%page%% %%sep%% %%sitename%%', 'Bienvenue sur WF09', 'Accueil 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', NULL, '29', 'featured-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', '29', 'featured-image', '{\n    \"width\": 2560,\n    \"height\": 1920,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 29,\n    \"alt\": \"\",\n    \"pixels\": 4915200,\n    \"type\": \"image/jpeg\"\n}', 1, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 09:34:10', 1, NULL, NULL, NULL, NULL, 0, 1),
(3, NULL, NULL, 15, 'post', 'attachment', 1, 8, NULL, NULL, 'hackathon', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg', NULL, '15', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg', '15', 'attachment-image', '{\n    \"width\": 1689,\n    \"height\": 950,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/hackathon.jpg\",\n    \"size\": \"full\",\n    \"id\": 15,\n    \"alt\": \"\",\n    \"pixels\": 1604550,\n    \"type\": \"image/jpeg\"\n}', NULL, 2, NULL, '2021-07-06 08:25:58', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(4, NULL, NULL, 18, 'post', 'attachment', 1, 0, NULL, NULL, 'vue', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/vue.png', NULL, '18', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/vue.png', '18', 'attachment-image', '{\n    \"width\": 920,\n    \"height\": 500,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/vue.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/vue.png\",\n    \"size\": \"full\",\n    \"id\": 18,\n    \"alt\": \"\",\n    \"pixels\": 460000,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, NULL, NULL, 19, 'post', 'attachment', 1, 0, NULL, NULL, 'cropped-vue.png', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-vue.png', NULL, '19', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-vue.png', '19', 'attachment-image', '{\n    \"width\": 512,\n    \"height\": 512,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-vue.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/cropped-vue.png\",\n    \"size\": \"full\",\n    \"id\": 19,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(6, NULL, NULL, 21, 'post', 'attachment', 1, 0, NULL, NULL, 'cropped-cropped-vue.png', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-cropped-vue.png', NULL, '21', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-cropped-vue.png', '21', 'attachment-image', '{\n    \"width\": 399,\n    \"height\": 341,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/cropped-cropped-vue.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/cropped-cropped-vue.png\",\n    \"size\": \"full\",\n    \"id\": 21,\n    \"alt\": \"\",\n    \"pixels\": 136059,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg', '108:273114851534990a1867183f44e726c2', 27, 'post', 'attachment', 1, 8, NULL, NULL, '72583044_10220800408619519_5872988140825739264_o', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg', NULL, '27', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg', '27', 'attachment-image', '{\n    \"width\": 1440,\n    \"height\": 1162,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg\",\n    \"size\": \"full\",\n    \"id\": 27,\n    \"alt\": \"Malte\",\n    \"pixels\": 1673280,\n    \"type\": \"image/jpeg\"\n}', NULL, 2, NULL, '2021-07-06 08:25:58', '2021-07-07 13:45:16', 1, NULL, NULL, NULL, NULL, 0, NULL),
(8, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', '86:fcd5cb6806ce049a3c4d798706099a47', 29, 'post', 'attachment', 1, 8, NULL, NULL, 'IMG_20210527_185643', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', NULL, '29', 'attachment-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', '29', 'attachment-image', '{\n    \"width\": 2560,\n    \"height\": 1920,\n    \"url\": \"http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\ingrwf09\\\\wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 29,\n    \"alt\": \"\",\n    \"pixels\": 4915200,\n    \"type\": \"image/jpeg\"\n}', NULL, 1, NULL, '2021-07-06 08:25:58', '2021-07-07 13:45:16', 1, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'http://localhost/ingrwf09/wp/?page_id=3', '39:d8f8d1741a0091cfc7cf0ab9aaaec33e', 3, 'post', 'page', 1, 0, NULL, NULL, 'Politique de confidentialité', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:54:57', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'http://localhost/ingrwf09/wp/page-d-exemple/', '44:3cdfb05b65ad79811fba513a0874e921', 2, 'post', 'page', 1, 0, NULL, NULL, 'Page d’exemple', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:54:57', 1, NULL, NULL, NULL, NULL, 0, NULL),
(11, 'http://localhost/ingrwf09/wp/blog/', '34:285d1f8a0759dcafa4f2eef813ad25e8', 11, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 09:36:34', 1, NULL, NULL, NULL, NULL, 0, NULL),
(12, NULL, NULL, 4, 'post', 'post', 1, 0, NULL, NULL, 'Brouillon auto', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(13, 'http://localhost/ingrwf09/wp/bonjour-tout-le-monde/', '51:127289de27868d59713fd8ce56513762', 1, 'post', 'post', 1, 0, NULL, NULL, 'Bonjour tout le monde !', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, 1),
(14, 'http://localhost/ingrwf09/wp/nouvel-article/', '44:a1822d104166f0eb5273102fc300894b', 5, 'post', 'post', 1, 0, NULL, NULL, 'Nouvel article', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, 1),
(15, 'http://localhost/ingrwf09/wp/category/non-classe/', '49:f3bd607f4591428ee574f9b5aee67467', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Non classé', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:25:58', '2021-07-07 12:08:53', 1, NULL, NULL, NULL, NULL, 0, NULL),
(16, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page non trouvée %%sep%% %%sitename%%', NULL, 'Erreur 404 : Page introuvable', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-06 06:25:58', 1, NULL, NULL, NULL, NULL, 0, NULL),
(17, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-06 06:25:58', 1, NULL, NULL, NULL, NULL, 0, NULL),
(18, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:25:58', '2021-07-06 06:42:13', 1, NULL, NULL, NULL, NULL, 0, NULL),
(19, 'http://localhost/ingrwf09/wp/', '29:a5cc460566b0ffd2ec0eaed7295e02cf', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Un site pour découvrir WordPress', 'Accueil', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2021-07-06 08:27:10', '2021-07-07 06:27:03', 1, NULL, NULL, NULL, NULL, 0, NULL),
(20, 'http://localhost/ingrwf09/wp/31/', '32:d265ccb340450c0bdab99f98ec789e06', 31, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:50:51', '2021-07-07 07:46:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'http://localhost/ingrwf09/wp/13/', '32:b1e17ce2a3d126bd6871090a08949a81', 13, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:50:55', '2021-07-07 07:46:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(22, 'http://localhost/ingrwf09/wp/14/', '32:7807b9165a014910c7c7d4076d3e2d5b', 14, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:50:55', '2021-07-07 07:46:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(23, 'http://localhost/ingrwf09/wp/26/', '32:254bbdeb5f1e1cf3eeb26764f509c994', 26, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 08:50:55', '2021-07-07 07:46:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(24, 'http://localhost/ingrwf09/wp/category/news/', '43:976a5227929e38dcf9f5882ec6ece93e', 3, 'term', 'category', NULL, NULL, NULL, NULL, 'News', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 11:44:23', '2021-07-07 12:09:30', 1, NULL, NULL, NULL, NULL, 0, NULL),
(25, NULL, NULL, 4, 'term', 'category', NULL, NULL, NULL, NULL, 'Team', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 11:44:28', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(26, 'http://localhost/ingrwf09/wp/news-1/', '36:2072ea8d517c4609bb749863c334d0aa', 33, 'post', 'post', 1, 0, NULL, NULL, 'News 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 11:45:13', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, 1),
(27, 'http://localhost/ingrwf09/wp/news-2/', '36:e61cc1fe20554d404ec5589b65f71bd3', 35, 'post', 'post', 1, 0, NULL, NULL, 'News 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 11:46:06', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, 1),
(28, 'http://localhost/ingrwf09/wp/news-3/', '36:029fea8e42c3e5e95ef03a8e59883c8c', 37, 'post', 'post', 1, 0, NULL, NULL, 'News 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 11:47:13', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, 1),
(29, 'http://localhost/ingrwf09/wp/pierre/', '36:d5c3baecd8856209c8a38d61b536b129', 39, 'post', 'post', 1, 0, NULL, NULL, 'Pierre', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:11:29', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(30, 'http://localhost/ingrwf09/wp/pierre-2/', '38:724c96ce7ab14772a2300384226ab13d', 41, 'post', 'post', 1, 0, NULL, NULL, 'Pierre', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:13:38', '2021-07-07 09:35:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(31, 'http://localhost/ingrwf09/wp/collaborateurs/', '44:b8c28fe19f27ff524c8d929b881a7b45', NULL, 'post-type-archive', 'collaborateurs', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Collaborateurs', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 12:31:02', '2021-07-07 09:36:34', 1, NULL, NULL, NULL, NULL, 0, NULL),
(32, NULL, NULL, 45, 'post', 'acf-field', 1, 44, NULL, NULL, 'Nom', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(33, NULL, NULL, 44, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'collaborateurs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 0, NULL),
(34, NULL, NULL, 46, 'post', 'acf-field', 1, 44, NULL, NULL, 'Prénom', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(35, NULL, NULL, 47, 'post', 'acf-field', 1, 44, NULL, NULL, 'email', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(36, NULL, NULL, 48, 'post', 'acf-field', 1, 44, NULL, NULL, 'Salaire', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(37, NULL, NULL, 49, 'post', 'acf-field', 1, 44, NULL, NULL, 'Supérieur', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:38:33', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(38, NULL, NULL, 5, 'term', 'secteurs', NULL, NULL, NULL, NULL, 'WebDesign', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:40:21', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(39, 'http://localhost/ingrwf09/wp/collaborateurs/pierre/', '51:00d4f8d1815ef5e0c6e03ecc2db6055b', 50, 'post', 'collaborateurs', 1, 0, NULL, NULL, 'Pierre', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:40:30', '2021-07-07 09:36:30', 1, NULL, NULL, NULL, NULL, 0, 1),
(40, NULL, NULL, 6, 'term', 'secteurs', NULL, NULL, NULL, NULL, 'IT', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:50:22', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(41, 'http://localhost/ingrwf09/wp/collaborateurs/benoit/', '51:90a17a794e282a4a0e05d620cb5b158e', 51, 'post', 'collaborateurs', 1, 0, NULL, NULL, 'Benoit', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:50:26', '2021-07-07 09:36:30', 1, NULL, NULL, NULL, NULL, 0, NULL),
(42, 'http://localhost/ingrwf09/wp/collaborateurs/greg/', '49:7489f49723a4e0166375bc016ac051b3', 52, 'post', 'collaborateurs', 1, 0, NULL, NULL, 'Greg', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 12:52:42', '2021-07-07 09:37:01', 1, NULL, NULL, NULL, NULL, 0, NULL),
(43, 'http://localhost/ingrwf09/wp/53/', '32:29f5e734a58ceccf41dbe0a5fb1a970e', 53, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 13:26:30', '2021-07-07 07:46:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(44, 'http://localhost/ingrwf09/wp/54/', '32:641e08edc9f9173cddccd65c40ca5b4c', 54, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 13:26:31', '2021-07-07 07:46:23', 1, NULL, NULL, NULL, NULL, 0, NULL),
(45, NULL, NULL, 55, 'post', 'acf-field', 1, 44, NULL, NULL, 'Photo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 13:41:05', '2021-07-07 08:26:51', 1, NULL, NULL, NULL, NULL, 1, NULL),
(46, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg', '68:b7524dfe72675be0d9fb7ec20c162245', 56, 'post', 'attachment', 1, 50, NULL, NULL, 'portrait', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg', NULL, '56', 'attachment-image', NULL, NULL, NULL, '56', 'attachment-image', NULL, NULL, 2, NULL, '2021-07-06 13:43:49', '2021-07-07 13:45:16', 1, NULL, NULL, NULL, NULL, 0, NULL),
(47, NULL, NULL, 43, 'post', 'collaborateurs', 1, 0, NULL, NULL, 'Brouillon auto', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-07 08:27:03', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(52, 'http://localhost/ingrwf09/wp/secteurs/webdev/', '45:f63781910e19c225492fa5894c71e34f', 11, 'term', 'secteurs', NULL, NULL, NULL, NULL, 'WebDev', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:25:10', '2021-07-07 10:26:39', 1, NULL, NULL, NULL, NULL, 0, NULL),
(53, 'http://localhost/ingrwf09/wp/competences/php/', '45:094d405fdb6e7fdd2a75aedfe852f555', 12, 'term', 'competences', NULL, NULL, NULL, NULL, 'PHP', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:27:04', '2021-07-07 09:36:26', 1, NULL, NULL, NULL, NULL, 0, NULL),
(54, 'http://localhost/ingrwf09/wp/competences/html/', '46:3f77468d58afaca6c1f0897333c711f4', 13, 'term', 'competences', NULL, NULL, NULL, NULL, 'HTML', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:27:09', '2021-07-07 09:34:15', 1, NULL, NULL, NULL, NULL, 0, NULL),
(55, NULL, NULL, 14, 'term', 'competences', NULL, NULL, NULL, NULL, 'JS', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:27:12', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(56, 'http://localhost/ingrwf09/wp/58/', '32:f939a192f1f5e153b780ddd67d1eb9e2', 58, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:46:16', '2021-07-07 07:46:23', 1, NULL, NULL, NULL, NULL, 0, NULL),
(57, NULL, NULL, 15, 'term', 'competences', NULL, NULL, NULL, NULL, 'css', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 09:51:02', '2021-07-07 11:26:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(58, 'http://localhost/ingrwf09/wp/en-images/', '39:54beb8a9b23889c1e69fe69a4bff160a', 59, 'post', 'post', 1, 0, NULL, NULL, 'En images', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait-600x600.jpg', NULL, NULL, 'first-content-image', NULL, NULL, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait-600x600.jpg', NULL, 'first-content-image', NULL, 3, NULL, NULL, '2021-07-07 13:45:16', '2021-07-07 11:45:46', 1, NULL, NULL, NULL, NULL, 0, 1),
(59, 'http://localhost/ingrwf09/wp/type/gallery/', '42:33b0300c78b1c1030cd8dd84b59b6445', 16, 'term', 'post_format', NULL, NULL, NULL, NULL, 'Galerie', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 13:45:28', '2021-07-07 11:45:28', 1, NULL, NULL, NULL, NULL, 0, NULL),
(60, 'http://localhost/ingrwf09/wp/ancien-editor/', '43:b38ab5d6376382b453c931ce1d56ff65', 62, 'post', 'post', 1, 0, NULL, NULL, 'Ancien editor', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 14:08:53', '2021-07-07 12:19:10', 1, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_yoast_indexable_hierarchy`
--

CREATE TABLE `wf09_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_yoast_indexable_hierarchy`
--

INSERT INTO `wf09_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(7, 2, 1, 1),
(8, 2, 1, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(17, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 33, 1, 1),
(33, 0, 0, 1),
(34, 33, 1, 1),
(35, 33, 1, 1),
(36, 33, 1, 1),
(37, 33, 1, 1),
(38, 0, 0, 1),
(39, 0, 0, 1),
(40, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 33, 1, 1),
(46, 39, 1, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 0, 0, 1),
(54, 0, 0, 1),
(55, 0, 0, 1),
(56, 0, 0, 1),
(57, 0, 0, 1),
(58, 0, 0, 1),
(59, 0, 0, 1),
(60, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_yoast_migrations`
--

CREATE TABLE `wf09_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_yoast_migrations`
--

INSERT INTO `wf09_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134');

-- --------------------------------------------------------

--
-- Structure de la table `wf09_yoast_primary_term`
--

CREATE TABLE `wf09_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wf09_yoast_primary_term`
--

INSERT INTO `wf09_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 35, 3, 'category', '2021-07-06 11:46:10', '2021-07-06 09:46:10', 1),
(2, 33, 3, 'category', '2021-07-06 11:46:35', '2021-07-06 09:46:35', 1),
(3, 37, 3, 'category', '2021-07-06 11:47:16', '2021-07-06 09:47:16', 1),
(4, 39, 4, 'category', '2021-07-06 12:11:32', '2021-07-06 10:11:32', 1),
(5, 41, 4, 'category', '2021-07-06 12:14:32', '2021-07-06 10:14:33', 1),
(6, 59, 3, 'category', '2021-07-07 13:45:31', '2021-07-07 11:45:46', 1),
(7, 62, 3, 'category', '2021-07-07 14:09:30', '2021-07-07 12:19:10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wf09_yoast_seo_links`
--

CREATE TABLE `wf09_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wf09_yoast_seo_links`
--

INSERT INTO `wf09_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/ingrwf09/wp/wp-admin/', 2, NULL, 'internal', 10, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon.jpg', 8, 15, 'internal', 2, 3, NULL, NULL, NULL, NULL, NULL),
(11, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/hackathon-900x506.jpg', 8, 15, 'image-in', 2, 3, 950, 1689, 317287, NULL, NULL),
(42, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait.jpg', 59, 56, 'internal', 58, 46, NULL, NULL, NULL, NULL, NULL),
(43, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-scaled.jpg', 59, 29, 'internal', 58, 8, NULL, NULL, NULL, NULL, NULL),
(44, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o.jpg', 59, 27, 'internal', 58, 7, NULL, NULL, NULL, NULL, NULL),
(45, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/portrait-600x600.jpg', 59, 56, 'image-in', 58, 46, 641, 641, 60087, NULL, NULL),
(46, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/IMG_20210527_185643-800x600.jpg', 59, NULL, 'image-in', 58, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'http://localhost/ingrwf09/wp/wp-content/uploads/2021/07/72583044_10220800408619519_5872988140825739264_o-744x600.jpg', 59, 27, 'image-in', 58, 7, 1162, 1440, 263126, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wf09_commentmeta`
--
ALTER TABLE `wf09_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wf09_comments`
--
ALTER TABLE `wf09_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wf09_links`
--
ALTER TABLE `wf09_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wf09_options`
--
ALTER TABLE `wf09_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wf09_postmeta`
--
ALTER TABLE `wf09_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wf09_posts`
--
ALTER TABLE `wf09_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wf09_termmeta`
--
ALTER TABLE `wf09_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wf09_terms`
--
ALTER TABLE `wf09_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wf09_term_relationships`
--
ALTER TABLE `wf09_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wf09_term_taxonomy`
--
ALTER TABLE `wf09_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wf09_usermeta`
--
ALTER TABLE `wf09_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wf09_users`
--
ALTER TABLE `wf09_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wf09_yoast_indexable`
--
ALTER TABLE `wf09_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Index pour la table `wf09_yoast_indexable_hierarchy`
--
ALTER TABLE `wf09_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Index pour la table `wf09_yoast_migrations`
--
ALTER TABLE `wf09_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wf09_yoast_migrations_version` (`version`);

--
-- Index pour la table `wf09_yoast_primary_term`
--
ALTER TABLE `wf09_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Index pour la table `wf09_yoast_seo_links`
--
ALTER TABLE `wf09_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wf09_commentmeta`
--
ALTER TABLE `wf09_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wf09_comments`
--
ALTER TABLE `wf09_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wf09_links`
--
ALTER TABLE `wf09_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wf09_options`
--
ALTER TABLE `wf09_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT pour la table `wf09_postmeta`
--
ALTER TABLE `wf09_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT pour la table `wf09_posts`
--
ALTER TABLE `wf09_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `wf09_termmeta`
--
ALTER TABLE `wf09_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wf09_terms`
--
ALTER TABLE `wf09_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `wf09_term_taxonomy`
--
ALTER TABLE `wf09_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `wf09_usermeta`
--
ALTER TABLE `wf09_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `wf09_users`
--
ALTER TABLE `wf09_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wf09_yoast_indexable`
--
ALTER TABLE `wf09_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `wf09_yoast_migrations`
--
ALTER TABLE `wf09_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `wf09_yoast_primary_term`
--
ALTER TABLE `wf09_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `wf09_yoast_seo_links`
--
ALTER TABLE `wf09_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
