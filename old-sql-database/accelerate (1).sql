-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2022 at 03:56 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '0'),
(2, 2, '_wp_trash_meta_time', '1641857203');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` text NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 47329, 'Skillcrush RSS Feed', '', 'http://simplenewz.com/2014-10-07/Mainstream/feed/11202', '54.91.190.86', '2014-10-07 02:48:32', '2014-10-07 02:48:32', '[&#8230;] How Much Should You Charge for Freelance Web Design? [&#8230;]', 0, 'trash', '', 'pingback', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` longtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

DROP TABLE IF EXISTS `wp_nf3_actions`;
CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2020-09-11 20:56:52', '2020-09-11 20:56:52', 'Store Submission'),
(2, '', '', 'email', 1, 1, '2020-09-11 20:56:52', '2020-09-11 20:56:52', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2020-09-11 20:56:52', '2020-09-11 20:56:52', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2020-09-11 20:56:52', '2020-09-11 20:56:52', 'Success Message');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

DROP TABLE IF EXISTS `wp_nf3_action_meta`;
CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '0', 'payment_total', '0'),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(9, 1, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(10, 1, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '0', 'payment_total', '0'),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '0', 'payment_total', '0'),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:your_message_1599879668044}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:your_message_1599879668044}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '0', 'payment_total', '0'),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(67, 4, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(68, 4, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', ''),
(79, 1, 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(80, 1, 'submitter_email', '', 'submitter_email', ''),
(81, 1, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(82, 1, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(83, 1, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(84, 1, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(85, 3, 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(86, 4, 'submitter_email', '', 'submitter_email', ''),
(87, 4, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(88, 4, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(89, 4, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(90, 4, 'subs_expire_time', '90', 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

DROP TABLE IF EXISTS `wp_nf3_chunks`;
CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

DROP TABLE IF EXISTS `wp_nf3_fields`;
CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext,
  `field_key` longtext,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2020-09-11 21:27:17', '2020-09-11 20:56:51', 'Name', 'name', 1, b'1', '', 'above', b'0'),
(2, 'Email', 'email', 'email', 1, '2020-09-11 21:27:17', '2020-09-11 20:56:51', 'Email', 'email', 2, b'1', '', 'above', b'1'),
(3, 'Your Message', 'your_message_1599879668044', 'textarea', 1, '2020-09-12 03:01:29', '2020-09-11 20:56:51', 'Your Message', 'your_message_1599879668044', 3, b'1', '', 'above', b'0'),
(4, 'Send', 'send_1599879683014', 'submit', 1, '2020-09-12 03:01:29', '2020-09-11 20:56:51', 'Send', 'send_1599879683014', 5, b'0', '', '', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

DROP TABLE IF EXISTS `wp_nf3_field_meta`;
CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 1, 'label', 'Name', 'label', 'Name'),
(254, 1, 'key', 'name', 'key', 'name'),
(255, 1, 'type', 'textbox', 'type', 'textbox'),
(256, 1, 'created_at', '2020-09-11 20:56:51', 'created_at', '2020-09-11 20:56:51'),
(257, 1, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(258, 1, 'personally_identifiable', '', 'personally_identifiable', ''),
(259, 1, 'value', '', 'value', ''),
(260, 2, 'label', 'Email', 'label', 'Email'),
(261, 2, 'key', 'email', 'key', 'email'),
(262, 2, 'type', 'email', 'type', 'email'),
(263, 2, 'created_at', '2020-09-11 20:56:51', 'created_at', '2020-09-11 20:56:51'),
(264, 2, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(265, 2, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(266, 2, 'value', '', 'value', ''),
(267, 3, 'label', 'Your Message', 'label', 'Your Message'),
(268, 3, 'key', 'your_message_1599879668044', 'key', 'your_message_1599879668044'),
(269, 3, 'type', 'textarea', 'type', 'textarea'),
(270, 3, 'created_at', '2020-09-11 20:56:51', 'created_at', '2020-09-11 20:56:51'),
(271, 3, 'value', '', 'value', ''),
(272, 4, 'label', 'Send', 'label', 'Send'),
(273, 4, 'key', 'send_1599879683014', 'key', 'send_1599879683014'),
(274, 4, 'type', 'submit', 'type', 'submit'),
(275, 4, 'created_at', '2020-09-11 20:56:51', 'created_at', '2020-09-11 20:56:51'),
(276, 4, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

DROP TABLE IF EXISTS `wp_nf3_forms`;
CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2020-09-12 01:56:51', '2020-09-11 20:56:51', NULL, NULL, 'Contact Me', 'above', b'0', b'1', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

DROP TABLE IF EXISTS `wp_nf3_form_meta`;
CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2020-09-11 20:56:51', 'created_at', '2020-09-11 20:56:51'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '1', 'editActive', '1'),
(7, 1, 'show_title', '0', 'show_title', '0'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:26:\"your_message_1599879668044\";i:3;s:18:\"send_1599879683014\";}', 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:26:\"your_message_1599879668044\";i:3;s:18:\"send_1599879683014\";}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 1, 'allow_public_link', '0', 'allow_public_link', '0'),
(100, 1, 'embed_form', '', 'embed_form', ''),
(101, 1, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(102, 1, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(103, 1, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(104, 1, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(105, 1, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(106, 1, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(107, 1, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(108, 1, 'validateRequiredField', '', 'validateRequiredField', ''),
(109, 1, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(110, 1, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(111, 1, 'currency', '', 'currency', ''),
(112, 1, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(113, 1, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

DROP TABLE IF EXISTS `wp_nf3_objects`;
CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

DROP TABLE IF EXISTS `wp_nf3_object_meta`;
CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

DROP TABLE IF EXISTS `wp_nf3_relationships`;
CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

DROP TABLE IF EXISTS `wp_nf3_upgrades`;
CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:72:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"1\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:64:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"2\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"3\";s:5:\"label\";s:12:\"Your Message\";s:3:\"key\";s:26:\"your_message_1599879668044\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:69:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"5\";s:5:\"label\";s:4:\"Send\";s:3:\"key\";s:18:\"send_1599879683014\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-09-11 15:56:52\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-09-11 15:56:52\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-09-11 15:56:52\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:79:\"<p>{field:your_message_1599879668044}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-09-11 15:56:52\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:114:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:26:\"your_message_1599879668044\";i:3;s:18:\"send_1599879683014\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://accelerate.troyparkerweb.com', 'yes'),
(2, 'home', 'http://accelerate.troyparkerweb.com', 'yes'),
(3, 'blogname', 'Accelerate', 'yes'),
(4, 'blogdescription', 'Accelerate is a strategy and marketing agency aimed at making our clients visible and building their businesses.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'adda@skillcrush.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"blogger-importer/blogger-importer.php\";i:2;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";i:3;s:25:\"menu-icons/menu-icons.php\";i:4;s:27:\"ninja-forms/ninja-forms.php\";i:5;s:47:\"simple-social-buttons/simple-social-buttons.php\";i:6;s:47:\"simple-twitter-tweets/simple-twitter-tweets.php\";i:7;s:27:\"updraftplus/updraftplus.php\";i:8;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'accelerate-theme', 'yes'),
(42, 'stylesheet', 'accelerate-theme-child', 'yes'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '49752', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:4:{s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:25:\"sfsi_plus_Unistall_plugin\";s:39:\"svg-vector-icon-plugin/wp-svg-icons.php\";s:22:\"uninstall_wp_svg_icons\";s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '6', 'yes'),
(85, 'page_on_front', '5', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:35:\"manage_custom_twitter_feeds_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:8:\"Archives\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:24:\"pi_simpletwittertweets-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:19:\"mc4wp_form_widget-2\";i:1;s:8:\"search-3\";i:2;s:12:\"categories-3\";i:3;s:10:\"archives-3\";i:4;s:15:\"media_gallery-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(96, 'cron', 'a:13:{i:1642201973;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642201984;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642204377;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642228897;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642271008;a:1:{s:17:\"mashsb_cron_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642282582;a:1:{s:36:\"sfsi_plus_sf_instagram_count_fetcher\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642282783;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642287176;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642632776;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1642712265;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}i:1642798612;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1642798665;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(100, '_transient_random_seed', '08aec1e0cae22b19b4afef18ed1a2f40', 'yes'),
(131, 'theme_mods_twentyfourteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1415229601;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(132, 'current_theme', 'Accelerate Theme Child', 'yes'),
(133, 'theme_mods_accelerate-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"top-nav\";i:2;s:12:\"social-media\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598477990;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(163, 'WPLANG', '', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(179, 'recently_activated', 'a:2:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";i:1642193600;s:41:\"sassy-social-share/sassy-social-share.php\";i:1641935321;}', 'yes'),
(191, 'category_children', 'a:0:{}', 'yes'),
(192, 'rewrite_rules', 'a:177:{s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"case-studies/?$\";s:32:\"index.php?post_type=case_studies\";s:45:\"case-studies/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=case_studies&feed=$matches[1]\";s:40:\"case-studies/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=case_studies&feed=$matches[1]\";s:32:\"case-studies/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=case_studies&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"mc4wp-form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"mc4wp-form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"mc4wp-form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mc4wp-form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mc4wp-form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"mc4wp-form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"mc4wp-form/([^/]+)/embed/?$\";s:43:\"index.php?mc4wp-form=$matches[1]&embed=true\";s:31:\"mc4wp-form/([^/]+)/trackback/?$\";s:37:\"index.php?mc4wp-form=$matches[1]&tb=1\";s:39:\"mc4wp-form/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&paged=$matches[2]\";s:46:\"mc4wp-form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&cpage=$matches[2]\";s:35:\"mc4wp-form/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?mc4wp-form=$matches[1]&page=$matches[2]\";s:27:\"mc4wp-form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"mc4wp-form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"mc4wp-form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mc4wp-form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mc4wp-form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"mc4wp-form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"case-studies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"case-studies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"case-studies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"case-studies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"case-studies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"case-studies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"case-studies/([^/]+)/embed/?$\";s:45:\"index.php?case_studies=$matches[1]&embed=true\";s:33:\"case-studies/([^/]+)/trackback/?$\";s:39:\"index.php?case_studies=$matches[1]&tb=1\";s:53:\"case-studies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?case_studies=$matches[1]&feed=$matches[2]\";s:48:\"case-studies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?case_studies=$matches[1]&feed=$matches[2]\";s:41:\"case-studies/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?case_studies=$matches[1]&paged=$matches[2]\";s:48:\"case-studies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?case_studies=$matches[1]&cpage=$matches[2]\";s:37:\"case-studies/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?case_studies=$matches[1]&page=$matches[2]\";s:29:\"case-studies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"case-studies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"case-studies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"case-studies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"case-studies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"case-studies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1\";s:64:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:48:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]\";s:36:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(193, 'limit_login_retries', 'a:1:{s:11:\"108.73.3.12\";i:1;}', 'no'),
(194, 'limit_login_retries_valid', 'a:1:{s:11:\"108.73.3.12\";i:1415679111;}', 'no'),
(198, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'finished_splitting_shared_terms', '1', 'yes'),
(208, 'site_icon', '0', 'yes'),
(209, 'medium_large_size_w', '768', 'yes'),
(210, 'medium_large_size_h', '0', 'yes'),
(211, 'db_upgraded', '', 'yes'),
(246, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"adda@skillcrush.com\";s:7:\"version\";s:5:\"5.8.3\";s:9:\"timestamp\";i:1641583960;}', 'no'),
(247, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:6:\"Events\";s:3:\"ids\";a:3:{i:0;i:47441;i:1;i:47442;i:2;i:47443;}s:7:\"columns\";i:1;s:4:\"size\";s:5:\"large\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'recovery_keys', 'a:0:{}', 'yes'),
(260, 'finished_updating_comment_type', '1', 'yes'),
(267, 'wp_page_for_privacy_policy', '0', 'yes'),
(268, 'show_comments_cookies_opt_in', '1', 'yes'),
(269, 'admin_email_lifespan', '1614029981', 'yes'),
(270, 'disallowed_keys', '', 'no'),
(271, 'comment_previously_approved', '1', 'yes'),
(272, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(277, 'theme_mods_accelerate-theme-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"top-nav\";i:2;s:12:\"social-media\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(286, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(403, 'acf_version', '5.11.4', 'yes'),
(413, 'updraftplus_version', '1.22.1', 'yes'),
(414, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-7dc218d411f0b67d5075ecba1ad603c9\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(415, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-873c26e38c118d9b19b4fe9f82dfe188\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'yes'),
(416, 'updraft_s3', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-0185cfecd52e71b83acb00be275b5b0b\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:3:\"rrs\";s:0:\"\";s:22:\"server_side_encryption\";s:0:\"\";}}}', 'yes'),
(417, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-0ed510f6fd88b3ae471eae27b840c1cf\";a:5:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";N;}}}', 'yes'),
(418, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-51f851cdad48596cc73bbe4255d7fcaa\";a:3:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";}}}', 'yes'),
(419, 'updraft_onedrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-42cdb0f3e11d15f576c7ed328e6d16f5\";a:0:{}}}', 'yes'),
(420, 'updraft_ftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-5e383dd120fce901cb84db931a3a3512\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";i:1;}}}', 'yes'),
(421, 'updraft_azure', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-bb6bec0f3f9dccafd7ff36d5b7292884\";a:0:{}}}', 'yes'),
(422, 'updraft_sftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-5aec9781c39616e893608593b9b85627\";a:0:{}}}', 'yes'),
(423, 'updraft_googlecloud', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a0cc72394d9e3b266020e441399454ec\";a:0:{}}}', 'yes'),
(424, 'updraft_backblaze', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-61a64ccef71373dc2cdb23b4245a34f5\";a:0:{}}}', 'yes'),
(425, 'updraft_webdav', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-c40ebe56b772ef6018effb884dfa3f2d\";a:0:{}}}', 'yes'),
(426, 'updraft_s3generic', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-e9e65ff39952356db81937e64af7c9b0\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}', 'yes'),
(427, 'updraft_openstack', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-8e11b493b695ca144bbef0b7c38d8f94\";a:6:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";s:0:\"\";}}}', 'yes'),
(428, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-702cf83922e0984cac738e0201e2a6b6\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(429, 'updraftplus-addons_siteid', 'c1ad8810d732a7a0013965208657bcb7', 'no'),
(430, 'updraft_lastmessage', 'The backup apparently succeeded and is now complete (Jan 14 22:10:52)', 'yes'),
(431, 'updraftplus_unlocked_fd', '1', 'no'),
(432, 'updraftplus_last_lock_time_fd', '2022-01-14 22:10:43', 'no'),
(433, 'updraftplus_semaphore_fd', '0', 'no'),
(434, 'updraft_last_scheduled_fd', '1642198243', 'yes'),
(436, 'updraft_backup_history', 'a:2:{i:1642198243;a:19:{s:7:\"plugins\";a:1:{i:0;s:58:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-plugins.zip\";}s:12:\"plugins-size\";i:21017111;s:6:\"themes\";a:1:{i:0;s:57:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-themes.zip\";}s:11:\"themes-size\";i:7691217;s:7:\"uploads\";a:1:{i:0;s:58:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-uploads.zip\";}s:12:\"uploads-size\";i:1379303;s:6:\"others\";a:1:{i:0;s:57:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-others.zip\";}s:11:\"others-size\";i:13932;s:2:\"db\";s:52:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-db.gz\";s:7:\"db-size\";i:126141;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"425cdcb660f4f8ecab0194ffd71d0c8574c787cf\";s:7:\"themes0\";s:40:\"3eeefdfd84b69b567247f3e55af05c598361f0a2\";s:8:\"uploads0\";s:40:\"ffa4f49cee5851ef2bfa7b9e8f1312e2a03acb1f\";s:7:\"others0\";s:40:\"2c076f258aa7f11b873c2b66f51b63cfa9759591\";s:3:\"db0\";s:40:\"877b7ca072563195281baabae3ee1548ccb94ae8\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"3e11cabdcb66427a37c2e4ab655339e1179276f1420a763c22b7885002ebba60\";s:7:\"themes0\";s:64:\"19c8b5b226c8607f17fab71d24e8169c2b27a4aa509f70a090f35c732292cbb9\";s:8:\"uploads0\";s:64:\"4c7f2bb12ea4195cd3691cc21e0ae1c5b64823082baa109fcfea8fd238d25e2b\";s:7:\"others0\";s:64:\"4c819fd245a1633719ace0caf1fdcd9046903de9b85b2748cba1f101a37dfa34\";s:3:\"db0\";s:64:\"0c6367efd3161569f54cfbd6324ef029046edeaa72ca8730861ef0b0adcefab5\";}}s:5:\"nonce\";s:12:\"4093ca3be360\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1642198243;s:6:\"themes\";i:1642198250;s:7:\"uploads\";i:1642198251;s:6:\"others\";i:1642198251;}s:18:\"created_by_version\";s:6:\"1.22.1\";s:21:\"last_saved_by_version\";s:6:\"1.22.1\";s:12:\"is_multisite\";b:0;}i:1641857150;a:19:{s:7:\"plugins\";a:1:{i:0;s:58:\"backup_2022-01-10-2325_Accelerate_dc548bc1bd23-plugins.zip\";}s:12:\"plugins-size\";i:20719268;s:6:\"themes\";a:1:{i:0;s:57:\"backup_2022-01-10-2325_Accelerate_dc548bc1bd23-themes.zip\";}s:11:\"themes-size\";i:6678518;s:7:\"uploads\";a:1:{i:0;s:58:\"backup_2022-01-10-2325_Accelerate_dc548bc1bd23-uploads.zip\";}s:12:\"uploads-size\";i:1379303;s:6:\"others\";a:1:{i:0;s:57:\"backup_2022-01-10-2325_Accelerate_dc548bc1bd23-others.zip\";}s:11:\"others-size\";i:13414;s:2:\"db\";s:52:\"backup_2022-01-10-2325_Accelerate_dc548bc1bd23-db.gz\";s:7:\"db-size\";i:85961;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"9fe4157576918bc0a8fef6be16cbf2aed281bf6c\";s:7:\"themes0\";s:40:\"6caaea94f873a900ba47776386d131189c608c47\";s:8:\"uploads0\";s:40:\"ffa4f49cee5851ef2bfa7b9e8f1312e2a03acb1f\";s:7:\"others0\";s:40:\"a750de56e2575c9f1965b19bb3a0c7955de6d5e2\";s:3:\"db0\";s:40:\"bb70aca59a59ea7d8c86a53e62bb5ac36de5d140\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"05d13b03f21b93549cf5398ab99e3526af1618f048a853f18c6f7f23b1817c9c\";s:7:\"themes0\";s:64:\"cdc831759f1ce812d9a9927d937bbf0656b07fecaae1a473c58577fd0cc5c0ba\";s:8:\"uploads0\";s:64:\"4c7f2bb12ea4195cd3691cc21e0ae1c5b64823082baa109fcfea8fd238d25e2b\";s:7:\"others0\";s:64:\"853b8a70ec7799123eb2e10b3229b10fd0d4e51ccba482d46f38ee14bf1c8996\";s:3:\"db0\";s:64:\"0eaab949212ccc671afc173350501293028a69a48cb6c860f0cdec6171e277d7\";}}s:5:\"nonce\";s:12:\"dc548bc1bd23\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1641857150;s:6:\"themes\";i:1641857156;s:7:\"uploads\";i:1641857156;s:6:\"others\";i:1641857157;}s:18:\"created_by_version\";s:7:\"1.16.69\";s:21:\"last_saved_by_version\";s:7:\"1.16.69\";s:12:\"is_multisite\";b:0;}}', 'no'),
(437, 'updraft_last_backup', 'a:6:{s:11:\"backup_time\";i:1642198243;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:58:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-plugins.zip\";}s:12:\"plugins-size\";i:21017111;s:6:\"themes\";a:1:{i:0;s:57:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-themes.zip\";}s:11:\"themes-size\";i:7691217;s:7:\"uploads\";a:1:{i:0;s:58:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-uploads.zip\";}s:12:\"uploads-size\";i:1379303;s:6:\"others\";a:1:{i:0;s:57:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-others.zip\";}s:11:\"others-size\";i:13932;s:2:\"db\";s:52:\"backup_2022-01-14-2210_Accelerate_4093ca3be360-db.gz\";s:7:\"db-size\";i:126141;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"425cdcb660f4f8ecab0194ffd71d0c8574c787cf\";s:7:\"themes0\";s:40:\"3eeefdfd84b69b567247f3e55af05c598361f0a2\";s:8:\"uploads0\";s:40:\"ffa4f49cee5851ef2bfa7b9e8f1312e2a03acb1f\";s:7:\"others0\";s:40:\"2c076f258aa7f11b873c2b66f51b63cfa9759591\";s:3:\"db0\";s:40:\"877b7ca072563195281baabae3ee1548ccb94ae8\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"3e11cabdcb66427a37c2e4ab655339e1179276f1420a763c22b7885002ebba60\";s:7:\"themes0\";s:64:\"19c8b5b226c8607f17fab71d24e8169c2b27a4aa509f70a090f35c732292cbb9\";s:8:\"uploads0\";s:64:\"4c7f2bb12ea4195cd3691cc21e0ae1c5b64823082baa109fcfea8fd238d25e2b\";s:7:\"others0\";s:64:\"4c819fd245a1633719ace0caf1fdcd9046903de9b85b2748cba1f101a37dfa34\";s:3:\"db0\";s:64:\"0c6367efd3161569f54cfbd6324ef029046edeaa72ca8730861ef0b0adcefab5\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"4093ca3be360\";s:26:\"nonincremental_backup_time\";i:1642198243;}', 'yes'),
(438, 'updraftplus_tour_cancelled_on', 'backup_now_btn_success', 'yes'),
(590, 'analyst_cache', 's:78:\"a:1:{s:43:\"account_email_confirmation_ao6grd4ed38kyeqz\";s:13:\"5f5919bc25193\";}\";', 'yes'),
(594, 'sfsi_custom_icons', 'no', 'yes'),
(631, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(637, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(639, 'analyst_notices', 's:65:\"O:29:\"Analyst\\Notices\\NoticeFactory\":1:{s:10:\"\0*\0notices\";a:0:{}}\";', 'yes'),
(640, 'analyst_accounts_data', 's:433:\"O:26:\"Account\\AccountDataFactory\":1:{s:11:\"\0*\0accounts\";a:1:{i:0;O:19:\"Account\\AccountData\":7:{s:5:\"\0*\0id\";s:16:\"ao6grd4ed38kyeqz\";s:9:\"\0*\0secret\";s:40:\"ae93c43c738bdf50f10ef9d4c6d811006b468c74\";s:7:\"\0*\0path\";s:107:\"/Users/troy/Sites/accelerate/wp-content/plugins/ultimate-social-media-icons/ultimate_social_media_icons.php\";s:14:\"\0*\0isInstalled\";b:0;s:12:\"\0*\0isOptedIn\";b:1;s:11:\"\0*\0isSigned\";b:1;s:20:\"\0*\0isInstallResolved\";b:1;}}}\";', 'yes'),
(643, 'mashsb_settings', 'a:14:{s:16:\"visible_services\";s:1:\"1\";s:8:\"networks\";a:2:{i:0;a:3:{s:2:\"id\";s:8:\"facebook\";s:6:\"status\";s:1:\"1\";s:4:\"name\";s:5:\"Share\";}i:1;a:3:{s:2:\"id\";s:7:\"twitter\";s:6:\"status\";s:1:\"1\";s:4:\"name\";s:5:\"Tweet\";}}s:10:\"post_types\";a:1:{s:4:\"post\";s:4:\"post\";}s:19:\"mashsharer_position\";s:6:\"before\";s:7:\"loadall\";s:1:\"1\";s:12:\"twitter_card\";s:1:\"1\";s:10:\"open_graph\";s:1:\"1\";s:18:\"mashsb_sharemethod\";s:10:\"mashengine\";s:14:\"caching_method\";s:15:\"refresh_loading\";s:14:\"mashsu_methods\";s:8:\"disabled\";s:18:\"responsive_buttons\";s:1:\"1\";s:13:\"button_margin\";s:1:\"1\";s:17:\"text_align_center\";s:1:\"1\";s:16:\"mashsharer_round\";s:1:\"1\";}', 'yes'),
(644, 'mashsb_version', '3.7.7', 'yes'),
(645, 'mashsb_installDate', '2020-09-09 06:23:28', 'yes'),
(646, 'mashsb_RatingDiv', 'no', 'yes'),
(647, 'mashsb_update_notice_101', 'yes', 'yes'),
(648, 'mashsb_networks', 'a:3:{i:0;s:8:\"Facebook\";i:1;s:7:\"Twitter\";i:2;s:9:\"Subscribe\";}', 'yes'),
(651, 'widget_mashsb_mostshared_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(653, 'mashsb_show_new_fb_api', 'no', 'yes'),
(654, 'mashsb_show_update_notice_gdpr1', 'no', 'yes'),
(657, 'widget_zoom-social-icons-widget', 'a:2:{i:2;a:15:{s:5:\"title\";s:9:\"Follow us\";s:11:\"description\";s:0:\"\";s:16:\"show_icon_labels\";s:5:\"false\";s:12:\"open_new_tab\";s:4:\"true\";s:9:\"no_follow\";s:5:\"false\";s:9:\"no_opener\";s:5:\"false\";s:11:\"no_referrer\";s:5:\"false\";s:17:\"icon_padding_size\";i:0;s:14:\"icon_font_size\";i:0;s:19:\"global_color_picker\";s:0:\"\";s:25:\"global_color_picker_hover\";s:0:\"\";s:10:\"icon_style\";s:11:\"with-canvas\";s:14:\"icon_alignment\";s:4:\"none\";s:17:\"icon_canvas_style\";s:5:\"round\";s:6:\"fields\";a:3:{i:0;a:7:{s:3:\"url\";s:21:\"https://facebook.com/\";s:5:\"label\";s:8:\"Facebook\";s:4:\"icon\";s:8:\"facebook\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#3b5998\";s:18:\"color_picker_hover\";s:7:\"#3b5998\";s:10:\"aria_label\";s:0:\"\";}i:1;a:7:{s:3:\"url\";s:20:\"https://twitter.com/\";s:5:\"label\";s:7:\"Twitter\";s:4:\"icon\";s:7:\"twitter\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#1da1f2\";s:18:\"color_picker_hover\";s:7:\"#1da1f2\";s:10:\"aria_label\";s:0:\"\";}i:2;a:7:{s:3:\"url\";s:22:\"https://instagram.com/\";s:5:\"label\";s:9:\"Instagram\";s:4:\"icon\";s:9:\"instagram\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#e4405f\";s:18:\"color_picker_hover\";s:7:\"#e4405f\";s:10:\"aria_label\";s:0:\"\";}}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(660, 'fresh_site', '0', 'yes'),
(675, 'menu_icons_install', '1599687350', 'yes'),
(681, 'sfsi_plus_custom_icons', 'no', 'yes'),
(725, 'sfsi_plus_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(751, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(752, 'fs_debug_mode', '', 'yes'),
(753, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:4123;a:3:{s:4:\"slug\";s:10:\"menu-image\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"menu-image/menu-image.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"menu-image\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"menu-image/menu-image.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1599688162;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"2.4.0.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.9.7\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8888\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1599688162;s:7:\"version\";s:5:\"2.9.7\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1599688185;s:7:\"version\";s:5:\"2.9.7\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"14\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:25:\"menu-image/menu-image.php\";s:10:\"menu-image\";}s:7:\"plugins\";a:1:{s:10:\"menu-image\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"Menu Image\";s:4:\"slug\";s:10:\"menu-image\";s:12:\"premium_slug\";s:18:\"menu-image-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"menu-image/menu-image.php\";s:7:\"version\";s:5:\"2.9.7\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1a1cac31f5af1ba3d31bd86fe0e8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4123\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"2c142c22f3be7b1a8d1e3ba61a5ca9d5\";s:13:\"admin_notices\";a:1:{s:10:\"menu-image\";a:0:{}}}', 'yes'),
(754, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(755, 'fs_api_cache', 'a:0:{}', 'no'),
(763, 'widget_new_social_media_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(766, 'widget_apsi_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(818, 'menu-icons', 'a:2:{s:6:\"global\";a:1:{s:10:\"icon_types\";a:1:{i:0;s:2:\"fa\";}}s:6:\"menu_3\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}}', 'yes'),
(872, 'ninja_forms_oauth_client_secret', 'wxXXlcvnQ0rqKHjkiOWYGmfrXINVfRgV9KZUsmUt', 'yes'),
(873, 'ninja_forms_version', '3.6.7', 'yes'),
(874, 'ninja_forms_db_version', '1.4', 'no'),
(875, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2020-09-11 20:56:51\";s:17:\"CacheCollateForms\";s:19:\"2020-09-11 20:56:51\";s:18:\"CacheCollateFields\";s:19:\"2020-09-11 20:56:51\";s:19:\"CacheCollateObjects\";s:19:\"2020-09-11 20:56:51\";s:19:\"CacheCollateCleanup\";s:19:\"2020-09-11 20:56:51\";s:25:\"CacheFieldReconcilliation\";s:19:\"2020-09-11 20:56:51\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(876, 'ninja_forms_settings', 'a:11:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:0;s:18:\"opinionated_styles\";s:5:\"light\";s:20:\"recaptcha_site_key_3\";s:0:\"\";s:22:\"recaptcha_secret_key_3\";s:0:\"\";}', 'yes'),
(877, 'ninja_forms_zuul', '1', 'no'),
(878, 'wp_nf_update_fields_batch_bc8b71f43bac3fff4fa6c6bf1995282c', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-09-11 20:56:51\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(880, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(881, 'ninja_forms_needs_updates', '0', 'yes'),
(882, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:3:{s:5:\"start\";s:9:\"9/18/2020\";s:3:\"int\";i:7;s:9:\"dismissed\";i:1;}}', 'yes'),
(884, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"https:\\/\\/accelerate.troyparkerweb.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"https:\\/\\/accelerate.troyparkerweb.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'https:\\/\\/accelerate.troyparkerweb.com\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(886, 'ninja_forms_optin_reported', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(887, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build dynamic forms that can change as a user fills out the form. Show and hide fields. Send certain email, don\'t send others. Redirect to one of many pages. The possibilities are endless!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.1\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Multi Step Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-step-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.10\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Upload files to WordPress, Google Drive, Dropbox, or Amazon S3. Upload documents, images, media, and more. Easily control file type and size. Add an upload field to any form!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.13\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Drag and drop fields into columns and rows. Resize fields. Add backgrounds, adjust borders, and more. Design gorgeous forms without being a designer!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.29\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mailchimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.6\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.5.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Set up any WordPress form to accept credit card payments or donations through Stripe. Base totals on a fixed amount, user entered amount, or a calculated total!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Generate a PDF of any WordPress form submission. Export any submission as a PDF, or attach it to an email and send a copy to whoever needs one!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.1.7\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Formstack Documents\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]}]', 'no'),
(888, 'nf_form_tel_data', '1', 'no'),
(889, 'ninja_forms_allow_tracking', '', 'yes'),
(891, 'nf_tel_collate', '1', 'no'),
(892, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(893, 'nf_form_tel_sent', 'true', 'no'),
(894, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(933, 'themeisle_sdk_notifications', 'a:2:{s:17:\"last_notification\";a:2:{s:2:\"id\";s:22:\"menu_icons_review_flag\";s:10:\"display_at\";i:1600721703;}s:24:\"last_notification_active\";i:1601246149;}', 'yes'),
(991, 'menu_icons_logger_flag', 'no', 'yes'),
(1191, 'menu_icons_review_flag', 'yes', 'yes'),
(1194, 'ninja-forms-views-secret', 'OerekO54W66LtpAgELmj9YBaQEfBUg5Cu1v09BqI', 'yes'),
(1203, 'widget_custom-twitter-feeds-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1208, 'ctf_statuses', 'a:1:{s:13:\"first_install\";i:1601247119;}', 'no'),
(1209, 'ctf_db_version', '1.0', 'yes'),
(1243, 'Feed_Them_Social_Activated_Plugin', 'feed-them-social', 'yes'),
(1244, 'fts-date-and-time-format', 'one-day-ago', 'yes'),
(1245, 'fts_clear_cache_developer_mode', '86400', 'yes'),
(1248, 'rating_fts_slick_notice', 'pending', 'yes'),
(1284, 'twitter_show_follow_btn', 'yes', 'yes'),
(1285, 'twitter_show_follow_count', 'no', 'yes'),
(1286, 'twitter_show_follow_btn_where', 'twitter-follow-below', 'yes'),
(1287, 'twitter_allow_videos', 'no', 'yes'),
(1288, 'twitter_allow_shortlink_conversion', 'no', 'yes'),
(1289, 'twitter_full_width', 'no', 'yes'),
(1290, 'twitter_text_color', '#a6a6a6', 'yes'),
(1291, 'twitter_link_color', '', 'yes'),
(1292, 'twitter_link_color_hover', '', 'yes'),
(1293, 'twitter_feed_width', '410px', 'yes'),
(1294, 'twitter_feed_margin', '0px', 'yes'),
(1295, 'twitter_feed_padding', '0px', 'yes'),
(1296, 'twitter_feed_background_color', '', 'yes'),
(1297, 'twitter_border_bottom_color', '', 'yes'),
(1298, 'twitter_grid_posts_background_color', '', 'yes'),
(1299, 'twitter_grid_border_bottom_color', '', 'yes'),
(1300, 'fts_twitter_custom_consumer_key', 'DlhfukQsjWNx75dkMw8KM4pUv', 'yes'),
(1301, 'fts_twitter_custom_consumer_secret', 'OjbCyl7DJuPntlZqpClmZDjCv73AHFir4lI8urxyN9c2Wd5u6H', 'yes'),
(1302, 'fts_twitter_custom_access_token', '88816081-fjqcQ7h7MusOEZBrEkU9z8F2c3nAIRxLBDsl6Nbmk', 'yes'),
(1303, 'fts_twitter_custom_access_token_secret', 'PgtlyztaU2bEF99WPkZRmaJyk5K5oswWyGRx9RKeOcKzp', 'yes'),
(1304, 'fts_twitter_hide_images_in_posts', '', 'yes'),
(1305, 'twitter_max_image_width', '', 'yes'),
(1306, 'twitter_loadmore_background_color', '', 'yes'),
(1307, 'twitter_loadmore_text_color', '', 'yes'),
(1308, 'twitter_load_more_text', '', 'yes'),
(1309, 'twitter_no_more_tweets_text', '', 'yes'),
(1310, 'twitter_text_size', '', 'yes'),
(1311, 'fts_twitter_custom_tokens', '1', 'yes'),
(1321, 'widget_pi_simpletwittertweets', 'a:2:{i:2;a:22:{s:5:\"title\";s:11:\"@Accelerate\";s:9:\"titleLink\";N;s:4:\"name\";s:11:\"joybubbles4\";s:9:\"numTweets\";s:1:\"1\";s:9:\"cacheTime\";s:1:\"5\";s:11:\"consumerKey\";s:25:\"DlhfukQsjWNx75dkMw8KM4pUv\";s:14:\"consumerSecret\";s:50:\"OjbCyl7DJuPntlZqpClmZDjCv73AHFir4lI8urxyN9c2Wd5u6H\";s:11:\"accessToken\";s:50:\"88816081-fjqcQ7h7MusOEZBrEkU9z8F2c3nAIRxLBDsl6Nbmk\";s:17:\"accessTokenSecret\";s:45:\"PgtlyztaU2bEF99WPkZRmaJyk5K5oswWyGRx9RKeOcKzp\";s:15:\"exclude_replies\";s:2:\"on\";s:13:\"twitterFollow\";N;s:13:\"dataShowCount\";N;s:18:\"dataShowScreenName\";N;s:8:\"dataLang\";s:2:\"en\";s:7:\"timeRef\";N;s:7:\"timeAgo\";N;s:14:\"twitterIntents\";N;s:18:\"twitterIntentsText\";N;s:11:\"intentColor\";s:7:\"#999999\";s:10:\"showAvatar\";N;s:12:\"roundCorners\";N;s:10:\"avatarSize\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1327, 'list-tweets-Accelerate-backup', 'a:1:{i:0;a:6:{s:4:\"text\";s:149:\"<a href=\"http://twitter.com/Abby_NYC\" target=\"_blank\" rel=\"nofollow\">@Abby_NYC</a> The Good Place. One of the most good-hearted shows in past decade.\";s:4:\"name\";s:7:\"dennis!\";s:9:\"permalink\";s:56:\"http://twitter.com/accelerate/status/1298408843676852226\";s:5:\"image\";s:74:\"http://pbs.twimg.com/profile_images/957024203307298816/wuzJk5tK_normal.jpg\";s:4:\"time\";i:1598399766;s:8:\"tweet_id\";s:19:\"1298408843676852226\";}}', 'yes'),
(1359, 'list-tweets-@Accelerate-backup', 'a:1:{i:0;a:6:{s:4:\"text\";s:149:\"<a href=\"http://twitter.com/Abby_NYC\" target=\"_blank\" rel=\"nofollow\">@Abby_NYC</a> The Good Place. One of the most good-hearted shows in past decade.\";s:4:\"name\";s:7:\"dennis!\";s:9:\"permalink\";s:56:\"http://twitter.com/accelerate/status/1298408843676852226\";s:5:\"image\";s:74:\"http://pbs.twimg.com/profile_images/957024203307298816/wuzJk5tK_normal.jpg\";s:4:\"time\";i:1598399766;s:8:\"tweet_id\";s:19:\"1298408843676852226\";}}', 'yes'),
(1362, 'list-tweets-iPlanetUK-backup', 'a:1:{i:0;a:6:{s:4:\"text\";s:217:\"<a href=\"http://twitter.com/SouthernRailUK\" target=\"_blank\" rel=\"nofollow\">@SouthernRailUK</a> papers say theirs a way to claim back a months travel from my season tickets. Where and how? Ur comp page not mention it?!\";s:4:\"name\";s:18:\"Planet Interactive\";s:9:\"permalink\";s:54:\"http://twitter.com/iPlanetUK/status/816193954119086080\";s:5:\"image\";s:76:\"http://pbs.twimg.com/profile_images/1410934868/pi-logo-twitter-sq_normal.png\";s:4:\"time\";i:1483430777;s:8:\"tweet_id\";s:18:\"816193954119086080\";}}', 'yes'),
(1365, 'list-tweets-PTroyP-backup', 'a:1:{i:0;a:6:{s:4:\"text\";s:270:\"<a href=\"http://twitter.com/FLOTUS\" target=\"_blank\" rel=\"nofollow\">@FLOTUS</a> <a href=\"http://twitter.com/ToysForTots_USA\" target=\"_blank\" rel=\"nofollow\">@ToysForTots_USA</a> <a href=\"http://twitter.com/USMC\" target=\"_blank\" rel=\"nofollow\">@USMC</a> Awesome First Lady!\";s:4:\"name\";s:11:\"Troy Parker\";s:9:\"permalink\";s:52:\"http://twitter.com/PTroyP/status/1204238736134983680\";s:5:\"image\";s:75:\"http://pbs.twimg.com/profile_images/1134216087430676480/GASBXQng_normal.png\";s:4:\"time\";i:1575947863;s:8:\"tweet_id\";s:19:\"1204238736134983680\";}}', 'yes'),
(1432, '_transient_mc4wp_subscribe_newsletter_lists', 'a:1:{i:0;a:3:{s:5:\"value\";s:10:\"14e388b24c\";s:5:\"label\";s:11:\"Troy Parker\";s:6:\"fields\";a:6:{i:0;a:2:{s:5:\"value\";s:5:\"EMAIL\";s:5:\"label\";s:13:\"Email address\";}i:1;a:2:{s:5:\"value\";s:7:\"ADDRESS\";s:5:\"label\";s:7:\"Address\";}i:2;a:2:{s:5:\"value\";s:8:\"BIRTHDAY\";s:5:\"label\";s:8:\"Birthday\";}i:3;a:2:{s:5:\"value\";s:5:\"FNAME\";s:5:\"label\";s:10:\"First Name\";}i:4;a:2:{s:5:\"value\";s:5:\"LNAME\";s:5:\"label\";s:9:\"Last Name\";}i:5;a:2:{s:5:\"value\";s:5:\"PHONE\";s:5:\"label\";s:12:\"Phone Number\";}}}}', 'yes'),
(1433, 'widget_mc4wp_form_widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:27:\"Subscribe to our Newsletter\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1434, 'mc4wp_version', '4.8.6', 'yes'),
(1435, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(1436, 'mc4wp', 'a:6:{s:19:\"grecaptcha_site_key\";s:0:\"\";s:21:\"grecaptcha_secret_key\";s:0:\"\";s:7:\"api_key\";s:36:\"9b196eb3b2ca094dc4aefc3d928aa3c4-us2\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1601576054;}', 'yes'),
(1447, 'mc4wp_default_form_id', '47439', 'yes'),
(1450, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(1471, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1483, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1484, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1488, 'addtoany_options', 'a:34:{s:8:\"position\";s:6:\"bottom\";s:30:\"display_in_posts_on_front_page\";s:1:\"1\";s:33:\"display_in_posts_on_archive_pages\";s:1:\"1\";s:19:\"display_in_excerpts\";s:2:\"-1\";s:16:\"display_in_posts\";s:1:\"1\";s:16:\"display_in_pages\";s:2:\"-1\";s:22:\"display_in_attachments\";s:2:\"-1\";s:15:\"display_in_feed\";s:1:\"1\";s:7:\"onclick\";s:2:\"-1\";s:9:\"icon_size\";s:2:\"32\";s:7:\"icon_bg\";s:8:\"original\";s:13:\"icon_bg_color\";s:7:\"#2a2a2a\";s:7:\"icon_fg\";s:8:\"original\";s:13:\"icon_fg_color\";s:7:\"#ffffff\";s:6:\"button\";s:4:\"NONE\";s:13:\"button_custom\";s:0:\"\";s:17:\"button_show_count\";s:2:\"-1\";s:6:\"header\";s:0:\"\";s:23:\"additional_js_variables\";s:0:\"\";s:14:\"additional_css\";s:0:\"\";s:12:\"custom_icons\";s:2:\"-1\";s:16:\"custom_icons_url\";s:1:\"/\";s:17:\"custom_icons_type\";s:3:\"png\";s:18:\"custom_icons_width\";s:0:\"\";s:19:\"custom_icons_height\";s:0:\"\";s:5:\"cache\";s:2:\"-1\";s:27:\"display_in_cpt_case_studies\";s:2:\"-1\";s:23:\"display_in_cpt_services\";s:2:\"-1\";s:11:\"button_text\";s:5:\"Share\";s:24:\"special_facebook_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:15:\"active_services\";a:2:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";}s:29:\"special_facebook_like_options\";a:2:{s:10:\"show_count\";s:2:\"-1\";s:4:\"verb\";s:4:\"like\";}s:29:\"special_twitter_tweet_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:29:\"special_pinterest_pin_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}}', 'yes'),
(1492, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(1777, 'auto_update_core_dev', 'enabled', 'yes'),
(1778, 'auto_update_core_minor', 'enabled', 'yes'),
(1779, 'auto_update_core_major', 'unset', 'yes'),
(2386, 'https_detection_errors', 'a:0:{}', 'yes'),
(3366, '_mm_refresh_token', '5ea34351-701c-4ab6-83e1-2cca0a141f3e', 'yes'),
(3398, 'can_compress_scripts', '0', 'no'),
(3419, 'auto_update_plugins', 'a:0:{}', 'no'),
(4092, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(5276, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(5281, 'mm_cache_settings', 'a:2:{s:4:\"page\";s:7:\"enabled\";s:7:\"browser\";s:7:\"enabled\";}', 'yes'),
(5282, 'epc_filetype_expirations', 'a:9:{s:9:\"image/jpg\";s:8:\"24 hours\";s:10:\"image/jpeg\";s:8:\"24 hours\";s:9:\"image/gif\";s:8:\"24 hours\";s:9:\"image/png\";s:8:\"24 hours\";s:8:\"text/css\";s:8:\"24 hours\";s:15:\"application/pdf\";s:6:\"1 week\";s:15:\"text/javascript\";s:8:\"24 hours\";s:9:\"text/html\";s:7:\"2 hours\";s:7:\"default\";s:8:\"24 hours\";}', 'yes'),
(5283, 'endurance_cache_level', '2', 'yes'),
(5487, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1642194546;s:15:\"version_checked\";s:5:\"5.8.3\";s:12:\"translations\";a:0:{}}', 'no'),
(5577, '_transient_timeout_menu_icons_0129versions', '1642289103', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5578, '_transient_menu_icons_0129versions', 'a:41:{i:0;a:2:{s:7:\"version\";s:5:\"0.1.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.0.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"0.1.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.1.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"0.1.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.2.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"0.1.3\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.3.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"0.1.4\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.4.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"0.1.5\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.5.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"0.10.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.0.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"0.10.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.1.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"0.10.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.2.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"0.11.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.0.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"0.11.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.1.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"0.11.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.2.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"0.11.3\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.3.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"0.11.4\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.4.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"0.11.5\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.5.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"0.12.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.0.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"0.12.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.1.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"0.12.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.2.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"0.12.3\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.3.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"0.12.4\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.4.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"0.12.5\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.5.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"0.12.6\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.6.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"0.12.7\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.7.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"0.12.8\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.8.zip\";}i:24;a:2:{s:7:\"version\";s:6:\"0.12.9\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.9.zip\";}i:25;a:2:{s:7:\"version\";s:5:\"0.2.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.0.zip\";}i:26;a:2:{s:7:\"version\";s:5:\"0.2.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.1.zip\";}i:27;a:2:{s:7:\"version\";s:5:\"0.2.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.2.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"0.2.3\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.3.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"0.3.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.0.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"0.3.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.1.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"0.3.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.2.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"0.4.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.4.0.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"0.5.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.5.0.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"0.5.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.5.1.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"0.6.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.6.0.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"0.7.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.7.0.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"0.8.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.8.0.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"0.8.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.8.1.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"0.9.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.9.0.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"0.9.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.9.2.zip\";}}', 'no'),
(5592, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1641901172', 'no'),
(5615, '_site_transient_timeout_browser_8ffec38781748c07c6d2e71b451e2e28', '1642535773', 'no'),
(5616, '_site_transient_browser_8ffec38781748c07c6d2e71b451e2e28', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(5617, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1642535773', 'no'),
(5618, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(5651, 'heateor_sss', 'a:69:{s:24:\"horizontal_sharing_shape\";s:9:\"rectangle\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:18:\"instagram_username\";s:0:\"\";s:16:\"youtube_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:3:{i:0;s:14:\"facebook_share\";i:1;s:14:\"linkedin_share\";i:2;s:13:\"twitter_tweet\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:6:\"bottom\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:25:\"vertical_youtube_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:18:\"bitly_access_token\";s:0:\"\";s:8:\"language\";s:5:\"en_US\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"amp_enable\";s:1:\"1\";s:10:\"custom_css\";s:51:\"a.heateor_sss_linkedin_share {\r\nmargin-top: 2px;\r\n}\";}', 'yes'),
(5652, 'heateor_sss_version', '3.3.38', 'yes'),
(5655, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(5656, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(5681, '_site_transient_timeout_browser_cf41ff8a9f52e7dc638aa6953354fe06', '1642540096', 'no'),
(5682, '_site_transient_browser_cf41ff8a9f52e7dc638aa6953354fe06', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(5817, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1642204415', 'no'),
(5821, 'ssb_networks', 'a:1:{s:14:\"icon_selection\";s:24:\"fbshare,twitter,linkedin\";}', 'yes'),
(5822, 'ssb_themes', 'a:1:{s:10:\"icon_style\";s:12:\"simple-round\";}', 'yes'),
(5823, 'ssb_positions', 'a:1:{s:8:\"position\";a:1:{s:6:\"inline\";s:6:\"inline\";}}', 'yes'),
(5824, 'ssb_inline', 'a:14:{s:8:\"location\";s:5:\"below\";s:14:\"icon_alignment\";s:8:\"centered\";s:9:\"animation\";s:12:\"no-animation\";s:12:\"share_counts\";s:1:\"0\";s:11:\"total_share\";s:1:\"0\";s:10:\"icon_space\";s:1:\"0\";s:16:\"icon_space_value\";s:0:\"\";s:11:\"hide_mobile\";s:1:\"0\";s:16:\"show_on_category\";s:1:\"0\";s:15:\"show_on_archive\";s:1:\"0\";s:11:\"show_on_tag\";s:1:\"0\";s:14:\"show_on_search\";s:1:\"0\";s:11:\"share_title\";s:0:\"\";s:5:\"posts\";a:1:{s:4:\"post\";s:4:\"post\";}}', 'yes'),
(5825, 'ssb_advanced', 'a:1:{s:11:\"ssb_og_tags\";s:1:\"1\";}', 'yes'),
(5826, 'ssb_pr_version', '4.0.0', 'yes'),
(5827, 'widget_ssb_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(5828, 'ssb_sidebar', 'a:8:{s:11:\"orientation\";s:4:\"left\";s:9:\"animation\";s:12:\"no-animation\";s:12:\"share_counts\";s:1:\"0\";s:11:\"total_share\";s:1:\"0\";s:10:\"icon_space\";s:1:\"0\";s:16:\"icon_space_value\";s:0:\"\";s:11:\"hide_mobile\";s:1:\"0\";s:5:\"posts\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}}', 'yes'),
(5829, 'ssb_media', '', 'yes'),
(5830, 'ssb_popup', '', 'yes'),
(5831, 'ssb_flyin', '', 'yes'),
(5832, 'ssb_active_time', '1642193655', 'no'),
(5839, '_site_transient_timeout_available_translations', '1642205060', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5841, 'new_admin_email', 'troyparker55@gmail.com', 'yes'),
(5842, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"74bc1c1b9d839ad557719d1e8b06adce\";s:8:\"newemail\";s:22:\"troyparker55@gmail.com\";}', 'yes'),
(5843, 'epc_skip_404_handling', '', 'yes'),
(5852, '_transient_timeout_feed_9bc1b9ec726e1f508c5207949084454a', '1642241404', 'no'),
(5854, '_transient_timeout_feed_mod_9bc1b9ec726e1f508c5207949084454a', '1642241404', 'no'),
(5855, '_transient_feed_mod_9bc1b9ec726e1f508c5207949084454a', '1642198204', 'no'),
(5856, '_transient_timeout_themeisle_sdk_feed_items', '1642371004', 'no'),
(5857, '_transient_themeisle_sdk_feed_items', 'a:5:{i:0;a:3:{s:5:\"title\";s:44:\"Kartra Pricing Explained: Which Plan to Get?\";s:4:\"date\";i:1641990910;s:4:\"link\";s:52:\"https://themeisle.com/blog/kartra-pricing-explained/\";}i:1;a:3:{s:5:\"title\";s:64:\"10 Clever Ways How to Promote Your Blog and Grow Traffic in 2022\";s:4:\"date\";i:1641901522;s:4:\"link\";s:49:\"https://themeisle.com/blog/how-to-promote-a-blog/\";}i:2;a:3:{s:5:\"title\";s:61:\"WordPress Disable XMLRPC: Complete Guide (Via Code or Plugin)\";s:4:\"date\";i:1641806339;s:4:\"link\";s:52:\"https://themeisle.com/blog/wordpress-disable-xmlrpc/\";}i:3;a:3:{s:5:\"title\";s:59:\"6 Most Profitable Blog Niches for 2022 (Based On Real Data)\";s:4:\"date\";i:1641488754;s:4:\"link\";s:55:\"https://themeisle.com/blog/most-profitable-blog-niches/\";}i:4;a:3:{s:5:\"title\";s:62:\"How to Become an Amazon Affiliate: Every Step Covered for 2022\";s:4:\"date\";i:1641291965;s:4:\"link\";s:61:\"https://themeisle.com/blog/how-to-become-an-amazon-affiliate/\";}}', 'no'),
(5858, '_transient_timeout_themeisle_sdk_products', '1642219805', 'no'),
(5859, '_transient_themeisle_sdk_products', 'a:6:{i:0;a:4:{s:4:\"name\";s:4:\"Neve\";s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:4:\"neve\";s:8:\"installs\";i:300000;}i:1;a:4:{s:4:\"name\";s:6:\"Hestia\";s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:6:\"hestia\";s:8:\"installs\";i:100000;}i:2;a:4:{s:4:\"name\";s:46:\"Gutenberg Blocks and Template Library by Otter\";s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"otter-blocks\";s:8:\"installs\";i:100000;}i:3;a:4:{s:4:\"name\";s:22:\"Orbit Fox by ThemeIsle\";s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"themeisle-companion\";s:8:\"installs\";i:400000;}i:4;a:4:{s:4:\"name\";s:77:\"RSS Aggregator by Feedzy &#8211; Powerful WP Autoblogging and News Aggregator\";s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"feedzy-rss-feeds\";s:8:\"installs\";i:50000;}i:5;a:4:{s:4:\"name\";s:51:\"Visualizer: Tables and Charts Manager for WordPress\";s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"visualizer\";s:8:\"installs\";i:40000;}}', 'no'),
(5860, '_site_transient_timeout_community-events-80fa48f23f71eb1899bfa1476bc887b9', '1642241407', 'no'),
(5861, '_site_transient_community-events-80fa48f23f71eb1899bfa1476bc887b9', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"73.203.240.0\";}s:6:\"events\";a:0:{}}', 'no'),
(5862, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1642241407', 'no'),
(5863, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1642241407', 'no'),
(5864, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1642198207', 'no'),
(5865, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1642241407', 'no'),
(5866, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1642241407', 'no'),
(5867, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1642198207', 'no'),
(5868, '_transient_timeout_feed_e0061ca2fa5b884e483872aa34d3e7eb', '1642241408', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5870, '_transient_timeout_feed_mod_e0061ca2fa5b884e483872aa34d3e7eb', '1642241408', 'no'),
(5871, '_transient_feed_mod_e0061ca2fa5b884e483872aa34d3e7eb', '1642198208', 'no'),
(5872, '_transient_timeout_updraftplus_dashboard_news', '1642241408', 'no'),
(5873, '_transient_updraftplus_dashboard_news', '<div class=\"rss-widget\"><ul><li class=\"updraftplus_dashboard_news_item\"><a href=\"https://accelerate.troyparkerweb.com/wp-admin/\" class=\"dashicons dashicons-no-alt\" title=\"Dismiss all UpdraftPlus news\" onClick=\"updraftplus_dismiss_dashboard_news(); return false;\" style=\"float: right; box-shadow: none; margin-left: 5px;\"></a><a class=\'rsswidget\' href=\'https://updraftplus.com/wp-optimize-vs-wp-fastest-cache/\'>UpdraftPlus: WP-Optimize vs. WP Fastest Cache: Which is the best WordPress cache plugin</a></li><li class=\"updraftplus_dashboard_news_item\"><a href=\"https://accelerate.troyparkerweb.com/wp-admin/\" class=\"dashicons dashicons-no-alt\" title=\"Dismiss all UpdraftPlus news\" onClick=\"updraftplus_dismiss_dashboard_news(); return false;\" style=\"float: right; box-shadow: none; margin-left: 5px;\"></a><a class=\'rsswidget\' href=\'https://updraftplus.com/8-ways-to-boost-your-wordpress-website-conversion-rates/\'>UpdraftPlus: 8 ways to boost your WordPress website conversion rates</a></li></ul></div>', 'no'),
(5874, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1642241408', 'no'),
(5875, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/01/wordpress-5-9-rc-2/\'>WordPress 5.9 RC 2</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/01/wordpress-5-8-3-security-release/\'>WordPress 5.8.3 Security Release</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/creating-speech-balloons-with-the-wordpress-block-editor?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=creating-speech-balloons-with-the-wordpress-block-editor\'>WPTavern: Creating Speech Balloons With the WordPress Block Editor</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/automattics-livro-is-a-minimal-block-theme-for-writers?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=automattics-livro-is-a-minimal-block-theme-for-writers\'>WPTavern: Automattic’s Livro Is a Minimal Block Theme for Writers</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/extendify-launches-new-pattern-library-plugin?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=extendify-launches-new-pattern-library-plugin\'>WPTavern: Extendify Launches New Pattern Library Plugin</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_edit_last', '1'),
(3, 5, '_wp_page_template', 'default'),
(4, 5, '_edit_lock', '1641931681:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1641931599:1'),
(17, 10, '_menu_item_type', 'post_type'),
(18, 10, '_menu_item_menu_item_parent', '0'),
(19, 10, '_menu_item_object_id', '6'),
(20, 10, '_menu_item_object', 'page'),
(21, 10, '_menu_item_target', ''),
(22, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 10, '_menu_item_xfn', ''),
(24, 10, '_menu_item_url', ''),
(66, 19, '_edit_last', '1'),
(67, 26, '_edit_last', '1'),
(68, 28, '_edit_last', '1'),
(69, 31, '_edit_last', '1'),
(70, 33, '_edit_last', '1'),
(71, 35, '_edit_last', '1'),
(72, 36, '_edit_last', '1'),
(73, 37, '_edit_last', '1'),
(74, 39, '_edit_last', '1'),
(75, 47329, '_thumbnail_id', '47328'),
(76, 47329, 'thank_you_cta', ''),
(77, 47329, '_thank_you_cta', 'field_531f10983e6d6'),
(78, 47329, 'main-image', 'http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg'),
(79, 47329, '_main-image', 'field_529a9c2bc03e6'),
(80, 47329, 'subtitle', ''),
(81, 47329, '_subtitle', 'field_529a9dc8eea2f'),
(82, 47329, 'tweet', 'How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush'),
(83, 47329, '_tweet', 'field_53a1a27fe6609'),
(84, 47329, 'tweet-link', 'http://ctt.ec/V4a7l'),
(85, 47329, '_tweet-link', 'field_53a1a291e660a'),
(86, 47329, 'cptr_related', 'a:0:{}'),
(87, 47329, '_mepr_unauthorized_message_type', 'default'),
(88, 47329, '_mepr_unauthorized_message', ''),
(89, 47329, '_mepr_unauth_login', 'default'),
(90, 47329, '_mepr_unauth_excerpt_type', 'default'),
(91, 47329, '_mepr_unauth_excerpt_size', '100'),
(92, 47329, '_rawhtml_settings', '0,0,0,0'),
(93, 47329, '_su_rich_snippet_type', 'none'),
(94, 47329, 'headlines_post_guid', '356b5323-08a9-45f7-a087-e2306d4148cb'),
(95, 47329, '_su_title', 'How much to charge for freelance web design'),
(96, 47329, '_su_description', 'So many factors go into deciding how much to charge for your work. This free PDF download will guide you through the process.'),
(97, 47329, 'dsq_thread_id', '3076334264'),
(98, 47331, '_edit_last', '1'),
(99, 47331, '_edit_lock', '1600282758:1'),
(100, 47332, '_wp_attached_file', '2020/09/mc-thumbnail-1.png'),
(101, 47332, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:608;s:6:\"height\";i:448;s:4:\"file\";s:26:\"2020/09/mc-thumbnail-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-1-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 47333, '_wp_attached_file', '2020/09/mc-thumbnail-2.png'),
(103, 47333, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:606;s:6:\"height\";i:817;s:4:\"file\";s:26:\"2020/09/mc-thumbnail-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-2-223x300.png\";s:5:\"width\";i:223;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 47334, '_wp_attached_file', '2020/09/mc-thumbnail-3.png'),
(105, 47334, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:606;s:6:\"height\";i:1211;s:4:\"file\";s:26:\"2020/09/mc-thumbnail-3.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-3-150x300.png\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"mc-thumbnail-3-512x1024.png\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"mc-thumbnail-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 47332, '_wp_attachment_image_alt', 'Case Study Info'),
(107, 47337, '_edit_last', '1'),
(108, 47337, '_edit_lock', '1600285278:1'),
(109, 47331, 'services', 'Content Strategy, Design & Development'),
(110, 47331, '_services', 'field_5f52e8ba96e7a'),
(111, 47331, 'client', 'MailChimp'),
(112, 47331, '_client', 'field_5f52e912a3af2'),
(113, 47331, 'site_link', 'http://mailchimp.com'),
(114, 47331, '_site_link', 'field_5f52e92317715'),
(115, 47331, 'image_1', '47332'),
(116, 47331, '_image_1', 'field_5f52e93953049'),
(117, 47331, 'image_2', '47333'),
(118, 47331, '_image_2', 'field_5f52e9963c0cb'),
(119, 47331, 'image_3', '47334'),
(120, 47331, '_image_3', 'field_5f52e9a23c0cc'),
(121, 47344, '_edit_last', '1'),
(122, 47344, '_edit_lock', '1600275890:1'),
(123, 47345, '_wp_attached_file', '2020/09/coroflot.jpg'),
(124, 47345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:514;s:6:\"height\";i:379;s:4:\"file\";s:20:\"2020/09/coroflot.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coroflot-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coroflot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 47345, '_wp_attachment_image_alt', 'Coroflot'),
(126, 47344, 'services', 'Influencer Mapping, Social Media Strategy'),
(127, 47344, '_services', 'field_5f52e8ba96e7a'),
(128, 47344, 'client', 'Coroflot Advertising'),
(129, 47344, '_client', 'field_5f52e912a3af2'),
(130, 47344, 'site_link', 'https://coroflot.com'),
(131, 47344, '_site_link', 'field_5f52e92317715'),
(132, 47344, 'image_1', '47345'),
(133, 47344, '_image_1', 'field_5f52e93953049'),
(134, 47344, 'image_2', ''),
(135, 47344, '_image_2', 'field_5f52e9963c0cb'),
(136, 47344, 'image_3', ''),
(137, 47344, '_image_3', 'field_5f52e9a23c0cc'),
(138, 47346, '_edit_last', '1'),
(139, 47346, '_edit_lock', '1600285208:1'),
(140, 47347, '_wp_attached_file', '2020/09/zurb.jpg'),
(141, 47347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:514;s:6:\"height\";i:379;s:4:\"file\";s:16:\"2020/09/zurb.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"zurb-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"zurb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 47347, '_wp_attachment_image_alt', 'Zurb Foundation'),
(143, 47346, 'services', 'Social Media Strategy, Design and Development'),
(144, 47346, '_services', 'field_5f52e8ba96e7a'),
(145, 47346, 'client', 'Zurb Foundation'),
(146, 47346, '_client', 'field_5f52e912a3af2'),
(147, 47346, 'site_link', 'https://get.foundation'),
(148, 47346, '_site_link', 'field_5f52e92317715'),
(149, 47346, 'image_1', '47347'),
(150, 47346, '_image_1', 'field_5f52e93953049'),
(151, 47346, 'image_2', ''),
(152, 47346, '_image_2', 'field_5f52e9963c0cb'),
(153, 47346, 'image_3', ''),
(154, 47346, '_image_3', 'field_5f52e9a23c0cc'),
(155, 47331, '_wp_old_date', '2020-09-04'),
(156, 47346, '_wp_old_date', '2020-09-07'),
(166, 47350, '_menu_item_type', 'post_type_archive'),
(167, 47350, '_menu_item_menu_item_parent', '0'),
(168, 47350, '_menu_item_object_id', '-28'),
(169, 47350, '_menu_item_object', 'case_studies'),
(170, 47350, '_menu_item_target', ''),
(171, 47350, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 47350, '_menu_item_xfn', ''),
(173, 47350, '_menu_item_url', ''),
(188, 47354, '_wp_attached_file', '2020/09/iconfinder_Circled_Facebook_svg_5279111.png'),
(189, 47354, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:51:\"2020/09/iconfinder_Circled_Facebook_svg_5279111.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"iconfinder_Circled_Facebook_svg_5279111-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"iconfinder_Circled_Facebook_svg_5279111-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:49:\"iconfinder_Circled_Facebook_svg_5279111-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:49:\"iconfinder_Circled_Facebook_svg_5279111-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:49:\"iconfinder_Circled_Facebook_svg_5279111-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 47355, '_wp_attached_file', '2020/09/hollow-cut-twitter.svg'),
(198, 47356, '_wp_attached_file', '2020/09/hollow-cut-facebook.svg'),
(199, 47357, '_wp_attached_file', '2020/09/hollow-cut-github.svg'),
(200, 47358, '_wp_attached_file', '2020/09/hollow-cut-google.svg'),
(201, 47359, '_wp_attached_file', '2020/09/hollow-cut-instagram.svg'),
(202, 47360, '_wp_attached_file', '2020/09/hollow-cut-linkedin.svg'),
(203, 47361, '_wp_attached_file', '2020/09/hollow-cut-picasa.svg'),
(204, 47362, '_wp_attached_file', '2020/09/hollow-cut-pinterest.svg'),
(205, 47363, '_wp_attached_file', '2020/09/hollow-cut-rss-feeds.svg'),
(206, 47364, '_wp_attached_file', '2020/09/hollow-cut-share.svg'),
(207, 47365, '_wp_attached_file', '2020/09/hollow-cut-snapchat.svg'),
(208, 47366, '_wp_attached_file', '2020/09/hollow-cut-behance.svg'),
(209, 47367, '_wp_attached_file', '2020/09/hollow-cut-vimeo.svg'),
(210, 47368, '_wp_attached_file', '2020/09/hollow-cut-youtube.svg'),
(211, 47369, '_menu_item_type', 'custom'),
(212, 47369, '_menu_item_menu_item_parent', '0'),
(213, 47369, '_menu_item_object_id', '47369'),
(214, 47369, '_menu_item_object', 'custom'),
(215, 47369, '_menu_item_target', ''),
(216, 47369, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 47369, '_menu_item_xfn', ''),
(218, 47369, '_menu_item_url', 'http://twitter.com/skillcrush'),
(220, 47370, '_menu_item_type', 'custom'),
(221, 47370, '_menu_item_menu_item_parent', '0'),
(222, 47370, '_menu_item_object_id', '47370'),
(223, 47370, '_menu_item_object', 'custom'),
(224, 47370, '_menu_item_target', ''),
(225, 47370, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 47370, '_menu_item_xfn', ''),
(227, 47370, '_menu_item_url', 'http://facebook.com/skillcrush'),
(229, 47371, '_menu_item_type', 'custom'),
(230, 47371, '_menu_item_menu_item_parent', '0'),
(231, 47371, '_menu_item_object_id', '47371'),
(232, 47371, '_menu_item_object', 'custom'),
(233, 47371, '_menu_item_target', ''),
(234, 47371, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 47371, '_menu_item_xfn', ''),
(236, 47371, '_menu_item_url', 'http://linkedin.com/skillcrush'),
(238, 47369, 'menu-icons', 'a:8:{s:4:\"type\";s:2:\"fa\";s:4:\"icon\";s:10:\"fa-twitter\";s:10:\"hide_label\";s:1:\"1\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.5\";s:9:\"svg_width\";s:1:\"3\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(239, 47370, 'menu-icons', 'a:8:{s:4:\"type\";s:2:\"fa\";s:4:\"icon\";s:11:\"fa-facebook\";s:10:\"hide_label\";s:1:\"1\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.5\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(240, 47371, 'menu-icons', 'a:8:{s:4:\"type\";s:2:\"fa\";s:4:\"icon\";s:11:\"fa-linkedin\";s:10:\"hide_label\";s:1:\"1\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.5\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(241, 47372, '_edit_lock', '1641931636:1'),
(242, 47372, '_edit_last', '1'),
(243, 47372, 'ninja_forms_form', '1'),
(244, 47375, '_menu_item_type', 'post_type'),
(245, 47375, '_menu_item_menu_item_parent', '0'),
(246, 47375, '_menu_item_object_id', '47372'),
(247, 47375, '_menu_item_object', 'page'),
(248, 47375, '_menu_item_target', ''),
(249, 47375, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 47375, '_menu_item_xfn', ''),
(251, 47375, '_menu_item_url', ''),
(260, 47380, '_edit_lock', '1641931714:1'),
(261, 47380, '_edit_last', '1'),
(262, 47384, '_edit_last', '1'),
(263, 47384, '_edit_lock', '1600273681:1'),
(264, 47399, '_wp_attached_file', '2020/09/bullseye.png'),
(265, 47399, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:216;s:4:\"file\";s:20:\"2020/09/bullseye.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullseye-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 47399, '_wp_attachment_image_alt', 'Bulls Eye'),
(267, 47400, '_wp_attached_file', '2020/09/atom.png'),
(268, 47400, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:216;s:4:\"file\";s:16:\"2020/09/atom.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"atom-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 47400, '_wp_attachment_image_alt', 'atom'),
(270, 47401, '_wp_attached_file', '2020/09/like.png'),
(271, 47401, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:216;s:4:\"file\";s:16:\"2020/09/like.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"like-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 47401, '_wp_attachment_image_alt', 'Thumb\'s up'),
(273, 47402, '_wp_attached_file', '2020/09/design.png'),
(274, 47402, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:216;s:4:\"file\";s:18:\"2020/09/design.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"design-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 47402, '_wp_attachment_image_alt', 'Magic Wand'),
(276, 47380, 'service_1', 'Content Strategy'),
(277, 47380, '_service_1', 'field_5f612d625fa03'),
(278, 47380, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(279, 47380, '_descriptor_1', 'field_5f612d9b619d0'),
(280, 47380, 'icon_1', '47399'),
(281, 47380, '_icon_1', 'field_5f612dad619d1'),
(282, 47380, 'service_2', 'Influencer Mapping'),
(283, 47380, '_service_2', 'field_5f612db8619d2'),
(284, 47380, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(285, 47380, '_descriptor_2', 'field_5f612dc0619d3'),
(286, 47380, 'image_2', '47400'),
(287, 47380, '_image_2', 'field_5f612dd6619d4'),
(288, 47380, 'service_3', 'Social Media Strategy'),
(289, 47380, '_service_3', 'field_5f612de2619d5'),
(290, 47380, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(291, 47380, '_descriptor_3', 'field_5f612df1619d6'),
(292, 47380, 'icon_3', '47401'),
(293, 47380, '_icon_3', 'field_5f612dff619d7'),
(294, 47380, 'service_4', 'Design and Development'),
(295, 47380, '_service_4', 'field_5f612e34619d8'),
(296, 47380, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(297, 47380, '_descriptor_4', 'field_5f612e4d619d9'),
(298, 47380, 'icon_4', '47402'),
(299, 47380, '_icon_4', 'field_5f612e60619da'),
(300, 47380, '_', 'field_5f612e71619db'),
(301, 47404, 'service_1', 'Content Strategy'),
(302, 47404, '_service_1', 'field_5f612d625fa03'),
(303, 47404, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(304, 47404, '_descriptor_1', 'field_5f612d9b619d0'),
(305, 47404, 'icon_1', '47399'),
(306, 47404, '_icon_1', 'field_5f612dad619d1'),
(307, 47404, 'service_2', 'Influencer Mapping'),
(308, 47404, '_service_2', 'field_5f612db8619d2'),
(309, 47404, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(310, 47404, '_descriptor_2', 'field_5f612dc0619d3'),
(311, 47404, 'image_2', '47400'),
(312, 47404, '_image_2', 'field_5f612dd6619d4'),
(313, 47404, 'service_3', 'Social Media Strategy'),
(314, 47404, '_service_3', 'field_5f612de2619d5'),
(315, 47404, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(316, 47404, '_descriptor_3', 'field_5f612df1619d6'),
(317, 47404, 'icon_3', '47401'),
(318, 47404, '_icon_3', 'field_5f612dff619d7'),
(319, 47404, 'service_4', 'Design and Development'),
(320, 47404, '_service_4', 'field_5f612e34619d8'),
(321, 47404, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(322, 47404, '_descriptor_4', 'field_5f612e4d619d9'),
(323, 47404, 'icon_4', '47402'),
(324, 47404, '_icon_4', 'field_5f612e60619da'),
(325, 47405, 'service_1', 'Content Strategy'),
(326, 47405, '_service_1', 'field_5f612d625fa03'),
(327, 47405, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(328, 47405, '_descriptor_1', 'field_5f612d9b619d0'),
(329, 47405, 'icon_1', '47399'),
(330, 47405, '_icon_1', 'field_5f612dad619d1'),
(331, 47405, 'service_2', 'Influencer Mapping'),
(332, 47405, '_service_2', 'field_5f612db8619d2'),
(333, 47405, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(334, 47405, '_descriptor_2', 'field_5f612dc0619d3'),
(335, 47405, 'image_2', '47400'),
(336, 47405, '_image_2', 'field_5f612dd6619d4'),
(337, 47405, 'service_3', 'Social Media Strategy'),
(338, 47405, '_service_3', 'field_5f612de2619d5'),
(339, 47405, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(340, 47405, '_descriptor_3', 'field_5f612df1619d6'),
(341, 47405, 'icon_3', '47401'),
(342, 47405, '_icon_3', 'field_5f612dff619d7'),
(343, 47405, 'service_4', 'Design and Development'),
(344, 47405, '_service_4', 'field_5f612e34619d8'),
(345, 47405, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(346, 47405, '_descriptor_4', 'field_5f612e4d619d9'),
(347, 47405, 'icon_4', '47402'),
(348, 47405, '_icon_4', 'field_5f612e60619da'),
(349, 47406, 'service_1', 'Content Strategy'),
(350, 47406, '_service_1', 'field_5f612d625fa03'),
(351, 47406, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(352, 47406, '_descriptor_1', 'field_5f612d9b619d0'),
(353, 47406, 'icon_1', '47399'),
(354, 47406, '_icon_1', 'field_5f612dad619d1'),
(355, 47406, 'service_2', 'Influencer Mapping'),
(356, 47406, '_service_2', 'field_5f612db8619d2'),
(357, 47406, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(358, 47406, '_descriptor_2', 'field_5f612dc0619d3'),
(359, 47406, 'image_2', '47400'),
(360, 47406, '_image_2', 'field_5f612dd6619d4'),
(361, 47406, 'service_3', 'Social Media Strategy'),
(362, 47406, '_service_3', 'field_5f612de2619d5'),
(363, 47406, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(364, 47406, '_descriptor_3', 'field_5f612df1619d6'),
(365, 47406, 'icon_3', '47401'),
(366, 47406, '_icon_3', 'field_5f612dff619d7'),
(367, 47406, 'service_4', 'Design and Development'),
(368, 47406, '_service_4', 'field_5f612e34619d8'),
(369, 47406, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(370, 47406, '_descriptor_4', 'field_5f612e4d619d9'),
(371, 47406, 'icon_4', '47402'),
(372, 47406, '_icon_4', 'field_5f612e60619da'),
(373, 47407, 'service_1', 'Content Strategy'),
(374, 47407, '_service_1', 'field_5f612d625fa03'),
(375, 47407, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(376, 47407, '_descriptor_1', 'field_5f612d9b619d0'),
(377, 47407, 'icon_1', '47399'),
(378, 47407, '_icon_1', 'field_5f612dad619d1'),
(379, 47407, 'service_2', 'Influencer Mapping'),
(380, 47407, '_service_2', 'field_5f612db8619d2'),
(381, 47407, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(382, 47407, '_descriptor_2', 'field_5f612dc0619d3'),
(383, 47407, 'image_2', '47400'),
(384, 47407, '_image_2', 'field_5f612dd6619d4'),
(385, 47407, 'service_3', 'Social Media Strategy'),
(386, 47407, '_service_3', 'field_5f612de2619d5'),
(387, 47407, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(388, 47407, '_descriptor_3', 'field_5f612df1619d6'),
(389, 47407, 'icon_3', '47401'),
(390, 47407, '_icon_3', 'field_5f612dff619d7'),
(391, 47407, 'service_4', 'Design and Development'),
(392, 47407, '_service_4', 'field_5f612e34619d8'),
(393, 47407, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(394, 47407, '_descriptor_4', 'field_5f612e4d619d9'),
(395, 47407, 'icon_4', '47402'),
(396, 47407, '_icon_4', 'field_5f612e60619da'),
(397, 47408, 'service_1', 'Content Strategy'),
(398, 47408, '_service_1', 'field_5f612d625fa03'),
(399, 47408, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(400, 47408, '_descriptor_1', 'field_5f612d9b619d0'),
(401, 47408, 'icon_1', '47399'),
(402, 47408, '_icon_1', 'field_5f612dad619d1'),
(403, 47408, 'service_2', 'Influencer Mapping'),
(404, 47408, '_service_2', 'field_5f612db8619d2'),
(405, 47408, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(406, 47408, '_descriptor_2', 'field_5f612dc0619d3'),
(407, 47408, 'image_2', '47400'),
(408, 47408, '_image_2', 'field_5f612dd6619d4'),
(409, 47408, 'service_3', 'Social Media Strategy'),
(410, 47408, '_service_3', 'field_5f612de2619d5'),
(411, 47408, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(412, 47408, '_descriptor_3', 'field_5f612df1619d6'),
(413, 47408, 'icon_3', '47401'),
(414, 47408, '_icon_3', 'field_5f612dff619d7'),
(415, 47408, 'service_4', 'Design and Development'),
(416, 47408, '_service_4', 'field_5f612e34619d8'),
(417, 47408, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(418, 47408, '_descriptor_4', 'field_5f612e4d619d9'),
(419, 47408, 'icon_4', '47402'),
(420, 47408, '_icon_4', 'field_5f612e60619da'),
(421, 47411, 'service_1', 'Content Strategy'),
(422, 47411, '_service_1', 'field_5f612d625fa03'),
(423, 47411, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(424, 47411, '_descriptor_1', 'field_5f612d9b619d0'),
(425, 47411, 'icon_1', '47399'),
(426, 47411, '_icon_1', 'field_5f612dad619d1'),
(427, 47411, 'service_2', 'Influencer Mapping'),
(428, 47411, '_service_2', 'field_5f612db8619d2'),
(429, 47411, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(430, 47411, '_descriptor_2', 'field_5f612dc0619d3'),
(431, 47411, 'image_2', '47400'),
(432, 47411, '_image_2', 'field_5f612dd6619d4'),
(433, 47411, 'service_3', 'Social Media Strategy'),
(434, 47411, '_service_3', 'field_5f612de2619d5'),
(435, 47411, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(436, 47411, '_descriptor_3', 'field_5f612df1619d6'),
(437, 47411, 'icon_3', '47401'),
(438, 47411, '_icon_3', 'field_5f612dff619d7'),
(439, 47411, 'service_4', 'Design and Development'),
(440, 47411, '_service_4', 'field_5f612e34619d8'),
(441, 47411, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(442, 47411, '_descriptor_4', 'field_5f612e4d619d9'),
(443, 47411, 'icon_4', '47402'),
(444, 47411, '_icon_4', 'field_5f612e60619da'),
(445, 47412, '_menu_item_type', 'post_type'),
(446, 47412, '_menu_item_menu_item_parent', '0'),
(447, 47412, '_menu_item_object_id', '47380'),
(448, 47412, '_menu_item_object', 'page'),
(449, 47412, '_menu_item_target', ''),
(450, 47412, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(451, 47412, '_menu_item_xfn', ''),
(452, 47412, '_menu_item_url', ''),
(454, 47416, '_edit_last', '1'),
(455, 47416, '_edit_lock', '1600285417:1'),
(458, 47427, '_edit_last', '1'),
(459, 47427, '_edit_lock', '1600721652:1'),
(460, 47427, 'service_icon', '47399'),
(461, 47427, '_service_icon', 'field_5f624a99e3ca1'),
(462, 47427, 'descriptor', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(463, 47427, '_descriptor', 'field_5f624adae3ca3'),
(464, 47427, '_', 'field_5f624affe3ca4'),
(465, 47428, '_edit_last', '1'),
(466, 47428, '_edit_lock', '1600721636:1'),
(467, 47428, 'service_icon', '47400'),
(468, 47428, '_service_icon', 'field_5f624a99e3ca1'),
(469, 47428, 'descriptor', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(470, 47428, '_descriptor', 'field_5f624adae3ca3'),
(471, 47428, '_', 'field_5f624affe3ca4'),
(472, 47429, '_edit_last', '1'),
(473, 47429, '_edit_lock', '1600721664:1'),
(474, 47429, 'service_icon', '47401'),
(475, 47429, '_service_icon', 'field_5f624a99e3ca1'),
(476, 47429, 'descriptor', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(477, 47429, '_descriptor', 'field_5f624adae3ca3'),
(478, 47429, '_', 'field_5f624affe3ca4'),
(479, 47430, '_edit_last', '1'),
(480, 47430, '_edit_lock', '1600724309:1'),
(481, 47430, 'service_icon', '47402'),
(482, 47430, '_service_icon', 'field_5f624a99e3ca1'),
(483, 47430, 'descriptor', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(484, 47430, '_descriptor', 'field_5f624adae3ca3'),
(485, 47430, '_', 'field_5f624affe3ca4'),
(486, 47430, 'service', 'Design and Development'),
(487, 47430, '_service', 'field_5f625e6e8b26b'),
(488, 47428, 'service', 'Influencer Mapping'),
(489, 47428, '_service', 'field_5f625e6e8b26b'),
(490, 47427, 'service', 'Content Strategy'),
(491, 47427, '_service', 'field_5f625e6e8b26b'),
(504, 47429, 'service', 'Social Media Strategy'),
(505, 47429, '_service', 'field_5f625e6e8b26b'),
(506, 47433, 'service_1', 'Content Strategy'),
(507, 47433, '_service_1', 'field_5f612d625fa03'),
(508, 47433, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(509, 47433, '_descriptor_1', 'field_5f612d9b619d0'),
(510, 47433, 'icon_1', '47399'),
(511, 47433, '_icon_1', 'field_5f612dad619d1'),
(512, 47433, 'service_2', 'Influencer Mapping'),
(513, 47433, '_service_2', 'field_5f612db8619d2'),
(514, 47433, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(515, 47433, '_descriptor_2', 'field_5f612dc0619d3'),
(516, 47433, 'image_2', '47400'),
(517, 47433, '_image_2', 'field_5f612dd6619d4'),
(518, 47433, 'service_3', 'Social Media Strategy'),
(519, 47433, '_service_3', 'field_5f612de2619d5'),
(520, 47433, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(521, 47433, '_descriptor_3', 'field_5f612df1619d6'),
(522, 47433, 'icon_3', '47401'),
(523, 47433, '_icon_3', 'field_5f612dff619d7'),
(524, 47433, 'service_4', 'Design and Development'),
(525, 47433, '_service_4', 'field_5f612e34619d8'),
(526, 47433, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(527, 47433, '_descriptor_4', 'field_5f612e4d619d9'),
(528, 47433, 'icon_4', '47402'),
(529, 47433, '_icon_4', 'field_5f612e60619da'),
(531, 47435, '_edit_lock', '1641931534:1'),
(532, 47435, '_edit_last', '1'),
(533, 47439, '_mc4wp_settings', 'a:9:{s:5:\"lists\";a:1:{i:0;s:10:\"14e388b24c\";}s:15:\"required_fields\";s:5:\"EMAIL\";s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";s:15:\"subscriber_tags\";s:0:\"\";s:18:\"hide_after_success\";s:1:\"0\";s:8:\"redirect\";s:0:\"\";s:3:\"css\";s:1:\"0\";}'),
(534, 47439, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(535, 47439, 'text_invalid_email', 'Please provide a valid email address.'),
(536, 47439, 'text_required_field_missing', 'Please fill in the required fields.'),
(537, 47439, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(538, 47439, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(539, 47439, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(540, 47439, 'text_not_subscribed', 'Given email address is not subscribed.'),
(541, 47439, 'text_no_lists_selected', 'Please select at least one list.'),
(542, 47439, 'text_updated', 'Thank you, your records have been updated!'),
(543, 47440, 'service_1', 'Content Strategy'),
(544, 47440, '_service_1', 'field_5f612d625fa03'),
(545, 47440, 'descriptor_1', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs.'),
(546, 47440, '_descriptor_1', 'field_5f612d9b619d0'),
(547, 47440, 'icon_1', '47399'),
(548, 47440, '_icon_1', 'field_5f612dad619d1'),
(549, 47440, 'service_2', 'Influencer Mapping'),
(550, 47440, '_service_2', 'field_5f612db8619d2'),
(551, 47440, 'descriptor_2', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(552, 47440, '_descriptor_2', 'field_5f612dc0619d3'),
(553, 47440, 'image_2', '47400'),
(554, 47440, '_image_2', 'field_5f612dd6619d4'),
(555, 47440, 'service_3', 'Social Media Strategy'),
(556, 47440, '_service_3', 'field_5f612de2619d5'),
(557, 47440, 'descriptor_3', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami'),
(558, 47440, '_descriptor_3', 'field_5f612df1619d6'),
(559, 47440, 'icon_3', '47401'),
(560, 47440, '_icon_3', 'field_5f612dff619d7'),
(561, 47440, 'service_4', 'Design and Development'),
(562, 47440, '_service_4', 'field_5f612e34619d8'),
(563, 47440, 'descriptor_4', 'Bacon ipsum dolor sit amet strip steak jowl pancetta, cow turkey salami sausage fatback boudin biltong frankfurter shoulder pork turducken spare ribs. Ground round t-bone swine shoulder, cow bacon sausage turkey meatloaf. Tongue ball tip corned beef turkey. Leberkas shoulder pork chop doner venison meatball pig chicken spare.'),
(564, 47440, '_descriptor_4', 'field_5f612e4d619d9'),
(565, 47440, 'icon_4', '47402'),
(566, 47440, '_icon_4', 'field_5f612e60619da'),
(567, 47380, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";s:1:\"1\";s:16:\"vertical_sharing\";s:1:\"1\";}'),
(568, 47439, '_wp_old_date', '2020-10-01'),
(569, 47441, '_wp_attached_file', '2020/10/Brooklyn.png'),
(570, 47441, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:98;s:4:\"file\";s:20:\"2020/10/Brooklyn.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Brooklyn-150x98.png\";s:5:\"width\";i:150;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(571, 47442, '_wp_attached_file', '2020/10/Rails.png'),
(572, 47442, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:98;s:4:\"file\";s:17:\"2020/10/Rails.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Rails-150x98.png\";s:5:\"width\";i:150;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(573, 47443, '_wp_attached_file', '2020/10/Etsy.png'),
(574, 47443, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:98;s:4:\"file\";s:16:\"2020/10/Etsy.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"Etsy-150x98.png\";s:5:\"width\";i:150;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 47329, '_edit_lock', '1622223069:1'),
(578, 47329, '_edit_last', '1'),
(580, 47446, 'thank_you_cta', ''),
(581, 47446, '_thank_you_cta', 'field_531f10983e6d6'),
(582, 47446, 'main-image', 'http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg'),
(583, 47446, '_main-image', 'field_529a9c2bc03e6'),
(584, 47446, 'subtitle', ''),
(585, 47446, '_subtitle', 'field_529a9dc8eea2f'),
(586, 47446, 'tweet', 'How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush'),
(587, 47446, '_tweet', 'field_53a1a27fe6609'),
(588, 47446, 'tweet-link', 'http://ctt.ec/V4a7l'),
(589, 47446, '_tweet-link', 'field_53a1a291e660a'),
(590, 47329, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(593, 47448, 'thank_you_cta', ''),
(594, 47448, '_thank_you_cta', 'field_531f10983e6d6'),
(595, 47448, 'main-image', 'http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg'),
(596, 47448, '_main-image', 'field_529a9c2bc03e6'),
(597, 47448, 'subtitle', ''),
(598, 47448, '_subtitle', 'field_529a9dc8eea2f'),
(599, 47448, 'tweet', 'How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush'),
(600, 47448, '_tweet', 'field_53a1a27fe6609'),
(601, 47448, 'tweet-link', 'http://ctt.ec/V4a7l'),
(602, 47448, '_tweet-link', 'field_53a1a291e660a'),
(603, 47435, '_heateor_sss_meta', 'a:1:{s:16:\"vertical_sharing\";s:1:\"1\";}'),
(604, 6, '_heateor_sss_meta', 'a:1:{s:16:\"vertical_sharing\";s:1:\"1\";}'),
(605, 47372, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";s:1:\"1\";s:16:\"vertical_sharing\";s:1:\"1\";}'),
(606, 5, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";s:1:\"1\";s:16:\"vertical_sharing\";s:1:\"1\";}'),
(607, 39, '_edit_lock', '1641931782:1'),
(610, 39, '_pingme', '1'),
(611, 39, '_heateor_sss_meta', 'a:1:{s:16:\"vertical_sharing\";s:1:\"1\";}'),
(612, 39, 'ssb_old_counts', 'a:5:{s:7:\"twitter\";i:0;s:9:\"pinterest\";i:0;s:7:\"fbshare\";i:0;s:6:\"reddit\";i:0;s:6:\"tumblr\";N;}'),
(613, 39, 'ssb_total_counts', '0'),
(614, 39, 'ssb_cache_timestamp', '456165'),
(615, 36, 'ssb_old_counts', 'a:5:{s:7:\"twitter\";i:0;s:9:\"pinterest\";i:0;s:7:\"fbshare\";i:0;s:6:\"reddit\";i:0;s:6:\"tumblr\";N;}'),
(616, 36, 'ssb_total_counts', '0'),
(617, 36, 'ssb_cache_timestamp', '456165');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` mediumtext NOT NULL,
  `post_excerpt` mediumtext NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` mediumtext NOT NULL,
  `pinged` mediumtext NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '<h1>Accelerate Your Marketing.</h1>\n<h3>Save time. Increase sales. Make customers happier.</h3>', 'Homepage', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2022-01-11 20:08:00', '2022-01-11 20:08:00', '', 0, 'http://localhost:8888/accelerate/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2022-01-11 20:06:38', '2022-01-11 20:06:38', '', 0, 'http://localhost:8888/accelerate/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 5, 'http://localhost:8888/accelerate/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 6, 'http://localhost:8888/accelerate/?p=8', 0, 'revision', '', 0),
(10, 1, '2014-11-09 15:27:41', '2014-11-09 15:27:41', ' ', '', '', 'publish', 'open', 'closed', '', '10', '', '', '2020-09-21 21:42:18', '2020-09-21 21:42:18', '', 0, 'http://localhost:8888/accelerate/?p=10', 3, 'nav_menu_item', '', 0),
(16, 1, '2014-11-09 20:19:07', '2014-11-09 20:19:07', '<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-09 20:19:07', '2014-11-09 20:19:07', '', 5, 'http://localhost:8888/accelerate/2014/11/09/5-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2014-10-12 17:45:15', '2014-10-12 17:45:15', '<ol>\n	<li><a href=\"http://skillcrush.com\">Skillcrush</a> - just the best!</li>\n	<li><a href=\"http://tryruby.org\">Try Ruby</a> - I love WHY!</li>\n	<li><a href=\"http://www.htmlandcssbook.com/\">Jon Duckett</a> - Best books on programming. Period.</li>\n	<li><a href=\"http://railsgirls.com\">Rails Girls</a> - Super cool, international code learning organization.</li>\n	<li><a href=\"http://girldevelopit.com\">Girl Develop It </a>- Equally awesome in-person workshops all over the US.</li>\n	<li><a href=\"codeschool.com\">Code School</a> - Great advanced tutorials and learning.</li>\n</ol>', 'My 5 Favorite Code Learning Resources', '', 'publish', 'open', 'open', '', 'my-5-favorite-code-learning-resources', '', '', '2014-10-12 17:45:15', '2014-10-12 17:45:15', '', 0, 'http://localhost:8888/starter/?p=19', 0, 'post', '', 0),
(26, 1, '2014-10-12 18:07:34', '2014-10-12 18:07:34', 'As you wait impatiently in line for your <a href=\"http://www.eonline.com/news/577755/this-is-why-starbucks-baristas-spell-your-name-wrong-on-coffee-cups\" target=\"_blank\">mislabeled</a> coffee cup (you’re already going to be 20 minutes late to the office), take a step back and think: THIS could be your office. You could skip the commute, bring your laptop and charger, and power through your to do list from anywhere, wherever you are.\n\nWorking remotely – whether from home, Starbucks, or another creative place – is booming. A Virgin Media Business <a href=\"http://thenextweb.com/uk/2012/02/22/home-sweet-home-60-of-uk-employees-could-be-working-remotely-within-a-decade/\" target=\"_blank\">survey</a> recently predicted that 60% of office-based employees will regularly work from home by 2022. And a separate survey featured in<a href=\"http://www.theguardian.com/money/work-blog/2014/apr/30/what-happened-to-remote-working\">The Guardian</a> found that ⅓ of employees think commuting will be unheard of by 2036.\n\nBut, that’s the future and this is today, you say to yourself. You don’t have the skills or the resources to find a gig that would give you that kind of flexibility. That’s for 20-somethings working on a startup who code in hoodies, or stay-at-home moms who work as part-time assistants.\n\nWrong! In fact, completely wrong. The <a href=\"http://www.nytimes.com/2014/03/08/your-money/when-working-in-your-pajamas-is-more-productive.html?_r=0\">typical remote employee</a> is a 40-something college graduate earning nearly $60,000 a year at a company with 100+ employees, according to the Census Bureau’s annual American Community Survey.\n\nIf working remotely tickles your fancy, check out this list of 25 great sites for finding remote work.\n<h1>Remote-Work Specific</h1>\n<h3>1. <a href=\"http://www.flexjobs.com/\">FlexJobs</a></h3>\nFlexJobs has over 50 career categories, with jobs ranging from freelance to full-time, entry-level to executive. The best part? They screen the jobs before posting, so you don’t have to dig through shady opportunities. The site currently hosts more than 20K job listings including part-time and freelance opportunities!<strong><strong> </strong></strong>\n<h3>2. <a href=\"https://weworkremotely.com/\">We Work Remotely</a></h3>\nSponsored by <a href=\"http://37signals.com/remote/\">Remote</a>, the book by famed 37Signals founders, this job board is a catch-all of remote jobs from customer service to web design to programming. With the catchy subtag “Office not required,” and the cache of the 37Signals brand behind it, this site is sure to host remote opportunities at some of the hottest tech companies.\n<h3>3. <a href=\"http://workingnomads.co/\">Working Nomads</a></h3>\nWorkingNomads (formerly goRemotely) delivers a curated list of remote jobs right to your inbox. Choose daily or weekly emails to make the remote job search come to you.\n<h3>4. <a href=\"https://www.staff.com/\">Staff.com</a></h3>\nInstead of focusing on contract jobs, Staff.com features primarily long-term telecommuting jobs in a range of industries from persional assistants to programming. Choose to work either 80 hours a month (part-time) or 160 hours a month (full-time), and the site recruiters start matching you with employers!\n<h3>5. <a href=\"http://www.skipthedrive.com/\">Skip The Drive</a></h3>\nWith a great name, a great resources tab (listing authors to follow and sites to check for help in the remote job world), and a decent listing of remote jobs, this site is true to its eponymous mission. Use what the site provides, you can completely skip that ugly morning commute.\n<h3>6. <a href=\"http://www.virtualvocations.com/\">Virtual Vocations</a></h3>\nThis job board features only telecommuting jobs from technical writers to paralegals. Started by a stay-at-home mom frustrated with the job search for legitimate remote jobs, the company is still run by an entirely remote team. Plus, the blog has great tips, such as <a href=\"http://www.virtualvocations.com/blog/telecommuting-job-search-help/tips-taking-seasonal-telecommute-job/\">a recent article</a> on how to take on a remote gig for the holiday season.\n\n&nbsp;\n<h1>Tech</h1>\n<h3>7. <a href=\"http://www.authenticjobs.com/\">Authentic Jobs</a></h3>\nThe job board for web professionals. Just click the “wireless logo” (you’ll recognize it) and filter by remote jobs. Beautifully designed and easy to use, as you’d expect from a job board for creatives and developers!\n<h3>8. <a href=\"https://dribbble.com/jobs\">Dribble</a></h3>\nDribble is a great site for designers to find their next gig. There’s a location tab right on top where you can click “remote / anywhere” and be off to the races finding your next work-from-home gig.\n<h3>9. <a href=\"https://angel.co/\">AngelList</a></h3>\nAlways dreamed of working for a startup, but don’t live in a startup city hub? Head over to AngelList, a top site for startup jobs. When you search for a job on AngelList, click on “Job Type” and choose “Remote OK.”\n<h3>10. <a href=\"http://careers.stackoverflow.com/\">Stack Overflow</a></h3>\nStack Overflow is a go-to jobs board for many top tech talent, especially web developers. Type in “remote” in the location field and you’ll bring up a list of more than 2,000 jobs that fit the bill.\n<h3>11. <a href=\"http://jobs.rubynow.com/\">Ruby Now</a></h3>\nA job board entirely dedicated to Ruby developers. Once you graduate from the <a href=\"http://skillcrush.com/blueprint/web-developer/\">Web Developer Blueprint</a>, and watch Adda’s video on <a href=\"https://www.youtube.com/watch?v=p5Lj3y3mOxw\">how to get hired as a Ruby Developer</a>, head on over and get to work landing a remote gig here.\n\n&nbsp;\n<h1>Freelance and Contract</h1>\n<h3>12. <a href=\"http://www.skillbridge.co/\">SkillBridge</a></h3>\nFocused on connecting top-tier former consultants with short-term engagements for high impact corporations, the SkillBridge model is taking the traditional consulting world by storm. As a consultant, you can focus on only remote work and only on projects (and with clients) you are passionate about. Whether you bring e-mail marketing expertise or are a whiz at building financial models, the SkillBridge site and model is a remote-worker-dream-come-true.\n<h3>13. <a href=\"https://www.fiverr.com/\">Fiverr</a></h3>\nWith jobs starting at just $5 a pop, Fiverr is an amazing site to find your first gigs and build up a portfolio FAST. The site focuses on “gigs” or “micro-jobs,” such as editing an image in photoshop, designing a Facebook ad, or brainstorming SEO-rank-worthy article titles.\n<h3>14. <a href=\"https://www.odesk.com/\">oDesk</a></h3>\noDesk features remote jobs in a suite of categories: from virtual assistants to mobile app developers. A little something extra to sweeten the deal: oDesk claims that more than 1 million companies, from Pinterest to OpenTable, use the site to hire remote freelancers.\n<h3>15. <a href=\"http://www.guru.com/\">Guru</a></h3>\nWith the tagline “Work Your Way,” Guru allows freelancers to build profiles with portfolios of work. Employers find your profile, or search/apply for jobs. The homepage features a wide range of roles from WordPress Developers to  Logo Designers.\n<h3>16. <a href=\"https://www.elance.com/\">Elance</a></h3>\nMore than 300K programmers and more than 200K designers use Elance to connect with remote job opportunities. Microsoft, Cisco, and Mozilla are just a few of the companies hiring contract workers on Elance.\n<h3>17. <a href=\"https://www.freelancer.com/\">Freelancer.com</a></h3>\nClaiming to be “The World’s Largest Outsourcing Marketplace,” Freelancer.com is chock full of remote freelancing gigs. With over 13 million users, it features jobs for PHP developers, content writers, and web designers alike. Make a profile and start bidding on jobs!\n<h3>18. <a href=\"http://www.freelancermap.com/\">Freelancer Map</a></h3>\nSearch thousands of IT projects that are remote, and almost always contract. This site has a global reach with projects at companies from Holland to Spain to Ohio!\n\n&nbsp;\n<h1>General</h1>\n<h3>19. <a href=\"https://www.themuse.com/jobs\">The Muse</a></h3>\nWith a gorgeous user interface and fun-to-explore information about all the companies and jobs they feature, The Muse makes the job search easy. Search for the content features on the site that highlight remote opportunities, such as <a href=\"https://www.themuse.com/advice/7-companies-that-let-you-work-from-home\">7 Companies That Let You Work From Home</a>.\n<h3>20. <a href=\"http://www.indeed.com/\">Indeed</a></h3>\nOne of the most robust job boards you can find, Indeed pulls data from around the internet and around the world to bring together jobs. From Product Marketers to a “Technology Productivity Consultant,” Indeed’s 2K+ remote jobs run the gamut.\n<h3>21. <a href=\"http://www.idealist.org/\">Idealist</a></h3>\nFor those who have always wanted to work on public health in Africa, or economic development in India, but weren’t willing to uproot from your friends, family, and country, Idealist.org has the opportunities for you.  You can filter all of your searches by selecting “remote” in the location category.\n<h3>22. <a href=\"http://www.careerbuilder.com/\">Career Builder</a></h3>\nThe Career Builder jobs site is the largest online employment website in the United States! Type in “telecommute” or “remote” as a keyword and find more than 9K part-time, contract, and full-time jobs from brands like Forever 21 Inc, Xerox, and Univision.<strong><strong> </strong></strong>\n<h3>23. <a href=\"http://www.monster.com/\">Monster</a></h3>\nThe first name you think of when you hear the words “job board,” Monster does indeed host a plethora of remote jobs. From remote customer service opportunities to remote user experience designers, there are plenty of options if you’re willing to sift.\n\n&nbsp;\n<h1>Direct Selling</h1>\n<em><strong>Note:</strong> I’d be remiss not to mention the amazing opportunities afforded by direct selling, also known as multi-level marketing. There is real opportunity with these types of jobs to work from home (or anywhere) and make an income. These companies often require upfront buy-in, so be sure to properly evaluate the opportunity before you jump in.</em>\n\n<em>A few of my favorites:</em>\n<h3>24. Beauty: <a href=\"https://www.avon.com/\">Avon</a></h3>\nPerhaps the best-known and most-storied of the direct-selling opportunities, Avon has built an incredible business on the “Avon Lady Model.” Sell Avon beauty products, from lotion to lip gloss, to your friends and neighbors in exchange for the freedom of setting your own hours and working from home. <a href=\"http://www.marykay.com/\">Mary Kay</a> is another skincare and makeup company that offers the opportunity to build your own business in this way.\n<h3>25. Jewelry: <a href=\"http://www.stelladot.com/\">Stella &amp; Dot</a></h3>\nThis jewelry company has a “flexible entrepreneurship” model for stylists: host in-home or online trunk shows to display jewelry to friends. Flexibility and stye in one! If this doesn’t fit your style, there are several jewelry companies providing this type of remote job opportunity including <a href=\"https://www.chloeandisabel.com/\">Chloe &amp; Isabel</a> and <a href=\"http://trend-tribe.com/\">Trend Tribe</a>.', 'The Top 25 Sites For Finding Remote Jobs', '', 'publish', 'open', 'open', '', 'the-top-25-sites-for-finding-remote-jobs', '', '', '2014-10-12 18:07:34', '2014-10-12 18:07:34', '', 0, 'http://localhost:8888/starter/?p=26', 0, 'post', '', 0),
(28, 1, '2014-10-12 18:08:57', '2014-10-12 18:08:57', 'When starting a web site or a blog of any kind on WordPress there are certain plugins that can make your life 1000x easier. Not only will they save you time, but plugins can bring your site to the next level by making it more usable, searchable, and innovative.\n\nSo what is this magical “plugin” we speak of? A plugin is simply a program that you can install to add a <em>specific</em> feature to your website. For WordPress, these plugins are written in PHP and integrate seamlessly with your site.\n<h2>Installing A Plugin</h2>\nInstalling a plugin can be a little bit tricky if you haven’t done it before. First, log in to your WordPress admin page (https://[yourdomain.com]/wp-admin). From the admin dashboard, look to the left sidebar menu. There is an option on that menu to choose called “Plugins.” Click it! You’ll open the plugins settings tab. From here, there are two main ways to install:\n<h3>1.  Search for a plugin in the plugins library</h3>\nWhen you open the plugins setting tab, there is a search box on the main page. Type in the name of the specific plugin you are looking for, or a keyword (i.e. “SEO”) to find a list of options. You can also search by popular, new, favorites, or pre-determined keywords. Once you search, a list of matching results will appear. Research them by clicking “details” or install right away by clicking “install now.”\n\n<a href=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM.png\"><img class=\"alignnone size-large wp-image-21682 aligncenter\" src=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM-1024x375.png\" alt=\"Search for Plugins\" width=\"584\" height=\"213\" /></a>\n<h3>2. Upload your plugin</h3>\nYou can download a plugin as a .zip file to your computer, and then upload it to your site. Click the “upload” tab in the top navigation on the plugins settings tab, choose the file, and voila! Your plugin will upload and install for you. An important note is that you can only upload files in .zip format, so if you get an error message, check that!\n\n<a href=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM.png\"><img class=\"alignnone size-large wp-image-21683 aligncenter\" src=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM-1024x221.png\" alt=\"Upload plugins\" width=\"584\" height=\"126\" /></a>\n\nEvery plugin is slightly different with the setup required once it is installed – some require none at all, and others require a bit of work. Click into your plugin once you install it to make sure you follow the correct steps to get it up and running!\n<h2>Must Have Plugins</h2>\nAs you will see, there are thousands of plugins to choose from. What makes a plugin a must-have? Here’s the criteria we like to use at Skillcrush:\n<ul>\n	<li>Will the plugin make your site faster?</li>\n	<li>Will the plugin reduce spam?</li>\n	<li>Will the plugin help you better accomplish your site goals?</li>\n</ul>\nWe scoured to find you a few wonderfully helpful plugins that will accomplish just that! Try them out to make running your website much easier:\n<h3><a href=\"http://akismet.com/\" target=\"_blank\">Akismet</a></h3>\nThis is a great plugin for getting rid of annoying comment spam. If you are frequently disapproving or deleting spam comments, you need this. [<a href=\"http://akismet.com/\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/google-sitemap-generator/\" target=\"_blank\">Google XML Sitemaps</a></h3>\nThis plugin makes it much easier for search engines to go through your content. And, when a search engine can better index your content, it is more likely to show up in searches! Plus, this plugin notifies search engines whenever you publish a new post. [<a href=\"http://wordpress.org/plugins/google-sitemap-generator/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/flaunt-your-clients-free/\" target=\"_blank\">Flaunt Your Clients</a></h3>\nThis is a fun plugin for web designers to use to make it easy for your clients to show how pleased they are with your work!  It creates a new custom post type specifically for client stories and testimonials. These “client pages” can be sorted by category, linked to blog posts, and more. [<a href=\"http://wordpress.org/plugins/flaunt-your-clients-free/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">WordPress SEO by Yoast</a></h3>\nThis plugin is super useful for ANY blog: it is the ultimate optimization plugin. It enables you to determine how your post will look on Facebook and Google. It also allows you to optimize your page or post for Google search. There is a reason there have been over 7 million downloads to date! [<a href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/slick-social-share-buttons/\" target=\"_blank\">Slick Social Share</a></h3>\nThis plugin will get your stuff shared on social media seamlessly. Plus, it looks gorgeous on your site! [<a href=\"http://wordpress.org/plugins/slick-social-share-buttons/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/w3-total-cache/\" target=\"_blank\">W3 Total Cache</a></h3>\nThis plugin will help your site load faster (which, especially if you have a lot of high-resolution photos or images, is quite important). It has page cache, minification, database caching, CDN integration and browser caching to speed up loading times for site visitors. [<a href=\"https://wordpress.org/plugins/w3-total-cache/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/seo-automatic-links/\" target=\"_blank\">SEO Smart Links</a></h3>\nThis plugin fully automate the internal linking process of your WordPress blog. One of the best ways to keep people on your site and improve SEO is to link between your own site content and posts, and this makes it straightforward and no-brainer. It also can convert specific keywords into internal and affiliate links. [<a href=\"https://wordpress.org/plugins/seo-automatic-links/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/video-capture/\" target=\"_blank\">Video Capture</a></h3>\nThis plugin integrates video into your site in a big way. You simply put a shortcode into any page or post, and users will be able to record short videos, up to three minutes in length. It’s a fun feature to add, if you have a creative way to use it! [<a href=\"https://wordpress.org/plugins/video-capture/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/meet-my-team/\" target=\"_blank\">Meet My Team</a></h3>\nThis is great for showing off who is on your team. This plugin will provide you with a custom post type designed for displaying team members and their info. A shortcode displays the team members in a responsive grid on any page or post you like. Until you take a Skillcrush JavaScript <a href=\"http://skillcrush.com/skillcrush-blueprints/\">class or blueprint</a>, it’s a great shortcut to make your site responsive! [<a href=\"https://wordpress.org/plugins/meet-my-team/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/contact-form-7/\" target=\"_blank\">Contact Form 7</a></h3>\nIf you ever filled out a contact form on a blog, it very well may be through Contact Form. This plugin provides easy contact forms for blogs (i.e. contact us for help / advertising, etc.). It also works in conjunction with Askimet (above!) so there won’t be any spam abuse with these forms. [<a href=\"https://wordpress.org/plugins/contact-form-7/\" target=\"_blank\">Download here</a>]\n\nDo you have any particularly helpful WordPress plugins? We’re always on the lookout for new favorites! Let us know.', '10 WordPress Plugins You Can’t Live Without', '', 'publish', 'open', 'open', '', '10-wordpress-plugins-you-cant-live-without', '', '', '2014-10-12 18:08:57', '2014-10-12 18:08:57', '', 0, 'http://localhost:8888/starter/?p=28', 0, 'post', '', 0),
(31, 1, '2014-10-12 18:10:49', '2014-10-12 18:10:49', 'A great morning routine can really make or break your day. In her book <em><a href=\"http://www.amazon.com/Successful-People-Breakfast-Mornings-ebook/dp/B007K3E2YK/?_encoding=UTF8&amp;camp=1789&amp;creative=9325&amp;linkCode=ur2&amp;tag=marandang-20\" target=\"_blank\">What the Most Successful People Do Before Breakfast</a></em>, Laura Vanderkam writes, “Seizing your mornings is the equivalent of that sound financial advice to pay yourself first.  If you wait until the end of the month to save what you have left, there will be nothing left over.  Likewise, if you wait until the end of the day to do meaningful but not urgent things like exercise, pray, read, ponder how to advance your career or grow your organization, or truly give your family your best, it probably won’t happen.”\n\nEven if you have never considered yourself a morning person, you are going to have to figure out how to work around that as some of the most successful people in the world attribute a lot of their productivity to a stellar morning routine. Check out these kings and queens of technology and their amazing morning routines.\n<h3>Padmasree Warrior,  Cisco Chief Technical and Strategy Officer</h3>\nCan you say early riser? Warrior <a href=\"http://www.lifehack.org/articles/lifestyle/the-daily-routine-of-17-ceos.html\">wakes up at 4:30 a.m</a>., reads email for an hour, checks out the news, exercises, and gets her son ready for school. She is in the office by 8:30 at the latest and starts her workday.\n<h3>David Karp, Founder of Tumblr</h3>\nThe 28 year old founder and CEO of Tumblr, puts off checking his email until he gets to the office around 9:30 am, unlike many of his CEO colleagues. I guess he is of the philosophy that you should not start your day by checking email. As <a class=\"opennew\" href=\"http://www.inc.com/magazine/201106/the-way-i-work-david-karp-of-tumblr.html\" target=\"_blank\">quoted in <em>Inc. Magazine</em></a>, “Reading e-mails at home never feels good or <em>productive</em> . If something urgently needs my attention, someone will call or text me.”\n<h3>Steve Jobs, late Apple CEO</h3>\nJobs spent his mornings re-evaluating his work and his goals in life. <a class=\"opennew\" href=\"http://www.ted.com/talks/steve_jobs_how_to_live_before_you_die.html\" target=\"_blank\">In his speech to a graduating class at Stanford</a>, Jobs said:\n<blockquote>“For the past 33 years I have looked in the mirror every morning and asked myself: ‘If today were the last day of my life, would I want to do what I am about to do today?’ And whenever the answer has been ‘No’ for too many days in a row, I know I need to change something.”</blockquote>\n<h3>Marissa Mayer, CEO of Yahoo</h3>\nMayer is another early riser. We aren’t sure of the time but she has admitted she really doesn’t need much sleep to thrive (between <a href=\"http://www.businessinsider.com/successful-people-who-barely-sleep-2012-9?op=1\">four and six hours of sleep on any given night</a>). Of course, this is also the woman who said <strong>t</strong><strong>here are 130 hours of potential work time in a week if you shower strategically.</strong>\n<h3>Jason Goldberg, CEO of Fab</h3>\nGoldberg is definitely of the school of thought that working out first thing in the morning makes you productive for the rest of the day. According to research, <a href=\"http://www.dailymail.co.uk/news/article-1095783/People-exercise-work-days-happier-suffer-stress-productive.html\">published in the <em>International Journal of Workplace Health Management</em></a>, on exercise days, people’s mood significantly improved after exercising. Goldberg told Inc., “I start my day at 6 every morning, and the first thing I do is check overnight emails. Our technology team is based in India, so they’re ahead of us. After I respond to any urgent emails, I do my morning run on the treadmill at a full steep incline for 30 minutes. I try not to think about work. Instead, I watch TV shows on my iPad. Currently, I’m watching “Curb Your Enthusiasm”–I’m up to Season Six. My other favorite shows are “Top Chef”, “Dexter”, and “Mad Men”.”\n<h3>Alexa Von Tobel, CEO and Founder of LearnVest</h3>\nVon Tobel is also in support of a morning workout followed by a plan to the minute day. She told <a href=\"http://observer.com/2014/04/learnvest-founder-alexa-von-tobel-q-and-a/#ixzz33mpMd9Om\" target=\"_blank\">The Observer</a>:\n<blockquote>“I start with an early morning workout (whether a power walk with friends, barre class or spin class), which is critical to feeling energized for the whole day. My calendar is often scheduled down to 15-minute intervals, so I can (attempt to!) make time for everything — internal and external meetings, speaking events, interviews, etc. I try to put as much as possible on auto-pilot (ex: using shortcuts like eating basically the same thing for breakfast and lunch). Also, I like to tackle the hardest things first, so I think through my priorities the night before and make sure I have time for my most strategic work. \"</blockquote>', 'The Morning Habits of 6 Successful People in Technology', '', 'publish', 'open', 'open', '', 'the-morning-habits-of-6-successful-people-in-technology', '', '', '2014-10-12 18:10:49', '2014-10-12 18:10:49', '', 0, 'http://localhost:8888/starter/?p=31', 0, 'post', '', 0),
(33, 1, '2014-10-12 18:12:09', '2014-10-12 18:12:09', 'It’s back to school season parents! Are you excited? Frantic? Both? You have a lot on your plate – starting hectic morning routines anew, helping with homework, packing healthy lunches, managing after school activities, WHEW.  And of-course during all this you’re probably wondering if your kids are learning the right things at school and how you can supplement their education at home.\n\nYou’ve no doubt heard about the importance of computer literacy and getting your kids into programming and coding. But with the abundance of apps, toys, and books available, it’s hard to know where to start. Here are my top 4 choices for parents looking to get their young ones into tech:\n<h3>1. <a href=\"http://www.gethopscotch.com/\" target=\"_blank\">Hopscotch</a></h3>\nThis iPad app lets kids drag and drop functioning blocks of code to build their own programs. The app teaches kids programming fundamentals as well as critical thinking and problem solving skills in a creative environment. The app fosters a “learn by experimenting” attitude and encourages kids to play and try things and see what works. Hopscotch was actually inspired by Scratch, # 3 on this list. Hopscotch cofounders Jocelyn Leavitt and Samantha John hope to get girls into programming earlier and help fill the void of women in tech.\n<h3>2. <a href=\"http://www.helloruby.com/\" target=\"_blank\">Hello Ruby</a></h3>\nWe love everything about Linda Liukas and her upcoming children’s book Hello Ruby. The book raised $100k in 24 hours on Kickstarter and more than exceeded its initial goal of $10k by raising just over $380k at the end of its campaign. The book aims to teach 4-7 year olds about programming and open source culture through a smart, mischievous female protagonist and her whimsical adventures. Parents get a workbook so they can learn and help their kids solve problems in the accompanying activity book. We interviewed Liukas at the completion of her Kickstarter project – <a href=\"http://skillcrush.com/2014/02/21/skillcrush-linda-liukas-rails-girls/\" target=\"_blank\">you can read that interview here.</a>\n<h3>3. <a href=\"http://scratch.mit.edu/\" target=\"_blank\">Scratch</a></h3>\nScratch is a brainchild of the Lifelong Kindergarten Group at MIT’s Media Lab. It’s a programming language and comes with an extensive online community of it’s own. It’s designed for kids aged 8-16 and is totally free to use. Scratch allows students to create their own animations, interactive stories and much more. It uses drag and drop blocks of code similar to Hopscotch.\n<h3>4. <a href=\"http://www.tynker.com/\" target=\"_blank\">Tynker</a></h3>\nI learned about Tynker from my old boss, who’s wife Tanya homeschools their 3 kids. Tynker provides self-paced courses with tutoring baked right in. Their tutorials are interactive and fun for kids, allowing them to unlock achievements and badges, create customized projects and characters and build video games while they learn programming concepts. Sharing projects on the web with others is a big focus of Tynker’s and they hold summer camps to foster collaboration and knowledge-sharing. They occasionally run <a href=\"http://www.tynker.com/blog/articles/tynker/a-room-full-of-girls-coding/\" target=\"_blank\">workshops exclusively for girls</a> as well.\n\nAre you an old hat at getting kids into tech? Know all the cool, fun, hip new programming and tech apps, toys and tools out there? Share your top picks in the comments below!', '4 Games You Will Want Your Kids to Play', '', 'publish', 'open', 'open', '', '4-games-you-will-want-your-kids-to-play', '', '', '2014-10-12 18:12:09', '2014-10-12 18:12:09', '', 0, 'http://localhost:8888/starter/?p=33', 0, 'post', '', 0),
(35, 1, '2014-10-12 18:13:16', '2014-10-12 18:13:16', 'When you ask a web server for a page, it’s PHP’s job to create it. When you browse a WordPress blog or make a post on Facebook, PHP is putting it all together.\n\nIf you wanted a very simple PHP page to greet you every time you looked at it, it might look something like this:\n\n<code>&lt;?php echo “Hi there stranger!”; ?&gt;</code>\n\nThat would make a web page that looked like this:\n<p class=\"code\">Hi there stranger!</p>\nOne of the reasons many people learn PHP instead of Ruby or Python is that it comes installed on pretty much every web server out there. If you happen to have a bit of web space to your name, chances are you’re able to run PHP.\n\nA pretty typical way you’ll see people working with PHP is along with Linux (an operating system), <a title=\"Web Server\" href=\"http://skillcrush.com/2012/07/03/web-server-2/\">Apache</a> (a web server), <a title=\"MySQL\" href=\"http://skillcrush.com/2012/12/04/mysql-2/\">MySQL</a> (a database), and PHP. This kind of setup is called LAMP.\n<h5 class=\"cocktail-party-header\">Cocktail Party Fact</h5>\nPHP supposedly stands for “PHP: Hypertext Preprocessor.” If you said “Hey, but that doesn’t say what PHP means!” then you get the point ;).', 'Tech Term: PHP', '', 'publish', 'open', 'open', '', 'tech-term-php', '', '', '2014-10-12 18:13:16', '2014-10-12 18:13:16', '', 0, 'http://localhost:8888/starter/?p=35', 0, 'post', '', 0),
(36, 1, '2014-10-12 18:14:06', '2014-10-12 18:14:06', 'Looking for a new job where you can put your tech know-how to work? Having digital skills opens up a world of career choices for you. Take a look at some of the latest and greatest jobs we’ve found that’ll let you flex your digital muscles.\n\nToday, we’re featuring jobs that require WordPress skills – and learn more by signing up to watch our webinar on Friday, August 1st: <a href=\"http://skillcrush.com/webinar-august-1st-signup\">3 Ways to Make WordPress Bullet-Proof!</a>\n\n<strong>Position: <a href=\"https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112\">Designer, Marketing &amp; Communications, Interactive Design</a>\nCompany: <a href=\"https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112\">Boston University</a></strong>\n<strong>Location: Boston, MA\n</strong>Start as a member of BU’s integrated design team. Take the lead on creating and improving websites through outstanding design. Manage, build, and grow Boston University’s nationally recognized and award-winning online magazine, Bostonia. Coordinate successful issue launches, liase between the magazine editor and the design team, and play a key role in enhancing the content management system (a customized installation of WordPress). Plus, participate in the design and front-end development of other WordPress-powered websites and editorial channels across the university.\n\n<strong>Position: <a href=\"http://www.idealist.org/view/job/W9C6NkTNN5sP/\">Graphic Designer / Project Manager</a>\nCompany: <a href=\"http://www.idealist.org/view/org/72tfp76Bn3H4/\">Community Blueprint</a></strong>\n<strong>Location: Minneapolis, MN</strong>\nCreate campaigns for governmental and nonprofit organizations focus on public health behavior change in this multi-faceted opportunity. A little experience with print and web design, project management skills, and an understanding of WordPress sets you up for success in this role. Your time will be split managing multiple projects and doing design for some or them.\n\n<strong>Position: <a href=\"http://www.idealist.org/view/job/4zdMTJ4HJFCp/\">Web Designer</a>\nCompany: <a href=\"http://www.idealist.org/view/org/32gckNTTp6hmD/\">Global Bioethics Initiative</a>\nLocation: New York, NY</strong>\nJump right in to help create and launch a new website for the Global Bioethics Initiative, focused on serving as an educational resource and a database for breaking news and research in the fields of organ trafficking and organ transplantation. The site will be made – ideally – using WordPress. Take your Skillcrush skills and create a beautiful, user-friendly, and content-centered site to cover organs, tissues, cells donation, and biotechnology policy trafficking stories.\n\n<strong>Position: <a href=\"http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE\">Content Marketing Manager</a>\nCompany: <a href=\"http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE\">InfoScout</a>\nLocation: San Francisco, CA</strong>\nPut your marketing chops to work at this content marketing company, InfoScout. The current blog, InfoScout.co, is only scratching the surface of what can be done with the company’s data – so you will report directly to the CEO in this amazing opportunity to take the content to the next level. Bring your go-getter attitude to optimizing content, managing the WordPress blog, and growing the InfoScout newsletter base!', 'Classifieds: WordPress Edition', '', 'publish', 'open', 'open', '', 'classifieds-wordpress-edition', '', '', '2014-10-12 18:14:06', '2014-10-12 18:14:06', '', 0, 'http://localhost:8888/starter/?p=36', 0, 'post', '', 0),
(37, 1, '2014-10-12 18:15:01', '2014-10-12 18:15:01', 'When I launched <a href=\"http://skillcrush.com/2014/06/05/wordpress-com-vs-wordpress-org/www.crandlecakes.com\">my blog</a> in 2012, I went about it like this: I Googled “WordPress blog,” clicked <a href=\"http://zh.wordpress.com/\">a button</a> that said, “get a free blog,” and I started rolling.\n\nA year later, I realized I should have done more research. I wanted to change my site layout and add functions (like a hovering Pinterest button), and I realized (oh nooos!) I needed a “WordPress.org blog” for that.\n\nGetting a “WordPress.org blog,” it turns out, really means downloading the free, open-source <a href=\"http://wordpress.org/\">WordPress web software</a> and using a third-party hosting service (like GoDaddy or Bluehost) to get your site online.\n\n<a href=\"https://wordpress.com/\">WordPress.com</a>, on the other hand, takes care of all that legwork for you. You don’t worry about hosting or serving up files, and your blog comes with a free domain that looks something like this: <a href=\"http://www.myblog.wordpress.com/\">www.mynewblog.wordpress.com</a>.\n\nBut when you hand over responsibility, you also lose control: your WordPress.com site will show ads unless you pay a yearly fee, and many upgrades, like hosting videos or buying a custom domain name for example, can get costly.\n\nTo add to the new-blogger confusion, when you’re working on your blog, the Dashboard (the place where you edit your blog from the back end) looks almost exactly the same no matter which avenue you take. Because WordPress.com runs on the same WordPress software as a self-hosted site, the user experience after setting up your blog isn’t that different.\n\nDeciding between starting a free WordPress.com blog and self-hosted WordPress site is as simple as deciding how much freedom you want over your site’s look and feel, how much behind-the-scenes work you’re willing to do, and whether you want to monetize your blog.\n\n<a href=\"http://howtomakemyblog.com/wordpress-com-org/\"><img title=\"WordPress.com Vs WordPress.org Comparison\" src=\"http://makemyblog1.how2make.netdna-cdn.com/wp-content/uploads/wordpress.com-vs-org.jpg\" alt=\"WordPress.com Vs WordPress.org Comparison\" width=\"800\" height=\"1723\" /></a>\n\n&nbsp;\n<h2>1. How much control do you want over your site’s look and feel?</h2>\nIf you’re okay with an “out of the box” theme [http://theme.wordpress.com/], WordPress.com might work for you. For an extra charge, you can customize some features, like fonts and background colors. Overall, though, you are limited when it comes to changing the design of your site.\n\nIf you’re looking at those themes and thinking, “but I want my Instagram feed up higher and I’d like social media buttons above the top navigation,” you’ll want to go with a self-hosted WordPress blog so you can access your site’s layout and HTML.\n<h2>2. What extra functionality do you want on your site?</h2>\nRemember that anecdote about the Pinterest hover button I wanted? WordPress.com is always updating and adding new features, but you will have more control on a self-hosted site. Through WordPress.org, you’ll have access to libraries of plugins [https://wordpress.org/plugins/] that can add features like interactive calendars, social media sharing options, and RSS feeds–not to mention, Google Analytics–to your site. And by accessing your site’s code, your opportunities to add to and embellish features are unlimited.\n<h2>3. Do you want to monetize your site?</h2>\n“Oh wow, I have so many pageviews! Maybe I can make a little cash with ads!” Nope. Not if you’re on a WordPress.com site. They’re giving you a lot for free; it’s no surprise that you can only sell ads in WordPress-approved ways. On a self-hosted site, however, the world is your oyster…or, you know, your sales floor.\n\nIn addition, while, WordPress.com recently introduced new ways to sell on your site, eCommerce is more established and flexible with a self-hosted site.\n<h2>4. How much can you spend?</h2>\nSelf-hosting is an upfront cost that ranges from a few dollars a month to closer to hundreds per year. But using a free WordPress.com blog and adding a lot of additional features can get pricey. Infographic cost comparison:<a href=\"http://howtomakemyblog.com/wordpress-com-org/\">http://howtomakemyblog.com/wordpress-com-org/</a>\n\nWhen it comes down to it, WordPress.com is a valuable tool for users looking for a free option, who don’t need to customize or make money off of their site. But getting a self-hosted site through WordPress.org provides the most flexibility, freedom, and opportunity for growth. And let’s face it, you’re going to want to use this site to become a moneybags, and WordPress.org allows more freedom for turning your hard work into cold hard cash.', 'WordPress.com or WordPress.org? How to choose the right one for your blog', '', 'publish', 'open', 'open', '', 'wordpress-com-or-wordpress-org-how-to-choose-the-right-one-for-your-blog', '', '', '2014-10-12 18:15:01', '2014-10-12 18:15:01', '', 0, 'http://localhost:8888/starter/?p=37', 0, 'post', '', 0),
(39, 1, '2014-10-12 18:18:14', '2014-10-12 18:18:14', '<p dir=\"ltr\">Want to know the secret to <a href=\"http://skillcrush.com/2013/06/16/the-best-career-decision-i-ever-made/\">my success</a>? How I managed to learn how to code and immediately start making money with my coding skills, while continuing to learn?</p>\n<p dir=\"ltr\">The answer is simple: <a href=\"http://skillcrush.com/2013/08/01/wordpress-for-fun-profit/wordpress.org\">WordPress</a>.</p>\n<p dir=\"ltr\">WordPress is one of those incredible <a href=\"http://skillcrush.com/2012/08/29/open-source-software/\">open source</a> gifts that just gives and gives and gives some more. And for the beginning coder who wants to keep learning new programming skills while making some money, WordPress is hands down the way to go.</p>\n<p dir=\"ltr\">For those of you not familiar with the platform, WordPress is an open source <a href=\"http://skillcrush.com/2012/05/01/cms/\">content management system</a> built in PHP. Originally, WordPress was designed for blogging. But now, thanks to the creation of custom post types and the hard work of thousands of WordPress plugin developers, the platform can do much, much more.</p>\n<p dir=\"ltr\">I, like most developers, built my first website using HTML and CSS. Shortly thereafter, a good friend of mine suggested that I look into hacking around in WordPress. What he explained to me is that WordPress was a great content management system, and could be a good way for me to get familiar with some basic programming concepts like templating, working with loops, learning about database, and more fun things like that, while also building cool custom websites.</p>\n<p dir=\"ltr\">He spent 30 minutes explaining to me how the application is set up and where to look for more information, and that was it, I was off to the races. Me and my new friend WordPress soon became inseparable.</p>\n<p dir=\"ltr\">For a good year or so after that, I had a great side hustle going building marketing and content publishing websites with what can only described as an <em>extremely</em> limited tech skillset.</p>\n<p dir=\"ltr\">Now, I look back at the websites I created with WordPress before I really knew anything about programming with a mix of horror and amazement.</p>\n<p dir=\"ltr\">But honestly, I really shouldn’t be embarrassed because though they weren’t particular programmatically exciting, WordPress made it easy to build extremely robust custom marketing and content publishing websites even with only a small set of skills. Four years later, many of <a href=\"http://blog.papertiger.org/\">the websites</a> I built are <a href=\"http://www.campbaco.com/\">still alive</a> and <a href=\"http://companyb-ny.com/\">going strong</a> (wow did I love big rounded buttons or what?).</p>\n\n<h5>The top five reasons why you should learn how to build in WordPress:</h5>\n<p dir=\"ltr\"><strong>1. Do nothing, and you’ll still have a great website</strong>\nWordpress comes out of the box with arguably, one of the best content management systems in the world (thank you open source &amp; the power of hundreds of people working together on one web application). Now, there is still a learning curve and some people do complain that the WordPress backend is a little too complicated, but honestly, as someone who has done a lot of work with other systems (and seen what it looks like when you try to building something as robust as WordPress from scratch), they really have worked out a lot of the kinks!</p>\n<p dir=\"ltr\"><strong>2. Chances are, someone else has already solved any problem you run into</strong>\nOne of the best parts of WordPress is that you have access to a HUGE library of open source <a href=\"http://wordpress.org/plugins/\">WordPress plugins</a> that will allow you to customize the CMS in all manner of ways. If you find yourself wanting to add some functionality to your site that isn’t native to the platform (a slideshow, a contact form, a facebook login) chances are someone else has wanted to add that functionality and already done the hard work for you. And all you have to do is install the plugin!</p>\n<p dir=\"ltr\"><strong>3. When you are lost, WordPress has the best docs</strong>\n<a href=\"http://codex.wordpress.org/Main_Page\">The WordPress Codex</a> is seriously the most amazing, wonderful, searchable group of docs every created for any open source project ever. Anyone who has worked with other open source web applications or content management systems (*cough* Drupal *cough*) can tell you that the WordPress documents are spectacularly thorough, clear, and easy to use. If this is your first experience, know you are being seriously SPOILED.</p>\n<p dir=\"ltr\"><strong>4. Did we mention the 5 minute install?</strong>\nOh, by the way, WordPress is incredibly easy to install on your local machine (let me introduce you to my friend <a href=\"http://www.wampserver.com/en/\">WAMP</a> and <a href=\"http://www.mamp.info/en/index.html\">MAMP</a> and the famous, <a href=\"http://codex.wordpress.org/Installing_WordPress\">5 minute WordPress install</a>), and is supported by practically every web hosting service in the world. In fact, major web hosts like GoDaddy and <a href=\"http://hostgator.com/\">HostGator</a> offer fancy things like “1-click” WordPress installation services that will have you up and running in a matter of seconds.</p>\n<p dir=\"ltr\"><strong>5. And most importantly, knowing how to hack WordPress is known to lead to some serious CA$H\n</strong>Last, but not least, knowing how to customize WordPress is a seriously marketable tech skill. There are many many freelancers and companies that have built entire careers on hacking WordPress. Just ask our friend <a href=\"http://skillcrush.com/2013/04/05/zoe-rooney/\">Zoe</a>!</p>\n<p dir=\"ltr\">Have I convinced you that WordPress is awesome? Fantastic! Watch out for a post next week about advanced WordPress techniques.</p>', 'WordPress for fun & profit', '', 'publish', 'open', 'open', '', 'wordpress-for-fun-profit', '', '', '2022-01-11 20:09:41', '2022-01-11 20:09:41', '', 0, 'http://localhost:8888/starter/?p=39', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47329, 1, '2014-10-02 16:40:57', '2014-10-02 16:40:57', '<a id=\"_idgpn_30\" href=\"https://skillcrush.com/blog/ultimate-guide-charging-for-freelance-design/\"><strong>\"The Ultimate Guide to Charging for Freelance Work\"</strong></a>\n<h3>Are you charging too much?</h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There\'s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It\'s easy to feel like you are the lucky one. <em>They hired ME? But I\'ve only been doing this for a few months!</em>\n\nEven so, didn\'t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren\'t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there\'s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you\'ll find a free PDF download that will help you decide what to charge, whether you\'re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don\'t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file=\"wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf\" title=\"The Ultimate Guide to Charging for Freelance Work\"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href=\"http://skillcrush.com/skillcrush-blueprints/\" target=\"_blank\" rel=\"noopener\">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I\'m <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">Sign up now</a>!</em>', 'How Much Should You Charge for Freelance Web Design?', 'Setting your freelance rates: demystified. ', 'publish', 'open', 'open', '', 'freelance-rates', '', '', '2021-05-28 17:31:08', '2021-05-28 17:31:08', '', 0, 'http://skillcrush.com/?p=47329', 0, 'post', '', 0),
(47331, 1, '2020-09-08 18:31:09', '2020-09-08 18:31:09', '        <p>This is a project I made for this company for this.  Here is the early stage startup that I helped design and do front-end and back-end dev for.</p>', 'MailChimp Campaign', '', 'publish', 'closed', 'closed', '', 'mailchimp-campaign', '', '', '2020-09-08 20:44:24', '2020-09-08 20:44:24', '', 0, 'http://localhost:8888/accelerate/?post_type=case_studies&#038;p=47331', 0, 'case_studies', '', 0),
(47332, 1, '2020-09-04 18:36:21', '2020-09-04 18:36:21', '', 'mc-thumbnail-1', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-1', '', '', '2020-09-04 18:36:47', '2020-09-04 18:36:47', '', 47331, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-1.png', 0, 'attachment', 'image/png', 0),
(47333, 1, '2020-09-04 18:36:21', '2020-09-04 18:36:21', '', 'mc-thumbnail-2', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-2', '', '', '2020-09-04 18:36:21', '2020-09-04 18:36:21', '', 47331, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-2.png', 0, 'attachment', 'image/png', 0),
(47334, 1, '2020-09-04 18:36:22', '2020-09-04 18:36:22', '', 'mc-thumbnail-3', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-3', '', '', '2020-09-04 18:36:22', '2020-09-04 18:36:22', '', 47331, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-3.png', 0, 'attachment', 'image/png', 0),
(47336, 1, '2020-09-05 01:52:14', '2020-09-05 01:52:14', '      <aside class=\"case-study-sidebar\">\n        <h2>MailChimp Campaign</h2>\n        <h4>Content Strategy, Design & Development</h4>\n        <h4><span>Client: MailChimp</span></h4>\n        <p>This is a project I made for this company for this.  Here is the early stage startup that I helped design and do front-end and back-end dev for.</p>\n        <p class=\"read-more-link\"><a href=\"#\">Visit Live Site &rsaquo;</a></p>\n   </aside>\n\n<div class=\"case-study-images\">\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-1.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-1.png\" alt=\"Case Study Info\" width=\"608\" height=\"448\" class=\"aligncenter size-full wp-image-47332\" /></a>\n\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-2.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-2.png\" alt=\"\" width=\"606\" height=\"817\" class=\"aligncenter size-full wp-image-47333\" /></a>\n\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-3.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-3.png\" alt=\"\" width=\"606\" height=\"1211\" class=\"aligncenter size-full wp-image-47334\" /></a>\n\n</div>\n        <p>This is a project I made for this company for this.  Here is the early stage startup that I helped design and do front-end and back-end dev for.</p>\n        <p class=\"read-more-link\"><a href=\"#\">Visit Live Site &rsaquo;</a></p>\n   </aside>\n\n<div class=\"case-study-images\">\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-1.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-1.png\" alt=\"Case Study Info\" width=\"608\" height=\"448\" class=\"aligncenter size-full wp-image-47332\" /></a>\n\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-2.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-2.png\" alt=\"\" width=\"606\" height=\"817\" class=\"aligncenter size-full wp-image-47333\" /></a>\n\n<a href=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-3.png\"><img src=\"http://localhost:8888/accelerate/wp-content/uploads/2020/09/mc-thumbnail-3.png\" alt=\"\" width=\"606\" height=\"1211\" class=\"aligncenter size-full wp-image-47334\" /></a>\n\n</div>', 'MailChimp Campaign', '', 'inherit', 'closed', 'closed', '', '47331-autosave-v1', '', '', '2020-09-05 01:52:14', '2020-09-05 01:52:14', '', 47331, 'http://localhost:8888/accelerate/?p=47336', 0, 'revision', '', 0),
(47337, 1, '2020-09-05 01:23:27', '2020-09-05 01:23:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"case_studies\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Case Studies', 'case-studies', 'publish', 'closed', 'closed', '', 'group_5f52e805ba7f2', '', '', '2020-09-16 16:45:47', '2020-09-16 16:45:47', '', 0, 'http://localhost:8888/accelerate/?post_type=acf-field-group&#038;p=47337', 0, 'acf-field-group', '', 0),
(47338, 1, '2020-09-05 01:25:32', '2020-09-05 01:25:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5f52e8ba96e7a', '', '', '2020-09-16 16:45:47', '2020-09-16 16:45:47', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47338', 0, 'acf-field', '', 0),
(47339, 1, '2020-09-05 01:25:53', '2020-09-05 01:25:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Client', 'client', 'publish', 'closed', 'closed', '', 'field_5f52e912a3af2', '', '', '2020-09-16 16:45:47', '2020-09-16 16:45:47', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47339', 1, 'acf-field', '', 0),
(47340, 1, '2020-09-05 01:26:12', '2020-09-05 01:26:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Link', 'site_link', 'publish', 'closed', 'closed', '', 'field_5f52e92317715', '', '', '2020-09-05 01:26:12', '2020-09-05 01:26:12', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&p=47340', 2, 'acf-field', '', 0),
(47341, 1, '2020-09-05 01:27:43', '2020-09-05 01:27:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 1', 'image_1', 'publish', 'closed', 'closed', '', 'field_5f52e93953049', '', '', '2020-09-06 21:40:46', '2020-09-06 21:40:46', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47341', 3, 'acf-field', '', 0),
(47342, 1, '2020-09-05 01:28:33', '2020-09-05 01:28:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 2', 'image_2', 'publish', 'closed', 'closed', '', 'field_5f52e9963c0cb', '', '', '2020-09-06 21:40:57', '2020-09-06 21:40:57', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47342', 4, 'acf-field', '', 0),
(47343, 1, '2020-09-05 01:28:33', '2020-09-05 01:28:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 3', 'image_3', 'publish', 'closed', 'closed', '', 'field_5f52e9a23c0cc', '', '', '2020-09-06 21:41:06', '2020-09-06 21:41:06', '', 47337, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47343', 5, 'acf-field', '', 0),
(47344, 1, '2020-09-07 18:26:04', '2020-09-07 18:26:04', '<p>This is a project I made for this company for this.  Here is the early staget startup that I helped design and do front-end and back-end dev for.', 'Coroflot Advertising', '', 'publish', 'closed', 'closed', '', 'coroflot-advertising', '', '', '2020-09-07 18:34:53', '2020-09-07 18:34:53', '', 0, 'http://localhost:8888/accelerate/?post_type=case_studies&#038;p=47344', 0, 'case_studies', '', 0),
(47345, 1, '2020-09-07 18:25:30', '2020-09-07 18:25:30', '', 'coroflot', '', 'inherit', 'open', 'closed', '', 'coroflot', '', '', '2020-09-07 18:25:44', '2020-09-07 18:25:44', '', 47344, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/coroflot.jpg', 0, 'attachment', 'image/jpeg', 0),
(47346, 1, '2020-09-06 18:30:52', '2020-09-06 18:30:52', '<p>This is a project I made for this company for this.  Here is the early staget startup that I helped design and front-end and back-end dev for.</p>', 'Zurb Foundation Project', '', 'publish', 'closed', 'closed', '', 'zurb-foundation-project', '', '', '2020-09-08 20:44:55', '2020-09-08 20:44:55', '', 0, 'http://localhost:8888/accelerate/?post_type=case_studies&#038;p=47346', 0, 'case_studies', '', 0),
(47347, 1, '2020-09-07 18:30:32', '2020-09-07 18:30:32', '', 'zurb', '', 'inherit', 'open', 'closed', '', 'zurb', '', '', '2020-09-07 18:30:42', '2020-09-07 18:30:42', '', 47346, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/zurb.jpg', 0, 'attachment', 'image/jpeg', 0),
(47350, 1, '2020-09-09 17:25:44', '2020-09-09 17:25:44', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work-2', '', '', '2020-09-21 21:42:18', '2020-09-21 21:42:18', '', 0, 'http://localhost:8888/accelerate/?p=47350', 2, 'nav_menu_item', '', 0),
(47354, 1, '2020-09-09 21:59:45', '2020-09-09 21:59:45', '', 'iconfinder_Circled_Facebook_svg_5279111', '', 'inherit', 'open', 'closed', '', 'iconfinder_circled_facebook_svg_5279111', '', '', '2020-09-09 21:59:45', '2020-09-09 21:59:45', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/iconfinder_Circled_Facebook_svg_5279111.png', 0, 'attachment', 'image/png', 0),
(47355, 1, '2020-09-10 15:48:02', '2020-09-10 15:48:02', '', 'hollow-cut-twitter', '', 'inherit', 'open', 'closed', '', 'hollow-cut-twitter', '', '', '2020-09-10 15:48:02', '2020-09-10 15:48:02', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(47356, 1, '2020-09-10 15:48:17', '2020-09-10 15:48:17', '', 'hollow-cut-facebook', '', 'inherit', 'open', 'closed', '', 'hollow-cut-facebook', '', '', '2020-09-10 15:48:17', '2020-09-10 15:48:17', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(47357, 1, '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 'hollow-cut-github', '', 'inherit', 'open', 'closed', '', 'hollow-cut-github', '', '', '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-github.svg', 0, 'attachment', 'image/svg+xml', 0),
(47358, 1, '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 'hollow-cut-google', '', 'inherit', 'open', 'closed', '', 'hollow-cut-google', '', '', '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-google.svg', 0, 'attachment', 'image/svg+xml', 0),
(47359, 1, '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 'hollow-cut-instagram', '', 'inherit', 'open', 'closed', '', 'hollow-cut-instagram', '', '', '2020-09-10 15:48:45', '2020-09-10 15:48:45', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(47360, 1, '2020-09-10 15:48:46', '2020-09-10 15:48:46', '', 'hollow-cut-linkedin', '', 'inherit', 'open', 'closed', '', 'hollow-cut-linkedin', '', '', '2020-09-10 15:48:46', '2020-09-10 15:48:46', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-linkedin.svg', 0, 'attachment', 'image/svg+xml', 0),
(47361, 1, '2020-09-10 15:48:46', '2020-09-10 15:48:46', '', 'hollow-cut-picasa', '', 'inherit', 'open', 'closed', '', 'hollow-cut-picasa', '', '', '2020-09-10 15:48:46', '2020-09-10 15:48:46', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-picasa.svg', 0, 'attachment', 'image/svg+xml', 0),
(47362, 1, '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 'hollow-cut-pinterest', '', 'inherit', 'open', 'closed', '', 'hollow-cut-pinterest', '', '', '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-pinterest.svg', 0, 'attachment', 'image/svg+xml', 0),
(47363, 1, '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 'hollow-cut-rss-feeds', '', 'inherit', 'open', 'closed', '', 'hollow-cut-rss-feeds', '', '', '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-rss-feeds.svg', 0, 'attachment', 'image/svg+xml', 0),
(47364, 1, '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 'hollow-cut-share', '', 'inherit', 'open', 'closed', '', 'hollow-cut-share', '', '', '2020-09-10 15:48:47', '2020-09-10 15:48:47', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-share.svg', 0, 'attachment', 'image/svg+xml', 0),
(47365, 1, '2020-09-10 15:48:48', '2020-09-10 15:48:48', '', 'hollow-cut-snapchat', '', 'inherit', 'open', 'closed', '', 'hollow-cut-snapchat', '', '', '2020-09-10 15:48:48', '2020-09-10 15:48:48', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-snapchat.svg', 0, 'attachment', 'image/svg+xml', 0),
(47366, 1, '2020-09-10 15:49:00', '2020-09-10 15:49:00', '', 'hollow-cut-behance', '', 'inherit', 'open', 'closed', '', 'hollow-cut-behance', '', '', '2020-09-10 15:49:00', '2020-09-10 15:49:00', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-behance.svg', 0, 'attachment', 'image/svg+xml', 0),
(47367, 1, '2020-09-10 15:49:22', '2020-09-10 15:49:22', '', 'hollow-cut-vimeo', '', 'inherit', 'open', 'closed', '', 'hollow-cut-vimeo', '', '', '2020-09-10 15:49:22', '2020-09-10 15:49:22', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-vimeo.svg', 0, 'attachment', 'image/svg+xml', 0),
(47368, 1, '2020-09-10 15:49:22', '2020-09-10 15:49:22', '', 'hollow-cut-youtube', '', 'inherit', 'open', 'closed', '', 'hollow-cut-youtube', '', '', '2020-09-10 15:49:22', '2020-09-10 15:49:22', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/hollow-cut-youtube.svg', 0, 'attachment', 'image/svg+xml', 0),
(47369, 1, '2020-09-10 15:57:21', '2020-09-10 15:57:21', '', 'twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-09-10 18:50:58', '2020-09-10 18:50:58', '', 0, 'http://localhost:8888/accelerate/?p=47369', 1, 'nav_menu_item', '', 0),
(47370, 1, '2020-09-10 15:57:21', '2020-09-10 15:57:21', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-09-10 18:50:58', '2020-09-10 18:50:58', '', 0, 'http://localhost:8888/accelerate/?p=47370', 2, 'nav_menu_item', '', 0),
(47371, 1, '2020-09-10 15:57:21', '2020-09-10 15:57:21', '', 'linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2020-09-10 18:50:58', '2020-09-10 18:50:58', '', 0, 'http://localhost:8888/accelerate/?p=47371', 3, 'nav_menu_item', '', 0),
(47372, 1, '2020-09-11 20:57:39', '2020-09-11 20:57:39', '<!-- wp:paragraph -->\n<p>Have a question?  Want to talk development?  Feel free to leave us a message and we\'ll reply as soon as possible!</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-01-11 20:07:15', '2022-01-11 20:07:15', '', 0, 'http://localhost:8888/accelerate/?page_id=47372', 0, 'page', '', 0),
(47373, 1, '2020-09-11 20:57:39', '2020-09-11 20:57:39', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '47372-revision-v1', '', '', '2020-09-11 20:57:39', '2020-09-11 20:57:39', '', 47372, 'http://localhost:8888/accelerate/2020/09/11/47372-revision-v1/', 0, 'revision', '', 0),
(47374, 1, '2020-09-11 20:59:27', '2020-09-11 20:59:27', '<!-- wp:paragraph -->\n<p>Have a question?  Want to talk development?  Feel free to leave us a message and we\'ll reply as soon as possible!</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '47372-revision-v1', '', '', '2020-09-11 20:59:27', '2020-09-11 20:59:27', '', 47372, 'http://localhost:8888/accelerate/2020/09/11/47372-revision-v1/', 0, 'revision', '', 0),
(47375, 1, '2020-09-14 20:24:56', '2020-09-14 20:24:56', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-21 21:42:18', '2020-09-21 21:42:18', '', 0, 'http://localhost:8888/accelerate/?p=47375', 4, 'nav_menu_item', '', 0),
(47380, 1, '2020-09-15 19:57:15', '2020-09-15 19:57:15', '<!-- wp:paragraph -->\n<p>Accelerate is a strategy and marketing agency located in the heart of NYC. Our goal is to build businesses by making our clients visible and making their customers smile.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-01-11 20:08:33', '2022-01-11 20:08:33', '', 0, 'http://localhost:8888/accelerate/?page_id=47380', 0, 'page', '', 0),
(47381, 1, '2020-09-15 19:57:15', '2020-09-15 19:57:15', '', 'About', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 19:57:15', '2020-09-15 19:57:15', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47382, 1, '2020-09-15 19:58:34', '2020-09-15 19:58:34', '', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 19:58:34', '2020-09-15 19:58:34', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47384, 1, '2020-09-15 21:09:30', '2020-09-15 21:09:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"47380\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5f612d0f8e364', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 0, 'http://localhost:8888/accelerate/?post_type=acf-field-group&#038;p=47384', 0, 'acf-field-group', '', 0),
(47385, 1, '2020-09-15 21:09:30', '2020-09-15 21:09:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'service 1', 'service_1', 'publish', 'closed', 'closed', '', 'field_5f612d625fa03', '', '', '2020-09-15 21:27:18', '2020-09-15 21:27:18', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47385', 0, 'acf-field', '', 0),
(47386, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'descriptor 1', 'descriptor_1', 'publish', 'closed', 'closed', '', 'field_5f612d9b619d0', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47386', 1, 'acf-field', '', 0),
(47387, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icon 1', 'icon_1', 'publish', 'closed', 'closed', '', 'field_5f612dad619d1', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47387', 2, 'acf-field', '', 0),
(47388, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'service 2', 'service_2', 'publish', 'closed', 'closed', '', 'field_5f612db8619d2', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47388', 3, 'acf-field', '', 0),
(47389, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'descriptor 2', 'descriptor_2', 'publish', 'closed', 'closed', '', 'field_5f612dc0619d3', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47389', 4, 'acf-field', '', 0),
(47390, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image 2', 'image_2', 'publish', 'closed', 'closed', '', 'field_5f612dd6619d4', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47390', 5, 'acf-field', '', 0),
(47391, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'service 3', 'service_3', 'publish', 'closed', 'closed', '', 'field_5f612de2619d5', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47391', 6, 'acf-field', '', 0),
(47392, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'descriptor 3', 'descriptor_3', 'publish', 'closed', 'closed', '', 'field_5f612df1619d6', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47392', 7, 'acf-field', '', 0),
(47393, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icon 3', 'icon_3', 'publish', 'closed', 'closed', '', 'field_5f612dff619d7', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47393', 8, 'acf-field', '', 0),
(47394, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'service 4', 'service_4', 'publish', 'closed', 'closed', '', 'field_5f612e34619d8', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47394', 9, 'acf-field', '', 0),
(47395, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'descriptor 4', 'descriptor_4', 'publish', 'closed', 'closed', '', 'field_5f612e4d619d9', '', '', '2020-09-15 21:45:24', '2020-09-15 21:45:24', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47395', 10, 'acf-field', '', 0),
(47396, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icon 4', 'icon_4', 'publish', 'closed', 'closed', '', 'field_5f612e60619da', '', '', '2020-09-15 21:27:19', '2020-09-15 21:27:19', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47396', 11, 'acf-field', '', 0),
(47397, 1, '2020-09-15 21:14:04', '2020-09-15 21:14:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5f612e71619db', '', '', '2020-09-15 21:14:04', '2020-09-15 21:14:04', '', 47384, 'http://localhost:8888/accelerate/?post_type=acf-field&p=47397', 12, 'acf-field', '', 0),
(47399, 1, '2020-09-15 22:08:22', '2020-09-15 22:08:22', '', 'bullseye', '', 'inherit', 'open', 'closed', '', 'bullseye', '', '', '2020-09-15 22:08:36', '2020-09-15 22:08:36', '', 47380, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/bullseye.png', 0, 'attachment', 'image/png', 0),
(47400, 1, '2020-09-15 22:09:37', '2020-09-15 22:09:37', '', 'atom', '', 'inherit', 'open', 'closed', '', 'atom-2', '', '', '2020-09-15 22:09:45', '2020-09-15 22:09:45', '', 47380, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/atom.png', 0, 'attachment', 'image/png', 0),
(47401, 1, '2020-09-15 22:10:41', '2020-09-15 22:10:41', '', 'like', '', 'inherit', 'open', 'closed', '', 'like', '', '', '2020-09-15 22:11:06', '2020-09-15 22:11:06', '', 47380, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/like.png', 0, 'attachment', 'image/png', 0),
(47402, 1, '2020-09-15 22:11:49', '2020-09-15 22:11:49', '', 'design', '', 'inherit', 'open', 'closed', '', 'design', '', '', '2020-09-15 22:12:03', '2020-09-15 22:12:03', '', 47380, 'http://localhost:8888/accelerate/wp-content/uploads/2020/09/design.png', 0, 'attachment', 'image/png', 0),
(47403, 1, '2020-09-15 22:13:45', '2020-09-15 22:13:45', '<!-- wp:paragraph -->\n<p>We take pride in our clients and the content we create for them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Here’s a brief overview of our offered services.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:13:45', '2020-09-15 22:13:45', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47404, 1, '2020-09-15 22:13:45', '2020-09-15 22:13:45', '<!-- wp:paragraph -->\n<p>We take pride in our clients and the content we create for them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Here’s a brief overview of our offered services.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:13:45', '2020-09-15 22:13:45', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47405, 1, '2020-09-15 22:19:11', '2020-09-15 22:19:11', '<!-- wp:paragraph -->\n<p>We take pride in our clients and the content we create for them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Here’s a brief overview of our offered services.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:19:11', '2020-09-15 22:19:11', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47406, 1, '2020-09-15 22:21:15', '2020-09-15 22:21:15', '<!-- wp:paragraph -->\n<p>We take pride in our clients and the content we create for them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Here’s a brief overview of our offered services.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:21:15', '2020-09-15 22:21:15', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47407, 1, '2020-09-15 22:26:44', '2020-09-15 22:26:44', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Our Services</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">We take pride in our clients and the content we create for them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Here’s a brief overview of our offered services.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:26:44', '2020-09-15 22:26:44', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47408, 1, '2020-09-15 22:52:03', '2020-09-15 22:52:03', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-15 22:52:03', '2020-09-15 22:52:03', '', 47380, 'http://localhost:8888/accelerate/2020/09/15/47380-revision-v1/', 0, 'revision', '', 0),
(47411, 1, '2020-09-16 15:55:28', '2020-09-16 15:55:28', '<!-- wp:paragraph -->\n<p>Accelerate is a strategy and marketing agency in the heart of NYC. Our goal is to build businesses by making our clients visible and making their customers smile.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-16 15:55:28', '2020-09-16 15:55:28', '', 47380, 'http://localhost:8888/accelerate/2020/09/16/47380-revision-v1/', 0, 'revision', '', 0),
(47412, 1, '2020-09-16 16:15:19', '2020-09-16 16:15:19', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-21 21:42:18', '2020-09-21 21:42:18', '', 0, 'http://localhost:8888/accelerate/?p=47412', 1, 'nav_menu_item', '', 0),
(47416, 1, '2020-09-16 17:29:24', '2020-09-16 17:29:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Service', 'service', 'publish', 'closed', 'closed', '', 'group_5f624a2375420', '', '', '2020-09-16 19:06:46', '2020-09-16 19:06:46', '', 0, 'http://localhost:8888/accelerate/?post_type=acf-field-group&#038;p=47416', 0, 'acf-field-group', '', 0),
(47417, 1, '2020-09-16 17:29:24', '2020-09-16 17:29:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Service icon', 'service_icon', 'publish', 'closed', 'closed', '', 'field_5f624a99e3ca1', '', '', '2020-09-16 19:06:46', '2020-09-16 19:06:46', '', 47416, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47417', 2, 'acf-field', '', 0),
(47419, 1, '2020-09-16 17:29:24', '2020-09-16 17:29:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Descriptor', 'descriptor', 'publish', 'closed', 'closed', '', 'field_5f624adae3ca3', '', '', '2020-09-16 19:06:46', '2020-09-16 19:06:46', '', 47416, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47419', 1, 'acf-field', '', 0),
(47427, 1, '2020-09-16 18:33:51', '2020-09-16 18:33:51', '', 'Service 1', '', 'publish', 'closed', 'closed', '', 'content-strategy', '', '', '2020-09-16 19:28:18', '2020-09-16 19:28:18', '', 0, 'http://localhost:8888/accelerate/?post_type=services&#038;p=47427', 0, 'services', '', 0),
(47428, 1, '2020-09-16 16:38:15', '2020-09-16 16:38:15', '', 'Service 2', '', 'publish', 'closed', 'closed', '', 'influencer-mapping', '', '', '2020-09-16 19:32:22', '2020-09-16 19:32:22', '', 0, 'http://localhost:8888/accelerate/?post_type=services&#038;p=47428', 0, 'services', '', 0),
(47429, 1, '2020-09-16 15:39:10', '2020-09-16 15:39:10', '', 'Service 3', '', 'publish', 'closed', 'closed', '', 'social-media-strategy', '', '', '2020-09-16 19:32:03', '2020-09-16 19:32:03', '', 0, 'http://localhost:8888/accelerate/?post_type=services&#038;p=47429', 0, 'services', '', 0),
(47430, 1, '2020-09-16 14:40:22', '2020-09-16 14:40:22', '', 'Service 4', '', 'publish', 'closed', 'closed', '', 'design-and-development', '', '', '2020-09-16 19:31:40', '2020-09-16 19:31:40', '', 0, 'http://localhost:8888/accelerate/?post_type=services&#038;p=47430', 0, 'services', '', 0),
(47431, 1, '2020-09-16 18:50:43', '2020-09-16 18:50:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Service', 'service', 'publish', 'closed', 'closed', '', 'field_5f625e6e8b26b', '', '', '2020-09-16 19:06:46', '2020-09-16 19:06:46', '', 47416, 'http://localhost:8888/accelerate/?post_type=acf-field&#038;p=47431', 0, 'acf-field', '', 0),
(47433, 1, '2020-09-16 20:05:20', '2020-09-16 20:05:20', '<!-- wp:paragraph -->\n<p>Accelerate is a strategy and marketing agency in the heart of NYC. Our goal is to build businesses by making our clients visible and making their customers smile.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-09-16 20:05:20', '2020-09-16 20:05:20', '', 47380, 'http://localhost:8888/accelerate/2020/09/16/47380-revision-v1/', 0, 'revision', '', 0),
(47435, 1, '2020-09-23 21:25:59', '2020-09-23 21:25:59', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '404', '', 'publish', 'closed', 'closed', '', '404-2', '', '', '2022-01-11 20:05:33', '2022-01-11 20:05:33', '', 0, 'http://localhost:8888/accelerate/?page_id=47435', 0, 'page', '', 0),
(47436, 1, '2020-09-23 21:25:59', '2020-09-23 21:25:59', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">We went C-R-A-Z-Y looking for that page!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">But it\'s not out there!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '404', '', 'inherit', 'closed', 'closed', '', '47435-revision-v1', '', '', '2020-09-23 21:25:59', '2020-09-23 21:25:59', '', 47435, 'http://localhost:8888/accelerate/2020/09/23/47435-revision-v1/', 0, 'revision', '', 0),
(47437, 1, '2020-09-23 21:46:13', '2020-09-23 21:46:13', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '404', '', 'inherit', 'closed', 'closed', '', '47435-revision-v1', '', '', '2020-09-23 21:46:13', '2020-09-23 21:46:13', '', 47435, 'http://localhost:8888/accelerate/2020/09/23/47435-revision-v1/', 0, 'revision', '', 0),
(47439, 1, '2020-10-02 20:03:55', '2020-10-02 20:03:55', '<p>\r\n	<label> \r\n		<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email address\" required />\r\n</label>\r\n</p>\r\n\r\n<p>\r\n	<input type=\"submit\" value=\"Subscribe\" />\r\n</p>', 'Accelerate Newsletter', '', 'publish', 'closed', 'closed', '', '47439', '', '', '2020-10-02 20:03:55', '2020-10-02 20:03:55', '', 0, 'http://localhost:8888/accelerate/mc4wp-form/47439/', 0, 'mc4wp-form', '', 0),
(47440, 1, '2020-10-02 16:23:46', '2020-10-02 16:23:46', '<!-- wp:paragraph -->\n<p>Accelerate is a strategy and marketing agency located in the heart of NYC. Our goal is to build businesses by making our clients visible and making their customers smile.</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '47380-revision-v1', '', '', '2020-10-02 16:23:46', '2020-10-02 16:23:46', '', 47380, 'http://localhost:8888/accelerate/2020/10/02/47380-revision-v1/', 0, 'revision', '', 0),
(47441, 1, '2020-10-02 21:56:28', '2020-10-02 21:56:28', '', 'Brooklyn', '', 'inherit', 'open', 'closed', '', 'brooklyn', '', '', '2020-10-02 21:56:28', '2020-10-02 21:56:28', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/10/Brooklyn.png', 0, 'attachment', 'image/png', 0),
(47442, 1, '2020-10-02 21:57:26', '2020-10-02 21:57:26', '', 'Rails', '', 'inherit', 'open', 'closed', '', 'rails', '', '', '2020-10-02 21:57:26', '2020-10-02 21:57:26', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/10/Rails.png', 0, 'attachment', 'image/png', 0),
(47443, 1, '2020-10-02 21:57:44', '2020-10-02 21:57:44', '', 'Etsy', '', 'inherit', 'open', 'closed', '', 'etsy', '', '', '2020-10-02 21:57:44', '2020-10-02 21:57:44', '', 0, 'http://localhost:8888/accelerate/wp-content/uploads/2020/10/Etsy.png', 0, 'attachment', 'image/png', 0),
(47446, 1, '2021-05-28 17:27:54', '2021-05-28 17:27:54', '<a id=\"_idgpn_53\" href=\"_wp_link_placeholder\" data-wplink-edit=\"true\"><strong>\"The Ultimate Guide to Charging for Freelance Work\"</strong></a>\n<h3>Are you charging too much?</h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There\'s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It\'s easy to feel like you are the lucky one. <em>They hired ME? But I\'ve only been doing this for a few months!</em>\n\nEven so, didn\'t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren\'t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there\'s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you\'ll find a free PDF download that will help you decide what to charge, whether you\'re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don\'t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file=\"wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf\" title=\"The Ultimate Guide to Charging for Freelance Work\"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href=\"http://skillcrush.com/skillcrush-blueprints/\" target=\"_blank\" rel=\"noopener\">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I\'m <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">Sign up now</a>!</em>', 'How Much Should You Charge for Freelance Web Design?', 'Setting your freelance rates: demystified. ', 'inherit', 'closed', 'closed', '', '47329-revision-v1', '', '', '2021-05-28 17:27:54', '2021-05-28 17:27:54', '', 47329, 'http://accelerate.codertroy.site/?p=47446', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47448, 1, '2021-05-28 17:31:05', '2021-05-28 17:31:05', '<a id=\"_idgpn_30\" href=\"https://skillcrush.com/blog/ultimate-guide-charging-for-freelance-design/\"><strong>\"The Ultimate Guide to Charging for Freelance Work\"</strong></a>\n<h3>Are you charging too much?</h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There\'s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It\'s easy to feel like you are the lucky one. <em>They hired ME? But I\'ve only been doing this for a few months!</em>\n\nEven so, didn\'t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren\'t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there\'s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you\'ll find a free PDF download that will help you decide what to charge, whether you\'re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don\'t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file=\"wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf\" title=\"The Ultimate Guide to Charging for Freelance Work\"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href=\"http://skillcrush.com/skillcrush-blueprints/\" target=\"_blank\" rel=\"noopener\">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I\'m <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">Sign up now</a>!</em>', 'How Much Should You Charge for Freelance Web Design?', 'Setting your freelance rates: demystified. ', 'inherit', 'closed', 'closed', '', '47329-revision-v1', '', '', '2021-05-28 17:31:05', '2021-05-28 17:31:05', '', 47329, 'http://accelerate.codertroy.site/?p=47448', 0, 'revision', '', 0),
(47449, 1, '2022-01-11 19:56:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-11 19:56:13', '0000-00-00 00:00:00', '', 0, 'https://accelerate.troyparkerweb.com/?p=47449', 0, 'post', '', 0),
(47450, 1, '2022-01-11 20:09:39', '2022-01-11 20:09:39', '<p dir=\"ltr\">Want to know the secret to <a href=\"http://skillcrush.com/2013/06/16/the-best-career-decision-i-ever-made/\">my success</a>? How I managed to learn how to code and immediately start making money with my coding skills, while continuing to learn?</p>\n<p dir=\"ltr\">The answer is simple: <a href=\"http://skillcrush.com/2013/08/01/wordpress-for-fun-profit/wordpress.org\">WordPress</a>.</p>\n<p dir=\"ltr\">WordPress is one of those incredible <a href=\"http://skillcrush.com/2012/08/29/open-source-software/\">open source</a> gifts that just gives and gives and gives some more. And for the beginning coder who wants to keep learning new programming skills while making some money, WordPress is hands down the way to go.</p>\n<p dir=\"ltr\">For those of you not familiar with the platform, WordPress is an open source <a href=\"http://skillcrush.com/2012/05/01/cms/\">content management system</a> built in PHP. Originally, WordPress was designed for blogging. But now, thanks to the creation of custom post types and the hard work of thousands of WordPress plugin developers, the platform can do much, much more.</p>\n<p dir=\"ltr\">I, like most developers, built my first website using HTML and CSS. Shortly thereafter, a good friend of mine suggested that I look into hacking around in WordPress. What he explained to me is that WordPress was a great content management system, and could be a good way for me to get familiar with some basic programming concepts like templating, working with loops, learning about database, and more fun things like that, while also building cool custom websites.</p>\n<p dir=\"ltr\">He spent 30 minutes explaining to me how the application is set up and where to look for more information, and that was it, I was off to the races. Me and my new friend WordPress soon became inseparable.</p>\n<p dir=\"ltr\">For a good year or so after that, I had a great side hustle going building marketing and content publishing websites with what can only described as an <em>extremely</em> limited tech skillset.</p>\n<p dir=\"ltr\">Now, I look back at the websites I created with WordPress before I really knew anything about programming with a mix of horror and amazement.</p>\n<p dir=\"ltr\">But honestly, I really shouldn’t be embarrassed because though they weren’t particular programmatically exciting, WordPress made it easy to build extremely robust custom marketing and content publishing websites even with only a small set of skills. Four years later, many of <a href=\"http://blog.papertiger.org/\">the websites</a> I built are <a href=\"http://www.campbaco.com/\">still alive</a> and <a href=\"http://companyb-ny.com/\">going strong</a> (wow did I love big rounded buttons or what?).</p>\n\n<h5>The top five reasons why you should learn how to build in WordPress:</h5>\n<p dir=\"ltr\"><strong>1. Do nothing, and you’ll still have a great website</strong>\nWordpress comes out of the box with arguably, one of the best content management systems in the world (thank you open source &amp; the power of hundreds of people working together on one web application). Now, there is still a learning curve and some people do complain that the WordPress backend is a little too complicated, but honestly, as someone who has done a lot of work with other systems (and seen what it looks like when you try to building something as robust as WordPress from scratch), they really have worked out a lot of the kinks!</p>\n<p dir=\"ltr\"><strong>2. Chances are, someone else has already solved any problem you run into</strong>\nOne of the best parts of WordPress is that you have access to a HUGE library of open source <a href=\"http://wordpress.org/plugins/\">WordPress plugins</a> that will allow you to customize the CMS in all manner of ways. If you find yourself wanting to add some functionality to your site that isn’t native to the platform (a slideshow, a contact form, a facebook login) chances are someone else has wanted to add that functionality and already done the hard work for you. And all you have to do is install the plugin!</p>\n<p dir=\"ltr\"><strong>3. When you are lost, WordPress has the best docs</strong>\n<a href=\"http://codex.wordpress.org/Main_Page\">The WordPress Codex</a> is seriously the most amazing, wonderful, searchable group of docs every created for any open source project ever. Anyone who has worked with other open source web applications or content management systems (*cough* Drupal *cough*) can tell you that the WordPress documents are spectacularly thorough, clear, and easy to use. If this is your first experience, know you are being seriously SPOILED.</p>\n<p dir=\"ltr\"><strong>4. Did we mention the 5 minute install?</strong>\nOh, by the way, WordPress is incredibly easy to install on your local machine (let me introduce you to my friend <a href=\"http://www.wampserver.com/en/\">WAMP</a> and <a href=\"http://www.mamp.info/en/index.html\">MAMP</a> and the famous, <a href=\"http://codex.wordpress.org/Installing_WordPress\">5 minute WordPress install</a>), and is supported by practically every web hosting service in the world. In fact, major web hosts like GoDaddy and <a href=\"http://hostgator.com/\">HostGator</a> offer fancy things like “1-click” WordPress installation services that will have you up and running in a matter of seconds.</p>\n<p dir=\"ltr\"><strong>5. And most importantly, knowing how to hack WordPress is known to lead to some serious CA$H\n</strong>Last, but not least, knowing how to customize WordPress is a seriously marketable tech skill. There are many many freelancers and companies that have built entire careers on hacking WordPress. Just ask our friend <a href=\"http://skillcrush.com/2013/04/05/zoe-rooney/\">Zoe</a>!</p>\n<p dir=\"ltr\">Have I convinced you that WordPress is awesome? Fantastic! Watch out for a post next week about advanced WordPress techniques.</p>', 'WordPress for fun & profit', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-01-11 20:09:39', '2022-01-11 20:09:39', '', 39, 'https://accelerate.troyparkerweb.com/?p=47450', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Nav', 'top-nav', 0),
(3, 'Social Media Nav', 'social-media-nav', 0),
(4, 'Listicles', 'listicles', 0),
(5, 'Career', 'career', 0),
(6, 'WordPress', 'wordpress', 0),
(7, 'Advice', 'advice', 0),
(8, 'Apps', 'apps', 0),
(9, 'Technology', 'technology', 0),
(10, 'Blog', 'blog', 0),
(11, 'Career Success', 'career-success', 0),
(12, 'charge', 'charge', 0),
(13, 'design', 'design', 0),
(14, 'freelance', 'freelance', 0),
(15, 'Freelancing', 'freelancing', 0),
(16, 'prices', 'prices', 0),
(17, 'rates', 'rates', 0),
(18, 'web design', 'web-design-2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(10, 2, 0),
(19, 4, 0),
(26, 5, 0),
(28, 6, 0),
(31, 7, 0),
(33, 8, 0),
(35, 9, 0),
(36, 5, 0),
(36, 6, 0),
(37, 6, 0),
(39, 6, 0),
(47329, 10, 0),
(47329, 11, 0),
(47329, 12, 0),
(47329, 13, 0),
(47329, 14, 0),
(47329, 15, 0),
(47329, 16, 0),
(47329, 17, 0),
(47329, 18, 0),
(47350, 2, 0),
(47369, 3, 0),
(47370, 3, 0),
(47371, 3, 0),
(47375, 2, 0),
(47412, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 4),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'troyboy55'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8722beaeab5e875b4e986b4b0f2458f4a762601b4cb422d5014277b4b45105e5\";a:4:{s:10:\"expiration\";i:1643066576;s:2:\"ip\";s:14:\"73.203.240.179\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1641856976;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '47449'),
(18, 1, 'default_password_nag', ''),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"73.203.240.0\";}'),
(20, 1, 'wp_user-settings', 'hidetb=1'),
(21, 1, 'wp_user-settings-time', '1622222874'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:1:{i:0;s:30:\"nf_admin_metaboxes_appendaform\";}'),
(24, 1, 'meta-box-order_page', 'a:4:{s:8:\"advanced\";s:16:\"heateor_sss_meta\";s:4:\"side\";s:30:\"nf_admin_metaboxes_appendaform\";s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'troyboy55', '$P$BBm8Ysf5bMVmeFck3ABn5eZelDAS9k1', 'troyboy55', 'troyparker55@gmail.com', '', '2020-08-25 22:31:56', '', 0, 'troyboy55');

-- --------------------------------------------------------


--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191));

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5880;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47451;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--