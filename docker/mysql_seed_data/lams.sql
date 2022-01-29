-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 29, 2022 at 04:13 PM
-- Server version: 8.0.22
-- PHP Version: 7.4.20

USE lams;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lams`
--

-- --------------------------------------------------------

--
-- Table structure for table `lams_activity_evaluation`
--

CREATE TABLE `lams_activity_evaluation` (
  `activity_id` bigint NOT NULL,
  `tool_output_definition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_activity_evaluation`
--

INSERT INTO `lams_activity_evaluation` (`activity_id`, `tool_output_definition`, `weight`) VALUES
(67, 'learner.total.score', NULL),
(70, 'learner.mark', NULL),
(72, 'learner.total.score', NULL),
(78, 'learner.total.score', NULL),
(80, 'learner.total.score', NULL),
(83, 'learner.total.score', NULL),
(86, 'learner.total.score', NULL),
(105, 'learner.total.score', NULL),
(120, 'learner.mark', NULL),
(149, 'learner.total.score', NULL),
(150, 'learner.total.score', NULL),
(151, 'learner.total.score', NULL),
(153, 'learner.mark', NULL),
(156, 'learner.mark', NULL),
(159, 'learner.mark', NULL),
(162, 'learner.mark', NULL),
(165, 'learner.mark', NULL),
(168, 'learner.mark', NULL),
(171, 'learner.mark', NULL),
(174, 'learner.mark', NULL),
(177, 'learner.mark', NULL),
(180, 'learner.mark', NULL),
(183, 'learner.mark', NULL),
(186, 'learner.mark', NULL),
(189, 'learner.mark', NULL),
(192, 'learner.mark', NULL),
(195, 'learner.mark', NULL),
(198, 'learner.mark', NULL),
(199, 'learner.mark', NULL),
(201, 'learner.mark', NULL),
(205, 'learner.mark', NULL),
(206, 'learner.mark', NULL),
(209, 'learner.mark', NULL),
(211, 'learner.total.score', NULL),
(213, 'learner.mark', NULL),
(215, 'learner.total.score', NULL),
(222, 'learner.total.score', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_authentication_method`
--

CREATE TABLE `lams_authentication_method` (
  `authentication_method_id` bigint NOT NULL,
  `authentication_method_type_id` int NOT NULL DEFAULT '0',
  `authentication_method_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_authentication_method`
--

INSERT INTO `lams_authentication_method` (`authentication_method_id`, `authentication_method_type_id`, `authentication_method_name`) VALUES
(1, 1, 'LAMS-Database'),
(3, 3, 'MQ-LDAP');

-- --------------------------------------------------------

--
-- Table structure for table `lams_auth_method_type`
--

CREATE TABLE `lams_auth_method_type` (
  `authentication_method_type_id` int NOT NULL,
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_auth_method_type`
--

INSERT INTO `lams_auth_method_type` (`authentication_method_type_id`, `description`) VALUES
(1, 'LAMS'),
(2, 'WEB_AUTH'),
(3, 'LDAP');

-- --------------------------------------------------------

--
-- Table structure for table `lams_branch_activity_entry`
--

CREATE TABLE `lams_branch_activity_entry` (
  `entry_id` bigint NOT NULL,
  `entry_ui_id` int DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `sequence_activity_id` bigint DEFAULT NULL,
  `branch_activity_id` bigint NOT NULL,
  `condition_id` bigint DEFAULT NULL,
  `open_gate` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_branch_condition`
--

CREATE TABLE `lams_branch_condition` (
  `condition_id` bigint NOT NULL,
  `condition_ui_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exact_match_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_comment`
--

CREATE TABLE `lams_comment` (
  `uid` bigint NOT NULL,
  `session_id` bigint NOT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `last_reply_date` datetime DEFAULT NULL,
  `reply_number` int DEFAULT NULL,
  `hide_flag` smallint DEFAULT NULL,
  `parent_uid` bigint DEFAULT NULL,
  `root_comment_uid` bigint DEFAULT NULL,
  `comment_level` smallint DEFAULT NULL,
  `thread_comment_uid` bigint DEFAULT NULL,
  `sticky` smallint DEFAULT '0',
  `monitor` smallint DEFAULT '0',
  `anonymous` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_comment_likes`
--

CREATE TABLE `lams_comment_likes` (
  `uid` bigint NOT NULL,
  `comment_uid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vote` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_comment_session`
--

CREATE TABLE `lams_comment_session` (
  `uid` bigint NOT NULL,
  `external_id` bigint DEFAULT NULL,
  `external_id_type` int DEFAULT NULL,
  `external_signature` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_secondary_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_competence`
--

CREATE TABLE `lams_competence` (
  `competence_id` bigint NOT NULL,
  `learning_design_id` bigint DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_competence_mapping`
--

CREATE TABLE `lams_competence_mapping` (
  `competence_mapping_id` bigint NOT NULL,
  `competence_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_configuration`
--

CREATE TABLE `lams_configuration` (
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_configuration`
--

INSERT INTO `lams_configuration` (`config_key`, `config_value`, `description_key`, `header_name`, `format`, `required`) VALUES
('AdminScreenSize', '1280x720', 'config.admin.screen.size', 'config.header.look.feel', 'STRING', 1),
('AllowDirectAccessIntgrtnLrnr', 'false', 'config.allow.direct.access.for.integration.learners', 'config.header.features', 'BOOLEAN', 1),
('AllowDirectLessonLaunch', 'false', 'config.allow.direct.lesson.launch', 'config.header.features', 'BOOLEAN', 1),
('AllowKumalive', 'true', 'config.allow.kumalive', 'config.header.features', 'BOOLEAN', 1),
('AllowLiveEdit', 'true', 'config.allow.live.edit', 'config.header.features', 'BOOLEAN', 1),
('AntivirusEnable', 'false', 'config.av.enable', 'config.header.antivirus', 'BOOLEAN', 1),
('AntivirusHost', 'localhost', 'config.av.host', 'config.header.antivirus', 'STRING', 0),
('AntivirusPort', '3310', 'config.av.port', 'config.header.antivirus', 'LONG', 0),
('AuthoringScreenSize', '1280x720', 'config.authoring.screen.size', 'config.header.look.feel', 'STRING', 1),
('CleanupPreviewOlderThanDays', '7', 'config.cleanup.preview.older.than.days', 'config.header.system', 'LONG', 1),
('ConfigCacheRefreshInterval', '0', 'config.cache.refresh', 'config.header.system', 'LONG', 0),
('ContentRepositoryPath', '/opt/lams-data//repository', 'config.content.repository.path', 'config.header.uploads', 'STRING', 1),
('CustomTabLink', '', 'config.custom.tab.link', 'config.header.look.feel', 'STRING', 0),
('CustomTabTitle', '', 'config.custom.tab.title', 'config.header.look.feel', 'STRING', 0),
('DefaultTheme', 'defaultHTML', 'config.default.html.theme', 'config.header.look.feel', 'STRING', 1),
('DictionaryDateCreated', '2018-12-28', 'config.dictionary.date.created', 'config.header.versions', 'STRING', 1),
('DisplayPortrait', 'true', 'config.display.portrait', 'config.header.look.feel', 'BOOLEAN', 0),
('DisplayPrintButton', 'false', 'config.display.print.button', 'config.header.features', 'BOOLEAN', 1),
('EARDir', '/usr/local/wildfly-14.0.1//standalone/deployments/lams.ear', 'config.ear.dir', 'config.header.system', 'STRING', 1),
('EnableCollapsingSubcourses', 'false', 'config.enable.collapsing.subcourses', 'config.header.features', 'BOOLEAN', 0),
('EnableForgotYourPasswordLink', 'false', 'config.enable.forgot.your.password.link', 'config.header.features', 'BOOLEAN', 0),
('EnablePortraitEditing', 'true', 'config.enable.portrait.editing', 'config.header.features', 'BOOLEAN', 0),
('EnableServerRegistration', 'false', 'config.server2server.registration.enable', 'config.header.system', 'BOOLEAN', 1),
('ErrorStackTrace', 'true', 'config.stacktrace.error', 'config.header.system', 'BOOLEAN', 0),
('EtherpadApiKey', '', 'config.etherpad.api.key', 'config.header.etherpad', 'STRING', 0),
('EtherpadInstanceID', 'LAMS', 'config.etherpad.instance.id', 'config.header.etherpad', 'STRING', 0),
('EtherpadServerUrl', 'http://localhost:9001', 'config.etherpad.server.url', 'config.header.etherpad', 'STRING', 0),
('ExecutableExtensions', '.bat,.bin,.com,.cmd,.exe,.msi,.msp,.ocx,.pif,.scr,.sct,.sh,.shs,.vbs,.php,.jsp,.asp,.aspx,.pl,.do,.py,.tcl,.cgi,.shtml,.stm,.cfm,.adp', 'config.executable.extensions', 'config.header.uploads', 'STRING', 1),
('FailedAttempts', '3', 'config.failed.attempts', 'config.header.password.policy', 'LONG', 1),
('HelpURL', 'http://helpdesk.sch.gr/', 'config.help.url', 'config.header.system', 'STRING', 1),
('LamsSupportEmail', 'dbsch@teiath.gr', 'config.lams.support.email', 'config.header.email', 'STRING', 0),
('LDAPAddr1Attr', '', 'admin.user.address_line_1', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPAddr2Attr', '', 'admin.user.address_line_2', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPAddr3Attr', '', 'admin.user.address_line_3', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPAuthorMap', 'teacher;Teacher;ateacher;Ateacher;pteacher;Pteacher;personel;Personel;account;Account', 'config.ldap.author.map', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPBaseDN', 'ou=people,dc=sch,dc=gr', 'config.ldap.base.dn', 'config.header.ldap', 'STRING', 0),
('LDAPBindUserDN', 'uid=myfileseye,ou=services,dc=sch,dc=gr', 'config.ldap.bind.user.dn', 'config.header.ldap', 'STRING', 0),
('LDAPBindUserPassword', NULL, 'config.ldap.bind.user.password', 'config.header.ldap', 'STRING', 0),
('LDAPCityAttr', '', 'admin.user.city', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPCountryAttr', '', 'admin.user.country', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPDayPhoneAttr', '', 'admin.user.day_phone', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPDisabledAttr', '!accountStatus', 'sysadmin.disabled', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPEmailAttr', 'mail', 'admin.user.email', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPEncryptPasswordFromBrowser', 'false', 'config.ldap.encrypt.password.from.browser', 'config.header.ldap', 'BOOLEAN', 1),
('LDAPEveningPhoneAttr', '', 'admin.user.evening_phone', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPFaxAttr', '', 'admin.user.fax', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPFNameAttr', 'givenName', 'admin.user.first_name', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPGroupAdminMap', '!', 'config.ldap.group.admin.map', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPGroupManagerMap', 'teacher;Teacher;ateacher;Ateacher;pteacher;Pteacher;personel;Personel;account;Account', 'config.ldap.group.manager.map', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPLearnerMap', 'student;Student;teacher;Teacher;ateacher;Ateacher;pteacher;Pteacher;personel;Personel;account;Account', 'config.ldap.learner.map', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPLNameAttr', 'sn', 'admin.user.last_name', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPLocaleAttr', 'preferredLanguage', 'admin.organisation.locale', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPLoginAttr', 'uid', 'admin.user.login', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPMobileAttr', '', 'admin.user.mobile_phone', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPMonitorMap', 'teacher;Teacher;ateacher;Ateacher;pteacher;Pteacher;personel;Personel;account;Account', 'config.ldap.monitor.map', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPOnlyOneOrg', 'false', 'config.ldap.only.one.org', 'config.header.ldap', 'BOOLEAN', 1),
('LDAPOrgAttr', 'eduPersonOrgUnitDN', 'admin.course', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPOrgField', 'code', 'config.ldap.org.field', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPPostcodeAttr', '', 'admin.user.postcode', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPProviderURL', 'ldap://ds.sch.gr:389', 'config.ldap.provider.url', 'config.header.ldap', 'STRING', 0),
('LDAPProvisioningEnabled', 'true', 'config.ldap.provisioning.enabled', 'config.header.ldap', 'BOOLEAN', 1),
('LDAPRolesAttr', 'umdobject', 'admin.user.roles', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPSearchFilter', '(&(uid={0})(objectClass=gsnUser)(accountstatus=active))', 'config.ldap.search.filter', 'config.header.ldap', 'STRING', 0),
('LDAPSearchResultsPageSize', '10', 'config.ldap.search.results.page.size', 'config.header.ldap', 'LONG', 0),
('LDAPSecurityAuthentication', 'simple', 'config.ldap.security.authentication', 'config.header.ldap', 'STRING', 0),
('LDAPSecurityProtocol', '', 'config.ldap.security.protocol', 'config.header.ldap', 'STRING', 0),
('LDAPStateAttr', '', 'admin.user.state', 'config.header.ldap.attributes', 'STRING', 0),
('LDAPUpdateOnLogin', 'true', 'config.ldap.update.on.login', 'config.header.ldap', 'BOOLEAN', 1),
('LearnerScreenSize', '1280x720', 'config.learner.screen.size', 'config.header.look.feel', 'STRING', 1),
('LearningOutcomeQuickAddEnable', 'true', 'config.learning.outcome.add.enable', 'config.header.features', 'BOOLEAN', 1),
('LockOutTime', '5', 'config.lock.out.time', 'config.header.password.policy', 'LONG', 1),
('LoginAsEnable', 'true', 'config.login.as.enable', 'config.header.privacy.settings', 'BOOLEAN', 1),
('MonitorScreenSize', '1280x720', 'config.monitor.screen.size', 'config.header.look.feel', 'STRING', 1),
('PasswordExpirationMonths', '12', 'config.password.expiration', 'config.header.password.policy', 'LONG', 1),
('PasswordHistoryLimit', '3', 'config.password.history', 'config.header.password.policy', 'LONG', 1),
('PasswordPolicyLowercase', 'true', 'config.password.lowercase', 'config.header.password.policy', 'BOOLEAN', 0),
('PasswordPolicyMinChars', '8', 'config.password.minimum.characters', 'config.header.password.policy', 'LONG', 1),
('PasswordPolicyNumerics', 'true', 'config.password.numerics', 'config.header.password.policy', 'BOOLEAN', 0),
('PasswordPolicySymbols', 'false', 'config.password.symbols', 'config.header.password.policy', 'BOOLEAN', 0),
('PasswordPolicyUppercase', 'true', 'config.password.uppercase', 'config.header.password.policy', 'BOOLEAN', 0),
('ProfileEditEnable', 'true', 'config.profile.edit.enable', 'config.header.features', 'BOOLEAN', 1),
('ProfilePartialEditEnable', 'true', 'config.profile.partial.edit.enable', 'config.header.features', 'BOOLEAN', 1),
('QbCollectionsCreateEnable', 'true', 'config.qb.collections.create.enable', 'config.header.qb', 'BOOLEAN', 1),
('QbCollectionsTransferEnable', 'true', 'config.qb.collections.transfer.enable', 'config.header.qb', 'BOOLEAN', 1),
('QbMergeEnable', 'true', 'config.qb.merge.enable', 'config.header.qb', 'BOOLEAN', 1),
('QbMonitorsReadOnly', 'false', 'config.qb.monitors.read.only', 'config.header.qb', 'BOOLEAN', 1),
('QbQtiEnable', 'true', 'config.qb.qti.enable', 'config.header.qb', 'BOOLEAN', 1),
('QbStatsGroupSize', '27', 'config.qb.stats.group.size', 'config.header.qb', 'LONG', 1),
('QbStatsMinParticipants', '2', 'config.qb.stats.min.participants', 'config.header.qb', 'LONG', 1),
('QbWordEnable', 'true', 'config.qb.word.enable', 'config.header.qb', 'BOOLEAN', 1),
('RestrictedGroupUserNames', 'true', 'config.restricted.displaying.user.names.in.groupings', 'config.header.privacy.settings', 'BOOLEAN', 0),
('ServerCountry', 'GR', 'config.server.country', 'config.header.look.feel', 'STRING', 1),
('ServerLanguage', 'el_GR', 'config.server.language', 'config.header.look.feel', 'STRING', 1),
('ServerPageDirection', 'LTR', 'config.server.page.direction', 'config.header.look.feel', 'STRING', 1),
('ServerURL', 'http://localhost/lams/', 'config.server.url', 'config.header.system', 'STRING', 1),
('ServerURLContextPath', 'lams/', 'config.server.url.context.path', 'config.header.system', 'STRING', 1),
('ServerVersionNumber', '4.5', 'config.server.version.number', 'config.header.versions', 'STRING', 1),
('ShowAllMyLessonLink', 'true', 'config.show.all.my.lesson.link', 'config.header.features', 'BOOLEAN', 1),
('ShowTimezoneWarning', 'false', 'config.show.timezone.warning', 'config.header.features', 'BOOLEAN', 1),
('SiteName', 'Υπηρεσία Μαθησιακών Δραστηριοτήτων', 'config.site.name', 'config.header.system', 'STRING', 1),
('SMTPAuthSecurity', 'none', 'config.smtp.auth.security', 'config.header.email', 'STRING', 1),
('SMTPPassword', '', 'config.smtp.password', 'config.header.email', 'STRING', 0),
('SMTPPort', '25', 'config.smtp.port', 'config.header.email', 'LONG', 0),
('SMTPServer', '', 'config.smtp.server', 'config.header.email', 'STRING', 0),
('SMTPUser', '', 'config.smtp.user', 'config.header.email', 'STRING', 0),
('SuffixImportedLD', 'false', 'config.authoring.suffix', 'config.header.features', 'BOOLEAN', 0),
('TempDir', '/opt/lams-data//temp', 'config.temp.dir', 'config.header.system', 'STRING', 1),
('UploadFileMaxMemorySize', '4096', 'config.upload.file.max.memory.size', 'config.header.uploads', 'LONG', 1),
('UploadFileMaxSize', '10485760', 'config.upload.file.max.size', 'config.header.uploads', 'LONG', 1),
('UploadLargeFileMaxSize', '104857600', 'config.upload.large.file.max.size', 'config.header.uploads', 'LONG', 1),
('UserInactiveTimeout', '10800', 'config.user.inactive.timeout', 'config.header.system', 'LONG', 1),
('UserValidationEmail', 'true', 'config.user.validation.emails', 'config.header.user.validation', 'BOOLEAN', 0),
('UserValidationFirstLastName', 'true', 'config.user.validation.first.last.name', 'config.header.user.validation', 'BOOLEAN', 0),
('UserValidationUsername', 'true', 'config.user.validation.username', 'config.header.user.validation', 'BOOLEAN', 0),
('Version', '4.1', 'config.version', 'config.header.system', 'STRING', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_copy_type`
--

CREATE TABLE `lams_copy_type` (
  `copy_type_id` tinyint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_copy_type`
--

INSERT INTO `lams_copy_type` (`copy_type_id`, `description`) VALUES
(1, 'NONE'),
(2, 'LESSON'),
(3, 'PREVIEW');

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_credential`
--

CREATE TABLE `lams_cr_credential` (
  `credential_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_credential`
--

INSERT INTO `lams_cr_credential` (`credential_id`, `name`, `password`) VALUES
(1, 'forum', 'lams-forum');

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_node`
--

CREATE TABLE `lams_cr_node` (
  `node_id` bigint UNSIGNED NOT NULL,
  `portrait_uuid` binary(16) DEFAULT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date_time` datetime NOT NULL,
  `next_version_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `parent_nv_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_node`
--

INSERT INTO `lams_cr_node` (`node_id`, `portrait_uuid`, `workspace_id`, `path`, `type`, `created_date_time`, `next_version_id`, `parent_nv_id`) VALUES
(1, NULL, 1, NULL, 'FILENODE', '2020-10-07 18:27:16', 2, NULL),
(2, NULL, 1, NULL, 'FILENODE', '2020-10-07 19:14:23', 2, NULL),
(3, NULL, 1, NULL, 'FILENODE', '2020-10-13 18:10:48', 2, NULL),
(4, NULL, 1, NULL, 'FILENODE', '2020-10-13 18:58:03', 2, NULL),
(5, NULL, 1, NULL, 'FILENODE', '2020-10-13 19:00:54', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_node_version`
--

CREATE TABLE `lams_cr_node_version` (
  `nv_id` bigint UNSIGNED NOT NULL,
  `node_id` bigint UNSIGNED NOT NULL,
  `version_id` bigint UNSIGNED NOT NULL,
  `created_date_time` datetime NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_node_version`
--

INSERT INTO `lams_cr_node_version` (`nv_id`, `node_id`, `version_id`, `created_date_time`, `user_id`) VALUES
(1, 1, 1, '2020-10-07 18:27:16', 31),
(2, 2, 1, '2020-10-07 19:14:23', 31),
(3, 3, 1, '2020-10-13 18:10:48', 31),
(4, 4, 1, '2020-10-13 18:58:03', 31),
(5, 5, 1, '2020-10-13 19:00:54', 31);

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_node_version_property`
--

CREATE TABLE `lams_cr_node_version_property` (
  `id` bigint UNSIGNED NOT NULL,
  `nv_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_node_version_property`
--

INSERT INTO `lams_cr_node_version_property` (`id`, `nv_id`, `name`, `value`, `type`) VALUES
(1, 1, 'FILENAME', 'Γρίφος.png', 1),
(2, 2, 'FILENAME', 'Γρίφος.png', 1),
(3, 3, 'FILENAME', 'Γρίφος.png', 1),
(4, 4, 'FILENAME', 'Γρίφος.png', 1),
(5, 5, 'FILENAME', 'Γρίφος.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_workspace`
--

CREATE TABLE `lams_cr_workspace` (
  `workspace_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_workspace`
--

INSERT INTO `lams_cr_workspace` (`workspace_id`, `name`) VALUES
(1, 'forumworkspace');

-- --------------------------------------------------------

--
-- Table structure for table `lams_cr_workspace_credential`
--

CREATE TABLE `lams_cr_workspace_credential` (
  `wc_id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `credential_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_cr_workspace_credential`
--

INSERT INTO `lams_cr_workspace_credential` (`wc_id`, `workspace_id`, `credential_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_data_flow`
--

CREATE TABLE `lams_data_flow` (
  `data_flow_object_id` bigint NOT NULL,
  `transition_id` bigint NOT NULL,
  `order_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool_assigment_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_discussion_sentiment`
--

CREATE TABLE `lams_discussion_sentiment` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `tool_question_uid` bigint NOT NULL,
  `burning_question_uid` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `selected_option` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_email_notification_archive`
--

CREATE TABLE `lams_email_notification_archive` (
  `uid` bigint NOT NULL,
  `organisation_id` bigint DEFAULT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `search_type` tinyint NOT NULL,
  `sent_on` datetime NOT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_email_notification_recipient_archive`
--

CREATE TABLE `lams_email_notification_recipient_archive` (
  `email_notification_uid` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_course_class_map`
--

CREATE TABLE `lams_ext_course_class_map` (
  `sid` int NOT NULL,
  `courseid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `classid` bigint NOT NULL,
  `ext_server_org_map_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_server_lesson_map`
--

CREATE TABLE `lams_ext_server_lesson_map` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `ext_server_org_map_id` int NOT NULL,
  `resource_link_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_server_org_map`
--

CREATE TABLE `lams_ext_server_org_map` (
  `sid` int NOT NULL,
  `serverid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serverkey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `servername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serverdesc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prefix` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userinfo_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_finish_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logout_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `disabled` bit(1) NOT NULL,
  `time_to_live_login_request` int DEFAULT '80',
  `time_to_live_login_request_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `ext_groups_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `server_type_id` int NOT NULL DEFAULT '1',
  `lti_consumer_monitor_roles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `learner_presence_avail` tinyint(1) DEFAULT '0',
  `learner_im_avail` tinyint(1) DEFAULT '0',
  `live_edit_enabled` tinyint(1) DEFAULT '1',
  `enable_lesson_notifications` tinyint(1) DEFAULT '1',
  `force_restart` tinyint(1) DEFAULT '0',
  `allow_restart` tinyint(1) DEFAULT '0',
  `gradebook_on_complete` tinyint(1) DEFAULT '1',
  `membership_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `use_alternative_user_id_parameter_name` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_ext_server_org_map`
--

INSERT INTO `lams_ext_server_org_map` (`sid`, `serverid`, `serverkey`, `servername`, `serverdesc`, `prefix`, `userinfo_url`, `lesson_finish_url`, `logout_url`, `disabled`, `time_to_live_login_request`, `time_to_live_login_request_enabled`, `ext_groups_url`, `server_type_id`, `lti_consumer_monitor_roles`, `learner_presence_avail`, `learner_im_avail`, `live_edit_enabled`, `enable_lesson_notifications`, `force_restart`, `allow_restart`, `gradebook_on_complete`, `membership_url`, `use_alternative_user_id_parameter_name`) VALUES
(1, 'moodle', 'moodle', 'moodle', 'moodle', 'mdl', 'http://localhost/moodle/mod/lamstwo/userinfo.php?ts=%timestamp%&un=%username%&hs=%hash%', '', NULL, b'1', 80, 0, NULL, 1, NULL, 0, 0, 1, 1, 0, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_server_tool_map`
--

CREATE TABLE `lams_ext_server_tool_map` (
  `uid` bigint NOT NULL,
  `tool_id` bigint NOT NULL,
  `ext_server_org_map_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_server_type`
--

CREATE TABLE `lams_ext_server_type` (
  `server_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_ext_server_type`
--

INSERT INTO `lams_ext_server_type` (`server_type_id`, `description`) VALUES
(1, 'INTEGRATED SERVER'),
(2, 'LTI TOOL CONSUMER');

-- --------------------------------------------------------

--
-- Table structure for table `lams_ext_user_userid_map`
--

CREATE TABLE `lams_ext_user_userid_map` (
  `sid` int NOT NULL,
  `external_username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `ext_server_org_map_id` int NOT NULL,
  `tc_gradebook_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_favorite_organisation`
--

CREATE TABLE `lams_favorite_organisation` (
  `favorite_organisation_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_gate_activity_level`
--

CREATE TABLE `lams_gate_activity_level` (
  `gate_activity_level_id` int NOT NULL,
  `description` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_gate_activity_level`
--

INSERT INTO `lams_gate_activity_level` (`gate_activity_level_id`, `description`) VALUES
(1, 'LEARNER'),
(2, 'GROUP'),
(3, 'CLASS');

-- --------------------------------------------------------

--
-- Table structure for table `lams_gate_allowed_learners`
--

CREATE TABLE `lams_gate_allowed_learners` (
  `user_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_gradebook_user_activity`
--

CREATE TABLE `lams_gradebook_user_activity` (
  `uid` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `mark` double DEFAULT NULL,
  `feedback` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marked_in_gradebook` tinyint(1) NOT NULL DEFAULT '0',
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_gradebook_user_activity`
--

INSERT INTO `lams_gradebook_user_activity` (`uid`, `activity_id`, `user_id`, `mark`, `feedback`, `marked_in_gradebook`, `update_date`) VALUES
(1, 171, 31, 8, NULL, 0, '2020-10-07 19:19:36'),
(2, 174, 32, 2, NULL, 0, '2020-10-09 15:29:21'),
(3, 180, 31, 5, NULL, 0, '2020-10-13 18:39:05'),
(4, 206, 15, 0, NULL, 0, '2020-11-07 18:53:47'),
(5, 213, 15, 0, NULL, 0, '2020-11-07 19:24:39'),
(6, 215, 15, 0, NULL, 0, '2020-11-07 19:25:23'),
(7, 195, 34, 5, NULL, 0, '2020-11-17 17:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `lams_gradebook_user_activity_archive`
--

CREATE TABLE `lams_gradebook_user_activity_archive` (
  `uid` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `mark` double DEFAULT NULL,
  `feedback` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marked_in_gradebook` tinyint(1) NOT NULL DEFAULT '0',
  `update_date` datetime DEFAULT NULL,
  `archive_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_gradebook_user_lesson`
--

CREATE TABLE `lams_gradebook_user_lesson` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `mark` double DEFAULT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_gradebook_user_lesson`
--

INSERT INTO `lams_gradebook_user_lesson` (`uid`, `lesson_id`, `user_id`, `mark`, `feedback`) VALUES
(1, 25, 31, 8, NULL),
(2, 26, 32, 2, NULL),
(3, 27, 31, 5, NULL),
(4, 33, 15, 0, NULL),
(5, 34, 15, 0, NULL),
(6, 31, 34, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_gradebook_user_lesson_archive`
--

CREATE TABLE `lams_gradebook_user_lesson_archive` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `mark` double DEFAULT NULL,
  `feedback` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archive_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_group`
--

CREATE TABLE `lams_group` (
  `group_id` bigint NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grouping_id` bigint NOT NULL,
  `order_id` int NOT NULL DEFAULT '1',
  `group_ui_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_group`
--

INSERT INTO `lams_group` (`group_id`, `group_name`, `grouping_id`, `order_id`, `group_ui_id`) VALUES
(1, 'Ομάδα 01', 1, 0, 3),
(2, 'Ομάδα 02', 1, 1, 4),
(3, 'Ομάδα 03', 1, 2, 5),
(4, 'Ομάδα 04', 1, 3, 6),
(5, 'Mathematics 1 learners', 2, 1, NULL),
(6, 'Mathematics 1 staff', 2, 2, NULL),
(7, 'A learners', 3, 1, NULL),
(8, 'A staff', 3, 2, NULL),
(9, 'A learners', 4, 1, NULL),
(10, 'A staff', 4, 2, NULL),
(11, 'A learners', 5, 1, NULL),
(12, 'A staff', 5, 2, NULL),
(13, 'Τέταρτο Λύκειο Αχαρνών learners', 6, 1, NULL),
(14, 'Τέταρτο Λύκειο Αχαρνών staff', 6, 2, NULL),
(15, 'Learner Group', 7, 1, NULL),
(16, 'Staff Group', 7, 2, NULL),
(23, 'Μαθηματικά learners', 11, 1, NULL),
(24, 'Μαθηματικά staff', 11, 2, NULL),
(25, 'Αρχαία learners', 12, 1, NULL),
(26, 'Αρχαία staff', 12, 2, NULL),
(27, 'Learner Group', 13, 1, NULL),
(28, 'Staff Group', 13, 2, NULL),
(29, 'Μαθηματικά learners', 14, 1, NULL),
(30, 'Μαθηματικά staff', 14, 2, NULL),
(31, 'Μαθηματικά learners', 15, 1, NULL),
(32, 'Μαθηματικά staff', 15, 2, NULL),
(33, 'Μαθηματικά learners', 16, 1, NULL),
(34, 'Μαθηματικά staff', 16, 2, NULL),
(35, 'Μαθηματικά learners', 17, 1, NULL),
(36, 'Μαθηματικά staff', 17, 2, NULL),
(37, 'Learner Group', 18, 1, NULL),
(38, 'Staff Group', 18, 2, NULL),
(39, 'Learner Group', 19, 1, NULL),
(40, 'Staff Group', 19, 2, NULL),
(41, 'Μαθηματικά learners', 20, 1, NULL),
(42, 'Μαθηματικά staff', 20, 2, NULL),
(43, 'Learner Group', 21, 1, NULL),
(44, 'Staff Group', 21, 2, NULL),
(45, 'Learner Group', 22, 1, NULL),
(46, 'Staff Group', 22, 2, NULL),
(47, 'Learner Group', 23, 1, NULL),
(48, 'Staff Group', 23, 2, NULL),
(49, 'Learner Group', 24, 1, NULL),
(50, 'Staff Group', 24, 2, NULL),
(51, 'Learner Group', 25, 1, NULL),
(52, 'Staff Group', 25, 2, NULL),
(53, 'Learner Group', 26, 1, NULL),
(54, 'Staff Group', 26, 2, NULL),
(55, 'Μαθηματικά learners', 27, 1, NULL),
(56, 'Μαθηματικά staff', 27, 2, NULL),
(57, 'Learner Group', 28, 1, NULL),
(58, 'Staff Group', 28, 2, NULL),
(59, 'Τέταρτο Γυμνάσιο Αχαρνών learners', 29, 1, NULL),
(60, 'Τέταρτο Γυμνάσιο Αχαρνών staff', 29, 2, NULL),
(61, 'Μαθηματικά learners', 30, 1, NULL),
(62, 'Μαθηματικά staff', 30, 2, NULL),
(63, 'Μαθηματικά learners', 31, 1, NULL),
(64, 'Μαθηματικά staff', 31, 2, NULL),
(65, 'Μαθηματικά learners', 32, 1, NULL),
(66, 'Μαθηματικά staff', 32, 2, NULL),
(67, 'Tutorial Group A learners', 33, 1, NULL),
(68, 'Tutorial Group A staff', 33, 2, NULL),
(69, 'Tutorial Group A learners', 34, 1, NULL),
(70, 'Tutorial Group A staff', 34, 2, NULL),
(71, 'Tutorial Group A learners', 35, 1, NULL),
(72, 'Tutorial Group A staff', 35, 2, NULL),
(73, 'OLD 3  ΤΕΙ ΑΘΗΝΑΣ learners', 36, 1, NULL),
(74, 'OLD 3  ΤΕΙ ΑΘΗΝΑΣ staff', 36, 2, NULL),
(75, 'OLD 4 ΤΕΙ ΑΘΗΝΑΣ learners', 37, 1, NULL),
(76, 'OLD 4 ΤΕΙ ΑΘΗΝΑΣ staff', 37, 2, NULL),
(77, 'ΤΕΙ ΑΘΗΝΑΣ learners', 38, 1, NULL),
(78, 'ΤΕΙ ΑΘΗΝΑΣ staff', 38, 2, NULL),
(79, 'ΤΕΙ ΑΘΗΝΑΣ learners', 39, 1, NULL),
(80, 'ΤΕΙ ΑΘΗΝΑΣ staff', 39, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_grouping`
--

CREATE TABLE `lams_grouping` (
  `grouping_id` bigint NOT NULL,
  `grouping_ui_id` int DEFAULT NULL,
  `grouping_type_id` int NOT NULL,
  `number_of_groups` int DEFAULT NULL,
  `learners_per_group` int DEFAULT NULL,
  `staff_group_id` bigint DEFAULT '0',
  `max_number_of_groups` int DEFAULT NULL,
  `equal_number_of_learners_per_group` tinyint(1) DEFAULT '0',
  `view_students_before_selection` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_grouping`
--

INSERT INTO `lams_grouping` (`grouping_id`, `grouping_ui_id`, `grouping_type_id`, `number_of_groups`, `learners_per_group`, `staff_group_id`, `max_number_of_groups`, `equal_number_of_learners_per_group`, `view_students_before_selection`) VALUES
(1, 2, 2, NULL, NULL, 0, 4, 0, 0),
(2, NULL, 3, NULL, NULL, 6, NULL, 0, 0),
(3, NULL, 3, NULL, NULL, 8, NULL, 0, 0),
(4, NULL, 3, NULL, NULL, 10, NULL, 0, 0),
(5, NULL, 3, NULL, NULL, 12, NULL, 0, 0),
(6, NULL, 3, NULL, NULL, 14, NULL, 0, 0),
(7, NULL, 3, NULL, NULL, 16, NULL, 0, 0),
(11, NULL, 3, NULL, NULL, 24, NULL, 0, 0),
(12, NULL, 3, NULL, NULL, 26, NULL, 0, 0),
(13, NULL, 3, NULL, NULL, 28, NULL, 0, 0),
(14, NULL, 3, NULL, NULL, 30, NULL, 0, 0),
(15, NULL, 3, NULL, NULL, 32, NULL, 0, 0),
(16, NULL, 3, NULL, NULL, 34, NULL, 0, 0),
(17, NULL, 3, NULL, NULL, 36, NULL, 0, 0),
(18, NULL, 3, NULL, NULL, 38, NULL, 0, 0),
(19, NULL, 3, NULL, NULL, 40, NULL, 0, 0),
(20, NULL, 3, NULL, NULL, 42, NULL, 0, 0),
(21, NULL, 3, NULL, NULL, 44, NULL, 0, 0),
(22, NULL, 3, NULL, NULL, 46, NULL, 0, 0),
(23, NULL, 3, NULL, NULL, 48, NULL, 0, 0),
(24, NULL, 3, NULL, NULL, 50, NULL, 0, 0),
(25, NULL, 3, NULL, NULL, 52, NULL, 0, 0),
(26, NULL, 3, NULL, NULL, 54, NULL, 0, 0),
(27, NULL, 3, NULL, NULL, 56, NULL, 0, 0),
(28, NULL, 3, NULL, NULL, 58, NULL, 0, 0),
(29, NULL, 3, NULL, NULL, 60, NULL, 0, 0),
(30, NULL, 3, NULL, NULL, 62, NULL, 0, 0),
(31, NULL, 3, NULL, NULL, 64, NULL, 0, 0),
(32, NULL, 3, NULL, NULL, 66, NULL, 0, 0),
(33, NULL, 3, NULL, NULL, 68, NULL, 0, 0),
(34, NULL, 3, NULL, NULL, 70, NULL, 0, 0),
(35, NULL, 3, NULL, NULL, 72, NULL, 0, 0),
(36, NULL, 3, NULL, NULL, 74, NULL, 0, 0),
(37, NULL, 3, NULL, NULL, 76, NULL, 0, 0),
(38, NULL, 3, NULL, NULL, 78, NULL, 0, 0),
(39, NULL, 3, NULL, NULL, 80, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lams_grouping_support_type`
--

CREATE TABLE `lams_grouping_support_type` (
  `grouping_support_type_id` int NOT NULL,
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_grouping_support_type`
--

INSERT INTO `lams_grouping_support_type` (`grouping_support_type_id`, `description`) VALUES
(1, 'NONE'),
(2, 'OPTIONAL'),
(3, 'REQUIRED');

-- --------------------------------------------------------

--
-- Table structure for table `lams_grouping_type`
--

CREATE TABLE `lams_grouping_type` (
  `grouping_type_id` int NOT NULL,
  `description` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_grouping_type`
--

INSERT INTO `lams_grouping_type` (`grouping_type_id`, `description`) VALUES
(1, 'RANDOM_GROUPING'),
(2, 'CHOSEN_GROUPING'),
(3, 'CLASS_GROUPING'),
(4, 'LEARNER_CHOICE_GROUPING');

-- --------------------------------------------------------

--
-- Table structure for table `lams_input_activity`
--

CREATE TABLE `lams_input_activity` (
  `activity_id` bigint NOT NULL,
  `input_activity_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive`
--

CREATE TABLE `lams_kumalive` (
  `kumalive_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_log`
--

CREATE TABLE `lams_kumalive_log` (
  `log_id` bigint NOT NULL,
  `kumalive_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `log_date` datetime NOT NULL,
  `log_type` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_poll`
--

CREATE TABLE `lams_kumalive_poll` (
  `poll_id` bigint NOT NULL,
  `kumalive_id` bigint NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes_released` tinyint(1) DEFAULT '0',
  `voters_released` tinyint(1) DEFAULT '0',
  `start_date` datetime NOT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_poll_answer`
--

CREATE TABLE `lams_kumalive_poll_answer` (
  `answer_id` bigint NOT NULL,
  `poll_id` bigint NOT NULL,
  `order_id` tinyint NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_poll_vote`
--

CREATE TABLE `lams_kumalive_poll_vote` (
  `answer_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vote_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_rubric`
--

CREATE TABLE `lams_kumalive_rubric` (
  `rubric_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `kumalive_id` bigint DEFAULT NULL,
  `order_id` tinyint NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_kumalive_score`
--

CREATE TABLE `lams_kumalive_score` (
  `score_id` bigint NOT NULL,
  `rubric_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `batch` bigint DEFAULT NULL,
  `score` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learner_interaction_event`
--

CREATE TABLE `lams_learner_interaction_event` (
  `uid` bigint UNSIGNED NOT NULL,
  `event_type` tinyint UNSIGNED NOT NULL,
  `occurred_date_time` datetime NOT NULL,
  `user_id` bigint NOT NULL,
  `qb_tool_question_uid` bigint DEFAULT NULL,
  `option_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learner_progress`
--

CREATE TABLE `lams_learner_progress` (
  `learner_progress_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `lesson_completed_flag` tinyint(1) NOT NULL DEFAULT '0',
  `waiting_flag` tinyint NOT NULL,
  `start_date_time` datetime NOT NULL,
  `finish_date_time` datetime DEFAULT NULL,
  `current_activity_id` bigint DEFAULT NULL,
  `next_activity_id` bigint DEFAULT NULL,
  `previous_activity_id` bigint DEFAULT NULL,
  `requires_restart_flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learner_progress`
--

INSERT INTO `lams_learner_progress` (`learner_progress_id`, `user_id`, `lesson_id`, `lesson_completed_flag`, `waiting_flag`, `start_date_time`, `finish_date_time`, `current_activity_id`, `next_activity_id`, `previous_activity_id`, `requires_restart_flag`) VALUES
(1, 13, 2, 0, 0, '2020-09-07 13:27:43', NULL, 89, 89, NULL, 0),
(2, 13, 3, 0, 0, '2020-09-08 11:40:23', NULL, 93, 93, NULL, 0),
(3, 15, 5, 0, 0, '2020-09-11 17:59:21', NULL, 108, 108, NULL, 1),
(5, 28, 10, 0, 0, '2020-09-15 15:31:53', NULL, 126, 126, NULL, 0),
(6, 1, 17, 0, 0, '2020-10-05 14:47:17', NULL, 147, 147, NULL, 0),
(7, 31, 20, 0, 0, '2020-10-07 19:16:13', NULL, 155, 155, NULL, 0),
(8, 31, 21, 0, 0, '2020-10-07 19:16:40', NULL, 158, 158, NULL, 0),
(9, 31, 22, 0, 0, '2020-10-07 19:16:44', NULL, 161, 161, NULL, 0),
(10, 31, 23, 0, 0, '2020-10-07 19:17:09', NULL, 164, 164, NULL, 0),
(11, 31, 24, 0, 0, '2020-10-07 19:17:59', NULL, 167, 167, NULL, 0),
(12, 31, 25, 0, 0, '2020-10-07 19:18:37', NULL, 172, 172, 171, 0),
(13, 32, 26, 1, 0, '2020-10-09 15:28:04', '2020-10-09 15:31:25', NULL, NULL, 174, 1),
(14, 31, 27, 1, 0, '2020-10-13 18:38:04', '2020-10-13 18:39:30', NULL, NULL, 180, 0),
(15, 12, 32, 0, 0, '2020-11-07 18:38:58', NULL, 200, 200, NULL, 0),
(16, 15, 33, 1, 0, '2020-11-07 18:47:54', '2020-11-07 18:56:29', NULL, NULL, 206, 1),
(17, 15, 34, 1, 0, '2020-11-07 19:12:37', '2020-11-07 19:25:22', NULL, NULL, 214, 0),
(18, 31, 31, 0, 0, '2020-11-17 16:52:51', NULL, 194, 194, NULL, 1),
(19, 33, 31, 0, 0, '2020-11-17 17:02:28', NULL, 195, 195, 194, 1),
(20, 34, 31, 1, 0, '2020-11-17 17:24:30', '2020-11-17 17:29:04', NULL, NULL, 195, 1),
(21, 40, 35, 0, 0, '2020-11-19 02:30:24', NULL, 220, 220, NULL, 0),
(22, 40, 37, 0, 0, '2020-11-19 02:44:35', NULL, 223, 223, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_learner_progress_archive`
--

CREATE TABLE `lams_learner_progress_archive` (
  `learner_progress_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `attempt_id` tinyint NOT NULL DEFAULT '1',
  `lesson_completed_flag` tinyint(1) NOT NULL DEFAULT '0',
  `start_date_time` datetime NOT NULL,
  `finish_date_time` datetime DEFAULT NULL,
  `current_activity_id` bigint DEFAULT NULL,
  `archive_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_activity`
--

CREATE TABLE `lams_learning_activity` (
  `activity_id` bigint NOT NULL,
  `activity_ui_id` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xcoord` int DEFAULT NULL,
  `ycoord` int DEFAULT NULL,
  `parent_activity_id` bigint DEFAULT NULL,
  `parent_ui_id` int DEFAULT NULL,
  `learning_activity_type_id` int NOT NULL DEFAULT '0',
  `grouping_support_type_id` int NOT NULL,
  `apply_grouping_flag` tinyint(1) NOT NULL,
  `grouping_id` bigint DEFAULT NULL,
  `grouping_ui_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `learning_design_id` bigint DEFAULT NULL,
  `learning_library_id` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL,
  `max_number_of_options` int DEFAULT NULL,
  `min_number_of_options` int DEFAULT NULL,
  `options_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tool_id` bigint DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `gate_activity_level_id` int DEFAULT NULL,
  `gate_open_flag` tinyint(1) DEFAULT NULL,
  `gate_open_user` bigint DEFAULT NULL,
  `gate_open_time` datetime DEFAULT NULL,
  `gate_start_time_offset` bigint DEFAULT NULL,
  `gate_end_time_offset` bigint DEFAULT NULL,
  `gate_activity_completion_based` tinyint(1) DEFAULT NULL,
  `gate_password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gate_stop_at_preceding_activity` tinyint NOT NULL DEFAULT '0',
  `library_activity_ui_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_grouping_id` bigint DEFAULT NULL,
  `create_grouping_ui_id` int DEFAULT NULL,
  `library_activity_id` bigint DEFAULT NULL,
  `language_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_tool_id` bigint DEFAULT NULL,
  `read_only` tinyint(1) DEFAULT '0',
  `initialised` tinyint(1) DEFAULT '0',
  `default_activity_id` bigint DEFAULT NULL,
  `start_xcoord` int DEFAULT NULL,
  `start_ycoord` int DEFAULT NULL,
  `end_xcoord` int DEFAULT NULL,
  `end_ycoord` int DEFAULT NULL,
  `stop_after_activity` tinyint(1) NOT NULL DEFAULT '0',
  `transition_to_id` bigint DEFAULT NULL,
  `transition_from_id` bigint DEFAULT NULL,
  `branching_ordered_asc` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_activity`
--

INSERT INTO `lams_learning_activity` (`activity_id`, `activity_ui_id`, `description`, `title`, `xcoord`, `ycoord`, `parent_activity_id`, `parent_ui_id`, `learning_activity_type_id`, `grouping_support_type_id`, `apply_grouping_flag`, `grouping_id`, `grouping_ui_id`, `order_id`, `learning_design_id`, `learning_library_id`, `create_date_time`, `max_number_of_options`, `min_number_of_options`, `options_instructions`, `tool_id`, `tool_content_id`, `gate_activity_level_id`, `gate_open_flag`, `gate_open_user`, `gate_open_time`, `gate_start_time_offset`, `gate_end_time_offset`, `gate_activity_completion_based`, `gate_password`, `gate_stop_at_preceding_activity`, `library_activity_ui_image`, `create_grouping_id`, `create_grouping_ui_id`, `library_activity_id`, `language_file`, `system_tool_id`, `read_only`, `initialised`, `default_activity_id`, `start_xcoord`, `start_ycoord`, `end_xcoord`, `end_ycoord`, `stop_after_activity`, `transition_to_id`, `transition_from_id`, `branching_ordered_asc`) VALUES
(32, NULL, 'Assessment', 'Assessment', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 26, '2020-08-24 04:42:07', NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.assessment.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(33, NULL, 'Chat Tool', 'Chat Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 27, '2020-08-24 04:42:15', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lachat11/images/icon_chat.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.chat.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(34, NULL, 'Collecting data with custom structure.', 'Data Collection', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 28, '2020-08-24 04:42:22', NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/ladaco10/images/icon_daco.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.daco.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(35, NULL, 'Forum/Message Board', 'Forum', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 29, '2020-08-24 04:42:27', NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.forum.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(36, NULL, 'ImageGallery', 'ImageGallery', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 30, '2020-08-24 04:42:36', NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laimag10/images/icon_imageGallery.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.imageGallery.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(37, NULL, 'CommonCartridge', 'CommonCartridge', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 31, '2020-08-24 04:42:40', NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laimsc11/images/icon_commonCartridge.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.commonCartridge.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(38, NULL, 'Allows creation and use of multiple choice questioning format', 'Multiple Choice Questions', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 32, '2020-08-24 04:42:44', NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mcq.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.mc.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(39, NULL, 'Allows creation and use of question and answer format', 'Question and Answer', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 33, '2020-08-24 04:42:50', NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_questionanswer.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.qa.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(40, NULL, 'Share Resources', 'Share Resources', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 34, '2020-08-24 04:42:55', NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/larsrc11/images/icon_rsrc.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.rsrc.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(41, NULL, 'Leaderselection Tool', 'Leaderselection Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 35, '2020-08-24 04:43:00', NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lalead11/images/icon_leaderselection.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.leaderselection.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(42, NULL, 'Mindmap Tool', 'Mindmap Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 36, '2020-08-24 04:43:04', NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamind10/images/icon_mindmap.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.mindmap.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(43, NULL, 'Displays a NoticeboardX', 'NoticeboardX', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 37, '2020-08-24 04:43:10', NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_htmlnb.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.noticeboard.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(44, NULL, 'Notebook Tool', 'Notebook Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 38, '2020-08-24 04:43:14', NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lantbk11/images/icon_notebook.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.notebook.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(45, NULL, 'Pixlr Tool', 'Pixlr Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 39, '2020-08-24 04:43:19', NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.pixlr.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(46, NULL, 'Uploading of files by learners, for review by teachers.', 'Submit File', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 40, '2020-08-24 04:43:22', NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasbmt11/images/icon_reportsubmission.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.sbmt.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(47, NULL, 'Scratchie', 'Scratchie', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 41, '2020-08-24 04:43:27', NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrt11/images/icon_scratchie.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scratchie.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(48, NULL, 'Scribe Tool', 'Scribe Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 42, '2020-08-24 04:43:32', NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(49, NULL, 'Spreadsheet', 'Spreadsheet', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 43, '2020-08-24 04:43:36', NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasprd10/images/icon_spreadsheet.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.spreadsheet.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(50, NULL, 'Survey', 'Survey', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 44, '2020-08-24 04:43:41', NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.survey.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(51, NULL, 'TaskList', 'TaskList', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 45, '2020-08-24 04:43:46', NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/latask10/images/icon_taskList.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.taskList.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(52, NULL, 'Allows creation and use of voting format', 'Voting', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 46, '2020-08-24 04:43:51', NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lavote11/images/icon_ranking.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.vote.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(53, NULL, 'Wiki Tool', 'Wiki Tool', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 47, '2020-08-24 04:43:55', NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lawiki10/images/icon_wiki.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.wiki.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(54, NULL, 'Peerreview', 'Peerreview', NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, 48, '2020-08-24 04:44:00', NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laprev11/images/icon_peerreview.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.peerreview.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(55, NULL, 'Combined Share Resources and Forum', 'Discuss Shared Resources', NULL, NULL, NULL, NULL, 6, 2, 0, NULL, NULL, NULL, NULL, 49, '2020-08-24 04:44:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'images/icon_urlcontentmessageboard.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.library.shareresourcesforum.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(56, NULL, 'Share Resources', 'Share Resources', NULL, NULL, 55, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:03', NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/larsrc11/images/icon_rsrc.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.rsrc.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(57, NULL, 'Forum/Message Board', 'Forum', NULL, NULL, 55, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:03', NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.forum.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(58, NULL, 'Combined Chat and Scribe', 'Prepare Group Report', NULL, NULL, NULL, NULL, 6, 2, 0, NULL, NULL, NULL, NULL, 50, '2020-08-24 04:44:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'images/icon_groupreporting.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.library.chatscribe.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(59, NULL, 'Chat Tool', 'Chat Tool', NULL, NULL, 58, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:04', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lachat11/images/icon_chat.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.chat.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(60, NULL, 'Scribe Tool', 'Scribe Tool', NULL, NULL, 58, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:04', NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(61, NULL, 'Combined Chat and Scribe', 'Prepare Group Report', NULL, NULL, NULL, NULL, 6, 2, 0, NULL, NULL, NULL, NULL, 51, '2020-08-24 04:44:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'images/icon_forum_and_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.library.forumscribe.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(62, NULL, 'Forum/Message Board', 'Forum', NULL, NULL, 61, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:06', NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.forum.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(63, NULL, 'Scribe Tool', 'Scribe Tool', NULL, NULL, 61, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, '2020-08-24 04:44:06', NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(64, 1, NULL, 'Introduction to TBL', 20, 125, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 1, 37, '2020-08-31 15:59:59', NULL, NULL, NULL, 34, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_htmlnb.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL),
(65, 7, NULL, 'Team Setup', 205, 125, NULL, NULL, 2, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 2, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, NULL),
(66, 8, 'IRAGate', 'IRAGate', 440, 130, NULL, NULL, 5, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 2, 3, NULL),
(67, 9, NULL, 'IRA', 575, 125, NULL, NULL, 1, 2, 1, 1, 2, NULL, 1, 26, '2020-08-31 15:59:59', NULL, NULL, NULL, 23, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, NULL),
(68, 10, NULL, 'Leader Selection', 20, 225, NULL, NULL, 1, 2, 1, 1, 2, NULL, 1, 35, '2020-08-31 15:59:59', NULL, NULL, NULL, 32, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lalead11/images/icon_leaderselection.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 4, 5, NULL),
(69, 11, 'TRAGate', 'TRAGate', 255, 230, NULL, NULL, 5, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 5, 6, NULL),
(70, 12, NULL, 'TRA', 390, 225, NULL, NULL, 1, 2, 1, 1, 2, NULL, 1, 41, '2020-08-31 15:59:59', NULL, NULL, NULL, 38, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrt11/images/icon_scratchie.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, NULL),
(71, 13, 'AEGate Άσκηση Εφαρμογής 1', 'AEGate Άσκηση Εφαρμογής 1', 70, 330, NULL, NULL, 5, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, 8, NULL),
(72, 14, NULL, 'Άσκηση Εφαρμογής 1', 205, 325, NULL, NULL, 1, 2, 1, 1, 2, NULL, 1, 26, '2020-08-31 15:59:59', NULL, NULL, NULL, 23, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 8, 9, NULL),
(73, 15, 'Peer Review Gate', 'Peer Review Gate', 70, 430, NULL, NULL, 5, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, 10, NULL),
(74, 16, NULL, 'Peer Review', 205, 425, NULL, NULL, 1, 2, 1, 1, 2, NULL, 1, 48, '2020-08-31 15:59:59', NULL, NULL, NULL, 45, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laprev11/images/icon_peerreview.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 10, 11, NULL),
(75, 17, NULL, 'Gate', 440, 430, NULL, NULL, 5, 2, 0, NULL, NULL, NULL, 1, NULL, '2020-08-31 15:59:59', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 11, 12, NULL),
(76, 18, NULL, 'Notebook', 575, 425, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 1, 38, '2020-08-31 15:59:59', NULL, NULL, NULL, 35, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lantbk11/images/icon_notebook.swf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 12, NULL, NULL),
(77, 1, NULL, 'Ανακ. Πίνακας', 73, 33, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 2, 37, '2020-09-04 11:50:30', NULL, NULL, NULL, 34, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 13, NULL),
(78, 2, NULL, 'Αξιολόγηση', 255, 39, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 2, 26, '2020-09-04 11:50:30', NULL, NULL, NULL, 23, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, NULL),
(79, 1, NULL, 'Ανακ. Πίνακας', 73, 33, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 3, 37, '2020-09-05 13:32:49', NULL, NULL, NULL, 34, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 14, NULL),
(80, 2, NULL, 'Αξιολόγηση', 255, 39, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 3, 26, '2020-09-05 13:32:49', NULL, NULL, NULL, 23, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 14, NULL, NULL),
(81, 1, NULL, 'Ανακ. Πίνακας', 171, 62, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 4, 37, '2020-09-05 13:36:49', NULL, NULL, NULL, 34, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 15, NULL),
(82, 2, NULL, 'Επεξ Εικ. Pixlr', 344, 65, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 4, 39, '2020-09-05 13:36:49', NULL, NULL, NULL, 36, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 15, 16, NULL),
(83, 3, NULL, 'Αξιολόγηση', 516, 59, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 4, 26, '2020-09-05 13:36:49', NULL, NULL, NULL, 23, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 16, NULL, NULL),
(84, 1, NULL, 'Ανακ. Πίνακας', 171, 62, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 5, 37, '2020-09-05 13:38:19', NULL, NULL, NULL, 34, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 17, NULL),
(85, 2, NULL, 'Επεξ Εικ. Pixlr', 344, 65, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 5, 39, '2020-09-05 13:38:18', NULL, NULL, NULL, 36, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 17, 18, NULL),
(86, 3, NULL, 'Αξιολόγηση', 516, 59, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 5, 26, '2020-09-05 13:38:19', NULL, NULL, NULL, 23, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 18, NULL, NULL),
(87, 1, NULL, 'Ανακ. Πίνακας', 206, 73, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 6, 37, '2020-09-07 13:26:41', NULL, NULL, NULL, 34, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 19, NULL),
(88, 2, NULL, 'Επεξ Εικ. Pixlr', 394, 78, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 6, 39, '2020-09-07 13:26:41', NULL, NULL, NULL, 36, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 19, NULL, NULL),
(89, 1, NULL, 'Ανακ. Πίνακας', 206, 73, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 7, 37, '2020-09-07 13:27:21', NULL, NULL, NULL, 34, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 20, NULL),
(90, 2, NULL, 'Επεξ Εικ. Pixlr', 394, 78, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 7, 39, '2020-09-07 13:27:21', NULL, NULL, NULL, 36, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 20, NULL, NULL),
(91, 1, NULL, 'Ανακ. Πίνακας', 120, 29, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 8, 37, '2020-09-07 13:28:45', NULL, NULL, NULL, 34, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 21, NULL),
(92, 2, NULL, 'Επεξ Εικ. Pixlr', 406, 44, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 8, 39, '2020-09-07 13:28:45', NULL, NULL, NULL, 36, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 21, NULL, NULL),
(93, 1, NULL, 'Ανακ. Πίνακας', 120, 29, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 9, 37, '2020-09-07 13:29:44', NULL, NULL, NULL, 34, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 22, NULL),
(94, 2, NULL, 'Επεξ Εικ. Pixlr', 406, 44, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 9, 39, '2020-09-07 13:29:44', NULL, NULL, NULL, 36, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 22, NULL, NULL),
(95, 1, NULL, 'Ανακ. Πίνακας', 206, 73, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 10, 37, '2020-09-07 13:38:03', NULL, NULL, NULL, 34, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 23, NULL),
(96, 2, NULL, 'Επεξ Εικ. Pixlr', 394, 78, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 10, 39, '2020-09-07 13:38:03', NULL, NULL, NULL, 36, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 23, NULL, NULL),
(97, 1, NULL, 'Ανακ. Πίνακας', 95, 45, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 11, 37, '2020-09-07 18:42:19', NULL, NULL, NULL, 34, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 24, NULL),
(98, 2, NULL, 'Επεξ Εικ. Pixlr', 319, 27, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 11, 39, '2020-09-07 18:42:19', NULL, NULL, NULL, 36, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 24, NULL, NULL),
(99, 1, NULL, 'Ανακ. Πίνακας', 143, 60, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 12, 37, '2020-09-08 11:00:24', NULL, NULL, NULL, 34, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 25, NULL),
(100, 2, NULL, 'Επεξ Εικ. Pixlr', 391, 68, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 12, 39, '2020-09-08 11:00:24', NULL, NULL, NULL, 36, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 25, NULL, NULL),
(101, 1, NULL, 'Ανακ. Πίνακας', 95, 45, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 13, 37, '2020-09-08 12:48:41', NULL, NULL, NULL, 34, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 26, NULL),
(102, 2, NULL, 'Επεξ Εικ. Pixlr', 319, 27, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 13, 39, '2020-09-08 12:48:41', NULL, NULL, NULL, 36, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 26, NULL, NULL),
(103, 1, NULL, 'Ανακ. Πίνακας', 171, 62, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 14, 37, '2020-09-08 12:50:08', NULL, NULL, NULL, 34, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 27, NULL),
(104, 2, NULL, 'Επεξ Εικ. Pixlr', 344, 65, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 14, 39, '2020-09-08 12:50:08', NULL, NULL, NULL, 36, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 27, 28, NULL),
(105, 3, NULL, 'Αξιολόγηση', 516, 59, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 14, 26, '2020-09-08 12:50:08', NULL, NULL, NULL, 23, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 28, NULL, NULL),
(106, 1, NULL, 'Επεξ Εικ. Pixlr', 94, 147, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 15, 39, '2020-09-08 13:08:30', NULL, NULL, NULL, 36, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 29, NULL),
(107, 2, NULL, 'Ανακ. Πίνακας', 348, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 15, 37, '2020-09-08 13:08:30', NULL, NULL, NULL, 34, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 29, NULL, NULL),
(108, 1, NULL, 'Επεξ Εικ. Pixlr', 94, 147, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 16, 39, '2020-09-10 12:26:58', NULL, NULL, NULL, 36, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 30, NULL),
(109, 2, NULL, 'Ανακ. Πίνακας', 348, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 16, 37, '2020-09-10 12:26:58', NULL, NULL, NULL, 34, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 30, NULL, NULL),
(110, 1, NULL, 'Ερευνα', 75, 214, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 17, 44, '2020-09-15 14:38:29', NULL, NULL, NULL, 41, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 31, NULL),
(111, 2, NULL, 'Ερωτ. & Απαντ.', 345, 159, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 17, 33, '2020-09-15 14:38:29', NULL, NULL, NULL, 30, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 31, NULL, NULL),
(112, 1, NULL, 'Ερευνα', 75, 214, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 18, 44, '2020-09-15 14:45:18', NULL, NULL, NULL, 41, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 32, NULL),
(113, 2, NULL, 'Ερωτ. & Απαντ.', 345, 159, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 18, 33, '2020-09-15 14:45:18', NULL, NULL, NULL, 30, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 32, NULL, NULL),
(118, 1, NULL, 'Ερευνα', 117, 189, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 21, 44, '2020-09-15 15:04:24', NULL, NULL, NULL, 41, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 35, NULL),
(119, 2, NULL, 'Ερωτ. & Απαντ.', 371, 152, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 21, 33, '2020-09-15 15:04:25', NULL, NULL, NULL, 30, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 35, 36, NULL),
(120, 3, NULL, 'Ερωτ. Πολ. Επ.', 690, 115, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 21, 32, '2020-09-15 15:04:25', NULL, NULL, NULL, 29, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 36, NULL, NULL),
(124, 1, NULL, 'Ερευνα', 175, 170, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 23, 44, '2020-09-15 15:31:15', NULL, NULL, NULL, 41, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 39, NULL),
(125, 2, NULL, 'Ερωτ. & Απαντ.', 481, 130, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 23, 33, '2020-09-15 15:31:15', NULL, NULL, NULL, 30, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 39, NULL, NULL),
(126, 1, NULL, 'Ερευνα', 175, 170, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 24, 44, '2020-09-15 15:31:41', NULL, NULL, NULL, 41, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 40, NULL),
(127, 2, NULL, 'Ερωτ. & Απαντ.', 481, 130, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 24, 33, '2020-09-15 15:31:41', NULL, NULL, NULL, 30, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 40, NULL, NULL),
(128, 1, NULL, 'Επεξ Εικ. Pixlr', 135, 171, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 25, 39, '2020-09-15 15:32:29', NULL, NULL, NULL, 36, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 41, NULL),
(129, 2, NULL, 'Επισκόπηση', 314, 178, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 25, 42, '2020-09-15 15:32:29', NULL, NULL, NULL, 39, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 41, NULL, NULL),
(130, 1, NULL, 'Επεξ Εικ. Pixlr', 135, 171, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 26, 39, '2020-09-15 15:35:43', NULL, NULL, NULL, 36, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 42, NULL),
(131, 2, NULL, 'Επισκόπηση', 314, 178, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 26, 42, '2020-09-15 15:35:43', NULL, NULL, NULL, 39, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 42, NULL, NULL),
(132, 1, NULL, 'Ανακ. Πίνακας', 38, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 27, 37, '2020-09-29 17:49:14', NULL, NULL, NULL, 34, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 43, NULL),
(133, 2, NULL, 'Ερωτ. & Απαντ.', 234, 169, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 27, 33, '2020-09-29 17:49:14', NULL, NULL, NULL, 30, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 43, NULL, NULL),
(134, 1, NULL, 'Ανακ. Πίνακας', 38, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 28, 37, '2020-09-29 17:52:15', NULL, NULL, NULL, 34, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 44, NULL),
(135, 2, NULL, 'Ερωτ. & Απαντ.', 234, 169, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 28, 33, '2020-09-29 17:52:15', NULL, NULL, NULL, 30, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 44, NULL, NULL),
(136, 1, NULL, 'Ανακ. Πίνακας', 38, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 29, 37, '2020-09-29 17:54:40', NULL, NULL, NULL, 34, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 45, NULL),
(137, 2, NULL, 'Ερωτ. & Απαντ.', 234, 169, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 29, 33, '2020-09-29 17:54:40', NULL, NULL, NULL, 30, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 45, NULL, NULL),
(138, 1, NULL, 'Επιλογή Συντονιστή', 114, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 30, 35, '2020-09-29 17:55:44', NULL, NULL, NULL, 32, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lalead11/images/icon_leaderselection.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 46, NULL),
(139, 2, NULL, 'Ερευνα', 497, 106, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 30, 44, '2020-09-29 17:55:44', NULL, NULL, NULL, 41, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 46, NULL, NULL),
(140, 1, NULL, 'Επιλογή Συντονιστή', 114, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 31, 35, '2020-09-29 17:55:58', NULL, NULL, NULL, 32, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lalead11/images/icon_leaderselection.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 47, NULL),
(141, 2, NULL, 'Ερευνα', 497, 106, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 31, 44, '2020-09-29 17:55:58', NULL, NULL, NULL, 41, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 47, NULL, NULL),
(142, 1, NULL, 'Ανακ. Πίνακας', 38, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 32, 37, '2020-09-29 18:17:19', NULL, NULL, NULL, 34, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 48, NULL),
(143, 2, NULL, 'Ερωτ. & Απαντ.', 234, 169, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 32, 33, '2020-09-29 18:17:19', NULL, NULL, NULL, 30, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 48, NULL, NULL),
(144, 1, NULL, 'Ανακ. Πίνακας', 38, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 33, 37, '2020-09-29 18:19:53', NULL, NULL, NULL, 34, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 49, NULL),
(145, 2, NULL, 'Ερωτ. & Απαντ.', 234, 169, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 33, 33, '2020-09-29 18:19:53', NULL, NULL, NULL, 30, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laqa11/images/icon_qa.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 49, NULL, NULL),
(146, 1, NULL, 'Συζήτηση (Forum)', 338, 85, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 34, 29, '2020-10-05 14:46:58', NULL, NULL, NULL, 26, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(147, 1, NULL, 'Συζήτηση (Forum)', 338, 85, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 35, 29, '2020-10-05 14:47:02', NULL, NULL, NULL, 26, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(148, 1, NULL, 'Συζήτηση (Forum)', 338, 85, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 36, 29, '2020-10-05 14:47:10', NULL, NULL, NULL, 26, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(149, 1, NULL, 'Αξιολόγηση', 170, 141, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 37, 26, '2020-10-05 15:10:31', NULL, NULL, NULL, 23, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(150, 1, NULL, 'Αξιολόγηση', 160, 167, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 38, 26, '2020-10-05 15:27:07', NULL, NULL, NULL, 23, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(151, 1, NULL, 'Αξιολόγηση', 160, 167, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 39, 26, '2020-10-05 15:32:45', NULL, NULL, NULL, 23, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(152, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 40, 37, '2020-10-07 19:15:08', NULL, NULL, NULL, 34, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 50, NULL),
(153, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 40, 32, '2020-10-07 19:15:08', NULL, NULL, NULL, 29, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 50, 51, NULL),
(154, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 40, 29, '2020-10-07 19:15:08', NULL, NULL, NULL, 26, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 51, NULL, NULL),
(155, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 41, 37, '2020-10-07 19:16:11', NULL, NULL, NULL, 34, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 52, NULL),
(156, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 41, 32, '2020-10-07 19:16:11', NULL, NULL, NULL, 29, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 52, 53, NULL),
(157, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 41, 29, '2020-10-07 19:16:11', NULL, NULL, NULL, 26, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 53, NULL, NULL),
(158, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 42, 37, '2020-10-07 19:16:36', NULL, NULL, NULL, 34, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 54, NULL),
(159, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 42, 32, '2020-10-07 19:16:38', NULL, NULL, NULL, 29, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 54, 55, NULL),
(160, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 42, 29, '2020-10-07 19:16:33', NULL, NULL, NULL, 26, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 55, NULL, NULL),
(161, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 43, 37, '2020-10-07 19:16:42', NULL, NULL, NULL, 34, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 56, NULL),
(162, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 43, 32, '2020-10-07 19:16:43', NULL, NULL, NULL, 29, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 56, 57, NULL),
(163, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 43, 29, '2020-10-07 19:16:41', NULL, NULL, NULL, 26, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 57, NULL, NULL),
(164, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 44, 37, '2020-10-07 19:17:08', NULL, NULL, NULL, 34, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 58, NULL),
(165, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 44, 32, '2020-10-07 19:17:08', NULL, NULL, NULL, 29, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 58, 59, NULL),
(166, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 44, 29, '2020-10-07 19:17:08', NULL, NULL, NULL, 26, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 59, NULL, NULL),
(167, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 45, 37, '2020-10-07 19:17:58', NULL, NULL, NULL, 34, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 60, NULL),
(168, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 45, 32, '2020-10-07 19:17:58', NULL, NULL, NULL, 29, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 60, 61, NULL),
(169, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 45, 29, '2020-10-07 19:17:58', NULL, NULL, NULL, 26, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 61, NULL, NULL),
(170, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 46, 37, '2020-10-07 19:18:36', NULL, NULL, NULL, 34, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 62, NULL),
(171, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 46, 32, '2020-10-07 19:18:36', NULL, NULL, NULL, 29, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 62, 63, NULL),
(172, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 46, 29, '2020-10-07 19:18:36', NULL, NULL, NULL, 26, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 63, NULL, NULL),
(173, 2, NULL, 'Εισαγωγή', 169, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 47, 37, '2020-10-07 19:22:33', NULL, NULL, NULL, 34, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 64, NULL),
(174, 3, NULL, 'Ερωτήσεις', 387, 145, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 47, 32, '2020-10-07 19:22:33', NULL, NULL, NULL, 29, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 64, 65, NULL),
(175, 5, NULL, 'Συζήτηση (Forum)', 652, 139, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 47, 29, '2020-10-07 19:22:33', NULL, NULL, NULL, 26, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 65, NULL, NULL),
(176, 1, NULL, 'Εισαγωγή', 201, 141, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 48, 37, '2020-10-13 18:37:55', NULL, NULL, NULL, 34, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 66, NULL),
(177, 8, NULL, 'Ερωτήσεις', 479, 137, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 48, 32, '2020-10-13 18:37:55', NULL, NULL, NULL, 29, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 66, 67, NULL),
(178, 14, NULL, 'Συζήτηση (Forum)', 737, 134, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 48, 29, '2020-10-13 18:37:55', NULL, NULL, NULL, 26, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 67, NULL, NULL),
(179, 1, NULL, 'Εισαγωγή', 201, 141, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 49, 37, '2020-10-13 18:38:02', NULL, NULL, NULL, 34, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 68, NULL),
(180, 8, NULL, 'Ερωτήσεις', 479, 137, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 49, 32, '2020-10-13 18:38:02', NULL, NULL, NULL, 29, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 68, 69, NULL),
(181, 14, NULL, 'Συζήτηση (Forum)', 737, 134, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 49, 29, '2020-10-13 18:38:02', NULL, NULL, NULL, 26, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 69, NULL, NULL),
(182, 1, NULL, 'Εισαγωγή', 165, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 50, 37, '2020-10-13 19:04:59', NULL, NULL, NULL, 34, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 70, NULL),
(183, 6, NULL, 'Ερωτήσεις', 416, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 50, 32, '2020-10-13 19:04:59', NULL, NULL, NULL, 29, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 70, 71, NULL),
(184, 10, NULL, 'Συζήτηση (Forum)', 647, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 50, 29, '2020-10-13 19:04:59', NULL, NULL, NULL, 26, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 71, NULL, NULL),
(185, 1, NULL, 'Εισαγωγή', 165, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 51, 37, '2020-10-13 19:34:10', NULL, NULL, NULL, 34, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 72, NULL),
(186, 6, NULL, 'Ερωτήσεις', 416, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 51, 32, '2020-10-13 19:34:10', NULL, NULL, NULL, 29, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 72, 73, NULL),
(187, 10, NULL, 'Συζήτηση (Forum)', 647, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 51, 29, '2020-10-13 19:34:10', NULL, NULL, NULL, 26, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 73, NULL, NULL),
(188, 1, NULL, 'Εισαγωγή', 165, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 52, 37, '2020-10-13 19:36:12', NULL, NULL, NULL, 34, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 74, NULL);
INSERT INTO `lams_learning_activity` (`activity_id`, `activity_ui_id`, `description`, `title`, `xcoord`, `ycoord`, `parent_activity_id`, `parent_ui_id`, `learning_activity_type_id`, `grouping_support_type_id`, `apply_grouping_flag`, `grouping_id`, `grouping_ui_id`, `order_id`, `learning_design_id`, `learning_library_id`, `create_date_time`, `max_number_of_options`, `min_number_of_options`, `options_instructions`, `tool_id`, `tool_content_id`, `gate_activity_level_id`, `gate_open_flag`, `gate_open_user`, `gate_open_time`, `gate_start_time_offset`, `gate_end_time_offset`, `gate_activity_completion_based`, `gate_password`, `gate_stop_at_preceding_activity`, `library_activity_ui_image`, `create_grouping_id`, `create_grouping_ui_id`, `library_activity_id`, `language_file`, `system_tool_id`, `read_only`, `initialised`, `default_activity_id`, `start_xcoord`, `start_ycoord`, `end_xcoord`, `end_ycoord`, `stop_after_activity`, `transition_to_id`, `transition_from_id`, `branching_ordered_asc`) VALUES
(189, 6, NULL, 'Ερωτήσεις', 416, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 52, 32, '2020-10-13 19:36:12', NULL, NULL, NULL, 29, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 74, 75, NULL),
(190, 10, NULL, 'Συζήτηση (Forum)', 647, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 52, 29, '2020-10-13 19:36:12', NULL, NULL, NULL, 26, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 75, NULL, NULL),
(191, 1, NULL, 'Εισαγωγή', 165, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 53, 37, '2020-10-13 19:37:55', NULL, NULL, NULL, 34, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 76, NULL),
(192, 6, NULL, 'Ερωτήσεις', 416, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 53, 32, '2020-10-13 19:37:55', NULL, NULL, NULL, 29, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 76, 77, NULL),
(193, 10, NULL, 'Συζήτηση (Forum)', 647, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 53, 29, '2020-10-13 19:37:55', NULL, NULL, NULL, 26, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 77, NULL, NULL),
(194, 1, NULL, 'Εισαγωγή', 165, 151, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 54, 37, '2020-10-13 19:42:32', NULL, NULL, NULL, 34, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 97, NULL),
(195, 6, NULL, 'Ερωτήσεις', 416, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 54, 32, '2020-10-13 19:42:32', NULL, NULL, NULL, 29, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 97, 79, NULL),
(196, 10, NULL, 'Συζήτηση (Forum)', 647, 154, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 54, 29, '2020-10-13 19:42:32', NULL, NULL, NULL, 26, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lafrum11/images/icon_forum.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 79, NULL, NULL),
(197, 1, NULL, 'Ανακ. Πίνακας', 92, 43, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 61, 37, '2020-11-07 18:38:24', NULL, NULL, NULL, 34, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 80, NULL),
(198, 2, NULL, 'Επεξ Εικ. Pixlr', 292, 47, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 61, 39, '2020-11-07 18:38:24', NULL, NULL, NULL, 36, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 80, 81, NULL),
(199, 3, NULL, 'Ερωτ. Πολ. Επ.', 295, 156, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 61, 32, '2020-11-07 18:38:24', NULL, NULL, NULL, 29, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 81, 84, NULL),
(200, 1, NULL, 'Ανακ. Πίνακας', 121, 63, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 62, 37, '2020-11-07 18:38:49', NULL, NULL, NULL, 34, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 82, NULL),
(201, 2, NULL, 'Ερωτ. Πολ. Επ.', 318, 66, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 62, 32, '2020-11-07 18:38:49', NULL, NULL, NULL, 29, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 82, 83, NULL),
(202, 3, NULL, 'Ερευνα', 502, 56, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 62, 44, '2020-11-07 18:38:49', NULL, NULL, NULL, 41, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 83, NULL, NULL),
(203, 4, NULL, 'Ερευνα', 524, 160, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 61, 44, '2020-11-07 18:40:49', NULL, NULL, NULL, 41, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 84, NULL, NULL),
(204, 1, NULL, 'Ανακ. Πίνακας', 92, 43, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 63, 37, '2020-11-07 18:42:07', NULL, NULL, NULL, 34, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 85, NULL),
(205, 2, NULL, 'Επεξ Εικ. Pixlr', 292, 47, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 63, 39, '2020-11-07 18:42:07', NULL, NULL, NULL, 36, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lapixl10/images/icon_pixlr.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 85, 86, NULL),
(206, 3, NULL, 'Ερωτ. Πολ. Επ.', 295, 156, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 63, 32, '2020-11-07 18:42:07', NULL, NULL, NULL, 29, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 86, 87, NULL),
(207, 4, NULL, 'Ερευνα', 524, 160, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 63, 44, '2020-11-07 18:42:07', NULL, NULL, NULL, 41, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasurv11/images/icon_survey.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 87, NULL, NULL),
(208, 1, NULL, 'Ανακ. Πίνακας', 83, 58, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 64, 37, '2020-11-07 19:04:57', NULL, NULL, NULL, 34, 267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 88, NULL),
(209, 2, NULL, 'Ερωτ. Πολ. Επ.', 252, 59, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 64, 32, '2020-11-07 19:04:57', NULL, NULL, NULL, 29, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 88, 89, NULL),
(210, 3, NULL, 'Υποβολή Αρχείου', 448, 64, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 64, 40, '2020-11-07 19:04:57', NULL, NULL, NULL, 37, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasbmt11/images/icon_submitfile.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 89, 90, NULL),
(211, 4, NULL, 'Αξιολόγηση', 453, 191, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 64, 26, '2020-11-07 19:04:58', NULL, NULL, NULL, 23, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 90, NULL, NULL),
(212, 1, NULL, 'Ανακ. Πίνακας', 83, 58, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 65, 37, '2020-11-07 19:05:49', NULL, NULL, NULL, 34, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 91, NULL),
(213, 2, NULL, 'Ερωτ. Πολ. Επ.', 252, 59, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 65, 32, '2020-11-07 19:05:49', NULL, NULL, NULL, 29, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lamc11/images/icon_mc.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 91, 92, NULL),
(214, 3, NULL, 'Υποβολή Αρχείου', 448, 64, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 65, 40, '2020-11-07 19:05:49', NULL, NULL, NULL, 37, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lasbmt11/images/icon_submitfile.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 92, 93, NULL),
(215, 4, NULL, 'Αξιολόγηση', 453, 191, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 65, 26, '2020-11-07 19:05:49', NULL, NULL, NULL, 23, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 93, NULL, NULL),
(220, 1, 'Displays a NoticeboardX', 'NoticeboardX', 300, 300, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 66, 37, '2020-11-19 02:25:09', NULL, NULL, NULL, 34, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_htmlnb.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.noticeboard.ApplicationResources', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(221, 1, NULL, 'Ανακ. Πίνακας', 73, 33, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 67, 37, '2020-11-19 02:31:35', NULL, NULL, NULL, 34, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lanb11/images/icon_nb.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 99, NULL),
(222, 2, NULL, 'Αξιολόγηση', 255, 39, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 67, 26, '2020-11-19 02:31:35', NULL, NULL, NULL, 23, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/laasse10/images/icon_assessment.svg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 99, NULL, NULL),
(223, 1, 'Scribe Tool', 'Scribe Tool', 300, 300, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 68, 42, '2020-11-19 02:44:30', NULL, NULL, NULL, 39, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(224, 1, 'Scribe Tool', 'Scribe Tool', 300, 300, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, 69, 42, '2020-11-19 02:52:13', NULL, NULL, NULL, 39, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'tool/lascrb11/images/icon_scribe.svg', NULL, NULL, NULL, 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_activity_type`
--

CREATE TABLE `lams_learning_activity_type` (
  `learning_activity_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_activity_type`
--

INSERT INTO `lams_learning_activity_type` (`learning_activity_type_id`, `description`) VALUES
(1, 'TOOL'),
(2, 'GROUPING'),
(3, 'GATE_SYNCH'),
(4, 'GATE_SCHEDULE'),
(5, 'GATE_PERMISSION'),
(6, 'PARALLEL'),
(7, 'OPTIONS'),
(8, 'SEQUENCE'),
(9, 'GATE_SYSTEM'),
(10, 'BRANCHING_CHOSEN'),
(11, 'BRANCHING_GROUP'),
(12, 'BRANCHING_TOOL'),
(13, 'OPTIONS_WITH_SEQUENCES'),
(14, 'GATE_CONDITION'),
(15, 'FLOATING'),
(16, 'GATE_PASSWORD');

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_command`
--

CREATE TABLE `lams_learning_command` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `command_TEXT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_design`
--

CREATE TABLE `lams_learning_design` (
  `learning_design_id` bigint NOT NULL,
  `learning_design_ui_id` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_activity_id` bigint DEFAULT NULL,
  `floating_activity_id` bigint DEFAULT NULL,
  `max_id` int DEFAULT NULL,
  `valid_design_flag` tinyint(1) NOT NULL,
  `read_only_flag` tinyint(1) NOT NULL,
  `date_read_only` datetime DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `original_user_id` bigint NOT NULL,
  `help_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copy_type_id` tinyint NOT NULL,
  `create_date_time` datetime NOT NULL,
  `version` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_learning_design_id` bigint DEFAULT NULL,
  `workspace_folder_id` bigint DEFAULT NULL,
  `duration` bigint DEFAULT NULL,
  `license_id` bigint DEFAULT NULL,
  `license_TEXT` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_modified_date_time` datetime DEFAULT NULL,
  `content_folder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_override_lock` tinyint(1) DEFAULT '0',
  `edit_override_user_id` bigint DEFAULT NULL,
  `design_version` int DEFAULT '1',
  `removed` tinyint(1) NOT NULL DEFAULT '0',
  `design_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_design`
--

INSERT INTO `lams_learning_design` (`learning_design_id`, `learning_design_ui_id`, `description`, `title`, `first_activity_id`, `floating_activity_id`, `max_id`, `valid_design_flag`, `read_only_flag`, `date_read_only`, `user_id`, `original_user_id`, `help_text`, `copy_type_id`, `create_date_time`, `version`, `original_learning_design_id`, `workspace_folder_id`, `duration`, `license_id`, `license_TEXT`, `last_modified_date_time`, `content_folder_id`, `edit_override_lock`, `edit_override_user_id`, `design_version`, `removed`, `design_type`) VALUES
(1, NULL, '', 'lkjlk', 64, NULL, 30, 1, 0, NULL, 1, 1, NULL, 1, '2020-08-31 15:59:59', '3.1', NULL, 45, NULL, NULL, NULL, '2020-08-31 15:59:59', '7a7ed773-4b1a-49ae-92f5-7ef2f6777188', 0, NULL, 1, 0, 'tbl'),
(2, NULL, '', 'first', 77, NULL, 4, 1, 0, NULL, 10, 10, NULL, 1, '2020-09-04 11:50:30', '3.1', NULL, 46, NULL, NULL, NULL, '2020-09-05 13:32:37', '18281252-da23-46cd-88c8-8a6e80fdd4fd', 0, NULL, 1, 0, NULL),
(3, NULL, '', 'first_05092020_1', 79, NULL, 4, 1, 0, NULL, 10, 10, NULL, 1, '2020-09-05 13:32:49', '3.1', NULL, 46, NULL, NULL, NULL, '2020-09-05 13:32:49', '18281252-da23-46cd-88c8-8a6e80fdd4fd', 0, NULL, 1, 0, NULL),
(4, NULL, '', 'second', 81, NULL, 5, 1, 0, NULL, 12, 12, NULL, 1, '2020-09-05 13:36:49', '3.1', NULL, 46, NULL, NULL, NULL, '2020-09-05 13:36:49', '7f3024e2-9294-4fc3-80df-2e78fd40d1c5', 0, NULL, 1, 0, NULL),
(5, NULL, '', 'second', 84, NULL, 5, 1, 1, NULL, 12, 12, NULL, 2, '2020-09-05 13:38:18', '3.1', 4, 23, NULL, NULL, NULL, '2020-09-05 13:38:18', '7f3024e2-9294-4fc3-80df-2e78fd40d1c5', 0, NULL, 1, 0, NULL),
(6, NULL, '', 'a23', 87, NULL, 3, 1, 0, NULL, 13, 13, NULL, 1, '2020-09-07 13:26:41', '3.1', NULL, 51, NULL, NULL, NULL, '2020-09-07 13:26:41', '6b79ce5f-e042-4c29-b271-bfc291631e83', 0, NULL, 1, 0, NULL),
(7, NULL, '', 'a23', 89, NULL, 3, 1, 1, NULL, 13, 13, NULL, 2, '2020-09-07 13:27:21', '3.1', 6, 60, NULL, NULL, NULL, '2020-09-07 13:27:21', '6b79ce5f-e042-4c29-b271-bfc291631e83', 0, NULL, 1, 0, NULL),
(8, NULL, '', 'a24', 91, NULL, 3, 1, 0, NULL, 13, 13, NULL, 1, '2020-09-07 13:28:45', '3.1', NULL, 51, NULL, NULL, NULL, '2020-09-07 13:28:45', 'd2b36b60-1ac7-4c62-9bbb-e4f6d5ef7f3e', 0, NULL, 1, 0, NULL),
(9, NULL, '', 'a24', 93, NULL, 3, 1, 1, NULL, 13, 13, NULL, 2, '2020-09-07 13:29:44', '3.1', 8, 60, NULL, NULL, NULL, '2020-09-07 13:29:44', 'd2b36b60-1ac7-4c62-9bbb-e4f6d5ef7f3e', 0, NULL, 1, 0, NULL),
(10, NULL, '', 'a23_07092020_1', 95, NULL, 3, 1, 1, NULL, 13, 13, NULL, 2, '2020-09-07 13:38:03', '3.1', 6, 60, NULL, NULL, NULL, '2020-09-07 13:38:03', '6b79ce5f-e042-4c29-b271-bfc291631e83', 0, NULL, 1, 0, NULL),
(11, NULL, '', 'third', 97, NULL, 3, 1, 0, NULL, 12, 12, NULL, 1, '2020-09-07 18:42:19', '3.1', NULL, 50, NULL, NULL, NULL, '2020-09-07 18:42:19', '9dcd848c-aace-450d-8747-f6225be0a459', 0, NULL, 1, 0, NULL),
(12, NULL, '', 'a8', 99, NULL, 3, 1, 0, NULL, 19, 19, NULL, 1, '2020-09-08 11:00:23', '3.1', NULL, 61, NULL, NULL, NULL, '2020-09-08 11:00:23', '0a84c404-90ee-4659-8ccb-e3894aa2b631', 0, NULL, 1, 0, NULL),
(13, NULL, '', 'third', 101, NULL, 3, 1, 0, NULL, 12, 12, NULL, 1, '2020-09-08 12:48:41', '3.1', NULL, 46, NULL, NULL, NULL, '2020-09-08 12:48:41', '9dcd848c-aace-450d-8747-f6225be0a459', 0, NULL, 1, 0, NULL),
(14, NULL, '', 'second_08092020_1', 103, NULL, 5, 1, 0, NULL, 12, 12, NULL, 1, '2020-09-08 12:50:08', '3.1', NULL, 46, NULL, NULL, NULL, '2020-09-08 12:50:08', '7f3024e2-9294-4fc3-80df-2e78fd40d1c5', 0, NULL, 1, 0, NULL),
(15, NULL, '', 'diktia', 106, NULL, 3, 1, 0, NULL, 13, 13, NULL, 1, '2020-09-08 13:08:30', '3.1', NULL, 51, NULL, NULL, NULL, '2020-09-08 13:08:30', '02939f77-e615-48b6-8d87-598ba3f2cc5c', 0, NULL, 1, 0, NULL),
(16, NULL, '', 'diktia', 108, NULL, 3, 1, 1, NULL, 13, 13, NULL, 2, '2020-09-10 12:26:58', '3.1', 15, 60, NULL, NULL, NULL, '2020-09-10 12:26:58', '02939f77-e615-48b6-8d87-598ba3f2cc5c', 0, NULL, 1, 0, NULL),
(17, NULL, '', 'Μαθηματικά', 110, NULL, 3, 1, 0, NULL, 25, 25, NULL, 1, '2020-09-15 14:38:29', '3.1', NULL, 71, NULL, NULL, NULL, '2020-09-15 14:38:29', '123643cc-6729-424c-ae91-d82784d5283b', 0, NULL, 1, 0, NULL),
(18, NULL, '', 'Μαθηματικά', 112, NULL, 3, 1, 1, NULL, 25, 25, NULL, 3, '2020-09-15 14:45:18', '3.1', 17, NULL, NULL, NULL, NULL, '2020-09-15 14:45:18', '123643cc-6729-424c-ae91-d82784d5283b', 0, NULL, 1, 0, NULL),
(21, NULL, '', 'Φυσική', 118, NULL, 5, 1, 0, NULL, 25, 25, NULL, 1, '2020-09-15 15:04:24', '3.1', NULL, 71, NULL, NULL, NULL, '2020-09-15 15:04:24', 'd0a0cbe3-9c5d-4df9-81a8-c6414cbedab8', 0, NULL, 1, 0, NULL),
(23, NULL, '', 'Μαθηματικά', 124, NULL, 3, 1, 0, NULL, 28, 28, NULL, 1, '2020-09-15 15:31:15', '3.1', NULL, 76, NULL, NULL, NULL, '2020-09-15 15:31:15', '48235157-d46b-4287-a004-479edf4763e7', 0, NULL, 1, 0, NULL),
(24, NULL, '', 'Μαθηματικά', 126, NULL, 3, 1, 1, NULL, 28, 28, NULL, 2, '2020-09-15 15:31:41', '3.1', 23, 75, NULL, NULL, NULL, '2020-09-15 15:31:41', '48235157-d46b-4287-a004-479edf4763e7', 0, NULL, 1, 0, NULL),
(25, NULL, '', 'Αρχαία', 128, NULL, 3, 1, 0, NULL, 28, 28, NULL, 1, '2020-09-15 15:32:29', '3.1', NULL, 76, NULL, NULL, NULL, '2020-09-15 15:32:29', '65261ba6-6d70-4358-8874-37ca230d10ae', 0, NULL, 1, 0, NULL),
(26, NULL, '', 'Αρχαία', 130, NULL, 3, 1, 1, NULL, 28, 28, NULL, 2, '2020-09-15 15:35:43', '3.1', 25, 75, NULL, NULL, NULL, '2020-09-15 15:35:43', '65261ba6-6d70-4358-8874-37ca230d10ae', 0, NULL, 1, 0, NULL),
(27, NULL, '', 'Μ1', 132, NULL, 3, 1, 0, NULL, 31, 31, NULL, 1, '2020-09-29 17:49:14', '3.1', NULL, 81, NULL, NULL, NULL, '2020-09-29 17:49:14', '10fb85b6-1329-423d-a2d9-667a6eafad8c', 0, NULL, 1, 1, NULL),
(28, NULL, '', 'Μ1', 134, NULL, 3, 1, 1, NULL, 31, 31, NULL, 3, '2020-09-29 17:52:15', '3.1', 27, NULL, NULL, NULL, NULL, '2020-09-29 17:52:15', '10fb85b6-1329-423d-a2d9-667a6eafad8c', 0, NULL, 1, 0, NULL),
(29, NULL, '', 'Μ1', 136, NULL, 3, 1, 1, NULL, 31, 31, NULL, 2, '2020-09-29 17:54:40', '3.1', 27, 80, NULL, NULL, NULL, '2020-09-29 17:54:40', '10fb85b6-1329-423d-a2d9-667a6eafad8c', 0, NULL, 1, 0, NULL),
(30, NULL, '', 'Μ2', 138, NULL, 3, 1, 0, NULL, 31, 31, NULL, 1, '2020-09-29 17:55:44', '3.1', NULL, 81, NULL, NULL, NULL, '2020-09-29 17:55:44', '0215750a-3391-4544-820c-7a9d6b5a1b11', 0, NULL, 1, 1, NULL),
(31, NULL, '', 'Μ2', 140, NULL, 3, 1, 1, NULL, 31, 31, NULL, 2, '2020-09-29 17:55:58', '3.1', 30, 80, NULL, NULL, NULL, '2020-09-29 17:55:58', '0215750a-3391-4544-820c-7a9d6b5a1b11', 0, NULL, 1, 0, NULL),
(32, NULL, '', 'Μ1_29092020_1', 142, NULL, 3, 1, 1, NULL, 31, 31, NULL, 2, '2020-09-29 18:17:19', '3.1', 27, 80, NULL, NULL, NULL, '2020-09-29 18:17:19', '10fb85b6-1329-423d-a2d9-667a6eafad8c', 0, NULL, 1, 0, NULL),
(33, NULL, '', 'Μ1_29092020_2', 144, NULL, 3, 1, 1, NULL, 31, 31, NULL, 2, '2020-09-29 18:19:53', '3.1', 27, 80, NULL, NULL, NULL, '2020-09-29 18:19:53', '10fb85b6-1329-423d-a2d9-667a6eafad8c', 0, NULL, 1, 0, NULL),
(34, NULL, '', 'iii', 146, NULL, 1, 1, 0, NULL, 1, 1, NULL, 1, '2020-10-05 14:46:58', '3.1', NULL, 45, NULL, NULL, NULL, '2020-10-05 14:46:58', 'ab5da618-eae9-412b-a5b1-332d09f685c0', 0, NULL, 1, 1, NULL),
(35, NULL, '', 'iii', 147, NULL, 1, 1, 1, NULL, 1, 1, NULL, 3, '2020-10-05 14:47:02', '3.1', 34, NULL, NULL, NULL, NULL, '2020-10-05 14:47:02', 'ab5da618-eae9-412b-a5b1-332d09f685c0', 0, NULL, 1, 0, NULL),
(36, NULL, '', 'iii', 148, NULL, 1, 1, 1, NULL, 1, 1, NULL, 3, '2020-10-05 14:47:10', '3.1', 34, NULL, NULL, NULL, NULL, '2020-10-05 14:47:10', 'ab5da618-eae9-412b-a5b1-332d09f685c0', 0, NULL, 1, 0, NULL),
(37, NULL, '', 'iii', 149, NULL, 1, 1, 0, NULL, 31, 31, NULL, 1, '2020-10-05 15:10:31', '3.1', NULL, 81, NULL, NULL, NULL, '2020-10-05 15:10:31', '76eff87b-5ee5-46fa-8109-114064956d06', 0, NULL, 1, 1, NULL),
(38, NULL, '', 'M1', 150, NULL, 1, 1, 0, NULL, 31, 31, NULL, 1, '2020-10-05 15:27:07', '3.1', NULL, 81, NULL, NULL, NULL, '2020-10-05 15:31:35', 'd39c3f0a-c532-47a6-85fe-46dee5a3edf5', 0, NULL, 1, 1, NULL),
(39, NULL, '', 'M1', 151, NULL, 1, 1, 1, NULL, 31, 31, NULL, 2, '2020-10-05 15:32:45', '3.1', 38, 80, NULL, NULL, NULL, '2020-10-05 15:32:45', 'd39c3f0a-c532-47a6-85fe-46dee5a3edf5', 0, NULL, 1, 0, NULL),
(40, NULL, '', 'Μ2', 152, NULL, 6, 1, 0, NULL, 31, 31, NULL, 1, '2020-10-07 19:15:08', '3.1', NULL, 81, NULL, NULL, NULL, '2020-10-07 19:15:08', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 1, NULL),
(41, NULL, '', 'Μ2', 155, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:16:11', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:16:11', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(42, NULL, '', 'Μ2', 158, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:16:33', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:16:33', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(43, NULL, '', 'Μ2', 161, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:16:41', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:16:41', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(44, NULL, '', 'Μ2', 164, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:17:08', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:17:08', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(45, NULL, '', 'Μ2', 167, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:17:58', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:17:58', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(46, NULL, '', 'Μ2', 170, NULL, 6, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-07 19:18:36', '3.1', 40, NULL, NULL, NULL, NULL, '2020-10-07 19:18:36', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(47, NULL, '', 'Μ2_07102020_1', 173, NULL, 6, 1, 1, NULL, 31, 31, NULL, 2, '2020-10-07 19:22:33', '3.1', 40, 80, NULL, NULL, NULL, '2020-10-07 19:22:33', '3fb85574-79ec-4f6c-ace4-24dfabb575b9', 0, NULL, 1, 0, NULL),
(48, NULL, '', 'Μ2', 176, NULL, 15, 1, 0, NULL, 31, 31, NULL, 1, '2020-10-13 18:37:55', '3.1', NULL, 81, NULL, NULL, NULL, '2020-10-13 18:37:55', '393d988b-40db-4db7-aa02-2dfe53ccebe5', 0, NULL, 1, 1, NULL),
(49, NULL, '', 'Μ2', 179, NULL, 15, 1, 1, NULL, 31, 31, NULL, 3, '2020-10-13 18:38:02', '3.1', 48, NULL, NULL, NULL, NULL, '2020-10-13 18:38:02', '393d988b-40db-4db7-aa02-2dfe53ccebe5', 0, NULL, 1, 0, NULL),
(50, NULL, '', 'Μ1', 182, NULL, 11, 1, 0, NULL, 31, 31, NULL, 1, '2020-10-13 19:04:59', '3.1', NULL, 81, NULL, NULL, NULL, '2020-10-13 19:04:59', '806b7e77-ff51-42f8-9339-ed84f9f6a98c', 0, NULL, 1, 0, NULL),
(51, NULL, '', 'Μ1_13102020_1', 185, NULL, 11, 1, 1, NULL, 31, 31, NULL, 2, '2020-10-13 19:34:10', '3.1', 50, 80, NULL, NULL, NULL, '2020-10-13 19:34:10', '806b7e77-ff51-42f8-9339-ed84f9f6a98c', 0, NULL, 1, 0, NULL),
(52, NULL, '', 'Μ1_13102020_2', 188, NULL, 11, 1, 1, NULL, 31, 31, NULL, 2, '2020-10-13 19:36:12', '3.1', 50, 80, NULL, NULL, NULL, '2020-10-13 19:36:12', '806b7e77-ff51-42f8-9339-ed84f9f6a98c', 0, NULL, 1, 0, NULL),
(53, NULL, '', 'Μ1_13102020_3', 191, NULL, 11, 1, 1, NULL, 31, 31, NULL, 2, '2020-10-13 19:37:55', '3.1', 50, 80, NULL, NULL, NULL, '2020-10-13 19:37:55', '806b7e77-ff51-42f8-9339-ed84f9f6a98c', 0, NULL, 1, 0, NULL),
(54, NULL, '', 'Μ1_13102020_4', 194, NULL, 18, 1, 0, NULL, 31, 31, NULL, 2, '2020-10-13 19:42:32', '3.1', 50, 80, NULL, NULL, NULL, '2020-11-17 17:20:28', '806b7e77-ff51-42f8-9339-ed84f9f6a98c', 0, NULL, 8, 0, NULL),
(61, NULL, '', 'Algebra', 197, NULL, 7, 1, 0, NULL, 12, 12, NULL, 1, '2020-11-07 18:38:24', '3.1', NULL, 50, NULL, NULL, NULL, '2020-11-07 18:40:49', 'ea551877-bda6-4fca-ac33-cc20bd9d0267', 0, NULL, 1, 0, NULL),
(62, NULL, '', 'Algebra', 200, NULL, 5, 1, 1, NULL, 12, 12, NULL, 2, '2020-11-07 18:38:49', '3.1', 61, 23, NULL, NULL, NULL, '2020-11-07 18:38:49', '9e73fa1e-30fd-4792-83f3-e6917299411d', 0, NULL, 1, 0, NULL),
(63, NULL, '', 'Algebra_07112020_1', 204, NULL, 7, 1, 1, NULL, 12, 12, NULL, 2, '2020-11-07 18:42:07', '3.1', 61, 23, NULL, NULL, NULL, '2020-11-07 18:42:07', 'ea551877-bda6-4fca-ac33-cc20bd9d0267', 0, NULL, 1, 0, NULL),
(64, NULL, '', 'Geometry', 208, NULL, 7, 1, 0, NULL, 12, 12, NULL, 1, '2020-11-07 19:04:57', '3.1', NULL, 50, NULL, NULL, NULL, '2020-11-07 19:04:57', '0e608479-7cb9-43a5-aaa0-af71effdb21f', 0, NULL, 1, 0, NULL),
(65, NULL, '', 'Geometry', 212, NULL, 7, 1, 1, NULL, 12, 12, NULL, 2, '2020-11-07 19:05:49', '3.1', 64, 23, NULL, NULL, NULL, '2020-11-07 19:05:49', '0e608479-7cb9-43a5-aaa0-af71effdb21f', 0, NULL, 1, 0, NULL),
(66, NULL, NULL, 'Noticeboard', 220, NULL, 1, 1, 0, NULL, 40, 40, NULL, 2, '2020-11-19 02:25:09', '3.1', NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:25:09', '58d78236-016a-4e91-a59a-479a48cece5b', 0, NULL, 1, 0, NULL),
(67, NULL, '', 'first', 221, NULL, 4, 1, 1, NULL, 40, 10, NULL, 2, '2020-11-19 02:31:35', '3.1', 2, NULL, NULL, NULL, NULL, '2020-11-19 02:31:35', '18281252-da23-46cd-88c8-8a6e80fdd4fd', 0, NULL, 1, 0, NULL),
(68, NULL, NULL, 'Scribe', 223, NULL, 1, 1, 0, NULL, 40, 40, NULL, 2, '2020-11-19 02:44:30', '3.1', NULL, 393, NULL, NULL, NULL, '2020-11-19 02:44:30', '1f2ce1f8-8d88-4131-b2d6-a2d04ee0f3d9', 0, NULL, 1, 0, NULL),
(69, NULL, NULL, 'Scribe_19112020_1', 224, NULL, 1, 1, 1, NULL, 40, 40, NULL, 2, '2020-11-19 02:52:13', '3.1', 68, 393, NULL, NULL, NULL, '2020-11-19 02:52:13', '1f2ce1f8-8d88-4131-b2d6-a2d04ee0f3d9', 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_design_access`
--

CREATE TABLE `lams_learning_design_access` (
  `learning_design_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_design_access`
--

INSERT INTO `lams_learning_design_access` (`learning_design_id`, `user_id`, `access_date`) VALUES
(1, 1, '2020-08-31 15:59:59'),
(2, 10, '2020-09-05 13:32:31'),
(2, 40, '2020-11-19 02:29:14'),
(3, 10, '2020-09-05 13:32:49'),
(3, 40, '2020-11-19 02:08:12'),
(4, 12, '2020-10-18 13:15:11'),
(4, 40, '2020-11-19 02:08:14'),
(6, 13, '2020-09-07 13:26:41'),
(8, 13, '2020-09-07 13:28:46'),
(11, 12, '2020-10-18 13:11:07'),
(12, 19, '2020-09-08 11:00:25'),
(13, 12, '2020-09-08 12:48:41'),
(14, 12, '2020-09-08 12:50:09'),
(14, 40, '2020-11-19 02:08:10'),
(15, 13, '2020-09-08 13:08:31'),
(17, 25, '2020-09-15 14:38:29'),
(21, 25, '2020-09-15 15:04:26'),
(23, 28, '2020-09-15 15:31:16'),
(25, 28, '2020-09-15 15:32:29'),
(50, 31, '2020-10-13 19:05:00'),
(54, 31, '2020-11-17 17:18:39'),
(61, 12, '2020-11-07 18:40:49'),
(64, 12, '2020-11-07 19:04:58'),
(68, 40, '2020-11-19 02:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_design_annotation`
--

CREATE TABLE `lams_learning_design_annotation` (
  `uid` bigint NOT NULL,
  `learning_design_id` bigint NOT NULL,
  `ui_id` int DEFAULT NULL,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xcoord` int DEFAULT NULL,
  `ycoord` int DEFAULT NULL,
  `end_xcoord` int DEFAULT NULL,
  `end_ycoord` int DEFAULT NULL,
  `color` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_library`
--

CREATE TABLE `lams_learning_library` (
  `learning_library_id` bigint NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_flag` tinyint(1) NOT NULL DEFAULT '1',
  `create_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_library`
--

INSERT INTO `lams_learning_library` (`learning_library_id`, `description`, `title`, `valid_flag`, `create_date_time`) VALUES
(26, 'Assessment', 'Assessment', 1, '2020-08-24 04:42:07'),
(27, 'Chat Tool', 'Chat', 1, '2020-08-24 04:42:15'),
(28, 'Collecting data with custom structure.', 'Data Collection', 1, '2020-08-24 04:42:22'),
(29, 'Forum, also known Message Board', 'Forum', 1, '2020-08-24 04:42:27'),
(30, 'Share imageGallery', 'Share imageGallery', 1, '2020-08-24 04:42:36'),
(31, 'Share commonCartridge', 'Share commonCartridge', 1, '2020-08-24 04:42:40'),
(32, 'MCQ Learning Library Description', 'MCQ', 1, '2020-08-24 04:42:44'),
(33, 'Question and Answer Learning Library Description', 'Question and Answer', 1, '2020-08-24 04:42:50'),
(34, 'Share resources', 'Share resources', 1, '2020-08-24 04:42:55'),
(35, 'Leaderselection Tool', 'Leaderselection', 1, '2020-08-24 04:43:00'),
(36, 'Mindmap Tool', 'Mindmap', 1, '2020-08-24 04:43:04'),
(37, 'Displays a Noticeboard', 'Noticeboard', 1, '2020-08-24 04:43:09'),
(38, 'Notebook Tool', 'Notebook', 1, '2020-08-24 04:43:14'),
(39, 'Pixlr Tool', 'Pixlr', 1, '2020-08-24 04:43:19'),
(40, 'Uploading of files by learners, for review by teachers.', 'Submit file', 1, '2020-08-24 04:43:22'),
(41, 'Scratchie', 'Scratchie', 1, '2020-08-24 04:43:27'),
(42, 'Scribe Tool', 'Scribe', 1, '2020-08-24 04:43:32'),
(43, 'Spreadsheet Tool', 'Spreadsheet', 1, '2020-08-24 04:43:36'),
(44, 'Survey', 'Survey', 1, '2020-08-24 04:43:41'),
(45, 'Share taskList', 'Share taskList', 1, '2020-08-24 04:43:46'),
(46, 'Voting Learning Library Description', 'Voting', 1, '2020-08-24 04:43:50'),
(47, 'Wiki Tool', 'Wiki', 1, '2020-08-24 04:43:55'),
(48, 'Peerreview', 'Peerreview', 1, '2020-08-24 04:44:00'),
(49, 'Shared Resources and Forum', 'Resources and Forum', 1, '2020-08-24 04:44:03'),
(50, 'Chat and Scribe', 'Chat and Scribe', 1, '2020-08-24 04:44:04'),
(51, 'Forum and Scribe', 'Forum and Scribe', 1, '2020-08-24 04:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_library_to_group`
--

CREATE TABLE `lams_learning_library_to_group` (
  `group_id` int NOT NULL,
  `learning_library_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_learning_transition`
--

CREATE TABLE `lams_learning_transition` (
  `transition_id` bigint NOT NULL,
  `transition_ui_id` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_activity_id` bigint NOT NULL,
  `from_activity_id` bigint NOT NULL,
  `learning_design_id` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL,
  `to_ui_id` int DEFAULT NULL,
  `from_ui_id` int DEFAULT NULL,
  `transition_type` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_learning_transition`
--

INSERT INTO `lams_learning_transition` (`transition_id`, `transition_ui_id`, `description`, `title`, `to_activity_id`, `from_activity_id`, `learning_design_id`, `create_date_time`, `to_ui_id`, `from_ui_id`, `transition_type`) VALUES
(1, 19, NULL, NULL, 65, 64, 1, '2020-08-31 15:59:59', 7, 1, 0),
(2, 20, NULL, NULL, 66, 65, 1, '2020-08-31 15:59:59', 8, 7, 0),
(3, 21, NULL, NULL, 67, 66, 1, '2020-08-31 15:59:59', 9, 8, 0),
(4, 22, NULL, NULL, 68, 67, 1, '2020-08-31 15:59:59', 10, 9, 0),
(5, 23, NULL, NULL, 69, 68, 1, '2020-08-31 15:59:59', 11, 10, 0),
(6, 24, NULL, NULL, 70, 69, 1, '2020-08-31 15:59:59', 12, 11, 0),
(7, 25, NULL, NULL, 71, 70, 1, '2020-08-31 15:59:59', 13, 12, 0),
(8, 26, NULL, NULL, 72, 71, 1, '2020-08-31 15:59:59', 14, 13, 0),
(9, 27, NULL, NULL, 73, 72, 1, '2020-08-31 15:59:59', 15, 14, 0),
(10, 28, NULL, NULL, 74, 73, 1, '2020-08-31 15:59:59', 16, 15, 0),
(11, 29, NULL, NULL, 75, 74, 1, '2020-08-31 15:59:59', 17, 16, 0),
(12, 30, NULL, NULL, 76, 75, 1, '2020-08-31 15:59:59', 18, 17, 0),
(13, 4, NULL, NULL, 78, 77, 2, '2020-09-04 11:50:30', 2, 1, 0),
(14, 4, NULL, NULL, 80, 79, 3, '2020-09-05 13:32:49', 2, 1, 0),
(15, 4, NULL, NULL, 82, 81, 4, '2020-09-05 13:36:50', 2, 1, 0),
(16, 5, NULL, NULL, 83, 82, 4, '2020-09-05 13:36:50', 3, 2, 0),
(17, 4, NULL, NULL, 85, 84, 5, '2020-09-05 13:38:19', 2, 1, 0),
(18, 5, NULL, NULL, 86, 85, 5, '2020-09-05 13:38:19', 3, 2, 0),
(19, 3, NULL, NULL, 88, 87, 6, '2020-09-07 13:26:41', 2, 1, 0),
(20, 3, NULL, NULL, 90, 89, 7, '2020-09-07 13:27:21', 2, 1, 0),
(21, 3, NULL, NULL, 92, 91, 8, '2020-09-07 13:28:45', 2, 1, 0),
(22, 3, NULL, NULL, 94, 93, 9, '2020-09-07 13:29:44', 2, 1, 0),
(23, 3, NULL, NULL, 96, 95, 10, '2020-09-07 13:38:03', 2, 1, 0),
(24, 3, NULL, NULL, 98, 97, 11, '2020-09-07 18:42:19', 2, 1, 0),
(25, 3, NULL, NULL, 100, 99, 12, '2020-09-08 11:00:24', 2, 1, 0),
(26, 3, NULL, NULL, 102, 101, 13, '2020-09-08 12:48:41', 2, 1, 0),
(27, 4, NULL, NULL, 104, 103, 14, '2020-09-08 12:50:08', 2, 1, 0),
(28, 5, NULL, NULL, 105, 104, 14, '2020-09-08 12:50:08', 3, 2, 0),
(29, 3, NULL, NULL, 107, 106, 15, '2020-09-08 13:08:30', 2, 1, 0),
(30, 3, NULL, NULL, 109, 108, 16, '2020-09-10 12:26:58', 2, 1, 0),
(31, 3, NULL, NULL, 111, 110, 17, '2020-09-15 14:38:29', 2, 1, 0),
(32, 3, NULL, NULL, 113, 112, 18, '2020-09-15 14:45:18', 2, 1, 0),
(35, 4, NULL, NULL, 119, 118, 21, '2020-09-15 15:04:25', 2, 1, 0),
(36, 5, NULL, NULL, 120, 119, 21, '2020-09-15 15:04:25', 3, 2, 0),
(39, 3, NULL, NULL, 125, 124, 23, '2020-09-15 15:31:15', 2, 1, 0),
(40, 3, NULL, NULL, 127, 126, 24, '2020-09-15 15:31:41', 2, 1, 0),
(41, 3, NULL, NULL, 129, 128, 25, '2020-09-15 15:32:29', 2, 1, 0),
(42, 3, NULL, NULL, 131, 130, 26, '2020-09-15 15:35:43', 2, 1, 0),
(43, 3, NULL, NULL, 133, 132, 27, '2020-09-29 17:49:14', 2, 1, 0),
(44, 3, NULL, NULL, 135, 134, 28, '2020-09-29 17:52:15', 2, 1, 0),
(45, 3, NULL, NULL, 137, 136, 29, '2020-09-29 17:54:40', 2, 1, 0),
(46, 3, NULL, NULL, 139, 138, 30, '2020-09-29 17:55:44', 2, 1, 0),
(47, 3, NULL, NULL, 141, 140, 31, '2020-09-29 17:55:58', 2, 1, 0),
(48, 3, NULL, NULL, 143, 142, 32, '2020-09-29 18:17:19', 2, 1, 0),
(49, 3, NULL, NULL, 145, 144, 33, '2020-09-29 18:19:53', 2, 1, 0),
(50, 4, NULL, NULL, 153, 152, 40, '2020-10-07 19:15:08', 3, 2, 0),
(51, 6, NULL, NULL, 154, 153, 40, '2020-10-07 19:15:08', 5, 3, 0),
(52, 4, NULL, NULL, 156, 155, 41, '2020-10-07 19:16:11', 3, 2, 0),
(53, 6, NULL, NULL, 157, 156, 41, '2020-10-07 19:16:11', 5, 3, 0),
(54, 4, NULL, NULL, 159, 158, 42, '2020-10-07 19:16:39', 3, 2, 0),
(55, 6, NULL, NULL, 160, 159, 42, '2020-10-07 19:16:39', 5, 3, 0),
(56, 4, NULL, NULL, 162, 161, 43, '2020-10-07 19:16:43', 3, 2, 0),
(57, 6, NULL, NULL, 163, 162, 43, '2020-10-07 19:16:43', 5, 3, 0),
(58, 4, NULL, NULL, 165, 164, 44, '2020-10-07 19:17:08', 3, 2, 0),
(59, 6, NULL, NULL, 166, 165, 44, '2020-10-07 19:17:08', 5, 3, 0),
(60, 4, NULL, NULL, 168, 167, 45, '2020-10-07 19:17:58', 3, 2, 0),
(61, 6, NULL, NULL, 169, 168, 45, '2020-10-07 19:17:58', 5, 3, 0),
(62, 4, NULL, NULL, 171, 170, 46, '2020-10-07 19:18:36', 3, 2, 0),
(63, 6, NULL, NULL, 172, 171, 46, '2020-10-07 19:18:36', 5, 3, 0),
(64, 4, NULL, NULL, 174, 173, 47, '2020-10-07 19:22:33', 3, 2, 0),
(65, 6, NULL, NULL, 175, 174, 47, '2020-10-07 19:22:33', 5, 3, 0),
(66, 9, NULL, NULL, 177, 176, 48, '2020-10-13 18:37:55', 8, 1, 0),
(67, 15, NULL, NULL, 178, 177, 48, '2020-10-13 18:37:55', 14, 8, 0),
(68, 9, NULL, NULL, 180, 179, 49, '2020-10-13 18:38:03', 8, 1, 0),
(69, 15, NULL, NULL, 181, 180, 49, '2020-10-13 18:38:03', 14, 8, 0),
(70, 7, NULL, NULL, 183, 182, 50, '2020-10-13 19:04:59', 6, 1, 0),
(71, 11, NULL, NULL, 184, 183, 50, '2020-10-13 19:04:59', 10, 6, 0),
(72, 7, NULL, NULL, 186, 185, 51, '2020-10-13 19:34:10', 6, 1, 0),
(73, 11, NULL, NULL, 187, 186, 51, '2020-10-13 19:34:10', 10, 6, 0),
(74, 7, NULL, NULL, 189, 188, 52, '2020-10-13 19:36:12', 6, 1, 0),
(75, 11, NULL, NULL, 190, 189, 52, '2020-10-13 19:36:12', 10, 6, 0),
(76, 7, NULL, NULL, 192, 191, 53, '2020-10-13 19:37:55', 6, 1, 0),
(77, 11, NULL, NULL, 193, 192, 53, '2020-10-13 19:37:55', 10, 6, 0),
(79, 11, NULL, NULL, 196, 195, 54, '2020-10-13 19:42:32', 10, 6, 0),
(80, 5, NULL, NULL, 198, 197, 61, '2020-11-07 18:38:24', 2, 1, 0),
(81, 6, NULL, NULL, 199, 198, 61, '2020-11-07 18:38:24', 3, 2, 0),
(82, 4, NULL, NULL, 201, 200, 62, '2020-11-07 18:38:49', 2, 1, 0),
(83, 5, NULL, NULL, 202, 201, 62, '2020-11-07 18:38:49', 3, 2, 0),
(84, 7, NULL, NULL, 203, 199, 61, '2020-11-07 18:40:49', 4, 3, 0),
(85, 5, NULL, NULL, 205, 204, 63, '2020-11-07 18:42:07', 2, 1, 0),
(86, 6, NULL, NULL, 206, 205, 63, '2020-11-07 18:42:07', 3, 2, 0),
(87, 7, NULL, NULL, 207, 206, 63, '2020-11-07 18:42:07', 4, 3, 0),
(88, 5, NULL, NULL, 209, 208, 64, '2020-11-07 19:04:58', 2, 1, 0),
(89, 6, NULL, NULL, 210, 209, 64, '2020-11-07 19:04:58', 3, 2, 0),
(90, 7, NULL, NULL, 211, 210, 64, '2020-11-07 19:04:58', 4, 3, 0),
(91, 5, NULL, NULL, 213, 212, 65, '2020-11-07 19:05:49', 2, 1, 0),
(92, 6, NULL, NULL, 214, 213, 65, '2020-11-07 19:05:49', 3, 2, 0),
(93, 7, NULL, NULL, 215, 214, 65, '2020-11-07 19:05:49', 4, 3, 0),
(97, 16, NULL, NULL, 195, 194, 54, '2020-11-17 17:12:14', 6, 1, 0),
(99, 4, NULL, NULL, 222, 221, 67, '2020-11-19 02:31:35', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lams_lesson`
--

CREATE TABLE `lams_lesson` (
  `lesson_id` bigint NOT NULL,
  `learning_design_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date_time` datetime NOT NULL,
  `organisation_id` bigint DEFAULT NULL,
  `class_grouping_id` bigint DEFAULT NULL,
  `lesson_state_id` int NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `scheduled_number_days_to_lesson_finish` int DEFAULT NULL,
  `schedule_start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `schedule_end_date_time` datetime DEFAULT NULL,
  `previous_state_id` int DEFAULT NULL,
  `learner_presence_avail` tinyint(1) NOT NULL DEFAULT '0',
  `learner_im_avail` tinyint(1) NOT NULL DEFAULT '0',
  `live_edit_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `enable_lesson_notifications` tinyint(1) NOT NULL DEFAULT '0',
  `locked_for_edit` tinyint(1) NOT NULL DEFAULT '0',
  `marks_released` tinyint(1) NOT NULL DEFAULT '0',
  `enable_lesson_intro` tinyint(1) NOT NULL DEFAULT '0',
  `display_design_image` tinyint(1) NOT NULL DEFAULT '0',
  `force_restart` tinyint(1) NOT NULL DEFAULT '0',
  `allow_restart` tinyint(1) NOT NULL DEFAULT '0',
  `gradebook_on_complete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_lesson`
--

INSERT INTO `lams_lesson` (`lesson_id`, `learning_design_id`, `user_id`, `name`, `description`, `create_date_time`, `organisation_id`, `class_grouping_id`, `lesson_state_id`, `start_date_time`, `scheduled_number_days_to_lesson_finish`, `schedule_start_date_time`, `end_date_time`, `schedule_end_date_time`, `previous_state_id`, `learner_presence_avail`, `learner_im_avail`, `live_edit_enabled`, `enable_lesson_notifications`, `locked_for_edit`, `marks_released`, `enable_lesson_intro`, `display_design_image`, `force_restart`, `allow_restart`, `gradebook_on_complete`) VALUES
(1, 5, 12, 'second1', NULL, '2020-09-05 13:38:19', 4, 2, 7, '2020-09-05 13:38:19', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(2, 7, 13, 'a23', NULL, '2020-09-07 13:27:21', 10, 3, 7, '2020-09-07 13:27:21', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(3, 9, 13, 'a24', NULL, '2020-09-07 13:29:44', 10, 4, 3, '2020-09-07 13:29:44', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(4, 10, 13, 'a23', NULL, '2020-09-07 13:38:03', 10, 5, 3, '2020-09-07 13:38:03', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(5, 16, 13, 'neo', NULL, '2020-09-10 12:26:58', 9, 6, 7, '2020-09-10 12:26:58', NULL, NULL, NULL, NULL, 3, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(6, 18, 25, 'Προεπισκόπηση', 'description', '2020-09-15 14:45:18', NULL, 7, 3, '2020-09-15 14:45:18', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 24, 28, 'Μ1', NULL, '2020-09-15 15:31:41', 19, 11, 3, '2020-09-15 15:31:41', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(11, 26, 28, 'Α1', NULL, '2020-09-15 15:35:43', 21, 12, 3, '2020-09-15 15:35:43', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(12, 28, 31, 'Προεπισκόπηση', 'description', '2020-09-29 17:52:15', NULL, 13, 3, '2020-09-29 17:52:15', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(13, 29, 31, 'Μ1', NULL, '2020-09-29 17:54:40', 23, 14, 7, '2020-09-29 17:54:40', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(14, 31, 31, 'Μ2', NULL, '2020-09-29 17:55:58', 23, 15, 7, '2020-09-29 17:55:58', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(15, 32, 31, 'Μ11', NULL, '2020-09-29 18:17:19', 23, 16, 7, '2020-09-29 18:17:19', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(16, 33, 31, 'Μ11', NULL, '2020-09-29 18:19:53', 23, 17, 7, '2020-09-29 18:19:53', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(17, 35, 1, 'Προεπισκόπηση', 'description', '2020-10-05 14:47:02', NULL, 18, 3, '2020-10-05 14:47:02', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(18, 36, 1, 'Προεπισκόπηση', 'description', '2020-10-05 14:47:10', NULL, 19, 3, '2020-10-05 14:47:10', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(19, 39, 31, 'M1', NULL, '2020-10-05 15:32:45', 23, 20, 7, '2020-10-05 15:32:45', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(20, 41, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:16:11', NULL, 21, 3, '2020-10-07 19:16:12', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(21, 42, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:16:39', NULL, 22, 3, '2020-10-07 19:16:39', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(22, 43, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:16:43', NULL, 23, 3, '2020-10-07 19:16:43', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(23, 44, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:17:08', NULL, 24, 3, '2020-10-07 19:17:09', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(24, 45, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:17:58', NULL, 25, 3, '2020-10-07 19:17:58', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(25, 46, 31, 'Προεπισκόπηση', 'description', '2020-10-07 19:18:36', NULL, 26, 3, '2020-10-07 19:18:37', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(26, 47, 31, 'Μ2', NULL, '2020-10-07 19:22:33', 23, 27, 7, '2020-10-07 19:22:33', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(27, 49, 31, 'Προεπισκόπηση', 'description', '2020-10-13 18:38:03', NULL, 28, 3, '2020-10-13 18:38:03', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(28, 51, 31, 'Μ1', NULL, '2020-10-13 19:34:10', 22, 29, 7, '2020-10-13 19:34:10', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(29, 52, 31, 'Μ1', NULL, '2020-10-13 19:36:12', 23, 30, 7, '2020-10-13 19:36:12', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(30, 53, 31, 'Μ1', NULL, '2020-10-13 19:37:55', 23, 31, 7, '2020-10-13 19:37:55', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(31, 54, 31, 'Μ1', NULL, '2020-10-13 19:42:32', 23, 32, 3, '2020-10-13 19:42:32', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(32, 62, 12, 'Algebra', NULL, '2020-11-07 18:38:49', 5, 33, 7, '2020-11-07 18:38:49', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(33, 63, 12, 'Algebra', NULL, '2020-11-07 18:42:07', 5, 34, 3, '2020-11-07 18:42:07', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(34, 65, 12, 'Geometry', NULL, '2020-11-07 19:05:49', 5, 35, 3, '2020-11-07 19:05:49', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(35, 66, 40, 'Noticeboard', '', '2020-11-19 02:25:09', 27, 36, 3, '2020-11-19 02:25:09', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(36, 67, 40, 'first', NULL, '2020-11-19 02:31:35', 28, 37, 7, '2020-11-19 02:31:35', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(37, 68, 40, 'Scribe', '', '2020-11-19 02:44:30', 30, 38, 7, '2020-11-19 02:44:30', NULL, NULL, NULL, NULL, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(38, 69, 40, 'Scribe', NULL, '2020-11-19 02:52:13', 30, 39, 3, '2020-11-19 02:52:13', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_lesson_dependency`
--

CREATE TABLE `lams_lesson_dependency` (
  `lesson_id` bigint NOT NULL,
  `preceding_lesson_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_lesson_state`
--

CREATE TABLE `lams_lesson_state` (
  `lesson_state_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_lesson_state`
--

INSERT INTO `lams_lesson_state` (`lesson_state_id`, `description`) VALUES
(1, 'CREATED'),
(2, 'NOT_STARTED'),
(3, 'STARTED'),
(4, 'SUSPENDED'),
(5, 'FINISHED'),
(6, 'ARCHIVED'),
(7, 'REMOVED');

-- --------------------------------------------------------

--
-- Table structure for table `lams_license`
--

CREATE TABLE `lams_license` (
  `license_id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_flag` tinyint(1) NOT NULL DEFAULT '0',
  `picture_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_license`
--

INSERT INTO `lams_license` (`license_id`, `name`, `code`, `url`, `default_flag`, `picture_url`, `order_id`) VALUES
(1, 'LAMS Recommended: CC Attribution-Noncommercial-ShareAlike 4.0', 'by-nc-sa', 'https://creativecommons.org/licenses/by-nc-sa/4.0/', 1, '/images/license/by-nc-sa.eu.svg', 1),
(2, 'CC Attribution-No Derivatives 4.0', 'by-nd', 'https://creativecommons.org/licenses/by-nd/4.0/', 0, '/images/license/by-nd.svg', 2),
(3, 'CC Attribution-Noncommercial-No Derivatives 4.0', 'by-nc-nd', 'https://creativecommons.org/licenses/by-nc-nd/4.0/', 0, '/images/license/by-nc-nd.svg', 3),
(4, 'CC Attribution-Noncommercial 4.0', 'by-nc', 'https://creativecommons.org/licenses/by-nc/4.0/', 0, '/images/license/by-nc.eu.svg', 4),
(5, 'CC Attribution-ShareAlike 4.0', 'by-sa', 'https://creativecommons.org/licenses/by-sa/4.0/', 0, '/images/license/by-sa.svg', 5),
(6, 'Other Licensing Agreement', 'other', '', 0, '', 8),
(7, 'CC Attribution 4.0', 'by', 'https://creativecommons.org/licenses/by/4.0/', 0, '/images/license/by.svg', 6),
(8, 'Public Domain', 'CC0', 'https://creativecommons.org/publicdomain/zero/1.0/', 0, '/images/license/publicdomain.svg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `lams_log_event`
--

CREATE TABLE `lams_log_event` (
  `id` bigint NOT NULL,
  `log_event_type_id` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `occurred_date_time` datetime NOT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `target_user_id` bigint DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_log_event`
--

INSERT INTO `lams_log_event` (`id`, `log_event_type_id`, `user_id`, `occurred_date_time`, `lesson_id`, `activity_id`, `target_user_id`, `description`) VALUES
(1, 24, 1, '2020-08-24 05:19:49', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.19.0.1'),
(2, 24, 1, '2020-08-24 05:24:26', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.19.0.1'),
(3, 24, 1, '2020-08-24 05:27:43', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.19.0.1'),
(4, 24, 1, '2020-08-24 06:02:00', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(5, 24, 1, '2020-08-24 15:33:51', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(6, 24, 1, '2020-08-24 15:36:03', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(7, 24, 1, '2020-08-24 15:36:47', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(8, 24, 1, '2020-08-24 17:20:26', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 85.75.187.39'),
(9, 25, 1, '2020-08-24 17:24:10', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(10, 24, 1, '2020-08-25 19:40:07', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(11, 24, 1, '2020-08-26 08:58:45', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 85.75.187.39'),
(12, 25, 1, '2020-08-26 08:59:46', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(13, 24, 1, '2020-08-26 09:44:56', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 85.75.187.39'),
(14, 25, 1, '2020-08-26 09:45:46', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(15, 24, 1, '2020-08-28 14:43:07', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(16, 24, 1, '2020-08-30 00:06:00', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.19.0.1'),
(17, 24, 1, '2020-08-30 00:11:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(18, 24, 1, '2020-08-30 01:45:56', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.19.0.1'),
(19, 24, 1, '2020-08-30 02:43:33', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(20, 24, 1, '2020-08-30 17:25:34', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(21, 11, 1, '2020-08-30 17:41:29', NULL, NULL, 9, 'Δημιουργήθηκε ο/η χρήστης: ioanna(9) , Πλήρες Όνομα: ioanna kechagia'),
(22, 12, 1, '2020-08-30 17:41:52', NULL, NULL, 9, 'O Διαχειριστής Συστήματος sysadmin (1) έχει συνδεθεί ως ioanna'),
(23, 24, 9, '2020-08-30 17:41:53', NULL, NULL, 9, 'User ioanna (9) logged in from IP 109.242.3.195'),
(24, 25, 9, '2020-08-30 17:42:42', NULL, NULL, 9, 'User ioanna (9) logged out manually'),
(25, 24, 9, '2020-08-30 17:43:28', NULL, NULL, 9, 'User ioanna (9) logged in from IP 109.242.3.195'),
(26, 25, 9, '2020-08-30 17:43:56', NULL, NULL, 9, 'User ioanna (9) logged out manually'),
(27, 24, 1, '2020-08-30 17:44:04', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(28, 12, 1, '2020-08-30 17:49:03', NULL, NULL, 9, 'O Διαχειριστής Συστήματος sysadmin (1) έχει συνδεθεί ως ioanna'),
(29, 24, 9, '2020-08-30 17:49:03', NULL, NULL, 9, 'User ioanna (9) logged in from IP 109.242.3.195'),
(30, 14, 9, '2020-08-30 17:50:21', NULL, NULL, 9, 'User 9 does not have any of [GROUP MANAGER] roles in organisation 5 and can not \"get course gradebook spreadsheet\"'),
(31, 25, 9, '2020-08-30 17:51:36', NULL, NULL, 9, 'User ioanna (9) logged out manually'),
(32, 24, 1, '2020-08-30 17:51:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(33, 25, 1, '2020-08-30 17:59:03', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(34, 24, 1, '2020-08-30 18:31:51', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(35, 11, 1, '2020-08-30 18:35:19', NULL, NULL, 10, 'Δημιουργήθηκε ο/η χρήστης: test11(10) , Πλήρες Όνομα: maria maria'),
(36, 11, 1, '2020-08-30 18:47:28', NULL, NULL, 11, 'Δημιουργήθηκε ο/η χρήστης: test12(11) , Πλήρες Όνομα: dimitra dimitra'),
(37, 11, 1, '2020-08-30 18:51:13', NULL, NULL, 12, 'Δημιουργήθηκε ο/η χρήστης: test13(12) , Πλήρες Όνομα: nikos nikos'),
(38, 11, 1, '2020-08-30 18:52:59', NULL, NULL, 13, 'Δημιουργήθηκε ο/η χρήστης: test14(13) , Πλήρες Όνομα: giannis giannis'),
(39, 11, 1, '2020-08-30 19:00:14', NULL, NULL, 14, 'Δημιουργήθηκε ο/η χρήστης: tesr15(14) , Πλήρες Όνομα: katerina katerina'),
(40, 11, 1, '2020-08-30 19:02:26', NULL, NULL, 15, 'Δημιουργήθηκε ο/η χρήστης: test16(15) , Πλήρες Όνομα: marios marios'),
(41, 11, 1, '2020-08-30 19:07:52', NULL, NULL, 16, 'Δημιουργήθηκε ο/η χρήστης: test17(16) , Πλήρες Όνομα: kostas kostas'),
(42, 11, 1, '2020-08-30 19:08:55', NULL, NULL, 17, 'Δημιουργήθηκε ο/η χρήστης: test18(17) , Πλήρες Όνομα: matina matina'),
(43, 24, 1, '2020-08-31 10:25:07', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(44, 25, 1, '2020-08-31 10:27:39', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(45, 24, 1, '2020-08-31 10:28:30', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(46, 25, 1, '2020-08-31 10:30:08', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(47, 24, 1, '2020-08-31 12:17:09', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.167.164.164'),
(48, 24, 1, '2020-08-31 15:27:39', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(49, 1, 1, '2020-08-31 15:59:59', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"lkjlk\" (1) δημιουργήθηκε από sysadmin (1)'),
(50, 24, 1, '2020-08-31 18:29:50', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 195.130.98.20'),
(51, 25, 1, '2020-08-31 18:30:41', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(52, 24, 1, '2020-08-31 18:30:52', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(53, 24, 1, '2020-08-31 18:35:16', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 195.130.98.20'),
(54, 24, 1, '2020-08-31 18:37:21', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(55, 24, 10, '2020-09-02 13:19:24', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(56, 25, 10, '2020-09-02 13:29:19', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(57, 24, 12, '2020-09-02 13:29:40', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(58, 25, 12, '2020-09-02 13:35:18', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(59, 24, 10, '2020-09-02 13:35:36', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(60, 25, 10, '2020-09-02 13:37:45', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(61, 24, 16, '2020-09-02 13:38:03', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(62, 25, 16, '2020-09-02 13:40:07', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(63, 24, 15, '2020-09-02 13:41:16', NULL, NULL, 15, 'User test16 (15) logged in from IP 109.242.3.195'),
(64, 25, 15, '2020-09-02 13:43:11', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(65, 24, 16, '2020-09-04 09:39:25', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(66, 25, 16, '2020-09-04 09:40:48', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(67, 24, 12, '2020-09-04 09:41:08', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(68, 25, 12, '2020-09-04 09:42:09', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(69, 24, 10, '2020-09-04 09:43:02', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(70, 25, 10, '2020-09-04 09:44:35', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(71, 24, 16, '2020-09-04 09:44:49', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(72, 25, 16, '2020-09-04 09:45:30', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(73, 24, 12, '2020-09-04 10:24:32', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(74, 25, 12, '2020-09-04 10:28:33', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(75, 24, 10, '2020-09-04 11:46:59', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(76, 1, 10, '2020-09-04 11:50:30', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"first\" (2) δημιουργήθηκε από test11 (10)'),
(77, 25, 10, '2020-09-04 11:54:16', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(78, 24, 1, '2020-09-04 11:54:27', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(79, 25, 1, '2020-09-04 11:57:12', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(80, 24, 12, '2020-09-04 12:05:51', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(81, 25, 12, '2020-09-04 12:11:23', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(82, 24, 10, '2020-09-04 12:11:39', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(83, 25, 10, '2020-09-04 12:12:32', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(84, 24, 1, '2020-09-04 12:12:41', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(85, 11, 1, '2020-09-04 12:16:08', NULL, NULL, 18, 'Δημιουργήθηκε ο/η χρήστης: test121(18) , Πλήρες Όνομα: nn nn'),
(86, 25, 1, '2020-09-04 12:17:29', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(87, 24, 18, '2020-09-04 12:17:59', NULL, NULL, 18, 'User test121 (18) logged in from IP 109.242.3.195'),
(88, 25, 18, '2020-09-04 12:19:54', NULL, NULL, 18, 'User test121 (18) logged out manually'),
(89, 24, 12, '2020-09-04 12:20:28', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(90, 25, 12, '2020-09-04 12:23:19', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(91, 24, 16, '2020-09-04 12:23:32', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(92, 25, 16, '2020-09-04 12:23:56', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(93, 24, 1, '2020-09-04 12:26:54', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(94, 25, 1, '2020-09-04 12:28:34', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(95, 24, 12, '2020-09-04 12:28:56', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(96, 25, 12, '2020-09-04 12:32:40', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(97, 24, 1, '2020-09-04 12:32:51', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(98, 25, 1, '2020-09-04 12:42:05', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(99, 24, 18, '2020-09-04 12:42:27', NULL, NULL, 18, 'User test121 (18) logged in from IP 109.242.3.195'),
(100, 25, 18, '2020-09-04 12:43:31', NULL, NULL, 18, 'User test121 (18) logged out manually'),
(101, 24, 1, '2020-09-04 13:16:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(102, 11, 1, '2020-09-04 13:24:02', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Δίκτυα(null) του τύπου: COURSE ORGANISATION'),
(103, 25, 1, '2020-09-04 13:31:43', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(104, 24, 18, '2020-09-04 13:32:30', NULL, NULL, 18, 'User test121 (18) logged in from IP 109.242.3.195'),
(105, 25, 18, '2020-09-04 13:33:11', NULL, NULL, 18, 'User test121 (18) logged out manually'),
(106, 24, 1, '2020-09-04 13:33:22', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(107, 11, 1, '2020-09-04 13:33:58', NULL, NULL, NULL, 'Διαγραμμένος userId: 18'),
(108, 25, 1, '2020-09-04 13:34:06', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(109, 24, 1, '2020-09-04 13:35:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(110, 25, 1, '2020-09-04 13:35:53', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(111, 24, 1, '2020-09-04 18:35:06', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(112, 25, 1, '2020-09-04 18:35:56', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(113, 24, 1, '2020-09-05 12:01:14', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(114, 24, 1, '2020-09-05 12:01:14', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(115, 25, 1, '2020-09-05 12:09:15', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(116, 24, 12, '2020-09-05 12:09:41', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(117, 25, 12, '2020-09-05 12:30:40', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(118, 24, 13, '2020-09-05 13:07:09', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(119, 25, 13, '2020-09-05 13:10:44', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(120, 24, 16, '2020-09-05 13:12:24', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(121, 25, 16, '2020-09-05 13:12:41', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(122, 24, 12, '2020-09-05 13:28:26', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(123, 25, 12, '2020-09-05 13:29:04', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(124, 24, 13, '2020-09-05 13:29:23', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(125, 14, 13, '2020-09-05 13:29:34', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(126, 25, 13, '2020-09-05 13:30:08', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(127, 24, 12, '2020-09-05 13:30:21', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(128, 25, 12, '2020-09-05 13:31:44', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(129, 24, 10, '2020-09-05 13:31:59', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(130, 1, 10, '2020-09-05 13:32:37', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"first\" (2) δημιουργήθηκε από test11 (10)'),
(131, 1, 10, '2020-09-05 13:32:49', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"first_05092020_1\" (3) δημιουργήθηκε από test11 (10)'),
(132, 25, 10, '2020-09-05 13:33:03', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(133, 24, 13, '2020-09-05 13:33:22', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(134, 25, 13, '2020-09-05 13:35:01', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(135, 24, 12, '2020-09-05 13:35:40', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(136, 1, 12, '2020-09-05 13:36:50', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"second\" (4) δημιουργήθηκε από test13 (12)'),
(137, 2, 12, '2020-09-05 13:38:19', 1, NULL, NULL, 'Το μάθημα \"second1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"second\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 5'),
(138, 2, 12, '2020-09-05 13:38:19', 1, NULL, NULL, 'Το μάθημα \"second1\" (1) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(139, 3, 12, '2020-09-05 13:38:19', 1, NULL, NULL, 'Το μάθημα \"second1\" (1) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(140, 25, 12, '2020-09-05 13:41:47', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(141, 24, 1, '2020-09-05 15:28:04', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(142, 24, 1, '2020-09-05 15:28:34', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(143, 24, 1, '2020-09-05 15:28:59', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(144, 24, 1, '2020-09-05 15:31:12', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(145, 24, 1, '2020-09-05 15:31:42', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(146, 24, 1, '2020-09-05 15:32:17', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(147, 24, 1, '2020-09-05 15:36:22', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 176.92.99.236'),
(148, 24, 1, '2020-09-05 15:38:37', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(149, 24, 13, '2020-09-06 13:18:10', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(150, 25, 13, '2020-09-06 13:21:21', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(151, 24, 12, '2020-09-06 13:25:56', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(152, 11, 12, '2020-09-06 13:28:18', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Τέταρτο Λύκειο Αχαρνών(null) του τύπου: COURSE ORGANISATION'),
(153, 25, 12, '2020-09-06 13:31:37', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(154, 24, 13, '2020-09-06 13:45:33', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(155, 14, 13, '2020-09-06 13:46:09', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 9 and can not \"manage courses\"'),
(156, 25, 13, '2020-09-06 13:46:40', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(157, 24, 12, '2020-09-06 13:46:54', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(158, 11, 12, '2020-09-06 13:47:56', NULL, NULL, NULL, 'Αλλαγές courseAdminCanAddNewUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(159, 11, 12, '2020-09-06 13:47:56', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: false'),
(160, 25, 12, '2020-09-06 13:48:05', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(161, 24, 13, '2020-09-06 13:48:19', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(162, 14, 13, '2020-09-06 13:48:26', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 9 and can not \"manage courses\"'),
(163, 25, 13, '2020-09-06 13:48:50', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(164, 24, 12, '2020-09-06 13:49:06', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(165, 11, 12, '2020-09-06 13:49:36', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(166, 11, 12, '2020-09-06 13:49:36', NULL, NULL, NULL, 'Αλλαγές courseAdminCanChangeStatusOfCourse για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(167, 25, 12, '2020-09-06 13:49:43', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(168, 24, 13, '2020-09-06 13:49:58', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(169, 14, 13, '2020-09-06 13:50:11', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 9 and can not \"manage courses\"'),
(170, 25, 13, '2020-09-06 13:50:18', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(171, 24, 12, '2020-09-06 17:37:16', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(172, 11, 12, '2020-09-06 17:59:07', NULL, NULL, 19, 'Δημιουργήθηκε ο/η χρήστης: test121(19) , Πλήρες Όνομα: kk kk'),
(173, 25, 12, '2020-09-06 18:05:36', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(174, 24, 13, '2020-09-06 18:06:24', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(175, 25, 13, '2020-09-06 18:15:15', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(176, 24, 19, '2020-09-06 18:15:35', NULL, NULL, 19, 'User test121 (19) logged in from IP 109.242.3.195'),
(177, 25, 19, '2020-09-06 18:17:42', NULL, NULL, 19, 'User test121 (19) logged out manually'),
(178, 24, 13, '2020-09-06 18:17:57', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(179, 14, 13, '2020-09-06 18:18:41', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(180, 25, 13, '2020-09-06 18:20:06', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(181, 24, 12, '2020-09-06 18:20:24', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(182, 11, 12, '2020-09-06 18:20:43', NULL, NULL, NULL, 'Αλλαγές courseAdminCanAddNewUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: true σε: false'),
(183, 11, 12, '2020-09-06 18:20:43', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: true σε: false'),
(184, 11, 12, '2020-09-06 18:20:43', NULL, NULL, NULL, 'Αλλαγές courseAdminCanChangeStatusOfCourse για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: true σε: false'),
(185, 25, 12, '2020-09-06 18:20:48', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(186, 24, 13, '2020-09-06 18:21:07', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(187, 25, 13, '2020-09-06 18:29:29', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(188, 24, 12, '2020-09-06 18:29:44', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(189, 25, 12, '2020-09-06 18:32:06', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(190, 24, 19, '2020-09-06 18:32:20', NULL, NULL, 19, 'User test121 (19) logged in from IP 109.242.3.195'),
(191, 25, 19, '2020-09-06 18:32:28', NULL, NULL, 19, 'User test121 (19) logged out manually'),
(192, 24, 13, '2020-09-06 18:35:57', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(193, 25, 13, '2020-09-06 18:37:59', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(194, 24, 12, '2020-09-06 18:38:15', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(195, 25, 12, '2020-09-06 18:38:58', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(196, 24, 1, '2020-09-07 00:03:15', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 62.74.85.1'),
(197, 24, 12, '2020-09-07 11:43:53', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(198, 25, 12, '2020-09-07 11:46:41', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(199, 24, 13, '2020-09-07 11:46:57', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(200, 11, 13, '2020-09-07 11:49:01', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: A(null) του τύπου: CLASS'),
(201, 24, 1, '2020-09-07 12:01:08', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(202, 24, 1, '2020-09-07 12:01:42', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(203, 25, 13, '2020-09-07 12:12:03', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(204, 24, 12, '2020-09-07 12:12:31', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(205, 11, 12, '2020-09-07 12:13:24', NULL, NULL, NULL, 'Αλλαγές courseAdminCanAddNewUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(206, 11, 12, '2020-09-07 12:13:25', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(207, 11, 12, '2020-09-07 12:13:25', NULL, NULL, NULL, 'Αλλαγές courseAdminCanChangeStatusOfCourse για τον οργανισμό: Τέταρτο Λύκειο Αχαρνών(9) από: false σε: true'),
(208, 25, 12, '2020-09-07 12:13:49', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(209, 24, 13, '2020-09-07 12:14:03', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(210, 25, 13, '2020-09-07 12:27:14', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(211, 24, 12, '2020-09-07 12:59:25', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(212, 25, 12, '2020-09-07 13:00:43', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(213, 24, 13, '2020-09-07 13:00:58', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(214, 25, 13, '2020-09-07 13:09:11', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(215, 24, 12, '2020-09-07 13:09:23', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(216, 25, 12, '2020-09-07 13:17:26', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(217, 24, 13, '2020-09-07 13:17:51', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(218, 25, 13, '2020-09-07 13:20:51', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(219, 24, 12, '2020-09-07 13:21:04', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(220, 25, 12, '2020-09-07 13:24:55', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(221, 24, 13, '2020-09-07 13:25:11', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(222, 1, 13, '2020-09-07 13:26:41', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"a23\" (6) δημιουργήθηκε από test14 (13)'),
(223, 2, 13, '2020-09-07 13:27:21', 2, NULL, NULL, 'Το μάθημα \"a23\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"a23\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 7'),
(224, 2, 13, '2020-09-07 13:27:21', 2, NULL, NULL, 'Το μάθημα \"a23\" (2) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(225, 3, 13, '2020-09-07 13:27:21', 2, NULL, NULL, 'Το μάθημα \"a23\" (2) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(226, 5, 13, '2020-09-07 13:27:43', 2, 89, 13, 'Ο εκπαιδευόμενος test14 (13) ξεκίνησε τη δραστηριότητα Ανακ. Πίνακας (89)'),
(227, 4, 13, '2020-09-07 13:28:15', 2, NULL, NULL, 'Το μάθημα \"a23\" (2) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(228, 1, 13, '2020-09-07 13:28:45', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"a24\" (8) δημιουργήθηκε από test14 (13)'),
(229, 2, 13, '2020-09-07 13:29:44', 3, NULL, NULL, 'Το μάθημα \"a24\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"a24\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 9'),
(230, 2, 13, '2020-09-07 13:29:44', 3, NULL, NULL, 'Το μάθημα \"a24\" (3) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(231, 3, 13, '2020-09-07 13:29:44', 3, NULL, NULL, 'Το μάθημα \"a24\" (3) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(232, 25, 13, '2020-09-07 13:30:13', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(233, 24, 13, '2020-09-07 13:35:56', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(234, 2, 13, '2020-09-07 13:38:03', 4, NULL, NULL, 'Το μάθημα \"a23\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"a23_07092020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 10'),
(235, 2, 13, '2020-09-07 13:38:03', 4, NULL, NULL, 'Το μάθημα \"a23\" (4) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(236, 3, 13, '2020-09-07 13:38:03', 4, NULL, NULL, 'Το μάθημα \"a23\" (4) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(237, 25, 13, '2020-09-07 13:57:26', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(238, 24, 12, '2020-09-07 18:39:58', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(239, 1, 12, '2020-09-07 18:42:19', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"third\" (11) δημιουργήθηκε από test13 (12)'),
(240, 25, 12, '2020-09-07 18:49:06', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(241, 24, 13, '2020-09-07 18:49:17', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(242, 25, 13, '2020-09-07 19:18:58', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(243, 24, 13, '2020-09-08 10:23:13', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(244, 25, 13, '2020-09-08 10:24:22', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(245, 24, 13, '2020-09-08 10:52:20', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(246, 14, 13, '2020-09-08 10:54:47', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 4 and can not \"manage courses\"'),
(247, 14, 13, '2020-09-08 10:56:26', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 2 and can not \"manage courses\"'),
(248, 25, 13, '2020-09-08 10:58:01', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(249, 24, 19, '2020-09-08 10:58:18', NULL, NULL, 19, 'User test121 (19) logged in from IP 109.242.3.195'),
(250, 1, 19, '2020-09-08 11:00:24', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"a8\" (12) δημιουργήθηκε από test121 (19)'),
(251, 25, 19, '2020-09-08 11:01:51', NULL, NULL, 19, 'User test121 (19) logged out manually'),
(252, 24, 13, '2020-09-08 11:02:22', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(253, 25, 13, '2020-09-08 11:10:58', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(254, 24, 12, '2020-09-08 11:11:15', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(255, 25, 12, '2020-09-08 11:14:14', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(256, 24, 17, '2020-09-08 11:14:30', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(257, 25, 17, '2020-09-08 11:16:37', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(258, 24, 13, '2020-09-08 11:38:18', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(259, 5, 13, '2020-09-08 11:40:23', 3, 93, 13, 'Ο εκπαιδευόμενος test14 (13) ξεκίνησε τη δραστηριότητα Ανακ. Πίνακας (93)'),
(260, 25, 13, '2020-09-08 11:40:56', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(261, 24, 17, '2020-09-08 11:46:45', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(262, 25, 17, '2020-09-08 11:49:13', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(263, 24, 12, '2020-09-08 11:49:25', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(264, 25, 12, '2020-09-08 11:55:16', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(265, 24, 16, '2020-09-08 11:55:38', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(266, 25, 16, '2020-09-08 11:58:21', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(267, 24, 17, '2020-09-08 11:58:32', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(268, 25, 17, '2020-09-08 12:02:21', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(269, 24, 16, '2020-09-08 12:02:30', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(270, 25, 16, '2020-09-08 12:06:44', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(271, 24, 12, '2020-09-08 12:07:00', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(272, 4, 12, '2020-09-08 12:12:32', 1, NULL, NULL, 'Το μάθημα \"second1\" (1) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(273, 25, 12, '2020-09-08 12:12:53', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(274, 24, 12, '2020-09-08 12:20:41', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(275, 25, 12, '2020-09-08 12:26:27', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(276, 24, 13, '2020-09-08 12:27:00', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(277, 11, 13, '2020-09-08 12:28:49', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: B(null) του τύπου: CLASS'),
(278, 25, 13, '2020-09-08 12:45:16', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(279, 24, 17, '2020-09-08 12:45:29', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(280, 25, 17, '2020-09-08 12:47:10', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(281, 24, 12, '2020-09-08 12:47:29', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(282, 1, 12, '2020-09-08 12:48:41', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"third\" (13) δημιουργήθηκε από test13 (12)'),
(283, 1, 12, '2020-09-08 12:50:08', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"second_08092020_1\" (14) δημιουργήθηκε από test13 (12)'),
(284, 25, 12, '2020-09-08 12:50:35', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(285, 24, 17, '2020-09-08 12:50:49', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(286, 25, 17, '2020-09-08 12:53:51', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(287, 24, 13, '2020-09-08 12:54:07', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(288, 25, 13, '2020-09-08 12:56:15', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(289, 24, 13, '2020-09-08 13:00:46', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(290, 14, 13, '2020-09-08 13:04:04', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(291, 25, 13, '2020-09-08 13:04:12', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(292, 24, 12, '2020-09-08 13:04:29', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(293, 25, 12, '2020-09-08 13:05:40', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(294, 24, 13, '2020-09-08 13:05:56', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(295, 1, 13, '2020-09-08 13:08:30', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"diktia\" (15) δημιουργήθηκε από test14 (13)'),
(296, 25, 13, '2020-09-08 13:08:59', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(297, 24, 17, '2020-09-08 13:09:15', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(298, 25, 17, '2020-09-08 13:10:42', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(299, 24, 10, '2020-09-08 13:11:01', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(300, 25, 10, '2020-09-08 13:13:44', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(301, 24, 17, '2020-09-08 13:18:16', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(302, 25, 17, '2020-09-08 13:23:02', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(303, 24, 13, '2020-09-08 13:33:42', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(304, 25, 13, '2020-09-08 13:38:08', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(305, 24, 1, '2020-09-09 12:56:28', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(306, 24, 13, '2020-09-09 17:54:09', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(307, 25, 13, '2020-09-09 17:56:02', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(308, 24, 12, '2020-09-09 17:56:19', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(309, 11, 12, '2020-09-09 17:58:45', NULL, NULL, 20, 'Δημιουργήθηκε ο/η χρήστης: test141(20) , Πλήρες Όνομα: aa bb'),
(310, 25, 12, '2020-09-09 18:02:54', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(311, 24, 20, '2020-09-09 18:03:06', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(312, 25, 20, '2020-09-09 18:09:50', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(313, 24, 12, '2020-09-09 18:10:25', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(314, 11, 12, '2020-09-09 18:15:08', NULL, NULL, 21, 'Δημιουργήθηκε ο/η χρήστης: test22(21) , Πλήρες Όνομα: abc abc'),
(315, 25, 12, '2020-09-09 19:02:15', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(316, 24, 13, '2020-09-09 19:02:41', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(317, 14, 13, '2020-09-09 19:03:00', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(318, 14, 13, '2020-09-09 19:38:10', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 2 and can not \"manage courses\"'),
(319, 25, 13, '2020-09-09 19:41:33', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(320, 24, 12, '2020-09-09 19:41:57', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(321, 25, 12, '2020-09-09 19:43:54', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(322, 24, 1, '2020-09-09 19:44:04', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(323, 25, 1, '2020-09-09 19:48:38', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(324, 24, 12, '2020-09-09 19:49:00', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(325, 25, 12, '2020-09-09 19:50:34', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(326, 24, 13, '2020-09-09 19:50:46', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(327, 14, 13, '2020-09-09 19:51:50', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 4 and can not \"manage courses\"'),
(328, 25, 13, '2020-09-09 19:52:55', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(329, 24, 1, '2020-09-09 19:53:33', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(330, 25, 1, '2020-09-09 20:09:25', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(331, 24, 15, '2020-09-09 20:11:08', NULL, NULL, 15, 'User test16 (15) logged in from IP 109.242.3.195'),
(332, 25, 15, '2020-09-09 20:12:35', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(333, 24, 1, '2020-09-09 20:12:43', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(334, 25, 1, '2020-09-09 20:17:15', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(335, 24, 1, '2020-09-10 02:31:12', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(336, 24, 13, '2020-09-10 11:58:06', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(337, 14, 13, '2020-09-10 11:58:26', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 4 and can not \"manage courses\"'),
(338, 14, 13, '2020-09-10 11:58:49', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(339, 14, 13, '2020-09-10 11:59:19', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(340, 25, 13, '2020-09-10 12:00:27', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(341, 24, 12, '2020-09-10 12:00:40', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(342, 25, 12, '2020-09-10 12:01:23', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(343, 24, 13, '2020-09-10 12:01:33', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(344, 14, 13, '2020-09-10 12:01:40', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(345, 2, 13, '2020-09-10 12:26:58', 5, NULL, NULL, 'Το μάθημα \"neo\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"diktia\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 16'),
(346, 2, 13, '2020-09-10 12:26:58', 5, NULL, NULL, 'Το μάθημα \"neo\" (5) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(347, 3, 13, '2020-09-10 12:26:58', 5, NULL, NULL, 'Το μάθημα \"neo\" (5) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(348, 25, 13, '2020-09-10 12:28:19', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(349, 24, 12, '2020-09-10 18:46:35', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(350, 25, 12, '2020-09-10 18:46:42', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(351, 24, 13, '2020-09-10 18:46:57', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(352, 25, 13, '2020-09-10 18:55:06', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(353, 24, 17, '2020-09-10 18:55:53', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(354, 25, 17, '2020-09-10 18:58:33', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(355, 24, 13, '2020-09-10 18:59:04', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(356, 25, 13, '2020-09-10 19:09:50', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(357, 24, 16, '2020-09-10 19:10:14', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(358, 25, 16, '2020-09-10 19:15:25', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(359, 24, 17, '2020-09-10 19:16:06', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(360, 25, 17, '2020-09-10 19:21:44', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(361, 24, 16, '2020-09-10 19:21:53', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(362, 25, 16, '2020-09-10 19:22:10', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(363, 24, 13, '2020-09-10 19:23:05', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(364, 25, 13, '2020-09-10 19:27:50', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(365, 24, 17, '2020-09-10 19:28:02', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(366, 25, 17, '2020-09-10 19:29:05', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(367, 24, 16, '2020-09-10 19:29:14', NULL, NULL, 16, 'User test17 (16) logged in from IP 109.242.3.195'),
(368, 25, 16, '2020-09-10 19:29:49', NULL, NULL, 16, 'User test17 (16) logged out manually'),
(369, 24, 17, '2020-09-10 19:30:09', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(370, 25, 17, '2020-09-10 19:43:19', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(371, 24, 17, '2020-09-11 09:32:33', NULL, NULL, 17, 'User test18 (17) logged in from IP 109.242.3.195'),
(372, 25, 17, '2020-09-11 12:30:06', NULL, NULL, 17, 'User test18 (17) logged out manually'),
(373, 24, 15, '2020-09-11 17:58:53', NULL, NULL, 15, 'User test16 (15) logged in from IP 109.242.3.195'),
(374, 5, 15, '2020-09-11 17:59:21', 5, 108, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Επεξ Εικ. Pixlr (108)'),
(375, 25, 15, '2020-09-11 18:57:27', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(376, 24, 13, '2020-09-12 09:12:14', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(377, 14, 13, '2020-09-12 09:12:56', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 4 and can not \"manage courses\"'),
(378, 14, 13, '2020-09-12 09:15:16', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(379, 25, 13, '2020-09-12 09:17:49', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(380, 24, 15, '2020-09-12 09:18:09', NULL, NULL, 15, 'User test16 (15) logged in from IP 109.242.3.195'),
(381, 25, 15, '2020-09-12 09:19:25', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(382, 24, 12, '2020-09-12 09:19:39', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(383, 25, 12, '2020-09-12 09:25:39', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(384, 24, 10, '2020-09-12 09:26:01', NULL, NULL, 10, 'User test11 (10) logged in from IP 109.242.3.195'),
(385, 25, 10, '2020-09-12 09:27:27', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(386, 24, 13, '2020-09-12 09:28:07', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(387, 14, 13, '2020-09-12 09:42:15', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(388, 14, 13, '2020-09-12 09:42:36', NULL, NULL, 13, 'User 13 does not have any of [GROUP MANAGER] roles in organisation 8 and can not \"manage courses\"'),
(389, 11, 13, '2020-09-12 09:49:44', NULL, NULL, 22, 'Δημιουργήθηκε ο/η χρήστης: test161(22) , Πλήρες Όνομα: ee Ee'),
(390, 25, 13, '2020-09-12 09:51:00', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(391, 24, 22, '2020-09-12 09:51:16', NULL, NULL, 22, 'User test161 (22) logged in from IP 109.242.3.195'),
(392, 25, 22, '2020-09-12 09:57:56', NULL, NULL, 22, 'User test161 (22) logged out manually'),
(393, 24, 13, '2020-09-12 09:58:13', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(394, 25, 13, '2020-09-12 09:59:45', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(395, 24, 20, '2020-09-12 09:59:56', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(396, 25, 20, '2020-09-12 10:00:23', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(397, 24, 12, '2020-09-12 10:00:33', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(398, 25, 12, '2020-09-12 10:02:07', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(399, 24, 20, '2020-09-12 10:02:18', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(400, 25, 20, '2020-09-12 10:04:22', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(401, 24, 13, '2020-09-12 10:04:33', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(402, 25, 13, '2020-09-12 10:06:20', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(403, 24, 20, '2020-09-12 10:06:31', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(404, 14, 20, '2020-09-12 10:06:49', NULL, NULL, 20, 'User 20 does not have any of [GROUP MANAGER] roles in organisation 9 and can not \"manage courses\"'),
(405, 11, 20, '2020-09-12 10:08:17', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: D1(null) του τύπου: CLASS'),
(406, 25, 20, '2020-09-12 10:11:57', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(407, 24, 13, '2020-09-12 10:12:18', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(408, 25, 13, '2020-09-12 10:12:58', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(409, 24, 20, '2020-09-12 10:13:07', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(410, 25, 20, '2020-09-12 10:14:27', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(411, 24, 12, '2020-09-12 10:14:38', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(412, 11, 12, '2020-09-12 10:14:57', NULL, NULL, NULL, 'Αλλαγές courseAdminCanAddNewUsers για τον οργανισμό: Δίκτυα(8) από: false σε: true'),
(413, 11, 12, '2020-09-12 10:14:57', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Δίκτυα(8) από: false σε: true'),
(414, 11, 12, '2020-09-12 10:14:57', NULL, NULL, NULL, 'Αλλαγές courseAdminCanChangeStatusOfCourse για τον οργανισμό: Δίκτυα(8) από: false σε: true'),
(415, 25, 12, '2020-09-12 10:15:03', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(416, 24, 20, '2020-09-12 10:15:17', NULL, NULL, 20, 'User test141 (20) logged in from IP 109.242.3.195'),
(417, 25, 20, '2020-09-12 10:22:09', NULL, NULL, 20, 'User test141 (20) logged out manually'),
(418, 24, 1, '2020-09-12 17:13:33', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(419, 11, 1, '2020-09-12 17:15:33', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Πέμπτο Λύκειο Αχαρνών(null) του τύπου: COURSE ORGANISATION'),
(420, 11, 1, '2020-09-12 17:23:52', NULL, NULL, 23, 'Δημιουργήθηκε ο/η χρήστης: test131(23) , Πλήρες Όνομα: ss ss'),
(421, 11, 1, '2020-09-12 17:29:42', NULL, NULL, 24, 'Δημιουργήθηκε ο/η χρήστης: test1311(24) , Πλήρες Όνομα: dd dd'),
(422, 25, 1, '2020-09-12 17:31:23', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(423, 24, 13, '2020-09-12 17:32:21', NULL, NULL, 13, 'User test14 (13) logged in from IP 109.242.3.195'),
(424, 25, 13, '2020-09-12 17:33:42', NULL, NULL, 13, 'User test14 (13) logged out manually'),
(425, 24, 24, '2020-09-12 17:34:02', NULL, NULL, 24, 'User test1311 (24) logged in from IP 109.242.3.195'),
(426, 25, 24, '2020-09-12 17:39:41', NULL, NULL, 24, 'User test1311 (24) logged out manually'),
(427, 24, 12, '2020-09-12 17:39:59', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(428, 11, 12, '2020-09-12 17:40:19', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Πέμπτο Λύκειο Αχαρνών(13) από: false σε: true'),
(429, 25, 12, '2020-09-12 17:40:29', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(430, 24, 24, '2020-09-12 17:41:10', NULL, NULL, 24, 'User test1311 (24) logged in from IP 109.242.3.195'),
(431, 25, 24, '2020-09-12 17:42:15', NULL, NULL, 24, 'User test1311 (24) logged out manually'),
(432, 24, 12, '2020-09-12 17:45:03', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(433, 25, 12, '2020-09-12 18:07:23', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(434, 24, 12, '2020-09-13 10:30:14', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(435, 25, 12, '2020-09-13 12:05:16', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(436, 24, 1, '2020-09-13 18:09:50', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(437, 25, 1, '2020-09-13 18:13:33', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(438, 24, 1, '2020-09-15 14:26:59', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(439, 11, 1, '2020-09-15 14:29:33', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: 1ο Λύκειο Αχαρνών(null) του τύπου: COURSE ORGANISATION'),
(440, 11, 1, '2020-09-15 14:32:10', NULL, NULL, 25, 'Δημιουργήθηκε ο/η χρήστης: ioannak(25) , Πλήρες Όνομα: Ιωάννα Κεχαγιά'),
(441, 25, 1, '2020-09-15 14:36:27', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(442, 24, 25, '2020-09-15 14:36:37', NULL, NULL, 25, 'User ioannak (25) logged in from IP 109.242.3.195'),
(443, 1, 25, '2020-09-15 14:38:29', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μαθηματικά\" (17) δημιουργήθηκε από ioannak (25)'),
(444, 11, 25, '2020-09-15 14:42:38', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Μαθηματικά(null) του τύπου: CLASS'),
(445, 11, 25, '2020-09-15 14:42:49', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Αρχαία(null) του τύπου: CLASS'),
(446, 11, 25, '2020-09-15 14:42:58', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Φυσική(null) του τύπου: CLASS'),
(447, 11, 25, '2020-09-15 14:44:52', NULL, NULL, 26, 'Δημιουργήθηκε ο/η χρήστης: eleftheria(26) , Πλήρες Όνομα: Ελευθερία Ζαφειρίδου'),
(448, 2, 25, '2020-09-15 14:45:18', 6, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μαθηματικά\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 18'),
(449, 3, 25, '2020-09-15 14:45:18', 6, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (6) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(450, 11, 25, '2020-09-15 14:53:01', NULL, NULL, 27, 'Δημιουργήθηκε ο/η χρήστης: kleopatra(27) , Πλήρες Όνομα: Κλεοπάτρα Αναγνώστου'),
(458, 25, 25, '2020-09-15 15:00:49', NULL, NULL, 25, 'User ioannak (25) logged out manually'),
(459, 24, 26, '2020-09-15 15:01:07', NULL, NULL, 26, 'User eleftheria (26) logged in from IP 109.242.3.195'),
(461, 25, 26, '2020-09-15 15:01:34', NULL, NULL, 26, 'User eleftheria (26) logged out manually'),
(462, 24, 25, '2020-09-15 15:01:45', NULL, NULL, 25, 'User ioannak (25) logged in from IP 109.242.3.195'),
(463, 1, 25, '2020-09-15 15:04:25', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Φυσική\" (21) δημιουργήθηκε από ioannak (25)'),
(467, 25, 25, '2020-09-15 15:12:01', NULL, NULL, 25, 'User ioannak (25) logged out manually'),
(468, 24, 1, '2020-09-15 15:12:11', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(469, 4, 1, '2020-09-15 15:15:04', 7, NULL, NULL, 'Το μάθημα \"Μ1\" (7) αφαιρέθηκε μόνιμα.'),
(470, 4, 1, '2020-09-15 15:15:04', 8, NULL, NULL, 'Το μάθημα \"Μαθηματικά\" (8) αφαιρέθηκε μόνιμα.'),
(471, 4, 1, '2020-09-15 15:15:49', 9, NULL, NULL, 'Το μάθημα \"Φ1\" (9) αφαιρέθηκε μόνιμα.'),
(472, 11, 1, '2020-09-15 15:16:10', NULL, NULL, NULL, 'Αλλαγές state για τον οργανισμό: 1ο Λύκειο Αχαρνών(14) από: ACTIVE σε: REMOVED'),
(473, 11, 1, '2020-09-15 15:16:10', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: 1ο Λύκειο Αχαρνών(14) από: false σε: false'),
(474, 11, 1, '2020-09-15 15:18:03', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: 1ο Λύκειο Αχαρνών(null) του τύπου: COURSE ORGANISATION'),
(475, 11, 1, '2020-09-15 15:18:59', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Μαθηματικά(null) του τύπου: CLASS'),
(476, 11, 1, '2020-09-15 15:19:02', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Μαθηματικά(null) του τύπου: CLASS');
INSERT INTO `lams_log_event` (`id`, `log_event_type_id`, `user_id`, `occurred_date_time`, `lesson_id`, `activity_id`, `target_user_id`, `description`) VALUES
(477, 11, 1, '2020-09-15 15:19:26', NULL, NULL, NULL, 'Αλλαγές state για τον οργανισμό: Μαθηματικά(20) από: ACTIVE σε: REMOVED'),
(478, 11, 1, '2020-09-15 15:19:44', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Αρχαία(null) του τύπου: CLASS'),
(479, 11, 1, '2020-09-15 15:22:48', NULL, NULL, 28, 'Δημιουργήθηκε ο/η χρήστης: ioannake(28) , Πλήρες Όνομα: Ιωάννα Κεχαγιά'),
(480, 25, 1, '2020-09-15 15:24:57', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(481, 24, 28, '2020-09-15 15:25:13', NULL, NULL, 28, 'User ioannake (28) logged in from IP 109.242.3.195'),
(482, 11, 28, '2020-09-15 15:29:35', NULL, NULL, 29, 'Δημιουργήθηκε ο/η χρήστης: iiii(29) , Πλήρες Όνομα: kkgklg lflfjf'),
(483, 1, 28, '2020-09-15 15:31:15', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μαθηματικά\" (23) δημιουργήθηκε από ioannake (28)'),
(484, 2, 28, '2020-09-15 15:31:41', 10, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μαθηματικά\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 24'),
(485, 2, 28, '2020-09-15 15:31:41', 10, NULL, NULL, 'Το μάθημα \"Μ1\" (10) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(486, 3, 28, '2020-09-15 15:31:41', 10, NULL, NULL, 'Το μάθημα \"Μ1\" (10) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(487, 5, 28, '2020-09-15 15:31:53', 10, 126, 28, 'Ο εκπαιδευόμενος ioannake (28) ξεκίνησε τη δραστηριότητα Ερευνα (126)'),
(488, 1, 28, '2020-09-15 15:32:29', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Αρχαία\" (25) δημιουργήθηκε από ioannake (28)'),
(489, 2, 28, '2020-09-15 15:35:43', 11, NULL, NULL, 'Το μάθημα \"Α1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Αρχαία\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 26'),
(490, 2, 28, '2020-09-15 15:35:43', 11, NULL, NULL, 'Το μάθημα \"Α1\" (11) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(491, 3, 28, '2020-09-15 15:35:43', 11, NULL, NULL, 'Το μάθημα \"Α1\" (11) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(492, 25, 28, '2020-09-15 15:36:15', NULL, NULL, 28, 'User ioannake (28) logged out manually'),
(493, 24, 1, '2020-09-16 17:59:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(494, 24, 1, '2020-09-16 17:59:36', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.242.3.195'),
(495, 24, 12, '2020-09-21 12:19:05', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(496, 25, 12, '2020-09-21 13:52:08', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(497, 24, 12, '2020-09-21 17:39:26', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(498, 25, 12, '2020-09-21 18:18:11', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(499, 24, 12, '2020-09-22 10:21:29', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(500, 25, 12, '2020-09-22 12:49:37', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(501, 24, 1, '2020-09-25 21:04:32', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(502, 24, 12, '2020-09-27 12:22:53', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(503, 25, 12, '2020-09-27 15:05:37', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(504, 24, 12, '2020-09-27 18:04:39', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(505, 25, 12, '2020-09-27 18:50:15', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(506, 24, 12, '2020-09-28 10:21:22', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(507, 25, 12, '2020-09-28 12:14:07', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(508, 24, 12, '2020-09-28 12:37:54', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(509, 25, 12, '2020-09-28 13:44:03', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(510, 24, 1, '2020-09-28 16:06:46', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(511, 25, 1, '2020-09-28 16:11:19', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(512, 24, 12, '2020-09-28 17:42:35', NULL, NULL, 12, 'User test13 (12) logged in from IP 109.242.3.195'),
(513, 25, 12, '2020-09-28 17:55:59', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(514, 24, 1, '2020-09-28 23:41:16', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(515, 25, 1, '2020-09-29 00:23:19', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(516, 24, 1, '2020-09-29 03:10:13', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.30.0.1'),
(517, 24, 1, '2020-09-29 03:50:38', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(518, 24, 12, '2020-09-29 10:38:24', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(519, 25, 12, '2020-09-29 11:33:48', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(520, 24, 1, '2020-09-29 12:36:29', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(521, 25, 1, '2020-09-29 12:38:20', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(522, 24, 1, '2020-09-29 16:10:40', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(523, 11, 1, '2020-09-29 17:15:09', NULL, NULL, NULL, 'Αλλαγές state για τον οργανισμό: Πέμπτο Λύκειο Αχαρνών(13) από: ACTIVE σε: REMOVED'),
(524, 11, 1, '2020-09-29 17:19:00', NULL, NULL, 30, 'Δημιουργήθηκε ο/η χρήστης: Καθηγητής1(30) , Πλήρες Όνομα: Καθηγητής Γυμνασίου'),
(525, 11, 1, '2020-09-29 17:20:55', NULL, NULL, NULL, 'Διαγραμμένος userId: 30'),
(526, 11, 1, '2020-09-29 17:21:54', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Τέταρτο Γυμνάσιο Αχαρνών(null) του τύπου: COURSE ORGANISATION'),
(527, 24, 1, '2020-09-29 17:21:56', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 194.30.252.178'),
(528, 24, 1, '2020-09-29 17:22:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(529, 24, 1, '2020-09-29 17:23:17', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 194.30.252.178'),
(530, 24, 1, '2020-09-29 17:25:17', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(531, 11, 1, '2020-09-29 17:27:09', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Τέταρτο Γυμνάσιο Αχαρνών(22) από: false σε: false'),
(532, 24, 1, '2020-09-29 17:27:40', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 194.30.252.178'),
(533, 24, 1, '2020-09-29 17:27:54', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(534, 24, 1, '2020-09-29 17:28:05', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 194.30.252.178'),
(535, 24, 1, '2020-09-29 17:29:20', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(536, 24, 1, '2020-09-29 17:30:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 194.30.252.178'),
(537, 24, 1, '2020-09-29 17:31:00', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(538, 24, 1, '2020-09-29 17:31:17', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(539, 11, 1, '2020-09-29 17:34:33', NULL, NULL, 31, 'Δημιουργήθηκε ο/η χρήστης: Kathigitis1(31) , Πλήρες Όνομα: Καθηγητής Γυμνασίου'),
(540, 25, 1, '2020-09-29 17:36:42', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(541, 24, 31, '2020-09-29 17:37:10', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(542, 24, 1, '2020-09-29 17:37:45', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(543, 11, 31, '2020-09-29 17:41:35', NULL, NULL, 32, 'Δημιουργήθηκε ο/η χρήστης: Mathitis1(32) , Πλήρες Όνομα: Μαθητής Γυμνασίου'),
(544, 11, 31, '2020-09-29 17:44:57', NULL, NULL, 33, 'Δημιουργήθηκε ο/η χρήστης: Mathitis2(33) , Πλήρες Όνομα: ΜαθητήςA Γυμνασίου'),
(545, 1, 31, '2020-09-29 17:49:14', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1\" (27) δημιουργήθηκε από Kathigitis1 (31)'),
(546, 14, 31, '2020-09-29 17:49:39', NULL, NULL, 31, 'User 31 does not have any of [GROUP MANAGER] roles in organisation 9 and can not \"manage courses\"'),
(547, 11, 31, '2020-09-29 17:50:09', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Μαθηματικά(null) του τύπου: CLASS'),
(548, 2, 31, '2020-09-29 17:52:15', 12, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 28'),
(549, 3, 31, '2020-09-29 17:52:15', 12, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (12) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(550, 25, 1, '2020-09-29 17:52:19', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(551, 2, 31, '2020-09-29 17:54:40', 13, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 29'),
(552, 2, 31, '2020-09-29 17:54:40', 13, NULL, NULL, 'Το μάθημα \"Μ1\" (13) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(553, 3, 31, '2020-09-29 17:54:40', 13, NULL, NULL, 'Το μάθημα \"Μ1\" (13) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(554, 1, 31, '2020-09-29 17:55:44', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ2\" (30) δημιουργήθηκε από Kathigitis1 (31)'),
(555, 2, 31, '2020-09-29 17:55:58', 14, NULL, NULL, 'Το μάθημα \"Μ2\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 31'),
(556, 2, 31, '2020-09-29 17:55:58', 14, NULL, NULL, 'Το μάθημα \"Μ2\" (14) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(557, 3, 31, '2020-09-29 17:55:58', 14, NULL, NULL, 'Το μάθημα \"Μ2\" (14) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(558, 2, 31, '2020-09-29 18:17:19', 15, NULL, NULL, 'Το μάθημα \"Μ11\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_29092020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 32'),
(559, 2, 31, '2020-09-29 18:17:19', 15, NULL, NULL, 'Το μάθημα \"Μ11\" (15) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(560, 3, 31, '2020-09-29 18:17:19', 15, NULL, NULL, 'Το μάθημα \"Μ11\" (15) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(561, 4, 31, '2020-09-29 18:17:29', 15, NULL, NULL, 'Το μάθημα \"Μ11\" (15) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(562, 2, 31, '2020-09-29 18:19:53', 16, NULL, NULL, 'Το μάθημα \"Μ11\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_29092020_2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 33'),
(563, 2, 31, '2020-09-29 18:19:53', 16, NULL, NULL, 'Το μάθημα \"Μ11\" (16) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(564, 3, 31, '2020-09-29 18:19:53', 16, NULL, NULL, 'Το μάθημα \"Μ11\" (16) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(565, 4, 31, '2020-09-29 18:20:00', 16, NULL, NULL, 'Το μάθημα \"Μ11\" (16) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(566, 24, 1, '2020-09-30 02:38:15', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 195.130.98.20'),
(567, 24, 1, '2020-09-30 02:51:55', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.30.0.1'),
(568, 24, 1, '2020-09-30 03:12:40', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 195.130.98.20'),
(569, 24, 1, '2020-09-30 22:09:19', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(570, 24, 1, '2020-09-30 22:09:36', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(571, 25, 1, '2020-09-30 22:09:51', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(572, 24, 1, '2020-09-30 22:09:59', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(573, 25, 1, '2020-09-30 22:11:16', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(574, 24, 1, '2020-09-30 22:12:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(575, 25, 1, '2020-09-30 22:12:37', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(576, 24, 12, '2020-10-01 11:18:40', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(577, 24, 12, '2020-10-01 11:19:55', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(578, 25, 12, '2020-10-01 11:32:30', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(579, 24, 10, '2020-10-01 11:32:53', NULL, NULL, 10, 'User test11 (10) logged in from IP 79.107.170.208'),
(580, 25, 10, '2020-10-01 11:38:14', NULL, NULL, 10, 'User test11 (10) logged out manually'),
(581, 24, 12, '2020-10-01 11:38:32', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(582, 25, 12, '2020-10-01 12:21:37', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(583, 24, 1, '2020-10-01 16:35:49', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(584, 24, 1, '2020-10-01 19:07:06', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(585, 24, 1, '2020-10-01 20:23:26', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(586, 24, 1, '2020-10-02 09:29:29', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(587, 24, 1, '2020-10-02 09:29:47', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(588, 24, 1, '2020-10-02 09:30:00', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(589, 24, 1, '2020-10-02 09:41:07', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(590, 24, 1, '2020-10-02 15:24:09', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(591, 25, 1, '2020-10-02 15:26:07', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(592, 24, 1, '2020-10-02 15:26:12', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(593, 24, 1, '2020-10-02 15:27:46', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(594, 24, 1, '2020-10-02 15:29:17', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(595, 24, 1, '2020-10-02 15:29:38', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(596, 24, 1, '2020-10-02 15:35:24', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.30.0.1'),
(597, 24, 1, '2020-10-02 15:35:50', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(598, 24, 1, '2020-10-02 15:50:33', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(599, 24, 1, '2020-10-02 15:56:35', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.30.0.1'),
(600, 24, 1, '2020-10-02 16:14:20', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(601, 24, 1, '2020-10-02 16:15:24', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(602, 24, 1, '2020-10-02 16:22:53', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(603, 24, 1, '2020-10-02 16:27:36', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(604, 24, 1, '2020-10-02 16:29:48', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(605, 24, 1, '2020-10-02 16:51:32', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(606, 24, 1, '2020-10-02 17:59:38', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 109.178.176.25'),
(607, 24, 1, '2020-10-02 18:32:48', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(608, 25, 1, '2020-10-02 18:33:07', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(609, 24, 1, '2020-10-02 18:33:20', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(610, 24, 1, '2020-10-02 18:35:34', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(611, 24, 1, '2020-10-02 19:15:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(612, 24, 1, '2020-10-02 19:16:23', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.131.249.49'),
(613, 24, 12, '2020-10-03 11:04:45', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(614, 25, 12, '2020-10-03 12:28:04', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(615, 24, 1, '2020-10-03 13:29:32', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 46.176.232.65'),
(616, 24, 1, '2020-10-04 19:39:33', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(617, 24, 1, '2020-10-05 14:44:46', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(618, 1, 1, '2020-10-05 14:46:58', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"iii\" (34) δημιουργήθηκε από sysadmin (1)'),
(619, 2, 1, '2020-10-05 14:47:02', 17, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"iii\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 35'),
(620, 3, 1, '2020-10-05 14:47:02', 17, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (17) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(621, 2, 1, '2020-10-05 14:47:10', 18, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"iii\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 36'),
(622, 3, 1, '2020-10-05 14:47:10', 18, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (18) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(623, 5, 1, '2020-10-05 14:47:17', 17, 147, 1, 'Ο εκπαιδευόμενος sysadmin (1) ξεκίνησε τη δραστηριότητα Συζήτηση (Forum) (147)'),
(624, 25, 1, '2020-10-05 14:54:33', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(625, 24, 31, '2020-10-05 14:58:19', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(626, 4, 31, '2020-10-05 15:00:16', 14, NULL, NULL, 'Το μάθημα \"Μ2\" (14) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(627, 4, 31, '2020-10-05 15:00:20', 13, NULL, NULL, 'Το μάθημα \"Μ1\" (13) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(628, 11, 31, '2020-10-05 15:09:01', NULL, NULL, 34, 'Δημιουργήθηκε ο/η χρήστης: Mathitis3(34) , Πλήρες Όνομα: ΜαθητήςΒ Γυμνασίου'),
(629, 1, 31, '2020-10-05 15:10:31', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"iii\" (37) δημιουργήθηκε από Kathigitis1 (31)'),
(630, 25, 31, '2020-10-05 15:18:00', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(631, 24, 1, '2020-10-05 15:18:07', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(632, 11, 1, '2020-10-05 15:23:40', NULL, NULL, 35, 'Δημιουργήθηκε ο/η χρήστης: iii(35) , Πλήρες Όνομα: ioanna kechagia'),
(633, 11, 1, '2020-10-05 15:24:00', NULL, NULL, NULL, 'Διαγραμμένος userId: 35'),
(634, 25, 1, '2020-10-05 15:25:35', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(635, 24, 31, '2020-10-05 15:25:48', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(636, 1, 31, '2020-10-05 15:27:07', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"M1\" (38) δημιουργήθηκε από Kathigitis1 (31)'),
(637, 1, 31, '2020-10-05 15:31:35', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"M1\" (38) δημιουργήθηκε από Kathigitis1 (31)'),
(638, 2, 31, '2020-10-05 15:32:45', 19, NULL, NULL, 'Το μάθημα \"M1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"M1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 39'),
(639, 2, 31, '2020-10-05 15:32:45', 19, NULL, NULL, 'Το μάθημα \"M1\" (19) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(640, 3, 31, '2020-10-05 15:32:45', 19, NULL, NULL, 'Το μάθημα \"M1\" (19) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(641, 4, 31, '2020-10-05 15:32:53', 19, NULL, NULL, 'Το μάθημα \"M1\" (19) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(642, 25, 31, '2020-10-05 15:38:49', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(643, 24, 31, '2020-10-05 15:44:13', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(644, 25, 31, '2020-10-05 15:50:45', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(645, 24, 31, '2020-10-05 15:51:31', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(646, 25, 31, '2020-10-05 15:52:09', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(647, 24, 31, '2020-10-05 15:53:10', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(648, 25, 31, '2020-10-05 15:54:11', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(649, 24, 31, '2020-10-05 15:55:12', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(650, 11, 31, '2020-10-05 16:02:59', NULL, NULL, 36, 'Δημιουργήθηκε ο/η χρήστης: Mathitis5(36) , Πλήρες Όνομα: ΜαθητήςΓ Γυμνασίου'),
(651, 11, 31, '2020-10-05 17:29:20', NULL, NULL, 37, 'Δημιουργήθηκε ο/η χρήστης: Mathitis6(37) , Πλήρες Όνομα: ΜαθητήςΕ Γυμνασίου'),
(652, 24, 1, '2020-10-06 13:57:24', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 89.210.117.39'),
(653, 24, 31, '2020-10-07 17:31:05', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(654, 1, 31, '2020-10-07 19:15:08', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ2\" (40) δημιουργήθηκε από Kathigitis1 (31)'),
(655, 2, 31, '2020-10-07 19:16:11', 20, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 41'),
(656, 3, 31, '2020-10-07 19:16:12', 20, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (20) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(657, 5, 31, '2020-10-07 19:16:13', 20, 155, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (155)'),
(658, 2, 31, '2020-10-07 19:16:39', 21, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 42'),
(659, 3, 31, '2020-10-07 19:16:39', 21, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (21) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(660, 5, 31, '2020-10-07 19:16:40', 21, 158, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (158)'),
(661, 2, 31, '2020-10-07 19:16:43', 22, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 43'),
(662, 3, 31, '2020-10-07 19:16:43', 22, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (22) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(663, 5, 31, '2020-10-07 19:16:44', 22, 161, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (161)'),
(664, 2, 31, '2020-10-07 19:17:08', 23, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 44'),
(665, 3, 31, '2020-10-07 19:17:09', 23, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (23) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(666, 5, 31, '2020-10-07 19:17:09', 23, 164, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (164)'),
(667, 2, 31, '2020-10-07 19:17:58', 24, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 45'),
(668, 3, 31, '2020-10-07 19:17:58', 24, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (24) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(669, 5, 31, '2020-10-07 19:17:59', 24, 167, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (167)'),
(670, 2, 31, '2020-10-07 19:18:36', 25, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 46'),
(671, 3, 31, '2020-10-07 19:18:37', 25, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (25) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(672, 5, 31, '2020-10-07 19:18:37', 25, 170, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (170)'),
(673, 5, 31, '2020-10-07 19:19:04', 25, 171, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Ερωτήσεις (171)'),
(674, 6, 31, '2020-10-07 19:19:04', 25, 170, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) σταμάτησε τη δραστηριότητα Εισαγωγή (170)'),
(675, 5, 31, '2020-10-07 19:19:36', 25, 172, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Συζήτηση (Forum) (172)'),
(676, 6, 31, '2020-10-07 19:19:36', 25, 171, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) σταμάτησε τη δραστηριότητα Ερωτήσεις (171)'),
(677, 2, 31, '2020-10-07 19:22:33', 26, NULL, NULL, 'Το μάθημα \"Μ2\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2_07102020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 47'),
(678, 2, 31, '2020-10-07 19:22:33', 26, NULL, NULL, 'Το μάθημα \"Μ2\" (26) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(679, 3, 31, '2020-10-07 19:22:33', 26, NULL, NULL, 'Το μάθημα \"Μ2\" (26) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(680, 24, 37, '2020-10-09 15:23:45', NULL, NULL, 37, 'User Mathitis6 (37) logged in from IP 79.107.170.208'),
(681, 25, 37, '2020-10-09 15:23:45', NULL, NULL, 37, 'User Mathitis6 (37) logged out manually'),
(682, 24, 32, '2020-10-09 15:25:58', NULL, NULL, 32, 'User Mathitis1 (32) logged in from IP 79.107.170.208'),
(683, 25, 32, '2020-10-09 15:26:16', NULL, NULL, 32, 'User Mathitis1 (32) logged out manually'),
(684, 24, 32, '2020-10-09 15:27:39', NULL, NULL, 32, 'User Mathitis1 (32) logged in from IP 79.107.170.208'),
(685, 5, 32, '2020-10-09 15:28:04', 26, 173, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) ξεκίνησε τη δραστηριότητα Εισαγωγή (173)'),
(686, 5, 32, '2020-10-09 15:28:34', 26, 174, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) ξεκίνησε τη δραστηριότητα Ερωτήσεις (174)'),
(687, 6, 32, '2020-10-09 15:28:34', 26, 173, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) σταμάτησε τη δραστηριότητα Εισαγωγή (173)'),
(688, 5, 32, '2020-10-09 15:29:21', 26, 175, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) ξεκίνησε τη δραστηριότητα Συζήτηση (Forum) (175)'),
(689, 6, 32, '2020-10-09 15:29:21', 26, 174, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) σταμάτησε τη δραστηριότητα Ερωτήσεις (174)'),
(690, 7, 32, '2020-10-09 15:31:25', 26, NULL, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) ολοκλήρωσε το μάθημα Μ2 (26)'),
(691, 6, 32, '2020-10-09 15:31:25', 26, 175, 32, 'Ο εκπαιδευόμενος Mathitis1 (32) σταμάτησε τη δραστηριότητα Συζήτηση (Forum) (175)'),
(692, 24, 31, '2020-10-13 17:31:42', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(693, 25, 31, '2020-10-13 17:31:43', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(694, 24, 31, '2020-10-13 17:32:04', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(695, 4, 31, '2020-10-13 17:33:02', 26, NULL, NULL, 'Το μάθημα \"Μ2\" (26) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(696, 1, 31, '2020-10-13 18:37:55', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ2\" (48) δημιουργήθηκε από Kathigitis1 (31)'),
(697, 2, 31, '2020-10-13 18:38:03', 27, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 49'),
(698, 3, 31, '2020-10-13 18:38:03', 27, NULL, NULL, 'Το μάθημα \"Προεπισκόπηση\" (27) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(699, 5, 31, '2020-10-13 18:38:04', 27, 179, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (179)'),
(700, 5, 31, '2020-10-13 18:38:35', 27, 180, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Ερωτήσεις (180)'),
(701, 6, 31, '2020-10-13 18:38:35', 27, 179, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) σταμάτησε τη δραστηριότητα Εισαγωγή (179)'),
(702, 5, 31, '2020-10-13 18:39:05', 27, 181, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Συζήτηση (Forum) (181)'),
(703, 6, 31, '2020-10-13 18:39:05', 27, 180, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) σταμάτησε τη δραστηριότητα Ερωτήσεις (180)'),
(704, 7, 31, '2020-10-13 18:39:30', 27, NULL, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ολοκλήρωσε το μάθημα Προεπισκόπηση (27)'),
(705, 6, 31, '2020-10-13 18:39:30', 27, 181, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) σταμάτησε τη δραστηριότητα Συζήτηση (Forum) (181)'),
(706, 1, 31, '2020-10-13 19:04:59', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1\" (50) δημιουργήθηκε από Kathigitis1 (31)'),
(707, 2, 31, '2020-10-13 19:34:10', 28, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_13102020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 51'),
(708, 2, 31, '2020-10-13 19:34:10', 28, NULL, NULL, 'Το μάθημα \"Μ1\" (28) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(709, 3, 31, '2020-10-13 19:34:10', 28, NULL, NULL, 'Το μάθημα \"Μ1\" (28) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(710, 4, 31, '2020-10-13 19:34:33', 28, NULL, NULL, 'Το μάθημα \"Μ1\" (28) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(711, 2, 31, '2020-10-13 19:36:12', 29, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_13102020_2\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 52'),
(712, 2, 31, '2020-10-13 19:36:12', 29, NULL, NULL, 'Το μάθημα \"Μ1\" (29) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(713, 3, 31, '2020-10-13 19:36:12', 29, NULL, NULL, 'Το μάθημα \"Μ1\" (29) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(714, 4, 31, '2020-10-13 19:36:44', 29, NULL, NULL, 'Το μάθημα \"Μ1\" (29) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(715, 2, 31, '2020-10-13 19:37:55', 30, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_13102020_3\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 53'),
(716, 2, 31, '2020-10-13 19:37:55', 30, NULL, NULL, 'Το μάθημα \"Μ1\" (30) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(717, 3, 31, '2020-10-13 19:37:55', 30, NULL, NULL, 'Το μάθημα \"Μ1\" (30) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(718, 4, 31, '2020-10-13 19:38:23', 30, NULL, NULL, 'Το μάθημα \"Μ1\" (30) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(719, 2, 31, '2020-10-13 19:42:32', 31, NULL, NULL, 'Το μάθημα \"Μ1\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Μ1_13102020_4\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 54'),
(720, 2, 31, '2020-10-13 19:42:32', 31, NULL, NULL, 'Το μάθημα \"Μ1\" (31) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(721, 3, 31, '2020-10-13 19:42:32', 31, NULL, NULL, 'Το μάθημα \"Μ1\" (31) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(722, 24, 1, '2020-10-14 17:53:32', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(723, 25, 1, '2020-10-14 18:04:21', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(724, 24, 12, '2020-10-14 18:05:47', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(725, 25, 12, '2020-10-14 18:17:46', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(726, 24, 1, '2020-10-15 13:27:01', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(727, 25, 1, '2020-10-15 13:28:17', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(728, 24, 1, '2020-10-15 13:53:18', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(729, 25, 1, '2020-10-15 13:56:28', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(730, 24, 23, '2020-10-18 13:00:06', NULL, NULL, 23, 'User test131 (23) logged in from IP 79.107.170.208'),
(731, 25, 23, '2020-10-18 13:01:26', NULL, NULL, 23, 'User test131 (23) logged out manually'),
(732, 24, 23, '2020-10-18 13:01:42', NULL, NULL, 23, 'User test131 (23) logged in from IP 79.107.170.208'),
(733, 25, 23, '2020-10-18 13:02:12', NULL, NULL, 23, 'User test131 (23) logged out manually'),
(734, 24, 12, '2020-10-18 13:02:36', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(735, 11, 12, '2020-10-18 13:07:06', NULL, NULL, 38, 'Δημιουργήθηκε ο/η χρήστης: test15(38) , Πλήρες Όνομα: ab ab'),
(736, 25, 12, '2020-10-18 13:07:29', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(737, 24, 38, '2020-10-18 13:07:42', NULL, NULL, 38, 'User test15 (38) logged in from IP 79.107.170.208'),
(738, 25, 38, '2020-10-18 13:08:33', NULL, NULL, 38, 'User test15 (38) logged out manually'),
(739, 24, 12, '2020-10-18 13:08:46', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(740, 25, 12, '2020-10-18 13:16:09', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(741, 24, 1, '2020-10-18 16:37:21', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 5.54.162.224'),
(742, 25, 1, '2020-10-18 16:37:24', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(743, 24, 31, '2020-10-20 15:43:36', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(744, 24, 31, '2020-10-20 20:23:52', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(745, 24, 31, '2020-10-21 15:10:10', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(746, 24, 31, '2020-11-07 01:31:02', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(747, 25, 31, '2020-11-07 01:31:13', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(748, 24, 31, '2020-11-07 01:31:58', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(749, 25, 31, '2020-11-07 01:33:40', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(750, 24, 31, '2020-11-07 01:34:26', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(751, 25, 31, '2020-11-07 01:35:13', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(752, 24, 31, '2020-11-07 01:35:51', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 79.107.170.208'),
(753, 24, 1, '2020-11-07 10:41:31', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(754, 25, 1, '2020-11-07 11:30:46', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(755, 24, 12, '2020-11-07 12:05:08', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(756, 25, 12, '2020-11-07 13:39:55', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(757, 24, 15, '2020-11-07 18:14:06', NULL, NULL, 15, 'User test16 (15) logged in from IP 79.107.170.208'),
(758, 25, 15, '2020-11-07 18:16:30', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(759, 24, 24, '2020-11-07 18:16:46', NULL, NULL, 24, 'User test1311 (24) logged in from IP 79.107.170.208'),
(760, 25, 24, '2020-11-07 18:17:21', NULL, NULL, 24, 'User test1311 (24) logged out manually'),
(761, 24, 22, '2020-11-07 18:17:35', NULL, NULL, 22, 'User test161 (22) logged in from IP 79.107.170.208'),
(762, 25, 22, '2020-11-07 18:18:12', NULL, NULL, 22, 'User test161 (22) logged out manually'),
(763, 24, 12, '2020-11-07 18:18:26', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(764, 25, 12, '2020-11-07 18:30:06', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(765, 24, 1, '2020-11-07 18:30:13', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 79.107.170.208'),
(766, 11, 1, '2020-11-07 18:31:42', NULL, NULL, NULL, 'Αλλαγές courseAdminCanAddNewUsers για τον οργανισμό: Mathematics 1(4) από: false σε: true'),
(767, 11, 1, '2020-11-07 18:31:42', NULL, NULL, NULL, 'Αλλαγές courseAdminCanBrowseAllUsers για τον οργανισμό: Mathematics 1(4) από: false σε: true'),
(768, 25, 1, '2020-11-07 18:31:52', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(769, 24, 12, '2020-11-07 18:32:07', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(770, 1, 12, '2020-11-07 18:38:24', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Algebra\" (61) δημιουργήθηκε από test13 (12)'),
(771, 2, 12, '2020-11-07 18:38:49', 32, NULL, NULL, 'Το μάθημα \"Algebra\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Algebra\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 62'),
(772, 2, 12, '2020-11-07 18:38:49', 32, NULL, NULL, 'Το μάθημα \"Algebra\" (32) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(773, 3, 12, '2020-11-07 18:38:49', 32, NULL, NULL, 'Το μάθημα \"Algebra\" (32) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(774, 5, 12, '2020-11-07 18:38:58', 32, 200, 12, 'Ο εκπαιδευόμενος test13 (12) ξεκίνησε τη δραστηριότητα Ανακ. Πίνακας (200)'),
(775, 4, 12, '2020-11-07 18:39:21', 32, NULL, NULL, 'Το μάθημα \"Algebra\" (32) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(776, 1, 12, '2020-11-07 18:40:49', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Algebra\" (61) δημιουργήθηκε από test13 (12)'),
(777, 2, 12, '2020-11-07 18:42:07', 33, NULL, NULL, 'Το μάθημα \"Algebra\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Algebra_07112020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 63'),
(778, 2, 12, '2020-11-07 18:42:07', 33, NULL, NULL, 'Το μάθημα \"Algebra\" (33) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(779, 3, 12, '2020-11-07 18:42:07', 33, NULL, NULL, 'Το μάθημα \"Algebra\" (33) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(780, 25, 12, '2020-11-07 18:42:22', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(781, 24, 15, '2020-11-07 18:42:39', NULL, NULL, 15, 'User test16 (15) logged in from IP 79.107.170.208'),
(782, 5, 15, '2020-11-07 18:47:54', 33, 204, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Ανακ. Πίνακας (204)'),
(783, 5, 15, '2020-11-07 18:48:41', 33, 205, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Επεξ Εικ. Pixlr (205)'),
(784, 6, 15, '2020-11-07 18:48:41', 33, 204, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Ανακ. Πίνακας (204)'),
(785, 5, 15, '2020-11-07 18:52:41', 33, 206, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Ερωτ. Πολ. Επ. (206)'),
(786, 6, 15, '2020-11-07 18:52:41', 33, 205, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Επεξ Εικ. Pixlr (205)'),
(787, 5, 15, '2020-11-07 18:53:47', 33, 207, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Ερευνα (207)'),
(788, 6, 15, '2020-11-07 18:53:47', 33, 206, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Ερωτ. Πολ. Επ. (206)'),
(789, 25, 15, '2020-11-07 18:55:23', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(790, 24, 15, '2020-11-07 18:55:52', NULL, NULL, 15, 'User test16 (15) logged in from IP 79.107.170.208'),
(791, 7, 15, '2020-11-07 18:56:29', 33, NULL, 15, 'Ο εκπαιδευόμενος test16 (15) ολοκλήρωσε το μάθημα Algebra (33)'),
(792, 6, 15, '2020-11-07 18:56:29', 33, 207, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Ερευνα (207)'),
(793, 25, 15, '2020-11-07 19:01:39', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(794, 24, 12, '2020-11-07 19:01:53', NULL, NULL, 12, 'User test13 (12) logged in from IP 79.107.170.208'),
(795, 4, 12, '2020-11-07 19:02:35', 5, NULL, NULL, 'Το μάθημα \"neo\" (5) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(796, 1, 12, '2020-11-07 19:04:58', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Geometry\" (64) δημιουργήθηκε από test13 (12)'),
(797, 2, 12, '2020-11-07 19:05:49', 34, NULL, NULL, 'Το μάθημα \"Geometry\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Geometry\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 65'),
(798, 2, 12, '2020-11-07 19:05:49', 34, NULL, NULL, 'Το μάθημα \"Geometry\" (34) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(799, 3, 12, '2020-11-07 19:05:49', 34, NULL, NULL, 'Το μάθημα \"Geometry\" (34) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(800, 25, 12, '2020-11-07 19:06:11', NULL, NULL, 12, 'User test13 (12) logged out manually'),
(801, 24, 15, '2020-11-07 19:06:27', NULL, NULL, 15, 'User test16 (15) logged in from IP 79.107.170.208'),
(802, 5, 15, '2020-11-07 19:12:37', 34, 212, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Ανακ. Πίνακας (212)'),
(803, 5, 15, '2020-11-07 19:17:40', 34, 213, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Ερωτ. Πολ. Επ. (213)'),
(804, 6, 15, '2020-11-07 19:17:40', 34, 212, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Ανακ. Πίνακας (212)'),
(805, 5, 15, '2020-11-07 19:24:39', 34, 214, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Υποβολή Αρχείου (214)'),
(806, 6, 15, '2020-11-07 19:24:39', 34, 213, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Ερωτ. Πολ. Επ. (213)'),
(807, 5, 15, '2020-11-07 19:25:02', 34, 215, 15, 'Ο εκπαιδευόμενος test16 (15) ξεκίνησε τη δραστηριότητα Αξιολόγηση (215)'),
(808, 6, 15, '2020-11-07 19:25:02', 34, 214, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Υποβολή Αρχείου (214)'),
(809, 7, 15, '2020-11-07 19:25:22', 34, NULL, 15, 'Ο εκπαιδευόμενος test16 (15) ολοκλήρωσε το μάθημα Geometry (34)'),
(810, 6, 15, '2020-11-07 19:25:23', 34, 215, 15, 'Ο εκπαιδευόμενος test16 (15) σταμάτησε τη δραστηριότητα Αξιολόγηση (215)'),
(811, 25, 15, '2020-11-07 19:34:23', NULL, NULL, 15, 'User test16 (15) logged out manually'),
(812, 24, 1, '2020-11-08 15:51:56', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(813, 24, 1, '2020-11-08 15:55:05', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(814, 25, 1, '2020-11-08 15:55:15', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(815, 24, 1, '2020-11-08 15:58:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(816, 25, 1, '2020-11-08 15:58:49', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(817, 24, 1, '2020-11-08 16:08:53', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(818, 24, 1, '2020-11-08 16:08:58', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.41'),
(819, 25, 1, '2020-11-08 16:09:10', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(820, 24, 1, '2020-11-08 16:17:35', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.41'),
(821, 24, 1, '2020-11-08 16:42:55', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(822, 24, 1, '2020-11-08 16:43:41', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(823, 24, 1, '2020-11-08 16:43:59', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(824, 24, 1, '2020-11-08 16:52:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(825, 24, 1, '2020-11-08 16:52:51', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(826, 24, 1, '2020-11-08 16:55:13', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(827, 24, 1, '2020-11-08 16:56:41', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(828, 25, 1, '2020-11-08 16:59:30', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(829, 24, 1, '2020-11-08 16:59:44', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(830, 24, 1, '2020-11-08 17:02:53', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.42'),
(831, 24, 32, '2020-11-17 16:51:47', NULL, NULL, 32, 'User Mathitis1 (32) logged in from IP 10.7.254.37'),
(832, 25, 32, '2020-11-17 16:51:59', NULL, NULL, 32, 'User Mathitis1 (32) logged out manually'),
(833, 24, 31, '2020-11-17 16:52:45', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 10.7.254.37'),
(834, 5, 31, '2020-11-17 16:52:51', 31, 194, 31, 'Ο εκπαιδευόμενος Kathigitis1 (31) ξεκίνησε τη δραστηριότητα Εισαγωγή (194)'),
(835, 25, 31, '2020-11-17 16:53:57', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(836, 24, 33, '2020-11-17 16:54:42', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(837, 25, 33, '2020-11-17 16:55:00', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(838, 24, 33, '2020-11-17 16:55:29', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(839, 25, 33, '2020-11-17 16:55:35', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(840, 24, 33, '2020-11-17 16:59:15', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(841, 25, 33, '2020-11-17 16:59:37', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(842, 24, 33, '2020-11-17 17:00:37', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(843, 25, 33, '2020-11-17 17:00:52', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(844, 24, 33, '2020-11-17 17:02:11', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(845, 5, 33, '2020-11-17 17:02:28', 31, 194, 33, 'Ο εκπαιδευόμενος Mathitis2 (33) ξεκίνησε τη δραστηριότητα Εισαγωγή (194)'),
(846, 25, 33, '2020-11-17 17:06:32', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(847, 24, 31, '2020-11-17 17:06:46', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 10.7.254.37'),
(848, 22, 31, '2020-11-17 17:07:55', 31, NULL, NULL, 'Ζωντανή Επεξεργασία του Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ξεκίνησε από Kathigitis1 (31)'),
(849, 1, 31, '2020-11-17 17:08:39', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1_13102020_4\" (54) δημιουργήθηκε από Kathigitis1 (31)'),
(850, 22, 31, '2020-11-17 17:08:39', 31, NULL, NULL, 'Η Ζωντανή Επεξεργασία Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ολοκληρώθηκε από Kathigitis1 (31)'),
(851, 22, 31, '2020-11-17 17:09:12', 31, NULL, NULL, 'Ζωντανή Επεξεργασία του Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ξεκίνησε από Kathigitis1 (31)'),
(852, 1, 31, '2020-11-17 17:09:48', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1_13102020_4\" (54) δημιουργήθηκε από Kathigitis1 (31)'),
(853, 22, 31, '2020-11-17 17:09:48', 31, NULL, NULL, 'Η Ζωντανή Επεξεργασία Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ολοκληρώθηκε από Kathigitis1 (31)'),
(854, 22, 31, '2020-11-17 17:10:20', 31, NULL, NULL, 'Ζωντανή Επεξεργασία του Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ξεκίνησε από Kathigitis1 (31)'),
(855, 1, 31, '2020-11-17 17:12:14', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1_13102020_4\" (54) δημιουργήθηκε από Kathigitis1 (31)'),
(856, 22, 31, '2020-11-17 17:12:15', 31, NULL, NULL, 'Η Ζωντανή Επεξεργασία Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ολοκληρώθηκε από Kathigitis1 (31)'),
(857, 22, 31, '2020-11-17 17:13:14', 31, NULL, NULL, 'Ζωντανή Επεξεργασία του Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ξεκίνησε από Kathigitis1 (31)'),
(858, 25, 31, '2020-11-17 17:16:29', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(859, 24, 33, '2020-11-17 17:17:02', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(860, 6, 33, '2020-11-17 17:17:37', 31, 194, 33, 'Ο εκπαιδευόμενος Mathitis2 (33) σταμάτησε τη δραστηριότητα Εισαγωγή (194)'),
(861, 25, 33, '2020-11-17 17:18:12', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(862, 24, 31, '2020-11-17 17:18:23', NULL, NULL, 31, 'User Kathigitis1 (31) logged in from IP 10.7.254.37'),
(863, 1, 31, '2020-11-17 17:20:28', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Μ1_13102020_4\" (54) δημιουργήθηκε από Kathigitis1 (31)'),
(864, 22, 31, '2020-11-17 17:20:28', 31, NULL, NULL, 'Η Ζωντανή Επεξεργασία Σχεδιασμού Μάθησης \"Μ1_13102020_4\" (54) για το Μάθημα (31) ολοκληρώθηκε από Kathigitis1 (31)'),
(865, 25, 31, '2020-11-17 17:20:38', NULL, NULL, 31, 'User Kathigitis1 (31) logged out manually'),
(866, 24, 33, '2020-11-17 17:21:15', NULL, NULL, 33, 'User Mathitis2 (33) logged in from IP 10.7.254.37'),
(867, 5, 33, '2020-11-17 17:21:30', 31, 195, 33, 'Ο εκπαιδευόμενος Mathitis2 (33) ξεκίνησε τη δραστηριότητα Ερωτήσεις (195)'),
(868, 25, 33, '2020-11-17 17:22:38', NULL, NULL, 33, 'User Mathitis2 (33) logged out manually'),
(869, 24, 34, '2020-11-17 17:22:54', NULL, NULL, 34, 'User Mathitis3 (34) logged in from IP 10.7.254.37'),
(870, 25, 34, '2020-11-17 17:23:04', NULL, NULL, 34, 'User Mathitis3 (34) logged out manually'),
(871, 24, 34, '2020-11-17 17:24:16', NULL, NULL, 34, 'User Mathitis3 (34) logged in from IP 10.7.254.37'),
(872, 5, 34, '2020-11-17 17:24:30', 31, 194, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) ξεκίνησε τη δραστηριότητα Εισαγωγή (194)'),
(873, 5, 34, '2020-11-17 17:25:36', 31, 195, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) ξεκίνησε τη δραστηριότητα Ερωτήσεις (195)'),
(874, 6, 34, '2020-11-17 17:25:36', 31, 194, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) σταμάτησε τη δραστηριότητα Εισαγωγή (194)'),
(875, 5, 34, '2020-11-17 17:28:06', 31, 196, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) ξεκίνησε τη δραστηριότητα Συζήτηση (Forum) (196)'),
(876, 6, 34, '2020-11-17 17:28:06', 31, 195, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) σταμάτησε τη δραστηριότητα Ερωτήσεις (195)'),
(877, 7, 34, '2020-11-17 17:29:04', 31, NULL, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) ολοκλήρωσε το μάθημα Μ1 (31)'),
(878, 6, 34, '2020-11-17 17:29:04', 31, 196, 34, 'Ο εκπαιδευόμενος Mathitis3 (34) σταμάτησε τη δραστηριότητα Συζήτηση (Forum) (196)'),
(879, 24, 1, '2020-11-17 20:09:22', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(880, 24, 1, '2020-11-17 22:50:29', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(881, 25, 1, '2020-11-17 23:07:59', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(882, 24, 1, '2020-11-17 23:11:52', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(883, 26, 1, '2020-11-17 23:14:03', NULL, NULL, NULL, 'Configuration changed: \"Ενεργοποιήστη του συνδέσμου \"Ξεχάσατε τον κωδικό πρόσβασής σας\" στη σελίδα σύνδεσης\" from \"true\" to \"false\", \"Έκδοση\" from \"3.1\" to \"4.1\", \"Email υποστήριξης LAMS\" from \"\" to \"dbsch@teiath.gr\"'),
(884, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 39, 'Created user: 1gymkori(39), Full Name:   1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ'),
(885, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 40, 'Created user: 10dimkor(40), Full Name:   10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ'),
(886, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 41, 'Created user: 11dimkor(41), Full Name:   11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ'),
(887, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 42, 'Created user: 1gymxylo(42), Full Name:   1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ'),
(888, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 43, 'Created user: 1sekkiat(43), Full Name:   1ο ΣΕΚ ΚΙΑΤΟΥ'),
(889, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 44, 'Created user: 2gymkiat(44), Full Name:   2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ'),
(890, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 45, 'Created user: 2gymkori(45), Full Name:   2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ'),
(891, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 46, 'Created user: 2gymxylo(46), Full Name:   2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ'),
(892, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 47, 'Created user: 3lykkori(47), Full Name:   3ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ'),
(893, 11, NULL, '2020-11-17 23:14:44', NULL, NULL, 48, 'Created user: 4lykkori(48), Full Name:   4ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ'),
(894, 25, 1, '2020-11-17 23:15:36', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(895, 24, 1, '2020-11-17 23:20:21', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(896, 25, 1, '2020-11-17 23:26:26', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(897, 24, 1, '2020-11-17 23:38:36', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(898, 24, 1, '2020-11-17 23:38:40', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(899, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 49, 'Created user: a1(49), Full Name: ΣΟΦΙΑ ΠΑΝΑΓΙΩΤΙΔΟΥ'),
(900, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 50, 'Created user: a3(50), Full Name: ΑΙΚΑΤΕΡΙΝΗ ΠΑΝΑΓΙΟΤΙ'),
(901, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 51, 'Created user: a4(51), Full Name: ΓΕΩΡΓΙΟΣ ΧΑΡΑΛΑΜΠΟΠΟΥΛΟΣ'),
(902, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 52, 'Created user: a5(52), Full Name: ΦΛΩΡΑ ΜΑΡΚΟΣΤΑΜΟΥ'),
(903, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 53, 'Created user: a6(53), Full Name: ΜΑΛΑΜΑΤΕΝΙΑ ΛΟΒΕΡΔΟΥ'),
(904, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 54, 'Created user: a7(54), Full Name: ΝΙΚΟΛΑΟΣ ΓΙΑΓΜΟΥΡΙΔΗΣ');
INSERT INTO `lams_log_event` (`id`, `log_event_type_id`, `user_id`, `occurred_date_time`, `lesson_id`, `activity_id`, `target_user_id`, `description`) VALUES
(905, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 55, 'Created user: a8(55), Full Name: ΚΩΝΣΤΑΝΤΙΝΟΣ ΜΠΑΣΣΑΡΑΣ'),
(906, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 56, 'Created user: a9(56), Full Name: ΑΡΙΣΤΕΙΔΗΣ ΓΕΡΑΣΙΜΟΥ'),
(907, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 57, 'Created user: ak(57), Full Name: ΑΛΕΞΑΝΔΡΟΣ ΚΟΛΙΑΤΣΗΣ'),
(908, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 58, 'Created user: am(58), Full Name: ΑΠΟΣΤΟΛΟΣ ΜΟΥΖΙΝΑΣ'),
(909, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 59, 'Created user: dk(59), Full Name: ΔΗΜΗΤΡΗΣ ΚΕΛΕΦΙΩΤΗΣ'),
(910, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 60, 'Created user: DP(60), Full Name: ΔΗΜΗΤΡΙΟΣ ΠΑΝΟΥΡΓΙΑΣ'),
(911, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 61, 'Created user: fc(61), Full Name: ΘΕΟΦΑΝΗΣ ΧΡΙΣΤΟΔΟΥΛΟΥ'),
(912, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 62, 'Created user: fg(62), Full Name: ΦΩΤΙΟΣ ΓΟΥΣΙΑΣ'),
(913, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 63, 'Created user: fs(63), Full Name: ΦΩΤΙΟΣ ΣΠΥΡΟΠΟΥΛΟΣ'),
(914, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 64, 'Created user: GA(64), Full Name: ΑΔΑΜΑΝΤΙΑ ΓΙΑΝΝΑΚΟΠΟΥΛΟΥ'),
(915, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 65, 'Created user: gr(65), Full Name: ΓΕΩΡΓΙΑ ΡΑΠΤΗ'),
(916, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 66, 'Created user: jd(66), Full Name: ΙΩΑΝΝΗΣ ΔΗΜΤΣΑΣ'),
(917, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 67, 'Created user: js(67), Full Name: ΙΩΑΝΝΗΣ ΣΚΑΜΑΓΚΗΣ'),
(918, 11, NULL, '2020-11-17 23:39:03', NULL, NULL, 68, 'Created user: ks(68), Full Name: ΚΡΥΣΤΑΛΩ ΣΑΚΕΛΛΑΡΙΟΥ'),
(919, 25, 1, '2020-11-17 23:42:02', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(920, 24, 1, '2020-11-17 23:46:51', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(921, 24, 1, '2020-11-18 00:01:39', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(922, 24, 1, '2020-11-18 00:01:42', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 10.7.254.40'),
(923, 11, NULL, '2020-11-18 00:01:53', NULL, NULL, 69, 'Created user: dnikoudis(69), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(924, 25, 1, '2020-11-18 00:02:05', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(925, 24, 69, '2020-11-18 00:02:09', NULL, NULL, 69, 'User dnikoudis (69) logged in from IP 10.7.254.40'),
(926, 25, 69, '2020-11-18 00:04:12', NULL, NULL, 69, 'User dnikoudis (69) logged out manually'),
(927, 24, 69, '2020-11-18 00:05:39', NULL, NULL, 69, 'User dnikoudis (69) logged in from IP 10.7.254.40'),
(928, 25, 69, '2020-11-18 00:05:47', NULL, NULL, 69, 'User dnikoudis (69) logged out manually'),
(929, 24, 69, '2020-11-18 00:05:52', NULL, NULL, 69, 'User dnikoudis (69) logged in from IP 10.7.254.40'),
(930, 25, 69, '2020-11-18 00:06:43', NULL, NULL, 69, 'User dnikoudis (69) logged out manually'),
(931, 11, NULL, '2020-11-18 02:20:54', NULL, NULL, 70, 'Created user: dnikoudis(70), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(932, 24, 70, '2020-11-18 02:28:29', NULL, NULL, 70, 'User dnikoudis (70) logged in from IP 172.27.0.1'),
(933, 25, 70, '2020-11-18 02:28:35', NULL, NULL, 70, 'User dnikoudis (70) logged out manually'),
(934, 11, NULL, '2020-11-18 02:32:32', NULL, NULL, 71, 'Created user: dnikoudis(71), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(935, 11, NULL, '2020-11-18 03:18:45', NULL, NULL, 72, 'Created user: dnikoudis(72), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(936, 24, 72, '2020-11-18 03:18:46', NULL, NULL, 72, 'User dnikoudis (72) logged in from IP 172.27.0.1'),
(937, 25, 72, '2020-11-18 03:20:17', NULL, NULL, 72, 'User dnikoudis (72) logged out manually'),
(938, 11, NULL, '2020-11-18 03:24:07', NULL, NULL, 39, 'Created user: dnikoudis(39), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(939, 24, 39, '2020-11-18 03:24:07', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(940, 24, 39, '2020-11-18 03:50:53', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(941, 25, 39, '2020-11-18 03:50:58', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(942, 24, 39, '2020-11-18 03:51:02', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(943, 24, 39, '2020-11-18 04:11:07', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(944, 25, 39, '2020-11-18 04:11:12', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(945, 24, 39, '2020-11-18 04:11:18', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(946, 25, NULL, '2020-11-18 04:17:14', NULL, NULL, NULL, 'User dnikoudis (39) logged out manually'),
(947, 11, NULL, '2020-11-18 04:17:26', NULL, NULL, 39, 'Created user: dnikoudis(39), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(948, 24, 39, '2020-11-18 04:17:27', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(949, 25, 39, '2020-11-18 04:24:52', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(950, 24, 39, '2020-11-18 04:24:56', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(951, 25, 39, '2020-11-18 04:29:43', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(952, 24, 39, '2020-11-18 04:29:47', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(953, 25, 39, '2020-11-18 04:46:43', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(954, 24, 39, '2020-11-18 05:01:24', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(955, 24, 39, '2020-11-18 05:05:39', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(956, 25, 39, '2020-11-18 05:06:05', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(957, 24, 39, '2020-11-18 05:06:09', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(958, 24, 39, '2020-11-18 05:10:13', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(959, 25, 39, '2020-11-18 05:10:22', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(960, 24, 39, '2020-11-18 05:10:25', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(961, 25, 39, '2020-11-18 05:13:22', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(962, 24, 39, '2020-11-18 15:52:06', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(963, 25, 39, '2020-11-18 15:52:14', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(964, 24, 39, '2020-11-18 15:52:17', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(965, 25, 39, '2020-11-18 15:54:29', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(966, 24, 39, '2020-11-18 15:57:04', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(967, 25, 39, '2020-11-18 15:57:09', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(968, 24, 39, '2020-11-18 15:57:16', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(969, 24, 39, '2020-11-18 16:47:04', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(970, 25, 39, '2020-11-18 16:47:04', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(971, 24, 39, '2020-11-18 16:47:09', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(972, 25, 39, '2020-11-18 16:47:26', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(973, 24, 39, '2020-11-18 16:47:29', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(974, 24, 39, '2020-11-18 16:53:55', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(975, 25, 39, '2020-11-18 16:53:59', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(976, 24, 39, '2020-11-18 16:54:04', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(977, 25, 39, '2020-11-18 17:01:17', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(978, 24, 39, '2020-11-18 17:22:53', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(979, 25, 39, '2020-11-18 17:22:59', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(980, 24, 39, '2020-11-18 17:23:05', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(981, 24, 39, '2020-11-18 17:38:49', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(982, 25, 39, '2020-11-18 17:38:52', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(983, 24, 39, '2020-11-18 17:38:57', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(984, 24, 39, '2020-11-18 17:48:32', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(985, 25, 39, '2020-11-18 17:48:37', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(986, 24, 39, '2020-11-18 17:48:41', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(987, 24, 39, '2020-11-18 17:51:40', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(988, 25, 39, '2020-11-18 17:51:43', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(989, 24, 39, '2020-11-18 17:51:46', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(990, 24, 39, '2020-11-18 17:56:08', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(991, 25, 39, '2020-11-18 17:56:12', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(992, 15, 39, '2020-11-18 17:56:58', NULL, NULL, 39, 'User dnikoudis (39) is locked out for 5 mins after 3 failed attempts.'),
(993, 15, 39, '2020-11-18 18:10:15', NULL, NULL, 39, 'User dnikoudis (39) is locked out for 5 mins after 3 failed attempts.'),
(994, 15, 39, '2020-11-18 18:18:57', NULL, NULL, 39, 'User dnikoudis (39) is locked out for 5 mins after 3 failed attempts.'),
(995, 15, 39, '2020-11-18 19:23:07', NULL, NULL, 39, 'User dnikoudis (39) is locked out for 5 mins after 3 failed attempts.'),
(996, 15, 39, '2020-11-18 19:47:09', NULL, NULL, 39, 'User dnikoudis (39) is locked out for 5 mins after 3 failed attempts.'),
(997, 24, 39, '2020-11-18 20:54:27', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(998, 25, 39, '2020-11-18 20:54:33', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(999, 24, 39, '2020-11-18 20:54:37', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.27.0.1'),
(1000, 24, 39, '2020-11-19 01:14:57', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1001, 24, 39, '2020-11-19 01:20:14', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1002, 25, 39, '2020-11-19 01:21:12', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1003, 24, 39, '2020-11-19 01:25:20', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1004, 25, 39, '2020-11-19 01:35:32', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1005, 24, 39, '2020-11-19 01:38:23', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1006, 24, 39, '2020-11-19 01:42:28', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1007, 25, 39, '2020-11-19 01:42:55', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1008, 24, 39, '2020-11-19 01:42:59', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1009, 24, 39, '2020-11-19 01:51:17', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1010, 25, 39, '2020-11-19 01:51:17', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1011, 24, 39, '2020-11-19 01:51:24', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1012, 25, 39, '2020-11-19 01:53:54', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1013, 24, 39, '2020-11-19 01:56:23', NULL, NULL, 39, 'User dnikoudis (39) logged in from IP 172.21.0.1'),
(1014, 25, 39, '2020-11-19 01:57:26', NULL, NULL, 39, 'User dnikoudis (39) logged out manually'),
(1015, 11, NULL, '2020-11-19 02:07:24', NULL, NULL, 40, 'Created user: dnikoudis(40), Full Name: ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ'),
(1016, 24, 40, '2020-11-19 02:07:25', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1017, 24, 40, '2020-11-19 02:19:19', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1018, 25, 40, '2020-11-19 02:19:34', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1019, 24, 40, '2020-11-19 02:19:38', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1020, 25, 40, '2020-11-19 02:21:28', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1021, 24, 40, '2020-11-19 02:23:15', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1022, 1, 40, '2020-11-19 02:25:09', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Noticeboard\" (66) δημιουργήθηκε από dnikoudis (40)'),
(1023, 2, 40, '2020-11-19 02:25:09', 35, NULL, NULL, 'Το μάθημα \"Noticeboard\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Noticeboard\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 66'),
(1024, 3, 40, '2020-11-19 02:25:09', 35, NULL, NULL, 'Το μάθημα \"Noticeboard\" (35) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(1025, 5, 40, '2020-11-19 02:30:24', 35, 220, 40, 'Ο εκπαιδευόμενος dnikoudis (40) ξεκίνησε τη δραστηριότητα NoticeboardX (220)'),
(1026, 2, 40, '2020-11-19 02:31:35', 36, NULL, NULL, 'Το μάθημα \"first\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"first\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 67'),
(1027, 2, 40, '2020-11-19 02:31:35', 36, NULL, NULL, 'Το μάθημα \"first\" (36) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(1028, 3, 40, '2020-11-19 02:31:35', 36, NULL, NULL, 'Το μάθημα \"first\" (36) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(1029, 4, 40, '2020-11-19 02:31:45', 36, NULL, NULL, 'Το μάθημα \"first\" (36) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(1030, 24, 40, '2020-11-19 02:36:01', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1031, 25, 40, '2020-11-19 02:40:56', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1032, 24, 40, '2020-11-19 02:43:16', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1033, 1, 40, '2020-11-19 02:44:30', NULL, NULL, NULL, 'Ο Σχεδιασμός μάθησης \"Scribe\" (68) δημιουργήθηκε από dnikoudis (40)'),
(1034, 2, 40, '2020-11-19 02:44:30', 37, NULL, NULL, 'Το μάθημα \"Scribe\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Scribe\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 68'),
(1035, 3, 40, '2020-11-19 02:44:30', 37, NULL, NULL, 'Το μάθημα \"Scribe\" (37) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(1036, 5, 40, '2020-11-19 02:44:35', 37, 223, 40, 'Ο εκπαιδευόμενος dnikoudis (40) ξεκίνησε τη δραστηριότητα Scribe Tool (223)'),
(1037, 2, 40, '2020-11-19 02:52:13', 38, NULL, NULL, 'Το μάθημα \"Scribe\" δημιουργήθηκε με το μαθησιακό σχεδιασμό \"Scribe_19112020_1\", εξάχθηκε φάκελος αρχειοθέτησης για το εκπαιδευόμενο 69'),
(1038, 2, 40, '2020-11-19 02:52:13', 38, NULL, NULL, 'Το μάθημα \"Scribe\" (38) άλλαξε από \"-\" σε \"Δημιουργήθηκε αλλά δεν έχει αρχίσει\"'),
(1039, 3, 40, '2020-11-19 02:52:13', 38, NULL, NULL, 'Το μάθημα \"Scribe\" (38) άλλαξε από \"-\" σε \"Ξεκίνησε\"'),
(1040, 4, 40, '2020-11-19 02:52:16', 37, NULL, NULL, 'Το μάθημα \"Scribe\" (37) άλλαξε από \"Ξεκίνησε\" σε \"Έχει αφαιρεθεί\"'),
(1041, 25, 40, '2020-11-19 02:59:05', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1042, 24, 40, '2020-11-19 03:05:39', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1043, 24, 40, '2020-11-19 03:05:54', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1044, 25, 40, '2020-11-19 03:06:54', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1045, 24, 40, '2020-11-19 03:06:58', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1046, 24, 40, '2020-11-19 03:08:06', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1047, 14, 40, '2020-11-19 03:10:14', NULL, NULL, 40, 'User 40 does not have any of [GROUP MANAGER] roles in organisation 2 and can not \"manage courses\"'),
(1048, 14, 40, '2020-11-19 03:10:19', NULL, NULL, 40, 'User 40 does not have any of [GROUP MANAGER] roles in organisation 22 and can not \"manage courses\"'),
(1049, 11, 40, '2020-11-19 03:10:32', NULL, NULL, NULL, 'Δημιουργήθηκε Μάθημα/Τάξη/Τμήμα: Test(null) του τύπου: CLASS'),
(1050, 15, 40, '2020-11-22 22:53:21', NULL, NULL, 40, 'User dnikoudis (40) is locked out for 5 mins after 3 failed attempts.'),
(1051, 24, 1, '2020-11-22 22:54:38', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.21.0.1'),
(1052, 24, 40, '2020-11-24 19:57:19', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1053, 24, 40, '2020-11-24 20:39:05', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1054, 11, NULL, '2020-11-24 20:39:22', NULL, NULL, 41, 'Δημιουργήθηκε ο/η χρήστης: 1gymkori(41) , Πλήρες Όνομα:   1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ'),
(1055, 11, NULL, '2020-11-24 20:39:22', NULL, NULL, 42, 'Δημιουργήθηκε ο/η χρήστης: 10dimkor(42) , Πλήρες Όνομα:   10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ'),
(1056, 11, NULL, '2020-11-24 20:39:22', NULL, NULL, 43, 'Δημιουργήθηκε ο/η χρήστης: 11dimkor(43) , Πλήρες Όνομα:   11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ'),
(1057, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 44, 'Δημιουργήθηκε ο/η χρήστης: 1gymxylo(44) , Πλήρες Όνομα:   1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ'),
(1058, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 45, 'Δημιουργήθηκε ο/η χρήστης: 1sekkiat(45) , Πλήρες Όνομα:   1ο ΣΕΚ ΚΙΑΤΟΥ'),
(1059, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 46, 'Δημιουργήθηκε ο/η χρήστης: 2gymkiat(46) , Πλήρες Όνομα:   2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ'),
(1060, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 47, 'Δημιουργήθηκε ο/η χρήστης: 2gymkori(47) , Πλήρες Όνομα:   2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ'),
(1061, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 48, 'Δημιουργήθηκε ο/η χρήστης: 2gymxylo(48) , Πλήρες Όνομα:   2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ'),
(1062, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 49, 'Δημιουργήθηκε ο/η χρήστης: 3lykkori(49) , Πλήρες Όνομα:   3ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ'),
(1063, 11, NULL, '2020-11-24 20:39:23', NULL, NULL, 50, 'Δημιουργήθηκε ο/η χρήστης: 4lykkori(50) , Πλήρες Όνομα:   4ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ'),
(1064, 24, 40, '2020-11-24 20:50:23', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1065, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 51, 'Δημιουργήθηκε ο/η χρήστης: ikechagias(51) , Πλήρες Όνομα: ΗΛΙΑΣ ΚΕΧΑΓΙΑΣ'),
(1066, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 52, 'Δημιουργήθηκε ο/η χρήστης: ikecha(52) , Πλήρες Όνομα: ΕΙΡΗΝΗ ΚΕΧΑΓΙΑ'),
(1067, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 53, 'Δημιουργήθηκε ο/η χρήστης: ikechagia(53) , Πλήρες Όνομα: ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ'),
(1068, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 54, 'Δημιουργήθηκε ο/η χρήστης: ikechagi14(54) , Πλήρες Όνομα: ΙΩΑΝΝΑ ΚΕΧΑΓΙΟΓΛΟΥ'),
(1069, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 55, 'Δημιουργήθηκε ο/η χρήστης: ikechaidou(55) , Πλήρες Όνομα: ΙΣΜΗΝΗ ΚΕΧΑΙΔΟΥ'),
(1070, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 56, 'Δημιουργήθηκε ο/η χρήστης: ikechagia_prof(56) , Πλήρες Όνομα: ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ'),
(1071, 11, NULL, '2020-11-24 20:50:37', NULL, NULL, 57, 'Δημιουργήθηκε ο/η χρήστης: ikechagia_stud(57) , Πλήρες Όνομα: ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ'),
(1072, 24, 40, '2021-01-09 22:50:44', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1073, 24, 40, '2021-01-09 22:57:35', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1074, 24, 40, '2021-01-09 23:05:27', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1075, 24, 40, '2021-01-09 23:10:49', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1076, 24, 40, '2021-01-09 23:20:50', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1077, 24, 40, '2021-01-09 23:53:33', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1078, 24, 40, '2021-01-10 00:00:51', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1079, 24, 40, '2021-01-10 00:14:21', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1080, 24, 40, '2021-01-10 00:24:42', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1081, 24, 40, '2021-01-10 00:27:03', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1082, 25, 40, '2021-01-10 00:27:49', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1083, 24, 40, '2021-01-10 00:27:54', NULL, NULL, 40, 'User dnikoudis (40) logged in from IP 172.21.0.1'),
(1084, 25, 40, '2021-01-10 00:30:43', NULL, NULL, 40, 'User dnikoudis (40) logged out manually'),
(1085, 15, 1, '2022-01-29 18:06:17', NULL, NULL, 1, 'User sysadmin (1) is locked out for 5 mins after 3 failed attempts.'),
(1086, 24, 1, '2022-01-29 18:09:20', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.21.0.1'),
(1087, 25, 1, '2022-01-29 18:10:01', NULL, NULL, 1, 'User sysadmin (1) logged out manually'),
(1088, 24, 1, '2022-01-29 18:10:05', NULL, NULL, 1, 'User sysadmin (1) logged in from IP 172.21.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `lams_log_event_type`
--

CREATE TABLE `lams_log_event_type` (
  `log_event_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_log_event_type`
--

INSERT INTO `lams_log_event_type` (`log_event_type_id`, `description`, `area`) VALUES
(1, 'TYPE_TEACHER_LEARNING_DESIGN_CREATE', 'LESSON'),
(2, 'TYPE_TEACHER_LESSON_CREATE', 'LESSON'),
(3, 'TYPE_TEACHER_LESSON_START', 'LESSON'),
(4, 'TYPE_TEACHER_LESSON_CHANGE_STATE', 'LESSON'),
(5, 'TYPE_LEARNER_ACTIVITY_START', 'LESSON'),
(6, 'TYPE_LEARNER_ACTIVITY_FINISH', 'LESSON'),
(7, 'TYPE_LEARNER_LESSON_COMPLETE', 'LESSON'),
(8, 'TYPE_LEARNER_LESSON_MARK_SUBMIT', 'LESSON'),
(9, 'TYPE_ACTIVITY_EDIT', 'LESSON'),
(10, 'TYPE_FORCE_COMPLETE', 'LESSON'),
(11, 'TYPE_USER_ORG_ADMIN', 'SECURITY'),
(12, 'TYPE_LOGIN_AS', 'SECURITY'),
(13, 'TYPE_PASSWORD_CHANGE', 'SECURITY'),
(14, 'TYPE_ROLE_FAILURE', 'SECURITY'),
(15, 'TYPE_ACCOUNT_LOCKED', 'SECURITY'),
(16, 'TYPE_NOTIFICATION', 'NOTIFICATION'),
(17, 'TYPE_MARK_UPDATED', 'MARKS'),
(18, 'TYPE_MARK_RELEASED', 'MARKS'),
(19, 'TYPE_LEARNER_CONTENT_UPDATED', 'LEARNER_CONTENT'),
(20, 'TYPE_LEARNER_CONTENT_SHOW_HIDE', 'LEARNER_CONTENT'),
(21, 'TYPE_UNKNOWN', 'UNKNOWN'),
(22, 'TYPE_LIVE_EDIT', 'LESSON'),
(23, 'TYPE_TOOL_MARK_RELEASED', 'MARKS'),
(24, 'TYPE_LOGIN', 'SECURITY'),
(25, 'TYPE_LOGOUT', 'SECURITY'),
(26, 'TYPE_CONFIG_CHANGE', 'SECURITY'),
(27, 'TYPE_QUESTIONS_MERGED', 'QUESTION_BANK');

-- --------------------------------------------------------

--
-- Table structure for table `lams_notebook_entry`
--

CREATE TABLE `lams_notebook_entry` (
  `uid` bigint NOT NULL,
  `external_id` bigint DEFAULT NULL,
  `external_id_type` int DEFAULT NULL,
  `external_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_notification_event`
--

CREATE TABLE `lams_notification_event` (
  `uid` bigint NOT NULL,
  `scope` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_session_id` bigint DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fail_time` datetime DEFAULT NULL,
  `html_format` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_notification_subscription`
--

CREATE TABLE `lams_notification_subscription` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `event_uid` bigint DEFAULT NULL,
  `delivery_method_id` tinyint UNSIGNED DEFAULT NULL,
  `last_operation_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_organisation`
--

CREATE TABLE `lams_organisation` (
  `organisation_id` bigint NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_organisation_id` bigint DEFAULT NULL,
  `organisation_type_id` int NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `created_by` bigint NOT NULL,
  `organisation_state_id` int NOT NULL,
  `admin_add_new_users` tinyint(1) NOT NULL DEFAULT '0',
  `admin_browse_all_users` tinyint(1) NOT NULL DEFAULT '0',
  `admin_change_status` tinyint(1) NOT NULL DEFAULT '0',
  `admin_create_guest` tinyint(1) NOT NULL DEFAULT '0',
  `enable_course_notifications` tinyint(1) NOT NULL DEFAULT '0',
  `enable_learner_gradebook` tinyint(1) NOT NULL DEFAULT '0',
  `enable_single_activity_lessons` tinyint(1) NOT NULL DEFAULT '1',
  `enable_live_edit` tinyint(1) NOT NULL DEFAULT '1',
  `enable_kumalive` tinyint(1) NOT NULL DEFAULT '0',
  `archived_date` datetime DEFAULT NULL,
  `ordered_lesson_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_organisation`
--

INSERT INTO `lams_organisation` (`organisation_id`, `name`, `code`, `description`, `parent_organisation_id`, `organisation_type_id`, `create_date`, `created_by`, `organisation_state_id`, `admin_add_new_users`, `admin_browse_all_users`, `admin_change_status`, `admin_create_guest`, `enable_course_notifications`, `enable_learner_gradebook`, `enable_single_activity_lessons`, `enable_live_edit`, `enable_kumalive`, `archived_date`, `ordered_lesson_ids`) VALUES
(1, 'Root', NULL, 'Root Organisation', NULL, 1, '2020-08-24 04:41:49', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL),
(2, 'Playpen', 'PP101', 'Developers Playpen', 1, 2, '2020-08-24 04:41:49', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(3, 'Everybody', NULL, 'All People In Course', 2, 3, '2020-08-24 04:41:49', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL),
(4, 'Mathematics 1', 'MATH111', 'Mathematics 1', 1, 2, '2020-08-24 04:41:49', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, NULL, NULL),
(5, 'Tutorial Group A', 'TUTA', 'Tutorial Group A', 4, 3, '2020-08-24 04:41:49', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL),
(6, 'Tutorial Group B', 'TUTB', 'Tutorial Group B', 4, 3, '2020-08-24 04:41:49', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL),
(7, 'Moodle', 'Moodle', 'Moodle Test', 1, 2, '2020-08-24 04:41:49', 1, 2, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL),
(8, 'Δίκτυα', 'μαθ1', 'φσφδσφασφγ', 1, 2, '2020-09-04 13:24:02', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, NULL, NULL),
(9, 'Τέταρτο Λύκειο Αχαρνών', 'ΑΧ4', 'Εκπαιδευτική μονάδα', 1, 2, '2020-09-06 13:28:18', 12, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, NULL, NULL),
(10, 'A', 'A_1', 'πρώτη τάξη', 9, 3, '2020-09-07 11:49:01', 13, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, NULL, NULL),
(11, 'B', '', '', 9, 3, '2020-09-08 12:28:49', 13, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, NULL, NULL),
(12, 'D1', '', '', 8, 3, '2020-09-12 10:08:17', 20, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(13, 'Πέμπτο Λύκειο Αχαρνών', 'ΠΛΑ1', '', 1, 2, '2020-09-12 17:15:33', 1, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(14, '1ο Λύκειο Αχαρνών', '001', '', 1, 2, '2020-09-15 14:29:33', 1, 4, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(15, 'Μαθηματικά', '', '', 14, 3, '2020-09-15 14:42:38', 25, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(16, 'Αρχαία', '', '', 14, 3, '2020-09-15 14:42:49', 25, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(17, 'Φυσική', '', '', 14, 3, '2020-09-15 14:42:58', 25, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(18, '1ο Λύκειο Αχαρνών', '001', '', 1, 2, '2020-09-15 15:18:03', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(19, 'Μαθηματικά', '', '', 18, 3, '2020-09-15 15:19:01', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(20, 'Μαθηματικά', '', '', 18, 3, '2020-09-15 15:19:04', 1, 4, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(21, 'Αρχαία', '', '', 18, 3, '2020-09-15 15:19:45', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(22, 'Τέταρτο Γυμνάσιο Αχαρνών', '', '', 1, 2, '2020-09-29 17:21:54', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(23, 'Μαθηματικά', '', '', 22, 3, '2020-09-29 17:50:09', 31, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(24, 'OLD ΤΕΙ ΑΘΗΝΑΣ', '', '', 22, 2, '2020-09-29 17:50:09', 31, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(26, 'OLD2 ΤΕΙ ΑΘΗΝΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-19 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(27, 'OLD 3  ΤΕΙ ΑΘΗΝΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-19 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(28, 'OLD 4 ΤΕΙ ΑΘΗΝΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-19 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(29, 'OLD 5 ΤΕΙ ΑΘΗΝΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-19 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(30, 'OLD 6 ΤΕΙ ΑΘΗΝΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-19 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(31, 'Test', 'Test', '', 30, 3, '2020-11-19 03:10:32', 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL),
(32, '1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ (ΠΡΩΤΟ ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ)', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(33, '10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(34, '11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(35, '1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(36, '1ο ΣΕΚ ΚΙΑΤΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(37, '2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(38, '2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(39, '2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(40, '3ο ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(41, '4ο ΓΕΝΙΚΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(42, 'ΜΟΥΣΙΚΟ ΣΧΟΛΕΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ (ΓΥΜΝΑΣΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ)', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(43, 'ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΒΑΣΙΛΙΚΗΣ ΛΕΥΚΑΔΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(44, 'Πανεπιστήμιο Δυτικής Αττικής', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(45, '14ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΔΡΑΜΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(46, 'ΟΛΟΗΜΕΡΟ ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΠΡΟΜΑΧΟΙ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(47, 'ΔΟΚΙΜΑΣΤΙΚΗ ΜΟΝΑΔΑ - ΓΥΜΝΑΣΙΟ ΑΡΓΟΛΙΔΑΣ', NULL, 'Added by LDAPService', 1, 2, '2020-11-24 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL),
(50, 'ΤΕΙ ΑΘΗΝΑΣ', 'teiath', 'Added by LDAPService', 1, 2, '2021-01-10 00:00:00', 9, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_organisation_group`
--

CREATE TABLE `lams_organisation_group` (
  `group_id` bigint NOT NULL,
  `grouping_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_organisation_grouping`
--

CREATE TABLE `lams_organisation_grouping` (
  `grouping_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_organisation_state`
--

CREATE TABLE `lams_organisation_state` (
  `organisation_state_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_organisation_state`
--

INSERT INTO `lams_organisation_state` (`organisation_state_id`, `description`) VALUES
(1, 'ACTIVE'),
(2, 'HIDDEN'),
(3, 'ARCHIVED'),
(4, 'REMOVED');

-- --------------------------------------------------------

--
-- Table structure for table `lams_organisation_type`
--

CREATE TABLE `lams_organisation_type` (
  `organisation_type_id` int NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_organisation_type`
--

INSERT INTO `lams_organisation_type` (`organisation_type_id`, `name`, `description`) VALUES
(1, 'ROOT ORGANISATION', 'root all other organisations: controlled by Sysadmin'),
(2, 'COURSE ORGANISATION', 'main organisation level - equivalent to an entire course.'),
(3, 'CLASS', 'runtime organisation level - lessons are run for classes.');

-- --------------------------------------------------------

--
-- Table structure for table `lams_outcome`
--

CREATE TABLE `lams_outcome` (
  `outcome_id` mediumint NOT NULL,
  `scale_id` mediumint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_outcome`
--

INSERT INTO `lams_outcome` (`outcome_id`, `scale_id`, `name`, `code`, `description`, `create_by`, `create_date_time`) VALUES
(1, 1, 'test18 ', NULL, NULL, 12, '2020-10-01 11:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `lams_outcome_mapping`
--

CREATE TABLE `lams_outcome_mapping` (
  `mapping_id` bigint NOT NULL,
  `outcome_id` mediumint NOT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `qb_question_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_outcome_result`
--

CREATE TABLE `lams_outcome_result` (
  `result_id` bigint NOT NULL,
  `mapping_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `value` tinyint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_outcome_scale`
--

CREATE TABLE `lams_outcome_scale` (
  `scale_id` mediumint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_outcome_scale`
--

INSERT INTO `lams_outcome_scale` (`scale_id`, `name`, `code`, `description`, `create_by`, `create_date_time`) VALUES
(1, 'Default attainment scale', 'default', 'Default global scale', 1, '2020-08-24 04:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `lams_outcome_scale_item`
--

CREATE TABLE `lams_outcome_scale_item` (
  `item_id` int NOT NULL,
  `scale_id` mediumint DEFAULT NULL,
  `value` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_outcome_scale_item`
--

INSERT INTO `lams_outcome_scale_item` (`item_id`, `scale_id`, `value`, `name`) VALUES
(1, 1, 0, 'Not yet attained'),
(2, 1, 1, 'Attained');

-- --------------------------------------------------------

--
-- Table structure for table `lams_password_request`
--

CREATE TABLE `lams_password_request` (
  `request_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `request_key` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_planner_nodes`
--

CREATE TABLE `lams_planner_nodes` (
  `uid` bigint NOT NULL,
  `parent_uid` bigint DEFAULT NULL,
  `order_id` tinyint UNSIGNED NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `content_folder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `full_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ld_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `permissions` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_planner_node_role`
--

CREATE TABLE `lams_planner_node_role` (
  `uid` bigint NOT NULL,
  `node_uid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_policy`
--

CREATE TABLE `lams_policy` (
  `uid` bigint NOT NULL,
  `policy_id` bigint DEFAULT NULL,
  `created_by` bigint NOT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `full_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_modified` datetime NOT NULL,
  `policy_state_id` int NOT NULL,
  `policy_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_policy_consent`
--

CREATE TABLE `lams_policy_consent` (
  `uid` bigint NOT NULL,
  `date_agreed_on` datetime NOT NULL,
  `policy_uid` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_policy_state`
--

CREATE TABLE `lams_policy_state` (
  `policy_state_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_policy_state`
--

INSERT INTO `lams_policy_state` (`policy_state_id`, `description`) VALUES
(1, 'ACTIVE'),
(2, 'INACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `lams_policy_type`
--

CREATE TABLE `lams_policy_type` (
  `policy_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_policy_type`
--

INSERT INTO `lams_policy_type` (`policy_type_id`, `description`) VALUES
(1, 'TYPE_SITE_POLICY'),
(2, 'TYPE_PRIVACY_POLICY'),
(3, 'TYPE_THIRD_PARTIES_POLICY'),
(4, 'TYPE_OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `lams_presence_chat_msgs`
--

CREATE TABLE `lams_presence_chat_msgs` (
  `uid` bigint NOT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `from_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_presence_user`
--

CREATE TABLE `lams_presence_user` (
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` bigint NOT NULL,
  `last_presence` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_presence_user`
--

INSERT INTO `lams_presence_user` (`nickname`, `lesson_id`, `last_presence`) VALUES
('marios marios', 5, '2020-09-11 18:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `lams_progress_attempted`
--

CREATE TABLE `lams_progress_attempted` (
  `learner_progress_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `start_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_progress_attempted`
--

INSERT INTO `lams_progress_attempted` (`learner_progress_id`, `activity_id`, `start_date_time`) VALUES
(1, 89, '2020-09-07 13:27:43'),
(2, 93, '2020-09-08 11:40:23'),
(3, 108, '2020-09-11 17:59:21'),
(5, 126, '2020-09-15 15:31:53'),
(6, 147, '2020-10-05 14:47:17'),
(7, 155, '2020-10-07 19:16:13'),
(8, 158, '2020-10-07 19:16:40'),
(9, 161, '2020-10-07 19:16:44'),
(10, 164, '2020-10-07 19:17:09'),
(11, 167, '2020-10-07 19:17:59'),
(12, 172, '2020-10-07 19:19:36'),
(15, 200, '2020-11-07 18:38:58'),
(18, 194, '2020-11-17 16:52:51'),
(19, 195, '2020-11-17 17:21:30'),
(21, 220, '2020-11-19 02:30:24'),
(22, 223, '2020-11-19 02:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `lams_progress_attempted_archive`
--

CREATE TABLE `lams_progress_attempted_archive` (
  `learner_progress_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `start_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_progress_completed`
--

CREATE TABLE `lams_progress_completed` (
  `learner_progress_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `completed_date_time` datetime DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_progress_completed`
--

INSERT INTO `lams_progress_completed` (`learner_progress_id`, `activity_id`, `completed_date_time`, `start_date_time`) VALUES
(12, 170, '2020-10-07 19:19:04', '2020-10-07 19:18:37'),
(12, 171, '2020-10-07 19:19:36', '2020-10-07 19:19:04'),
(13, 173, '2020-10-09 15:28:34', '2020-10-09 15:28:04'),
(13, 174, '2020-10-09 15:29:21', '2020-10-09 15:28:34'),
(13, 175, '2020-10-09 15:31:25', '2020-10-09 15:29:21'),
(14, 179, '2020-10-13 18:38:35', '2020-10-13 18:38:04'),
(14, 180, '2020-10-13 18:39:05', '2020-10-13 18:38:35'),
(14, 181, '2020-10-13 18:39:30', '2020-10-13 18:39:05'),
(16, 204, '2020-11-07 18:48:41', '2020-11-07 18:47:54'),
(16, 205, '2020-11-07 18:52:41', '2020-11-07 18:48:41'),
(16, 206, '2020-11-07 18:53:47', '2020-11-07 18:52:41'),
(16, 207, '2020-11-07 18:56:29', '2020-11-07 18:53:47'),
(17, 212, '2020-11-07 19:17:40', '2020-11-07 19:12:37'),
(17, 213, '2020-11-07 19:24:39', '2020-11-07 19:17:40'),
(17, 214, '2020-11-07 19:25:02', '2020-11-07 19:24:39'),
(17, 215, '2020-11-07 19:25:22', '2020-11-07 19:25:02'),
(19, 194, '2020-11-17 17:17:37', '2020-11-17 17:02:28'),
(20, 194, '2020-11-17 17:25:36', '2020-11-17 17:24:30'),
(20, 195, '2020-11-17 17:28:06', '2020-11-17 17:25:36'),
(20, 196, '2020-11-17 17:29:04', '2020-11-17 17:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `lams_progress_completed_archive`
--

CREATE TABLE `lams_progress_completed_archive` (
  `learner_progress_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `completed_date_time` datetime DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_collection`
--

CREATE TABLE `lams_qb_collection` (
  `uid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `personal` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_collection`
--

INSERT INTO `lams_qb_collection` (`uid`, `name`, `user_id`, `personal`) VALUES
(1, 'Public questions', NULL, 0),
(2, 'My questions', 1, 1),
(3, 'My questions', 12, 1),
(4, 'My questions', 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_collection_organisation`
--

CREATE TABLE `lams_qb_collection_organisation` (
  `collection_uid` bigint NOT NULL,
  `organisation_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_collection_question`
--

CREATE TABLE `lams_qb_collection_question` (
  `collection_uid` bigint NOT NULL,
  `qb_question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_collection_question`
--

INSERT INTO `lams_qb_collection_question` (`collection_uid`, `qb_question_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 7),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_option`
--

CREATE TABLE `lams_qb_option` (
  `uid` bigint NOT NULL,
  `qb_question_uid` bigint NOT NULL,
  `display_order` tinyint NOT NULL DEFAULT '1',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `matching_pair` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `numerical_option` double DEFAULT NULL,
  `max_mark` float DEFAULT '0',
  `accepted_error` float DEFAULT '0',
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_option`
--

INSERT INTO `lams_qb_option` (`uid`, `qb_question_uid`, `display_order`, `name`, `matching_pair`, `numerical_option`, `max_mark`, `accepted_error`, `feedback`) VALUES
(1, 1, 1, 'Answer 1', NULL, 0, 0, 0, NULL),
(2, 1, 2, 'Answer 2', NULL, 0, 1, 0, NULL),
(4, 2, 1, 'Question Answer A', NULL, 0, 1, 0, NULL),
(5, 2, 2, 'Question Answer B', NULL, 0, 0, 0, NULL),
(6, 2, 3, 'Question Answer C', NULL, 0, 0, 0, NULL),
(7, 2, 4, 'Question Answer D', NULL, 0, 0, 0, NULL),
(11, 4, 3, '<div>asdd</div>\r\n', NULL, 0, 0, 0, NULL),
(12, 4, 2, '<div>asd</div>\r\n', NULL, 0, 1, 0, NULL),
(13, 4, 1, '<div>as</div>\r\n', NULL, 0, 0, 0, NULL),
(14, 5, 0, '<div>a</div>\r\n', NULL, 0, 1, 0, NULL),
(15, 5, 1, '<div>d</div>\r\n', NULL, 0, 0.4, 0, NULL),
(16, 5, 2, '<div>jhf</div>\r\n', NULL, 0, 0.1, 0, NULL),
(17, 5, 3, '<div>sd</div>\r\n', NULL, 0, 0.05, 0, NULL),
(18, 7, 1, '<div>2*χ+4=8</div>\r\n', NULL, 0, 1, 0, NULL),
(19, 7, 2, '<div>χ*2+4=8</div>\r\n', NULL, 0, 0, 0, NULL),
(20, 7, 3, '<div>2*χ+2*ψ=8</div>\r\n', NULL, 0, 0, 0, NULL),
(21, 8, 1, '<div>Ναι</div>\r\n', NULL, 0, 1, 0, NULL),
(22, 8, 2, '<div>Οχι</div>\r\n', NULL, 0, 0, 0, NULL),
(23, 9, 1, '<div>2*χ+4=8</div>\r\n', NULL, 0, 1, 0, NULL),
(24, 9, 2, '<div>χ^2+4=8</div>\r\n', NULL, 0, 0, 0, NULL),
(25, 9, 3, '<div>2*χ+4*ψ=8</div>\r\n', NULL, 0, 0, 0, NULL),
(26, 10, 1, '<div>Ναι</div>\r\n', NULL, 0, 1, 0, NULL),
(27, 10, 2, '<div>Όχι</div>\r\n', NULL, 0, 0, 0, NULL),
(28, 11, 1, '<div>2*χ+4=10</div>\r\n', NULL, 0, 1, 0, NULL),
(29, 11, 2, '<div>χ^2+7=76</div>\r\n', NULL, 0, 0, 0, NULL),
(30, 11, 3, '<div>2*χ+4*κ=13</div>\r\n', NULL, 0, 0, 0, NULL),
(31, 12, 1, '<div>Ναι</div>\r\n', NULL, 0, 0, 0, NULL),
(32, 12, 2, '<div>Όχι</div>\r\n', NULL, 0, 1, 0, NULL),
(33, 13, 1, '<div>2χ+4=18</div>\r\n', NULL, 0, 1, 0, NULL),
(34, 13, 2, '<div>2χ+4ψ=14</div>\r\n', NULL, 0, 0, 0, NULL),
(35, 13, 3, '<div>3χ^2+5=8</div>\r\n', NULL, 0, 0, 0, NULL),
(36, 14, 1, '<div>Ναι</div>\r\n', NULL, 0, 0, 0, NULL),
(37, 14, 2, '<div>Όχι</div>\r\n', NULL, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_question`
--

CREATE TABLE `lams_qb_question` (
  `uid` bigint NOT NULL,
  `uuid` binary(16) NOT NULL,
  `type` tinyint NOT NULL,
  `question_id` int NOT NULL,
  `version` smallint NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content_folder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `max_mark` int DEFAULT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `penalty_factor` float DEFAULT '0',
  `multiple_answers_allowed` tinyint(1) DEFAULT '0',
  `incorrect_answer_nullifies_mark` tinyint(1) DEFAULT '0',
  `feedback_on_correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feedback_on_partially_correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feedback_on_incorrect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shuffle` tinyint(1) DEFAULT '0',
  `prefix_answers_with_letters` tinyint(1) DEFAULT '0',
  `case_sensitive` tinyint(1) DEFAULT '0',
  `correct_answer` tinyint(1) DEFAULT '0',
  `allow_rich_editor` tinyint(1) DEFAULT '0',
  `max_words_limit` int DEFAULT '0',
  `min_words_limit` int DEFAULT '0',
  `code_style` tinyint UNSIGNED DEFAULT NULL,
  `hedging_justification_enabled` tinyint(1) DEFAULT '0',
  `autocomplete_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_question`
--

INSERT INTO `lams_qb_question` (`uid`, `uuid`, `type`, `question_id`, `version`, `create_date`, `content_folder_id`, `name`, `description`, `max_mark`, `feedback`, `penalty_factor`, `multiple_answers_allowed`, `incorrect_answer_nullifies_mark`, `feedback_on_correct`, `feedback_on_partially_correct`, `feedback_on_incorrect`, `shuffle`, `prefix_answers_with_letters`, `case_sensitive`, `correct_answer`, `allow_rich_editor`, `max_words_limit`, `min_words_limit`, `code_style`, `hedging_justification_enabled`, `autocomplete_enabled`) VALUES
(1, 0x142db4f6e5b011ea9cd5ce00026fff01, 1, 1, 1, '2020-08-24 04:42:45', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'A Sample question?', 'A Sample question?', 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(2, 0x16e9dbcce5b011ea9cd5ce00026fff01, 1, 2, 1, '2020-08-24 04:43:29', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Question Title', 'Question Description', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3, 0x1b453a4ee5b011ea9cd5ce00026fff01, 6, 3, 1, '2020-08-24 04:42:51', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Sample Question 1?', 'Sample Question 1?', 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(4, 0x07f58ebd8da043879560635e64fd494b, 1, 7, 1, '2020-08-31 15:59:58', '34839ca9-200a-48e2-8936-053516bb595d', 'Ερώτηση 1', '<div>lksjbv;sldb</div>\r\n', 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(5, 0xdc9fc9fcbf47455eb80510c5aabe5e6d, 1, 8, 1, '2020-08-31 15:59:59', 'a35aeba2-3ddc-408d-a123-b441024d6939', 'Ερώτηση 1', '<div>kjvhkjd</div>\r\n', 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(6, 0x1b453a4ee5b011ea9cd5ce00026fff01, 6, 10, 1, '2020-10-05 20:44:43', '2b5ffcf0-eb45-4f6a-96a8-b4d7f1a91dad', 'Ερώτηση 1', '<div>Είναι η εξίσωση 3*χ-8=15 εξίσωση πρώτου βαθμού;</div>\n', 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(7, 0x142db4f6e5b011ea9cd5ce00026fff01, 1, 1, 2, '2020-10-07 18:02:19', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Ερώτηση1', '<div>Ποια από τις παρακάτω εξισώσεις είναι πρώτου βαθμου</div>\r\n', 2, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(8, 0x18555f9f08ae11eb9cd5ce00026fff01, 1, 13, 1, '2020-10-07 18:02:19', '0430b054-6a0f-4ae4-bb1b-fd03ff2cf041', 'Ερώτηση2', '<div>Είναι η εξίσωση της φωτογραφίας πρώτου βαθμού;</div>\r\n\r\n<div><img alt=\"\" class=\"img-responsive\" src=\"/lams//www/secure/04/30/b0/54/6a/0f/Image//%CE%B5%CE%BE%CE%B9%CF%83%CF%89%CF%83%CE%B7%20%CF%83%CF%89%CF%83%CF%84%CE%BF%20%CE%BB%CE%B1%CE%B8%CE%BF%CF%821.jpg\" width=\"960\" height=\"720\"></div>\r\n', 3, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(9, 0x142db4f6e5b011ea9cd5ce00026fff01, 1, 1, 3, '2020-10-07 19:11:33', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Ερώτηση1', '<div>Ποια από τις παρακάτω εξισώσεις είναι πρώτου βαθμού;</div>\r\n', 2, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(10, 0xc412b5eb08b711eb9cd5ce00026fff01, 1, 15, 1, '2020-10-07 19:11:33', '8da77568-67f7-4c3c-a52f-3246290d6a78', 'Ερώτηση2', '<div>Είναι η εξίσωση της φωτογραφίας πρώτου βαθμού;</div>\r\n\r\n<div><img alt=\"\" class=\"img-responsive\" src=\"/lams//www/secure/8d/a7/75/68/67/f7/Image//%CE%B5%CE%BE%CE%B9%CF%83%CF%89%CF%83%CE%B7%20%CF%83%CF%89%CF%83%CF%84%CE%BF%20%CE%BB%CE%B1%CE%B8%CE%BF%CF%821.jpg\" width=\"960\" height=\"720\"></div>\r\n', 6, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(11, 0x142db4f6e5b011ea9cd5ce00026fff01, 1, 1, 4, '2020-10-13 17:57:21', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Ερώτηση1', '<div>Ποια από τις παρακάτω εξισώσεις είναι πρωτοβάθμια;</div>\r\n', 3, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(12, 0x64e5c8a80d6411eb9cd5ce00026fff01, 1, 17, 1, '2020-10-13 17:57:21', '3278af2d-61cd-44f1-a230-d0139b897bd1', 'Ερώτηση2', '<div>Είναι η παρακάτω εξίσωση σωστή;</div>\r\n\r\n<div><img alt=\"\" class=\"img-responsive\" src=\"/lams//www/secure/32/78/af/2d/61/cd/Image//%CE%B5%CE%BE%CE%B9%CF%83%CF%89%CF%83%CE%B7%20%CF%83%CF%89%CF%83%CF%84%CE%BF%20%CE%BB%CE%B1%CE%B8%CE%BF%CF%821.jpg\" width=\"960\" height=\"720\"></div>\r\n', 2, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(13, 0x142db4f6e5b011ea9cd5ce00026fff01, 1, 1, 5, '2020-10-13 18:54:42', '93b97f99-a9ad-471b-a71a-5cc58ab2196e', 'Ερώτηση1', '<div>Ποια από τις παρακάτω εξισώσεις είναι πρωτοβάθμια;</div>\r\n', 3, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(14, 0x6838a1f70d6c11eb9cd5ce00026fff01, 1, 19, 1, '2020-10-13 18:54:42', '663e13db-df54-4fb5-845f-217d0075f815', 'Ερώτηση2', '<div>είναι η παρακάτω εξίσωση σωστή;</div>\r\n\r\n<div><img alt=\"\" class=\"img-responsive\" src=\"/lams//www/secure/66/3e/13/db/df/54/Image//%CE%B5%CE%BE%CE%B9%CF%83%CF%89%CF%83%CE%B7%20%CF%83%CF%89%CF%83%CF%84%CE%BF%20%CE%BB%CE%B1%CE%B8%CE%BF%CF%821.jpg\" width=\"960\" height=\"720\"></div>\r\n', 2, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0);

--
-- Triggers `lams_qb_question`
--
DELIMITER $$
CREATE TRIGGER `before_insert_qb_question` BEFORE INSERT ON `lams_qb_question` FOR EACH ROW SET new.uuid = IF(new.uuid IS NULL, UUID_TO_BIN(UUID()), new.uuid)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_question_unit`
--

CREATE TABLE `lams_qb_question_unit` (
  `uid` bigint NOT NULL,
  `qb_question_uid` bigint NOT NULL,
  `display_order` tinyint NOT NULL DEFAULT '1',
  `multiplier` float DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_tool_answer`
--

CREATE TABLE `lams_qb_tool_answer` (
  `answer_uid` bigint NOT NULL,
  `tool_question_uid` bigint NOT NULL,
  `qb_option_uid` bigint DEFAULT NULL,
  `answer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_tool_answer`
--

INSERT INTO `lams_qb_tool_answer` (`answer_uid`, `tool_question_uid`, `qb_option_uid`, `answer`) VALUES
(1, 36, 23, NULL),
(2, 37, 26, NULL),
(3, 38, 23, NULL),
(4, 39, 27, NULL),
(5, 42, 28, NULL),
(6, 43, 32, NULL),
(7, 56, 1, NULL),
(8, 58, 1, NULL),
(9, 52, 33, NULL),
(10, 53, 37, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qb_tool_question`
--

CREATE TABLE `lams_qb_tool_question` (
  `tool_question_uid` bigint NOT NULL,
  `qb_question_uid` bigint NOT NULL,
  `tool_content_id` bigint NOT NULL,
  `answer_required` tinyint NOT NULL DEFAULT '0',
  `display_order` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qb_tool_question`
--

INSERT INTO `lams_qb_tool_question` (`tool_question_uid`, `qb_question_uid`, `tool_content_id`, `answer_required`, `display_order`) VALUES
(1, 1, 29, 0, 1),
(2, 2, 38, 0, 1),
(3, 3, 30, 0, 1),
(4, 4, 63, 1, 1),
(5, 4, 65, 1, 1),
(6, 5, 66, 1, 1),
(7, 3, 104, 0, 1),
(8, 3, 106, 0, 1),
(11, 3, 112, 0, 1),
(12, 1, 113, 0, 1),
(15, 3, 118, 0, 1),
(16, 3, 120, 0, 1),
(17, 3, 146, 0, 1),
(18, 3, 147, 0, 1),
(19, 3, 149, 0, 1),
(20, 3, 155, 0, 1),
(21, 3, 157, 0, 1),
(22, 7, 186, 0, 1),
(23, 8, 186, 0, 2),
(24, 9, 191, 0, 1),
(25, 10, 191, 0, 2),
(26, 9, 195, 0, 1),
(27, 10, 195, 0, 2),
(28, 9, 198, 0, 1),
(29, 10, 198, 0, 2),
(30, 9, 201, 0, 1),
(31, 10, 201, 0, 2),
(32, 9, 204, 0, 1),
(33, 10, 204, 0, 2),
(34, 9, 207, 0, 1),
(35, 10, 207, 0, 2),
(36, 9, 210, 0, 1),
(37, 10, 210, 0, 2),
(38, 9, 213, 0, 1),
(39, 10, 213, 0, 2),
(40, 11, 218, 0, 1),
(41, 12, 218, 0, 2),
(42, 11, 223, 0, 1),
(43, 12, 223, 0, 2),
(44, 13, 230, 0, 1),
(45, 14, 230, 0, 2),
(46, 13, 233, 0, 1),
(47, 14, 233, 0, 2),
(48, 13, 236, 0, 1),
(49, 14, 236, 0, 2),
(50, 13, 239, 0, 1),
(51, 14, 239, 0, 2),
(52, 13, 242, 0, 1),
(53, 14, 242, 0, 2),
(54, 1, 257, 0, 1),
(55, 1, 260, 0, 1),
(56, 1, 266, 0, 1),
(57, 1, 268, 0, 1),
(58, 1, 271, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_BLOB_TRIGGERS`
--

CREATE TABLE `lams_qtz_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_CALENDARS`
--

CREATE TABLE `lams_qtz_CALENDARS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_CRON_TRIGGERS`
--

CREATE TABLE `lams_qtz_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_FIRED_TRIGGERS`
--

CREATE TABLE `lams_qtz_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_JOB_DETAILS`
--

CREATE TABLE `lams_qtz_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qtz_JOB_DETAILS`
--

INSERT INTO `lams_qtz_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `JOB_CLASS_NAME`, `IS_DURABLE`, `IS_NONCONCURRENT`, `IS_UPDATE_DATA`, `REQUESTS_RECOVERY`, `JOB_DATA`) VALUES
('LAMS', 'Resend Messages Job', 'DEFAULT', NULL, 'org.lamsfoundation.lams.events.ResendMessagesJob', '1', '0', '0', '0', 0xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_LOCKS`
--

CREATE TABLE `lams_qtz_LOCKS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qtz_LOCKS`
--

INSERT INTO `lams_qtz_LOCKS` (`SCHED_NAME`, `LOCK_NAME`) VALUES
('LAMS', 'TRIGGER_ACCESS');

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_PAUSED_TRIGGER_GRPS`
--

CREATE TABLE `lams_qtz_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_SCHEDULER_STATE`
--

CREATE TABLE `lams_qtz_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_SIMPLE_TRIGGERS`
--

CREATE TABLE `lams_qtz_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qtz_SIMPLE_TRIGGERS`
--

INSERT INTO `lams_qtz_SIMPLE_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `REPEAT_COUNT`, `REPEAT_INTERVAL`, `TIMES_TRIGGERED`) VALUES
('LAMS', 'Resend Messages Job Trigger', 'DEFAULT', -1, 3600000, 2078);

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_SIMPROP_TRIGGERS`
--

CREATE TABLE `lams_qtz_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_qtz_TRIGGERS`
--

CREATE TABLE `lams_qtz_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_qtz_TRIGGERS`
--

INSERT INTO `lams_qtz_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `NEXT_FIRE_TIME`, `PREV_FIRE_TIME`, `PRIORITY`, `TRIGGER_STATE`, `TRIGGER_TYPE`, `START_TIME`, `END_TIME`, `CALENDAR_NAME`, `MISFIRE_INSTR`, `JOB_DATA`) VALUES
('LAMS', 'Resend Messages Job Trigger', 'DEFAULT', 'Resend Messages Job', 'DEFAULT', NULL, 1605716420187, 1605712820187, 0, 'ERROR', 'SIMPLE', 1598235620187, 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lams_rating`
--

CREATE TABLE `lams_rating` (
  `uid` bigint NOT NULL,
  `rating_criteria_id` bigint NOT NULL,
  `item_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `rating` float DEFAULT NULL,
  `tool_session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_rating_comment`
--

CREATE TABLE `lams_rating_comment` (
  `uid` bigint NOT NULL,
  `rating_criteria_id` bigint NOT NULL,
  `item_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `posted_date` datetime DEFAULT NULL,
  `tool_session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_rating_criteria`
--

CREATE TABLE `lams_rating_criteria` (
  `rating_criteria_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_criteria_type_id` int NOT NULL DEFAULT '0',
  `rating_criteria_group_id` mediumint UNSIGNED DEFAULT NULL,
  `comments_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `comments_min_words_limit` int DEFAULT '0',
  `order_id` int NOT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `lesson_id` bigint DEFAULT NULL,
  `rating_style` bigint NOT NULL DEFAULT '1',
  `max_rating` bigint NOT NULL DEFAULT '5',
  `minimum_rates` int DEFAULT '0',
  `maximum_rates` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_rating_criteria`
--

INSERT INTO `lams_rating_criteria` (`rating_criteria_id`, `title`, `rating_criteria_type_id`, `rating_criteria_group_id`, `comments_enabled`, `comments_min_words_limit`, `order_id`, `tool_content_id`, `item_id`, `lesson_id`, `rating_style`, `max_rating`, `minimum_rates`, `maximum_rates`) VALUES
(1, 'kjhkjh', 3, NULL, 1, 1, 1, 67, NULL, NULL, 1, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lams_rating_criteria_type`
--

CREATE TABLE `lams_rating_criteria_type` (
  `rating_criteria_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_rating_criteria_type`
--

INSERT INTO `lams_rating_criteria_type` (`rating_criteria_type_id`, `description`) VALUES
(1, 'TOOL_ACTIVITY'),
(2, 'AUTHORED_ITEM'),
(3, 'LEARNER_ITEM'),
(4, 'LESSON');

-- --------------------------------------------------------

--
-- Table structure for table `lams_rating_rubrics_columns`
--

CREATE TABLE `lams_rating_rubrics_columns` (
  `uid` int UNSIGNED NOT NULL,
  `rating_criteria_group_id` mediumint UNSIGNED DEFAULT NULL,
  `rating_criteria_id` bigint DEFAULT NULL,
  `order_id` tinyint UNSIGNED NOT NULL,
  `name` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_role`
--

CREATE TABLE `lams_role` (
  `role_id` int NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_role`
--

INSERT INTO `lams_role` (`role_id`, `name`, `description`, `create_date`) VALUES
(1, 'SYSADMIN', 'LAMS System Adminstrator', '2020-08-24 04:41:56'),
(2, 'GROUP MANAGER', 'Group Manager', '2020-08-24 04:41:56'),
(3, 'AUTHOR', 'Authors Learning Designs', '2020-08-24 04:41:56'),
(4, 'MONITOR', 'Member of Staff', '2020-08-24 04:41:56'),
(5, 'LEARNER', 'Student', '2020-08-24 04:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `lams_sequence_generator`
--

CREATE TABLE `lams_sequence_generator` (
  `lams_qb_question_question_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_sequence_generator`
--

INSERT INTO `lams_sequence_generator` (`lams_qb_question_question_id`) VALUES
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- --------------------------------------------------------

--
-- Table structure for table `lams_signup_organisation`
--

CREATE TABLE `lams_signup_organisation` (
  `signup_organisation_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `add_to_lessons` tinyint(1) DEFAULT '1',
  `add_as_staff` tinyint(1) DEFAULT '0',
  `add_with_author` tinyint(1) DEFAULT '0',
  `add_with_monitor` tinyint(1) DEFAULT '0',
  `email_verify` tinyint(1) DEFAULT '0',
  `course_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blurb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date` datetime DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `conTEXT` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_tab_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_signup_organisation`
--

INSERT INTO `lams_signup_organisation` (`signup_organisation_id`, `organisation_id`, `add_to_lessons`, `add_as_staff`, `add_with_author`, `add_with_monitor`, `email_verify`, `course_key`, `blurb`, `create_date`, `disabled`, `conTEXT`, `login_tab_active`) VALUES
(1, 9, 1, 0, 0, 0, 0, '', '<div>Register your LAMS account for this group using the form below.</div>\r\n', '2020-09-09 20:08:46', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lams_supported_locale`
--

CREATE TABLE `lams_supported_locale` (
  `locale_id` int NOT NULL,
  `language_iso_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_iso_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fckeditor_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_supported_locale`
--

INSERT INTO `lams_supported_locale` (`locale_id`, `language_iso_code`, `country_iso_code`, `description`, `direction`, `fckeditor_code`) VALUES
(1, 'en', 'AU', 'English (Australia)', 'LTR', 'en-au'),
(2, 'es', 'ES', 'Español', 'LTR', 'es'),
(3, 'mi', 'NZ', 'Māori', 'LTR', 'en-au'),
(4, 'de', 'DE', 'Deutsch', 'LTR', 'de'),
(5, 'zh', 'CN', '简体中文', 'LTR', 'zh-cn'),
(6, 'fr', 'FR', 'Français', 'LTR', 'fr'),
(7, 'it', 'IT', 'Italiano', 'LTR', 'it'),
(8, 'no', 'NO', 'Norsk', 'LTR', 'no'),
(9, 'sv', 'SE', 'Svenska', 'LTR', 'sv'),
(10, 'ko', 'KR', '한국어', 'LTR', 'ko'),
(11, 'pl', 'PL', 'Polski', 'LTR', 'pl'),
(12, 'pt', 'BR', 'Português (Brasil)', 'LTR', 'pt-br'),
(13, 'hu', 'HU', 'Magyar', 'LTR', 'hu'),
(14, 'bg', 'BG', 'Български', 'LTR', 'bg'),
(15, 'cy', 'GB', 'Cymraeg (Cymru)', 'LTR', 'cy'),
(16, 'th', 'TH', 'Thai', 'LTR', 'th'),
(17, 'el', 'GR', 'Ελληνικά', 'LTR', 'el'),
(18, 'nl', 'BE', 'Nederlands (België)', 'LTR', 'nl'),
(19, 'ar', 'JO', 'عربي', 'RTL', 'ar'),
(20, 'da', 'DK', 'Dansk', 'LTR', 'da'),
(21, 'ru', 'RU', 'Русский', 'LTR', 'ru'),
(22, 'vi', 'VN', 'Tiếng Việt', 'LTR', 'vi'),
(23, 'zh', 'TW', 'Chinese (Taiwan)', 'LTR', 'zh'),
(24, 'ja', 'JP', '日本語', 'LTR', 'ja'),
(25, 'ms', 'MY', 'Malay (Malaysia)', 'LTR', 'ms'),
(26, 'tr', 'TR', 'Türkçe', 'LTR', 'tr'),
(27, 'ca', 'ES', 'Català', 'LTR', 'ca'),
(28, 'sl', 'SI', 'Slovenščina', 'LTR', 'sl'),
(29, 'es', 'MX', 'Español (México)', 'LTR', 'es'),
(30, 'cs', 'CZ', 'Čeština', 'LTR', 'cs'),
(31, 'id', 'ID', 'Indonesian', 'LTR', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `lams_system_tool`
--

CREATE TABLE `lams_system_tool` (
  `system_tool_id` bigint NOT NULL,
  `learning_activity_type_id` int NOT NULL,
  `tool_display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `learner_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `learner_preview_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `learner_progress_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `monitor_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contribute_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `help_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date_time` datetime NOT NULL,
  `admin_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_system_tool`
--

INSERT INTO `lams_system_tool` (`system_tool_id`, `learning_activity_type_id`, `tool_display_name`, `description`, `learner_url`, `learner_preview_url`, `learner_progress_url`, `monitor_url`, `contribute_url`, `help_url`, `create_date_time`, `admin_url`) VALUES
(1, 2, 'Grouping', 'All types of grouping including random and chosen.', 'learning/grouping/performGrouping.do', 'learning/grouping/performGrouping.do', 'learning/grouping/viewGrouping.do?mode=teacher', 'monitoring/grouping/startGrouping.do', 'monitoring/grouping/startGrouping.do', NULL, '2020-08-24 04:41:56', NULL),
(2, 3, 'Sync Gate', 'Gate: Synchronise Learners.', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 04:41:56', NULL),
(3, 4, 'Schedule Gate', 'Gate: Opens/shuts at particular times.', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 04:41:56', NULL),
(4, 5, 'Permission Gate', 'Gate: Opens under teacher or staff control.', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 04:41:56', NULL),
(5, 9, 'System Gate', 'Gate: Opens under system control.', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 04:41:56', NULL),
(6, 10, 'Monitor Chosen Branching', 'Select between multiple sequence activities, with the branch chosen in monitoring.', 'learning/branching/performBranching.do', 'learning/branching/performBranching.do', 'monitoring/complexProgress.do', 'monitoring/chosenBranching.do?method=assignBranch', 'monitoring/grouping/startGrouping.do', NULL, '2020-08-24 04:41:56', NULL),
(7, 11, 'Group Based Branching', 'Select between multiple sequence activities, with the branch chosen by an existing group.', 'learning/branching/performBranching.do', 'learning/branching/performBranching.do', 'monitoring/complexProgress.do', 'monitoring/groupedBranching.do?method=viewBranching', 'monitoring/groupedBranching.do?method=assignBranch', NULL, '2020-08-24 04:41:56', NULL),
(8, 12, 'Tool Output Based Branching', 'Select between multiple sequence activities, with the branch chosen on results of another activity.', 'learning/branching/performBranching.do', 'learning/branching/performBranching.do', 'monitoring/complexProgress.do', 'monitoring/toolBranching.do?method=viewBranching', 'monitoring/toolBranching.do?method=viewBranching', NULL, '2020-08-24 04:41:56', NULL),
(9, 8, 'Sequence', 'A sequence of activities', 'learning/SequenceActivity.do', 'learning/SequenceActivity.do', 'monitoring/complexProgress.do', 'monitoring/sequence/viewSequence.do', 'monitoring/sequence/viewSequence.do', NULL, '2020-08-24 04:41:56', NULL),
(10, 14, 'Condition Gate', 'Gate: Opens if conditions are met', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 04:41:56', NULL),
(11, 15, 'Floating Activities', 'A collection of floating activities', NULL, NULL, NULL, 'monitoring/floating.do?method=viewFloating', 'monitoring/floating.do?method=viewFloating', NULL, '2020-08-24 04:41:56', NULL),
(12, 16, 'Password Gate', 'Gate: Opens if learner provides correct password', 'learning/gate/knockGate.do', 'learning/gate/knockGate.do', NULL, 'monitoring/gate/viewGate.do', 'monitoring/gate/viewGate.do', NULL, '2020-08-24 05:18:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_text_search_condition`
--

CREATE TABLE `lams_text_search_condition` (
  `condition_id` bigint NOT NULL,
  `text_search_all_words` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_search_phrase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_search_any_words` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_search_excluded_words` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_theme`
--

CREATE TABLE `lams_theme` (
  `theme_id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_directory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_theme`
--

INSERT INTO `lams_theme` (`theme_id`, `name`, `description`, `image_directory`) VALUES
(1, 'defaultHTML', 'Default HTML style', 'css'),
(2, 'purple', 'Purple Theme', 'css'),
(3, 'sch', 'Greek Schools Network Theme', 'css');

-- --------------------------------------------------------

--
-- Table structure for table `lams_timezone`
--

CREATE TABLE `lams_timezone` (
  `id` bigint NOT NULL,
  `timezone_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_timezone` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_timezone`
--

INSERT INTO `lams_timezone` (`id`, `timezone_id`, `server_timezone`) VALUES
(1, 'Etc/GMT+14', 0),
(2, 'Etc/GMT+13', 0),
(3, 'Etc/GMT+12', 0),
(4, 'Etc/GMT+11', 0),
(5, 'Etc/GMT+10', 0),
(6, 'Etc/GMT+9', 0),
(7, 'Etc/GMT+8', 0),
(8, 'Etc/GMT+7', 0),
(9, 'Etc/GMT+6', 0),
(10, 'Etc/GMT+5', 0),
(11, 'Etc/GMT+4', 0),
(12, 'Etc/GMT+3', 0),
(13, 'Etc/GMT+2', 0),
(14, 'Etc/GMT+1', 0),
(15, 'Etc/GMT', 0),
(16, 'Etc/GMT-1', 0),
(17, 'Etc/GMT-2', 0),
(18, 'Etc/GMT-3', 0),
(19, 'Etc/GMT-4', 0),
(20, 'Etc/GMT-5', 0),
(21, 'Etc/GMT-6', 0),
(22, 'Etc/GMT-7', 0),
(23, 'Etc/GMT-8', 0),
(24, 'Etc/GMT-9', 0),
(25, 'Etc/GMT-10', 0),
(26, 'Etc/GMT-11', 0),
(27, 'Etc/GMT-12', 0),
(28, 'GMT', 0),
(29, 'Europe/Athens', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lams_tool`
--

CREATE TABLE `lams_tool` (
  `tool_id` bigint NOT NULL,
  `tool_signature` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tool_display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tool_identifier` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tool_version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `learning_library_id` bigint DEFAULT NULL,
  `default_tool_content_id` bigint DEFAULT NULL,
  `valid_flag` tinyint(1) NOT NULL DEFAULT '1',
  `grouping_support_type_id` int NOT NULL,
  `learner_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `learner_preview_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `learner_progress_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monitor_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `help_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date_time` datetime NOT NULL,
  `language_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_date_time` datetime DEFAULT NULL,
  `admin_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supports_outputs` tinyint(1) DEFAULT '0',
  `ext_lms_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_tool`
--

INSERT INTO `lams_tool` (`tool_id`, `tool_signature`, `service_name`, `tool_display_name`, `description`, `tool_identifier`, `tool_version`, `learning_library_id`, `default_tool_content_id`, `valid_flag`, `grouping_support_type_id`, `learner_url`, `learner_preview_url`, `learner_progress_url`, `author_url`, `monitor_url`, `help_url`, `create_date_time`, `language_file`, `modified_date_time`, `admin_url`, `supports_outputs`, `ext_lms_id`) VALUES
(23, 'laasse10', 'laasseAssessmentService', 'Assessment', 'Assessment', 'assessment', '20200710', 26, 23, 1, 2, 'tool/laasse10/learning/start.do?mode=learner', 'tool/laasse10/learning/start.do?mode=author', 'tool/laasse10/learning/start.do?mode=teacher', 'tool/laasse10/authoring/start.do', 'tool/laasse10/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/laasse10', '2020-08-24 04:42:07', 'org.lamsfoundation.lams.tool.assessment.ApplicationResources', '2020-08-24 04:42:07', 'tool/laasse10/admin/start.do', 1, NULL),
(24, 'lachat11', 'chatService', 'Chat', 'Chat', 'chat', '20190103', 27, 24, 1, 2, 'tool/lachat11/learning/learning.do?mode=learner', 'tool/lachat11/learning/learning.do?mode=author', 'tool/lachat11/learning/learning.do?mode=teacher', 'tool/lachat11/authoring/authoring.do', 'tool/lachat11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lachat11', '2020-08-24 04:42:14', 'org.lamsfoundation.lams.tool.chat.ApplicationResources', '2020-08-24 04:42:14', NULL, 1, NULL),
(25, 'ladaco10', 'dacoService', 'Data Collection', 'Collecting data with custom structure.', 'daco', '20190103', 28, 25, 1, 2, 'tool/ladaco10/learning/start.do?mode=learner', 'tool/ladaco10/learning/start.do?mode=author', 'tool/ladaco10/learning/start.do?mode=teacher', 'tool/ladaco10/authoring/start.do', 'tool/ladaco10/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/ladaco10', '2020-08-24 04:42:22', 'org.lamsfoundation.lams.tool.daco.ApplicationResources', '2020-08-24 04:42:22', NULL, 1, NULL),
(26, 'lafrum11', 'forumService', 'Forum', 'Forum / Message Boards', 'forum', '20190103', 29, 26, 1, 2, 'tool/lafrum11/learning/viewForum.do?mode=learner', 'tool/lafrum11/learning/viewForum.do?mode=author', 'tool/lafrum11/learning/viewForum.do?mode=teacher', 'tool/lafrum11/authoring/authoring.do', 'tool/lafrum11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lafrum11', '2020-08-24 04:42:27', 'org.lamsfoundation.lams.tool.forum.ApplicationResources', '2020-08-24 04:42:27', NULL, 1, NULL),
(27, 'laimag10', 'laimagImageGalleryService', 'ImageGallery', 'ImageGallery', 'imageGallery', '20190103', 30, 27, 1, 2, 'tool/laimag10/learning/start.do?mode=learner', 'tool/laimag10/learning/start.do?mode=author', 'tool/laimag10/learning/start.do?mode=teacher', 'tool/laimag10/authoring/start.do', 'tool/laimag10/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/laimag10', '2020-08-24 04:42:36', 'org.lamsfoundation.lams.tool.imageGallery.ApplicationResources', '2020-08-24 04:42:36', 'tool/laimag10/laimag10admin/start.do', 1, NULL),
(28, 'laimsc11', 'commonCartridgeService', 'Shared CommonCartridge', 'Shared CommonCartridge', 'sharedcommonCartridge', '20190103', 31, 28, 1, 2, 'tool/laimsc11/learning/start.do?mode=learner', 'tool/laimsc11/learning/start.do?mode=author', 'tool/laimsc11/learning/start.do?mode=teacher', 'tool/laimsc11/authoring/start.do', 'tool/laimsc11/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/laimsc11', '2020-08-24 04:42:40', 'org.lamsfoundation.lams.tool.commonCartridge.ApplicationResources', '2020-08-24 04:42:40', 'tool/laimsc11/laimsc11admin/start.do', 0, NULL),
(29, 'lamc11', 'mcService', 'MCQ', 'Multiple Choice Questions', 'mc', '20190809', 32, 29, 1, 2, 'tool/lamc11/learning/learning.do?mode=learner', 'tool/lamc11/learning/learning.do?mode=author', 'tool/lamc11/learning/learning.do?mode=teacher', 'tool/lamc11/authoring/authoring.do', 'tool/lamc11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lamc11', '2020-08-24 04:42:44', 'org.lamsfoundation.lams.tool.mc.ApplicationResources', '2020-08-24 04:42:44', 'tool/lamc11/admin/start.do', 1, NULL),
(30, 'laqa11', 'qaService', 'Question and Answer', 'Q/A Tool', 'qa', '20200710', 33, 30, 1, 2, 'tool/laqa11/learning/learning.do?mode=learner', 'tool/laqa11/learning/learning.do?mode=author', 'tool/laqa11/learning/learning.do?mode=teacher', 'tool/laqa11/authoring/authoring.do', 'tool/laqa11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/laqa11', '2020-08-24 04:42:50', 'org.lamsfoundation.lams.tool.qa.ApplicationResources', '2020-08-24 04:42:50', NULL, 1, NULL),
(31, 'larsrc11', 'resourceService', 'Shared Resources', 'Shared Resources', 'sharedresources', '20190103', 34, 31, 1, 2, 'tool/larsrc11/learning/start.do?mode=learner', 'tool/larsrc11/learning/start.do?mode=author', 'tool/larsrc11/learning/start.do?mode=teacher', 'tool/larsrc11/authoring/start.do', 'tool/larsrc11/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/larsrc11', '2020-08-24 04:42:55', 'org.lamsfoundation.lams.tool.rsrc.ApplicationResources', '2020-08-24 04:42:55', NULL, 0, NULL),
(32, 'lalead11', 'leaderselectionService', 'Leaderselection', 'Leaderselection', 'leaderselection', '20190103', 35, 32, 1, 2, 'tool/lalead11/learning.do?mode=learner', 'tool/lalead11/learning.do?mode=author', 'tool/lalead11/learning.do?mode=teacher', 'tool/lalead11/authoring.do', 'tool/lalead11/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lalead11', '2020-08-24 04:42:59', 'org.lamsfoundation.lams.tool.leaderselection.ApplicationResources', '2020-08-24 04:42:59', NULL, 1, NULL),
(33, 'lamind10', 'mindmapService', 'Mindmap', 'Mindmap', 'mindmap', '20190103', 36, 33, 1, 2, 'tool/lamind10/learning/learning.do?mode=learner', 'tool/lamind10/learning/learning.do?mode=author', 'tool/lamind10/learning/learning.do?mode=teacher', 'tool/lamind10/authoring/authoring.do', 'tool/lamind10/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lamind10', '2020-08-24 04:43:04', 'org.lamsfoundation.lams.tool.mindmap.ApplicationResources', '2020-08-24 04:43:04', NULL, 1, NULL),
(34, 'lanb11', 'nbService', 'NoticeboardX', 'Displays a NoticeboardX', 'nb', '20190103', 37, 34, 1, 2, 'tool/lanb11/learning/learner.do', 'tool/lanb11/learning/author.do', 'tool/lanb11/learning/teacher.do', 'tool/lanb11/authoring/authoring.do', 'tool/lanb11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lanb11', '2020-08-24 04:43:09', 'org.lamsfoundation.lams.tool.noticeboard.ApplicationResources', '2020-08-24 04:43:09', NULL, 0, NULL),
(35, 'lantbk11', 'notebookService', 'Notebook', 'Notebook', 'notebook', '20190103', 38, 35, 1, 2, 'tool/lantbk11/learning.do?mode=learner', 'tool/lantbk11/learning.do?mode=author', 'tool/lantbk11/learning.do?mode=teacher', 'tool/lantbk11/authoring.do', 'tool/lantbk11/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lantbk11', '2020-08-24 04:43:14', 'org.lamsfoundation.lams.tool.notebook.ApplicationResources', '2020-08-24 04:43:14', NULL, 1, NULL),
(36, 'lapixl10', 'pixlrService', 'Pixlr', 'Pixlr', 'pixlr', '20190103', 39, 36, 1, 2, 'tool/lapixl10/learning.do?mode=learner', 'tool/lapixl10/learning.do?mode=author', 'tool/lapixl10/learning.do?mode=teacher', 'tool/lapixl10/authoring.do', 'tool/lapixl10/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lapixl10', '2020-08-24 04:43:19', 'org.lamsfoundation.lams.tool.pixlr.ApplicationResources', '2020-08-24 04:43:19', 'tool/lapixl10/lapixl10admin.do', 0, NULL),
(37, 'lasbmt11', 'submitFilesService', 'Submit File', 'Submit File Tool Description', 'submitfile', '20190103', 40, 37, 1, 2, 'tool/lasbmt11/learning/learner.do', 'tool/lasbmt11/learning/author.do', 'tool/lasbmt11/learning/teacher.do', 'tool/lasbmt11/authoring/authoring.do', 'tool/lasbmt11/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lasbmt11', '2020-08-24 04:43:22', 'org.lamsfoundation.lams.tool.sbmt.ApplicationResources', '2020-08-24 04:43:22', NULL, 0, NULL),
(38, 'lascrt11', 'scratchieService', 'Scratchie', 'Scratchie', 'scratchie', '20210714', 41, 38, 1, 2, 'tool/lascrt11/learning/start.do?mode=learner', 'tool/lascrt11/learning/start.do?mode=author', 'tool/lascrt11/learning/start.do?mode=teacher', 'tool/lascrt11/authoring/start.do', 'tool/lascrt11/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lascrt11', '2020-08-24 04:43:27', 'org.lamsfoundation.lams.tool.scratchie.ApplicationResources', '2020-08-24 04:43:27', 'tool/lascrt11/admin/start.do', 1, NULL),
(39, 'lascrb11', 'lascrbScribeService', 'Scribe', 'Scribe', 'scribe', '20190103', 42, 39, 1, 2, 'tool/lascrb11/learning.do?mode=learner', 'tool/lascrb11/learning.do?mode=author', 'tool/lascrb11/learning.do?mode=teacher', 'tool/lascrb11/authoring.do', 'tool/lascrb11/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lascrb11', '2020-08-24 04:43:32', 'org.lamsfoundation.lams.tool.scribe.ApplicationResources', '2020-08-24 04:43:32', NULL, 0, NULL),
(40, 'lasprd10', 'spreadsheetService', 'Spreadsheet Tool', 'Spreadsheet Tool', 'spreadsheet', '20190103', 43, 40, 1, 2, 'tool/lasprd10/learning/start.do?mode=learner', 'tool/lasprd10/learning/start.do?mode=author', 'tool/lasprd10/learning/start.do?mode=teacher', 'tool/lasprd10/authoring/start.do', 'tool/lasprd10/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lasprd10', '2020-08-24 04:43:36', 'org.lamsfoundation.lams.tool.spreadsheet.ApplicationResources', '2020-08-24 04:43:36', NULL, 0, NULL),
(41, 'lasurv11', 'lasurvSurveyService', 'Survey', 'Survey', 'survey', '20190103', 44, 41, 1, 2, 'tool/lasurv11/learning/start.do?mode=learner', 'tool/lasurv11/learning/start.do?mode=author', 'tool/lasurv11/learning/start.do?mode=teacher', 'tool/lasurv11/authoring/start.do', 'tool/lasurv11/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lasurv11', '2020-08-24 04:43:41', 'org.lamsfoundation.lams.tool.survey.ApplicationResources', '2020-08-24 04:43:41', NULL, 1, NULL),
(42, 'latask10', 'lataskTaskListService', 'Shared TaskList', 'Shared TaskList', 'sharedtaskList', '20190103', 45, 42, 1, 2, 'tool/latask10/learning/start.do?mode=learner', 'tool/latask10/learning/start.do?mode=author', 'tool/latask10/learning/start.do?mode=teacher', 'tool/latask10/authoring/start.do', 'tool/latask10/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/latask10', '2020-08-24 04:43:46', 'org.lamsfoundation.lams.tool.taskList.ApplicationResources', '2020-08-24 04:43:46', NULL, 1, NULL),
(43, 'lavote11', 'voteService', 'Voting', 'Voting', 'vote', '20190103', 46, 43, 1, 2, 'tool/lavote11/learning/start.do?mode=learner', 'tool/lavote11/learning/start.do?mode=author', 'tool/lavote11/learning/start.do?mode=teacher', 'tool/lavote11/authoring/start.do', 'tool/lavote11/monitoring/start.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lavote11', '2020-08-24 04:43:50', 'org.lamsfoundation.lams.tool.vote.ApplicationResources', '2020-08-24 04:43:50', NULL, 1, NULL),
(44, 'lawiki10', 'wikiService', 'Wiki', 'Wiki', 'wiki', '20190103', 47, 44, 1, 2, 'tool/lawiki10/learning/learning.do?mode=learner', 'tool/lawiki10/learning/learning.do?mode=author', 'tool/lawiki10/learning/learning.do?mode=teacher', 'tool/lawiki10/authoring/authoring.do', 'tool/lawiki10/monitoring/monitoring.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/lawiki10', '2020-08-24 04:43:55', 'org.lamsfoundation.lams.tool.wiki.ApplicationResources', '2020-08-24 04:43:55', NULL, 1, NULL),
(45, 'laprev11', 'peerreviewService', 'Peerreview', 'Peerreview', 'peerreview', '20190103', 48, 45, 1, 2, 'tool/laprev11/learning/start.do?mode=learner', 'tool/laprev11/learning/start.do?mode=author', 'tool/laprev11/learning/start.do?mode=teacher', 'tool/laprev11/authoring/start.do', 'tool/laprev11/monitoring/summary.do', 'http://wiki.lamsfoundation.org/display/lamsdocs/laprev11', '2020-08-24 04:44:00', 'org.lamsfoundation.lams.tool.peerreview.ApplicationResources', '2020-08-24 04:44:00', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_tool_content`
--

CREATE TABLE `lams_tool_content` (
  `tool_content_id` bigint NOT NULL,
  `tool_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_tool_content`
--

INSERT INTO `lams_tool_content` (`tool_content_id`, `tool_id`) VALUES
(23, 23),
(54, 23),
(58, 23),
(59, 23),
(60, 23),
(63, 23),
(66, 23),
(69, 23),
(71, 23),
(73, 23),
(76, 23),
(78, 23),
(98, 23),
(175, 23),
(176, 23),
(177, 23),
(189, 23),
(247, 23),
(270, 23),
(274, 23),
(277, 23),
(24, 24),
(46, 24),
(132, 24),
(25, 25),
(50, 25),
(140, 25),
(26, 26),
(47, 26),
(49, 26),
(131, 26),
(165, 26),
(172, 26),
(173, 26),
(174, 26),
(187, 26),
(188, 26),
(192, 26),
(193, 26),
(196, 26),
(199, 26),
(202, 26),
(205, 26),
(208, 26),
(211, 26),
(219, 26),
(220, 26),
(221, 26),
(222, 26),
(231, 26),
(232, 26),
(235, 26),
(238, 26),
(241, 26),
(244, 26),
(27, 27),
(127, 27),
(28, 28),
(134, 28),
(162, 28),
(168, 28),
(170, 28),
(29, 29),
(113, 29),
(182, 29),
(183, 29),
(184, 29),
(185, 29),
(186, 29),
(191, 29),
(195, 29),
(198, 29),
(201, 29),
(204, 29),
(207, 29),
(210, 29),
(213, 29),
(215, 29),
(216, 29),
(217, 29),
(218, 29),
(223, 29),
(226, 29),
(227, 29),
(228, 29),
(229, 29),
(230, 29),
(233, 29),
(236, 29),
(239, 29),
(242, 29),
(257, 29),
(260, 29),
(266, 29),
(268, 29),
(271, 29),
(30, 30),
(104, 30),
(106, 30),
(112, 30),
(118, 30),
(120, 30),
(136, 30),
(137, 30),
(146, 30),
(147, 30),
(149, 30),
(155, 30),
(157, 30),
(181, 30),
(249, 30),
(31, 31),
(52, 31),
(55, 31),
(164, 31),
(166, 31),
(32, 32),
(51, 32),
(64, 32),
(151, 32),
(154, 32),
(160, 32),
(161, 32),
(33, 33),
(48, 33),
(133, 33),
(135, 33),
(142, 33),
(144, 33),
(34, 34),
(57, 34),
(62, 34),
(70, 34),
(72, 34),
(74, 34),
(79, 34),
(80, 34),
(83, 34),
(84, 34),
(86, 34),
(89, 34),
(90, 34),
(92, 34),
(94, 34),
(96, 34),
(100, 34),
(101, 34),
(145, 34),
(148, 34),
(150, 34),
(156, 34),
(158, 34),
(178, 34),
(179, 34),
(180, 34),
(190, 34),
(194, 34),
(197, 34),
(200, 34),
(203, 34),
(206, 34),
(209, 34),
(212, 34),
(214, 34),
(224, 34),
(225, 34),
(234, 34),
(237, 34),
(240, 34),
(243, 34),
(245, 34),
(246, 34),
(256, 34),
(259, 34),
(263, 34),
(267, 34),
(273, 34),
(276, 34),
(278, 34),
(35, 35),
(68, 35),
(141, 35),
(143, 35),
(36, 36),
(53, 36),
(75, 36),
(77, 36),
(81, 36),
(82, 36),
(85, 36),
(87, 36),
(88, 36),
(91, 36),
(93, 36),
(95, 36),
(97, 36),
(99, 36),
(102, 36),
(121, 36),
(124, 36),
(126, 36),
(250, 36),
(251, 36),
(252, 36),
(253, 36),
(254, 36),
(255, 36),
(265, 36),
(37, 37),
(56, 37),
(61, 37),
(269, 37),
(272, 37),
(38, 38),
(65, 38),
(159, 38),
(171, 38),
(39, 39),
(122, 39),
(123, 39),
(129, 39),
(167, 39),
(279, 39),
(280, 39),
(40, 40),
(128, 40),
(41, 41),
(103, 41),
(105, 41),
(111, 41),
(117, 41),
(119, 41),
(138, 41),
(152, 41),
(153, 41),
(248, 41),
(258, 41),
(261, 41),
(262, 41),
(264, 41),
(42, 42),
(125, 42),
(43, 43),
(139, 43),
(44, 44),
(130, 44),
(275, 44),
(45, 45),
(67, 45),
(163, 45),
(169, 45);

-- --------------------------------------------------------

--
-- Table structure for table `lams_tool_session`
--

CREATE TABLE `lams_tool_session` (
  `tool_session_id` bigint NOT NULL,
  `tool_session_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tool_session_type_id` int NOT NULL,
  `lesson_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  `tool_session_state_id` int NOT NULL,
  `create_date_time` datetime NOT NULL,
  `group_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `unique_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_tool_session`
--

INSERT INTO `lams_tool_session` (`tool_session_id`, `tool_session_name`, `tool_session_type_id`, `lesson_id`, `activity_id`, `tool_session_state_id`, `create_date_time`, `group_id`, `user_id`, `unique_key`) VALUES
(1, 'A learners', 1, 2, 89, 1, '2020-09-07 13:27:43', 7, NULL, 'uq_89_7'),
(2, 'A learners', 1, 3, 93, 1, '2020-09-08 11:40:23', 9, NULL, 'uq_93_9'),
(3, 'Τέταρτο Λύκειο Αχαρνών learners', 1, 5, 108, 1, '2020-09-11 17:59:21', 13, NULL, 'uq_108_13'),
(5, 'Μαθηματικά learners', 1, 10, 126, 1, '2020-09-15 15:31:53', 23, NULL, 'uq_126_23'),
(6, 'Learner Group', 1, 17, 147, 1, '2020-10-05 14:47:17', 37, NULL, 'uq_147_37'),
(7, 'Learner Group', 1, 20, 155, 1, '2020-10-07 19:16:13', 43, NULL, 'uq_155_43'),
(8, 'Learner Group', 1, 21, 158, 1, '2020-10-07 19:16:40', 45, NULL, 'uq_158_45'),
(9, 'Learner Group', 1, 22, 161, 1, '2020-10-07 19:16:44', 47, NULL, 'uq_161_47'),
(10, 'Learner Group', 1, 23, 164, 1, '2020-10-07 19:17:09', 49, NULL, 'uq_164_49'),
(11, 'Learner Group', 1, 24, 167, 1, '2020-10-07 19:17:59', 51, NULL, 'uq_167_51'),
(12, 'Learner Group', 1, 25, 170, 1, '2020-10-07 19:18:38', 53, NULL, 'uq_170_53'),
(13, 'Learner Group', 1, 25, 171, 1, '2020-10-07 19:19:04', 53, NULL, 'uq_171_53'),
(14, 'Learner Group', 1, 25, 172, 1, '2020-10-07 19:19:37', 53, NULL, 'uq_172_53'),
(15, 'Μαθηματικά learners', 1, 26, 173, 1, '2020-10-09 15:28:04', 55, NULL, 'uq_173_55'),
(16, 'Μαθηματικά learners', 1, 26, 174, 1, '2020-10-09 15:28:34', 55, NULL, 'uq_174_55'),
(17, 'Μαθηματικά learners', 1, 26, 175, 1, '2020-10-09 15:29:21', 55, NULL, 'uq_175_55'),
(18, 'Learner Group', 1, 27, 179, 1, '2020-10-13 18:38:04', 57, NULL, 'uq_179_57'),
(19, 'Learner Group', 1, 27, 180, 1, '2020-10-13 18:38:35', 57, NULL, 'uq_180_57'),
(20, 'Learner Group', 1, 27, 181, 1, '2020-10-13 18:39:05', 57, NULL, 'uq_181_57'),
(21, 'Tutorial Group A learners', 1, 32, 200, 1, '2020-11-07 18:38:58', 67, NULL, 'uq_200_67'),
(22, 'Tutorial Group A learners', 1, 33, 204, 1, '2020-11-07 18:47:55', 69, NULL, 'uq_204_69'),
(23, 'Tutorial Group A learners', 1, 33, 205, 1, '2020-11-07 18:48:41', 69, NULL, 'uq_205_69'),
(24, 'Tutorial Group A learners', 1, 33, 206, 1, '2020-11-07 18:52:41', 69, NULL, 'uq_206_69'),
(25, 'Tutorial Group A learners', 1, 33, 207, 1, '2020-11-07 18:53:47', 69, NULL, 'uq_207_69'),
(26, 'Tutorial Group A learners', 1, 34, 212, 1, '2020-11-07 19:12:38', 71, NULL, 'uq_212_71'),
(27, 'Tutorial Group A learners', 1, 34, 213, 1, '2020-11-07 19:17:40', 71, NULL, 'uq_213_71'),
(28, 'Tutorial Group A learners', 1, 34, 214, 1, '2020-11-07 19:24:39', 71, NULL, 'uq_214_71'),
(29, 'Tutorial Group A learners', 1, 34, 215, 1, '2020-11-07 19:25:02', 71, NULL, 'uq_215_71'),
(30, 'Μαθηματικά learners', 1, 31, 194, 1, '2020-11-17 16:52:52', 65, NULL, 'uq_194_65'),
(31, 'Μαθηματικά learners', 1, 31, 195, 1, '2020-11-17 17:21:30', 65, NULL, 'uq_195_65'),
(32, 'Μαθηματικά learners', 1, 31, 196, 1, '2020-11-17 17:28:06', 65, NULL, 'uq_196_65'),
(33, 'OLD 3  ΤΕΙ ΑΘΗΝΑΣ learners', 1, 35, 220, 1, '2020-11-19 02:30:24', 73, NULL, 'uq_220_73'),
(34, 'ΤΕΙ ΑΘΗΝΑΣ learners', 1, 37, 223, 1, '2020-11-19 02:44:35', 77, NULL, 'uq_223_77');

-- --------------------------------------------------------

--
-- Table structure for table `lams_tool_session_state`
--

CREATE TABLE `lams_tool_session_state` (
  `tool_session_state_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_tool_session_state`
--

INSERT INTO `lams_tool_session_state` (`tool_session_state_id`, `description`) VALUES
(1, 'STARTED'),
(2, 'ENDED');

-- --------------------------------------------------------

--
-- Table structure for table `lams_tool_session_type`
--

CREATE TABLE `lams_tool_session_type` (
  `tool_session_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_tool_session_type`
--

INSERT INTO `lams_tool_session_type` (`tool_session_type_id`, `description`) VALUES
(1, 'NON_GROUPED'),
(2, 'GROUPED');

-- --------------------------------------------------------

--
-- Table structure for table `lams_user`
--

CREATE TABLE `lams_user` (
  `user_id` bigint NOT NULL,
  `login` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_auth_enabled` tinyint(1) DEFAULT '0',
  `two_factor_auth_secret` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_3` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_phone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evening_phone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT '1',
  `disabled_flag` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `authentication_method_id` bigint NOT NULL DEFAULT '0',
  `workspace_folder_id` bigint DEFAULT NULL,
  `theme_id` bigint DEFAULT NULL,
  `locale_id` int DEFAULT NULL,
  `portrait_uuid` binary(16) DEFAULT NULL,
  `password_change_date` datetime DEFAULT NULL,
  `change_password` tinyint(1) DEFAULT '0',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_login` tinyint(1) DEFAULT '1',
  `modified_date` datetime DEFAULT NULL,
  `last_visited_organisation_id` bigint DEFAULT NULL,
  `failed_attempts` tinyint DEFAULT NULL,
  `lock_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_user`
--

INSERT INTO `lams_user` (`user_id`, `login`, `password`, `salt`, `two_factor_auth_enabled`, `two_factor_auth_secret`, `title`, `first_name`, `last_name`, `address_line_1`, `address_line_2`, `address_line_3`, `city`, `state`, `postcode`, `country`, `day_phone`, `evening_phone`, `mobile_phone`, `fax`, `email`, `email_verified`, `disabled_flag`, `create_date`, `authentication_method_id`, `workspace_folder_id`, `theme_id`, `locale_id`, `portrait_uuid`, `password_change_date`, `change_password`, `timezone`, `first_login`, `modified_date`, `last_visited_organisation_id`, `failed_attempts`, `lock_out_time`) VALUES
(1, 'sysadmin', 'b2d23d22ada661452355d80acf4d9fd221ffb94f74d17204f62df70cb39b4ca4', '7f4b220221299f8416252d9f529e98bb87f9871c6815086351d76d0f6986ca64', 0, NULL, 'Mr', 'Dimosthenis', 'Nikoudis', '', '', '', 'Athens', 'Attica', '16673', 'GR', '', '', '', '', 'dnna@dnna.gr', 1, 0, '2020-08-24 04:41:49', 1, 45, 1, 17, NULL, NULL, 0, 'Etc/GMT-3', 0, '2020-10-06 13:57:30', 18, NULL, NULL),
(2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', NULL, 0, NULL, 'Dr', 'Testing', 'LDAP', NULL, NULL, NULL, 'Sydney', 'NSW', NULL, NULL, NULL, NULL, NULL, NULL, 'test@xx.xx.xx', 1, 0, '2020-08-24 04:41:49', 3, NULL, 1, 3, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, NULL, NULL),
(4, 'mmm', '91223fd10ce86fc852b449583aa2196c304bf6e0', NULL, 0, NULL, 'Ms', 'Mary', 'Morgan', '99', 'First Ave', NULL, 'Parramatta', 'NSW', NULL, NULL, '0295099999', '0298939999', '0499999999', '0299999999', 'mmmmmmm@xx.os', 1, 0, '2020-08-24 04:41:49', 1, 4, 1, 1, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, NULL, NULL),
(5, 'test1', 'b444ac06613fc8d63795be9ad0beaf55011936ac', NULL, 0, NULL, 'Dr', 'One', 'Test', '1', 'Test Ave', NULL, 'Nowhere', 'NSW', NULL, NULL, '0211111111', '0211111112', '0411111111', '0211111113', 'test1@xx.os', 1, 0, '2020-08-24 04:41:49', 1, 5, 1, 1, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, 2, NULL),
(6, 'test2', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', NULL, 0, NULL, 'Dr', 'Two', 'Test', '2', 'Test Ave', NULL, 'Nowhere', 'NSW', NULL, NULL, '0211111111', '0211111112', '0411111111', '0211111113', 'test2@xx.os', 1, 0, '2020-08-24 04:41:49', 1, 6, 1, 1, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, NULL, NULL),
(7, 'test3', '3ebfa301dc59196f18593c45e519287a23297589', NULL, 0, NULL, 'Dr', 'Three', 'Test', '3', 'Test Ave', NULL, 'Nowhere', 'NSW', NULL, NULL, '0211111111', '0211111112', '0411111111', '0211111113', 'test3@xx.os', 1, 0, '2020-08-24 04:41:49', 1, 7, 1, 1, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, NULL, NULL),
(8, 'test4', '1ff2b3704aede04eecb51e50ca698efd50a1379b', NULL, 0, NULL, 'Dr', 'Four', 'Test', '4', 'Test Ave', NULL, 'Nowhere', 'NSW', NULL, NULL, '0211111111', '0211111112', '0411111111', '0211111113', 'test4@xx.os', 1, 0, '2020-08-24 04:41:49', 1, 8, 1, 1, NULL, NULL, 0, 'Etc/GMT', 1, NULL, NULL, NULL, NULL),
(9, 'ioanna', '2297a431848bb4d876c377540344f923e42ed2ba28de32f7c73ffbea104b2b58', '0408f2a14a7bcec17e07d3f23b438036a4968b60fd7a8fff394797ca7e69392c', 0, NULL, '', 'ioanna', 'kechagia', '', '', '', '', '', '', 'GR', '', '', '', '', 'keha@gmail.com', 1, 0, '2020-08-30 17:41:29', 1, 47, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-08-30 17:49:05', 4, NULL, NULL),
(10, 'test11', 'dd5f258cf76ddb4dcf9d5217b84d9e61afc837ce998748ba61a1bbdd8838e79f', 'c1e760fe7db19c444c87cfbbe2488bac9f0dc662069888259665a76ec80abb55', 0, NULL, '', 'maria', 'maria', '', '', '', '', '', '', 'GR', '', '', '', '', 'maria@gmail.com', 1, 0, '2020-08-30 18:35:19', 1, 48, 1, 1, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-10-01 11:32:53', 4, NULL, NULL),
(11, 'test12', 'db65af9ce57f9e33e5c73e89399b67dd8147ca07d5bda6eb9b08c587204f4ceb', '0b9417f9f6eb892fcb4dd94bad4119a07a63cf8775519fbe14d9950d1fa7a413', 0, NULL, '', 'dimitra', 'dimitra', '', '', '', '', '', '', 'GR', '', '', '', '', 'dimitra@gmail.com', 1, 0, '2020-08-30 18:47:28', 1, 49, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-08-30 18:47:28', NULL, NULL, NULL),
(12, 'test13', 'a310fe2a9059bca09c095cd6d36212b6c54e32c03f622159f8c6984c2d113ede', '7c1597f63306f913f88c5981596bcc2e046a7aac69b97718529d5d3a9aefd8a2', 0, NULL, '', 'nikos', 'nikos', '', '', '', '', '', '', 'GR', '', '', '', '', 'nikos@gmail.com', 1, 0, '2020-08-30 18:51:13', 1, 50, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-11-07 19:02:41', 4, NULL, NULL),
(13, 'test14', '9cb0c8f90ca1b97d68f65f50f486f5b234691bb00d351519deace83ae15d023b', '4ecfa6a22cb44f14f49a62a9c17c8866c6524f48e9c0ed1a9577ad7782aed075', 0, NULL, '', 'giannis', 'giannis', '', '', '', '', '', '', 'GR', '', '', '', '', 'giannis@gmail.com', 1, 0, '2020-08-30 18:52:59', 1, 51, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-12 17:32:27', 9, NULL, NULL),
(14, 'tesr15', '5dab8c4f2c29daeebf03ea326d7772645d6cbda9f1671095cc2285e37ad7f84f', '1b422072c4510c82b9c4ff468117cbf4f713288069af736f95dd01017219616d', 0, NULL, '', 'katerina', 'katerina', '', '', '', '', '', '', 'GR', '', '', '', '', 'katerina@gmail.com', 1, 0, '2020-08-30 19:00:14', 1, 52, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-08-30 19:00:14', NULL, NULL, NULL),
(15, 'test16', 'a65d862af7bcbd69ceba2b1ffc680b0e8052edca21941234bef0ae869cff5be8', 'bf9ce843e64ab27ecc84ac87798e1e5dec0a23b56077a444424a7b4f4e025890', 0, NULL, '', 'marios', 'marios', '', '', '', '', '', '', 'GR', '', '', '', '', 'marios@gmail.ccom', 1, 0, '2020-08-30 19:02:26', 1, 53, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-11-07 18:15:48', 4, NULL, NULL),
(16, 'test17', '1f4756f2f7d7646c452d848d8f83155c8e49637a504894e740bc8cb288b7c61f', '091a5c243b632e157cd809b8708123e2c87981b1cabcef520e683b02caa4f8b2', 0, NULL, '', 'kostas', 'kostas', '', '', '', '', '', '', 'GR', '', '', '', '', 'kostas@gmail.com', 1, 0, '2020-08-30 19:07:52', 1, 54, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-08 12:02:43', 4, NULL, NULL),
(17, 'test18', '9e42bbe6dbf2bc259a6a176191e2cdc8d1dc2e0f4fd2ec98ef46e5791c9b9058', 'b67bc5887a3689e0b8a29ae49c9e318ebea3c696b4125ed40d46de081003ccf9', 0, NULL, '', 'matina', 'matina', '', '', '', '', '', '', 'GR', '', '', '', '', 'matina@gmail.com', 1, 0, '2020-08-30 19:08:55', 1, 55, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-10 19:32:49', 9, NULL, NULL),
(19, 'test121', '654e8489b30263cd7f05925e6ab0e770422a5964b1ad384a9118de3dc95e57c8', '1f56b302fb6c982568a5fd3fc83a74956fb897de68aceaa66560cb3973342230', 0, NULL, '', 'kk', 'kk', '', '', '', '', '', '', 'GR', '', '', '', '', 'kk@gmail.com', 1, 0, '2020-09-06 17:59:07', 1, 61, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-06 18:15:36', 9, NULL, NULL),
(20, 'test141', '71a9275fd70f0fbf6821adaac5d0d5330e56b2db88a2b736b2a27e3f55276e19', 'f13c0d82c9421b769cae91077c5c73d8e5c3f0b568e31e93f0322236c78b04ff', 0, NULL, '', 'aa', 'bb', '', '', '', '', '', '', 'GR', '', '', '', '', 'aa@gmail.com', 1, 0, '2020-09-09 17:58:45', 1, 62, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-12 10:10:36', 8, NULL, NULL),
(21, 'test22', 'a312cba041299b491d1899ccbbb1bbe283b6aab7f54ccf9c32bfd634c5768d14', 'ba87ad1355b88d821bcceb1c2decc35afac2f8d3e5416faea64f9c60e364ecb2', 0, NULL, '', 'abc', 'abc', '', '', '', '', '', '', 'GR', '', '', '', '', 'abc@gmail.com', 1, 0, '2020-09-09 18:15:08', 1, 63, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-09-09 18:15:08', NULL, NULL, NULL),
(22, 'test161', '8dcd11ca5a43766fdc5afca76018da7bf904a62d01a4a87bb9869c32e4226d45', '24dd9316f4fb3681197c64074e5469027cfc32806f980eb37d0d4b3869ca6448', 0, NULL, '', 'ee', 'Ee', '', '', '', '', '', '', 'GR', '', '', '', '', 'ee@gmail.com', 1, 0, '2020-09-12 09:49:44', 1, 64, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-11-07 18:17:49', 9, NULL, NULL),
(23, 'test131', 'f5b00ac10740a26161fda16c2c6e7ef3710a67123f65dd45339c4bea18dd5f10', '06ee48beafb3ef5c8f00aae93ffef0c41315723a3350d556c5933b46317268d3', 0, NULL, '', 'ss', 'ss', '', '', '', '', '', '', 'GR', '', '', '', '', 'ss@gmail.com', 1, 0, '2020-09-12 17:23:52', 1, 67, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-10-18 13:00:07', NULL, NULL, NULL),
(24, 'test1311', 'af9c93b3678503271264a13e939cd4f735852fe74da9681d9c76a16761c47d49', '1b97fc35364cfa172d04c6dc508a10ef7a310c6b2bb2a19d2699f8c6e97aaf8e', 0, NULL, '', 'dd', 'dd', '', '', '', '', '', '', 'GR', '', '', '', '', 'dd@gmail.com', 1, 0, '2020-09-12 17:29:42', 1, 68, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-12 17:34:02', 13, NULL, NULL),
(25, 'ioannak', '7bf2eff80ba8092d3374da871a6a5a2ea47491cf9a376dbd3271d4e2ffb4bf0b', '80f430aefdac18c05bda5f162981828dd172abf16f46fb03563e98b6aec0fffb', 0, NULL, '', 'Ιωάννα', 'Κεχαγιά', '', '', '', '', '', '', 'GR', '', '', '', '', 'ioanna@gmail.com', 1, 0, '2020-09-15 14:32:10', 1, 71, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-15 14:43:06', 14, NULL, NULL),
(26, 'eleftheria', 'f1059e1fce4a96e4aa498901070da39e0bd9f842a39a65bad85b29c3af13701d', '50c6e39db4ffc7ad8d90e6e9c1ea2ada7e74f0402260e0b4aec563c4b5d681e1', 0, NULL, '', 'Ελευθερία', 'Ζαφειρίδου', '', '', '', '', '', '', 'GR', '', '', '', '', 'eleftheria@gmail.com', 1, 0, '2020-09-15 14:44:52', 1, 72, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-15 15:01:08', 14, NULL, NULL),
(27, 'kleopatra', 'c7b1dea221f7b2597a0d7edfc938bf770e36c84c660d2352aeeee380b61b969c', 'e5ffc10ae84d52e2ac4d57e4ba4516d2c350edec6acfbaa0dc82ccc4ff206c5f', 0, NULL, '', 'Κλεοπάτρα', 'Αναγνώστου', '', '', '', '', '', '', 'GR', '', '', '', '', 'kleopatra@gmail.com', 1, 0, '2020-09-15 14:53:00', 1, 73, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-09-15 14:53:00', NULL, NULL, NULL),
(28, 'ioannake', '3eb68a51a70f186fe27bb76d6eef4000ed033e586c48d651bdd3fe395dbee4c8', 'bfbf8777fbc05ff3a83035b832592cb430436c44509cb5a043decc9c3d93af21', 0, NULL, '', 'Ιωάννα', 'Κεχαγιά', '', '', '', '', '', '', 'GR', '', '', '', '', 'ioanna@gmail.com', 1, 0, '2020-09-15 15:22:48', 1, 76, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-09-15 15:25:14', 18, NULL, NULL),
(29, 'iiii', 'ea9d7d22a1abc016904455f10cb38a101765a5de3ee9393166a21dfa262cf9de', '3c1a7cfaca5ac584142a8ed759f8052c43c5be70531657cf1b8a75a747d80a34', 0, NULL, '', 'kkgklg', 'lflfjf', '', '', '', '', '', '', 'GR', '', '', '', '', 'kflgki@gmail.com', 1, 0, '2020-09-15 15:29:35', 1, 77, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-09-15 15:29:35', NULL, NULL, NULL),
(31, 'Kathigitis1', '1a3d76570bd01850078e10e079f17467f4d23d0569573242c490787d69abec56', '73ac0cd33ed72c6e3d336418075afec1159e8b5cdabff3ba1d0a8375aa31b213', 0, NULL, '', 'Καθηγητής', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'kathigitis@gmail.com', 1, 0, '2020-09-29 17:34:33', 1, 81, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-10-05 15:15:39', 22, NULL, NULL),
(32, 'Mathitis1', '0b3897eac8029a163d251f9236aec564555549cf92290944f25e61d59397b152', 'eb5ec392a5ff4132561981b8a179117c50b593ccf3bde58a1aca17a4f707163e', 0, NULL, '', 'Μαθητής', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'Mathitis1@gmail.com', 1, 0, '2020-09-29 17:41:35', 1, 82, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-10-09 15:25:59', 22, NULL, NULL),
(33, 'Mathitis2', '28fd0b676c389278d89ed8b6cef57f6d4f219feb24c65670ff241d0bf5984864', '7480a1c35db40ee9c19f4a7eaebc66195352575b464ac236073c900c7f802edc', 0, NULL, '', 'ΜαθητήςA', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'MathitisA@gmail.com', 1, 0, '2020-09-29 17:44:57', 1, 83, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-11-17 16:54:44', 22, NULL, NULL),
(34, 'Mathitis3', '9dcb60eafc46a527d32f2f5aa42e28f057b757b6068e8e47735df8e008f72054', 'e8515400a0cd25bdca5bc3ce95e698effc0f2fd9fb68e0530e38add7effd2ce8', 0, NULL, '', 'ΜαθητήςΒ', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'mathitisB@gmail.com', 1, 0, '2020-10-05 15:09:01', 1, 84, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-11-17 17:22:55', 22, NULL, NULL),
(36, 'Mathitis5', 'c2636153e7d8b4ef59aa6229643d993ec5c679c32cfb44b814646b6c656ba475', '4046e88a1ce73ed38be17359176f62c2a45b4aec143c721bca6f1f19803582ed', 0, NULL, '', 'ΜαθητήςΓ', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'MathitisG@gmail.com', 1, 0, '2020-10-05 16:02:59', 1, 86, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-10-05 16:02:59', NULL, NULL, NULL),
(37, 'Mathitis6', '9b949c6870bd7e652c864466af56a206ffdb09945fda7698827978db4891eb64', '1b0dd232141620feb53ae60fb982e685f1896fe89a5d83245728f089ba3f2d11', 0, NULL, '', 'ΜαθητήςΕ', 'Γυμνασίου', '', '', '', '', '', '', 'GR', '', '', '', '', 'MathitisG@gmail.com', 1, 0, '2020-10-05 17:29:20', 1, 87, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 1, '2020-10-05 17:29:20', NULL, 2, NULL),
(38, 'test15', '398826bfb6e03ccbc605694f740ff658a57d7f0186813af1e8ed5efc0c102ed3', 'fdd1eea559a550bdda852c46283dfe87309288a0ac39b8463c642add6ac9220d', 0, NULL, '', 'ab', 'ab', '', '', '', '', '', '', 'GR', '', '', '', '', 'ab@dd.gr', 1, 0, '2020-10-18 13:07:06', 1, 88, 1, 17, NULL, NULL, NULL, 'Etc/GMT+12', 0, '2020-10-18 13:08:13', 18, NULL, NULL),
(39, 'dnikoudis2', 'eb8d4b0c356230632027afe284f73d1b5df998d625748e96d84e39e2cbc05c73', '64093d3f5838b0b5a8141614cab0ade8a9674b0217f8787c76f10cf26a009bda', 0, NULL, NULL, 'ΔΗΜΟΣΘΕΝΗΣ', 'ΝΙΚΟΥΔΗΣ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dnikoudis2@sch.gr', 1, 0, '2020-11-18 04:17:26', 3, 124, 1, 17, NULL, NULL, 0, 'GMT', 0, '2020-11-19 01:57:14', 26, NULL, NULL),
(40, 'dnikoudis', 'bc2e5b20d8546ded1aa88493b5a184aeedef85e942e4809d004401c28a3605b2', '34522f18f1de6bc3f9a25ab56981da3d85b4520aeaad02835988d347bc709b09', 0, NULL, NULL, 'ΔΗΜΟΣΘΕΝΗΣ', 'ΝΙΚΟΥΔΗΣ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dnikoudis@sch.gr', 1, 0, '2020-11-19 02:07:24', 3, 387, 1, 17, NULL, NULL, 0, 'Europe/Athens', 0, '2021-01-10 00:27:54', 30, NULL, NULL),
(41, '1gymkori', 'f9a2e7dbde6ed5f8d05e9e4441f04a57fbaab712ec89f8a8d45be766d33ec18e', 'f494c6222fe8ba6d60366ca89f88cc5d33cfa9e54058ab513b7498f13b6e9788', 0, NULL, NULL, ' ', '1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@1gym-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:22', 3, 394, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(42, '10dimkor', '29a7b9c786b53d748c501ded2968fda5b93c4265f3c9a4fa45d2efe4537d3287', '60054f81f749d23e4dad3e71814aca5ff8fd6108d50e030633e967120358d25f', 0, NULL, NULL, ' ', '10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@10dim-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:22', 3, 397, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(43, '11dimkor', '57986cb7e06ab562064172ed954e3b2ff4556e608f2ce80c13a22009b1aca967', '7da5160ee1f3706b32b157f0add7ff2b42dfc019085c7ecc8e6089afe853fb27', 0, NULL, NULL, ' ', '11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@11dim-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:22', 3, 400, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(44, '1gymxylo', '5f905fd35e5a4ee5c6336bc4b0c1035be9be48618d466e90bed2c73314afac60', '5d140eb6236335fa9065aae8f62e6522238add6a487045b50f3441dc79c39b8e', 0, NULL, NULL, ' ', '1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@1gym-xylok.kor.sch.gr', 1, 0, '2020-11-24 20:39:22', 3, 403, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(45, '1sekkiat', '5caf03a89d6add9a82607c93aa62fe8fe0f5e2784a120e56fed30ea7706af804', 'da8ceaff78a21dfc75ac1dea17955ca17dc18821c1f1246a2b32b7836402dd43', 0, NULL, NULL, ' ', '1ο ΣΕΚ ΚΙΑΤΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@1sek-kiatou.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 406, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(46, '2gymkiat', '0b056b395b4723bb2e11d5b93e53449f5d559eb19c468f86f3fac3417c0f3c67', '58d9d7e1b6ecf06bbead80068e78a940516c1a778112950a9aa2bb370fbcd092', 0, NULL, NULL, ' ', '2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@2gym-kiatou.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 409, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(47, '2gymkori', 'b51a8c1e1b0fced61b961e2b6fe037a41b5761952c532473b9df8fc85f409f58', '7983dd7d6f45d46cf741479f428b00a6b2ae5d9fadec5fe46bf6725b3d7408cf', 0, NULL, NULL, ' ', '2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@2gym-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 412, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(48, '2gymxylo', '9f8d70dfda8174c14e19f873e5e95541afa8bbe0e113126f49f98bdc282075dc', '9a6c9d19ea3a3510bd0571a7d4ae9f5bc3f860e5dde3b68bae92a0b5f102b996', 0, NULL, NULL, ' ', '2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@2gym-xylok.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 415, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(49, '3lykkori', '4a2e9702a6a4398fb713b5e6407cc9a5612ed3c63e73295d8ac23a4c372d2c19', 'd7d3f8a4bfb11d14eb17ebf69e2ec37388dfe2f09d2e8beb80ce531b2285e158', 0, NULL, NULL, ' ', '3ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@3lyk-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 418, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(50, '4lykkori', '3732e6ad720840094468a2075975e35f04465f88dce3cbd7961843bc32ccca4c', '3011e3ddc0bdcd94d71b5b7338b9a1bda9cf0ef095e6b9ad20dac66c1f59346a', 0, NULL, NULL, ' ', '4ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail@4lyk-korinth.kor.sch.gr', 1, 0, '2020-11-24 20:39:23', 3, 421, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:39:34', NULL, NULL, NULL),
(51, 'ikechagias', 'e979f4b99dc09402a52126210b0e8b8352c1be88dd4e453bf700df0e1eaa3ca3', 'c8c98702d10dbfb62c10da1903a95ff098c24a2a55c052e64e6040ba5968a108', 0, NULL, NULL, 'ΗΛΙΑΣ', 'ΚΕΧΑΓΙΑΣ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechagias@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 424, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(52, 'ikecha', 'f3227dca9c29b06d7a8a350f22a195e85bcaae735de3b0b5c3ead26150b624ba', '1dc5d2847fc5941f72132b980e6bfdc5de2bff17242d5b03d0263c8ed466c39f', 0, NULL, NULL, 'ΕΙΡΗΝΗ', 'ΚΕΧΑΓΙΑ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikecha@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 427, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(53, 'ikechagia', '01bab285907feb6b5e38b09064f3c860ba86d08c1ee0af8afc88896f2fdb74ee', '9ea6a11827f6d3beda94868c6ee575d0773eee2df84200ff11d98e6d00d3c5af', 0, NULL, NULL, 'ΙΩΑΝΝΑ', 'ΚΕΧΑΓΙΑ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechagia@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 430, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(54, 'ikechagi14', 'c3dcfecc8f9ddf9279fb5e3360c33be5e1b8210fb1bbb051702e34c149068dc0', 'b9da797e6cd89af2a30ad784aa0016b39fd1f369082c6a119182a780116ffefa', 0, NULL, NULL, 'ΙΩΑΝΝΑ', 'ΚΕΧΑΓΙΟΓΛΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechagi14@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 433, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(55, 'ikechaidou', '511c7fb0b9ca4468bcf526e75fc90ca3faba0b6f54fdddb8222c2dac9479d032', 'ead93d0ada435f5806cf800e17a901167a7acff369ccb280a6911995809c43f7', 0, NULL, NULL, 'ΙΣΜΗΝΗ', 'ΚΕΧΑΙΔΟΥ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechaidou@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 436, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(56, 'ikechagia_prof', '66c661c1b8df0c8d5359bc60492f97a052485e7b4884e6af06912ab809c5d92c', '84176785ca1799697bf4cc51d2e30ff07ddf04fadce63c2c0a2b9dcd2172cb5b', 0, NULL, NULL, 'ΙΩΑΝΝΑ', 'ΚΕΧΑΓΙΑ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechagia_prof@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 439, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL),
(57, 'ikechagia_stud', 'e5483ff545357c26c21f93f45f470fa50389379c04665742271ae6b8b8abe403', '4be5292b4a685fc28bef6a0c25cd882b3e234adad2930b7cb8651fb6994667da', 0, NULL, NULL, 'ΙΩΑΝΝΑ', 'ΚΕΧΑΓΙΑ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ikechagia_stud@sch.gr', 1, 0, '2020-11-24 20:50:37', 3, 442, 1, 17, NULL, NULL, 0, 'Europe/Athens', 1, '2020-11-24 20:52:04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_group`
--

CREATE TABLE `lams_user_group` (
  `user_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  `scheduled_lesson_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_user_group`
--

INSERT INTO `lams_user_group` (`user_id`, `group_id`, `scheduled_lesson_end_date`) VALUES
(1, 37, NULL),
(1, 38, NULL),
(1, 39, NULL),
(1, 40, NULL),
(2, 5, NULL),
(2, 67, NULL),
(4, 5, NULL),
(4, 67, NULL),
(5, 5, NULL),
(5, 67, NULL),
(6, 5, NULL),
(6, 67, NULL),
(7, 5, NULL),
(8, 5, NULL),
(9, 5, NULL),
(9, 67, NULL),
(12, 6, NULL),
(12, 14, NULL),
(12, 67, NULL),
(12, 68, NULL),
(12, 70, NULL),
(12, 72, NULL),
(13, 7, NULL),
(13, 8, NULL),
(13, 9, NULL),
(13, 10, NULL),
(13, 11, NULL),
(13, 12, NULL),
(13, 14, NULL),
(14, 5, NULL),
(15, 5, NULL),
(15, 13, NULL),
(15, 67, NULL),
(15, 69, NULL),
(15, 71, NULL),
(16, 6, NULL),
(16, 70, NULL),
(16, 72, NULL),
(17, 14, NULL),
(25, 15, NULL),
(25, 16, NULL),
(28, 23, NULL),
(28, 24, NULL),
(28, 25, NULL),
(28, 26, NULL),
(29, 25, NULL),
(31, 27, NULL),
(31, 28, NULL),
(31, 30, NULL),
(31, 32, NULL),
(31, 34, NULL),
(31, 36, NULL),
(31, 41, NULL),
(31, 42, NULL),
(31, 43, NULL),
(31, 44, NULL),
(31, 45, NULL),
(31, 46, NULL),
(31, 47, NULL),
(31, 48, NULL),
(31, 49, NULL),
(31, 50, NULL),
(31, 51, NULL),
(31, 52, NULL),
(31, 53, NULL),
(31, 54, NULL),
(31, 55, NULL),
(31, 56, NULL),
(31, 57, NULL),
(31, 58, NULL),
(31, 60, NULL),
(31, 61, NULL),
(31, 62, NULL),
(31, 63, NULL),
(31, 64, NULL),
(31, 65, NULL),
(31, 66, NULL),
(32, 29, NULL),
(32, 31, NULL),
(32, 33, NULL),
(32, 35, NULL),
(32, 41, NULL),
(32, 55, NULL),
(33, 29, NULL),
(33, 31, NULL),
(33, 35, NULL),
(33, 41, NULL),
(33, 59, NULL),
(33, 61, NULL),
(33, 63, NULL),
(33, 65, NULL),
(34, 41, NULL),
(34, 55, NULL),
(34, 59, NULL),
(34, 61, NULL),
(34, 63, NULL),
(34, 65, NULL),
(37, 59, NULL),
(40, 73, NULL),
(40, 74, NULL),
(40, 75, NULL),
(40, 76, NULL),
(40, 77, NULL),
(40, 78, NULL),
(40, 79, NULL),
(40, 80, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_organisation`
--

CREATE TABLE `lams_user_organisation` (
  `user_organisation_id` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_user_organisation`
--

INSERT INTO `lams_user_organisation` (`user_organisation_id`, `organisation_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 3, 2),
(11, 3, 4),
(12, 3, 5),
(13, 3, 6),
(14, 3, 7),
(15, 3, 8),
(16, 4, 2),
(18, 4, 4),
(19, 4, 5),
(20, 4, 6),
(21, 4, 7),
(22, 4, 8),
(23, 5, 2),
(25, 5, 4),
(26, 5, 5),
(27, 5, 6),
(28, 6, 7),
(29, 6, 8),
(30, 4, 9),
(31, 5, 9),
(32, 4, 14),
(33, 4, 10),
(34, 4, 11),
(35, 4, 12),
(36, 5, 12),
(39, 4, 15),
(40, 4, 16),
(41, 4, 17),
(44, 1, 12),
(45, 9, 13),
(47, 9, 19),
(48, 10, 13),
(49, 10, 19),
(50, 8, 17),
(51, 11, 13),
(52, 9, 17),
(53, 8, 13),
(54, 6, 12),
(55, 9, 12),
(56, 9, 15),
(57, 9, 22),
(58, 8, 20),
(59, 12, 20),
(60, 8, 22),
(61, 13, 24),
(62, 13, 22),
(63, 14, 25),
(64, 15, 25),
(65, 16, 25),
(66, 17, 25),
(67, 14, 26),
(68, 14, 27),
(69, 15, 26),
(70, 15, 27),
(71, 17, 26),
(72, 18, 28),
(73, 19, 28),
(74, 20, 28),
(75, 18, 29),
(76, 21, 29),
(77, 19, 29),
(78, 21, 28),
(81, 22, 31),
(82, 22, 32),
(83, 22, 33),
(84, 23, 31),
(85, 23, 32),
(87, 23, 33),
(88, 22, 34),
(91, 23, 34),
(92, 22, 36),
(93, 22, 37),
(94, 23, 37),
(95, 21, 38),
(96, 18, 38),
(97, 5, 15),
(98, 5, 16),
(99, 24, 39),
(100, 26, 39),
(101, 26, 40),
(102, 27, 40),
(103, 28, 40),
(104, 29, 40),
(105, 30, 40),
(106, 31, 40),
(107, 32, 41),
(108, 33, 42),
(109, 34, 43),
(110, 35, 44),
(111, 36, 45),
(112, 37, 46),
(113, 38, 47),
(114, 39, 48),
(115, 40, 49),
(116, 41, 50),
(117, 42, 51),
(118, 43, 52),
(119, 44, 53),
(120, 45, 54),
(121, 46, 55),
(122, 47, 56),
(123, 47, 57),
(126, 50, 40);

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_organisation_collapsed`
--

CREATE TABLE `lams_user_organisation_collapsed` (
  `uid` bigint NOT NULL,
  `organisation_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `collapsed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_organisation_group`
--

CREATE TABLE `lams_user_organisation_group` (
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_organisation_role`
--

CREATE TABLE `lams_user_organisation_role` (
  `user_organisation_role_id` bigint NOT NULL,
  `user_organisation_id` bigint NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_user_organisation_role`
--

INSERT INTO `lams_user_organisation_role` (`user_organisation_role_id`, `user_organisation_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 2, 4),
(11, 4, 4),
(12, 5, 4),
(13, 6, 4),
(14, 7, 4),
(15, 8, 4),
(16, 2, 5),
(18, 4, 5),
(19, 5, 5),
(20, 6, 5),
(21, 7, 5),
(22, 8, 5),
(23, 9, 4),
(25, 11, 4),
(26, 12, 4),
(27, 13, 4),
(28, 14, 4),
(29, 16, 4),
(30, 9, 5),
(32, 11, 5),
(33, 12, 5),
(34, 13, 5),
(35, 14, 5),
(36, 15, 5),
(37, 22, 2),
(38, 16, 3),
(40, 18, 3),
(41, 19, 3),
(42, 20, 3),
(43, 21, 3),
(44, 22, 3),
(45, 16, 4),
(47, 18, 4),
(48, 19, 4),
(49, 20, 4),
(50, 21, 4),
(51, 22, 4),
(52, 16, 5),
(54, 18, 5),
(55, 19, 5),
(56, 20, 5),
(57, 21, 5),
(58, 22, 5),
(60, 23, 4),
(62, 25, 4),
(63, 26, 4),
(64, 27, 4),
(65, 28, 4),
(66, 29, 4),
(67, 23, 5),
(69, 25, 5),
(70, 26, 5),
(71, 27, 5),
(72, 28, 5),
(73, 29, 5),
(74, 18, 2),
(76, 31, 4),
(77, 31, 5),
(78, 30, 5),
(79, 32, 5),
(80, 33, 3),
(81, 34, 3),
(82, 35, 2),
(83, 36, 4),
(84, 36, 5),
(88, 39, 5),
(89, 40, 4),
(90, 41, 4),
(93, 44, 1),
(94, 45, 2),
(98, 47, 3),
(99, 48, 4),
(101, 48, 3),
(102, 48, 5),
(103, 45, 3),
(104, 49, 3),
(107, 50, 4),
(108, 51, 4),
(109, 52, 4),
(110, 53, 4),
(114, 54, 4),
(115, 54, 5),
(116, 55, 4),
(117, 56, 5),
(118, 57, 5),
(119, 58, 2),
(120, 59, 4),
(121, 60, 5),
(122, 61, 2),
(123, 62, 5),
(124, 63, 3),
(125, 63, 2),
(126, 63, 4),
(127, 64, 4),
(128, 65, 4),
(129, 66, 4),
(130, 67, 5),
(131, 68, 5),
(132, 69, 5),
(133, 70, 5),
(134, 71, 5),
(135, 72, 3),
(136, 72, 2),
(137, 72, 4),
(138, 73, 4),
(139, 73, 5),
(140, 74, 4),
(141, 74, 5),
(142, 75, 5),
(143, 76, 5),
(144, 77, 5),
(145, 78, 3),
(146, 78, 4),
(147, 78, 5),
(153, 81, 3),
(154, 81, 2),
(155, 81, 4),
(156, 82, 5),
(157, 83, 5),
(158, 84, 4),
(159, 85, 5),
(161, 87, 5),
(162, 88, 5),
(163, 84, 3),
(166, 84, 5),
(169, 91, 5),
(170, 92, 5),
(171, 93, 5),
(172, 94, 5),
(173, 96, 5),
(174, 95, 5),
(175, 97, 5),
(176, 98, 4),
(177, 99, 5),
(178, 99, 4),
(179, 99, 3),
(180, 100, 5),
(181, 100, 4),
(182, 100, 3),
(183, 101, 5),
(184, 101, 4),
(185, 101, 3),
(186, 102, 5),
(187, 102, 4),
(188, 102, 3),
(189, 103, 5),
(190, 103, 4),
(191, 103, 3),
(192, 104, 5),
(193, 104, 4),
(194, 104, 3),
(195, 105, 5),
(196, 105, 4),
(197, 105, 3),
(198, 105, 2),
(199, 106, 4),
(200, 106, 5),
(201, 107, 5),
(202, 107, 4),
(203, 107, 3),
(204, 107, 2),
(205, 108, 5),
(206, 108, 4),
(207, 108, 3),
(208, 108, 2),
(209, 109, 5),
(210, 109, 4),
(211, 109, 3),
(212, 109, 2),
(213, 110, 5),
(214, 110, 4),
(215, 110, 3),
(216, 110, 2),
(217, 111, 5),
(218, 111, 4),
(219, 111, 3),
(220, 111, 2),
(221, 112, 5),
(222, 112, 4),
(223, 112, 3),
(224, 112, 2),
(225, 113, 5),
(226, 113, 4),
(227, 113, 3),
(228, 113, 2),
(229, 114, 5),
(230, 114, 4),
(231, 114, 3),
(232, 114, 2),
(233, 115, 5),
(234, 115, 4),
(235, 115, 3),
(236, 115, 2),
(237, 116, 5),
(238, 116, 4),
(239, 116, 3),
(240, 116, 2),
(241, 117, 5),
(242, 117, 4),
(243, 117, 3),
(244, 117, 2),
(245, 118, 5),
(246, 118, 4),
(247, 118, 3),
(248, 118, 2),
(249, 119, 5),
(250, 119, 4),
(251, 119, 3),
(252, 119, 2),
(253, 120, 5),
(254, 121, 5),
(255, 121, 4),
(256, 121, 3),
(257, 121, 2),
(258, 122, 5),
(259, 122, 4),
(260, 122, 3),
(261, 122, 2),
(262, 123, 5),
(271, 126, 5),
(272, 126, 4),
(273, 126, 3),
(274, 126, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lams_user_password_history`
--

CREATE TABLE `lams_user_password_history` (
  `uid` int UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `change_date` datetime NOT NULL,
  `password` char(129) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_workspace_folder`
--

CREATE TABLE `lams_workspace_folder` (
  `workspace_folder_id` bigint NOT NULL,
  `parent_folder_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `organisation_id` bigint DEFAULT NULL,
  `create_date_time` datetime NOT NULL,
  `last_modified_date_time` datetime DEFAULT NULL,
  `lams_workspace_folder_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_workspace_folder`
--

INSERT INTO `lams_workspace_folder` (`workspace_folder_id`, `parent_folder_id`, `name`, `user_id`, `organisation_id`, `create_date_time`, `last_modified_date_time`, `lams_workspace_folder_type_id`) VALUES
(1, NULL, 'ROOT', 1, 1, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(2, 1, 'Developers Playpen', 1, 2, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(3, 1, 'Mathematics 1', 1, 4, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(4, NULL, 'Mary Morgan', 4, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(5, NULL, 'One Test', 5, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(6, NULL, 'Two Test', 6, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(7, NULL, 'Three Test', 7, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(8, NULL, 'Four Test', 8, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(22, 2, 'Lesson Sequence Folder', 1, 2, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 2),
(23, 3, 'Εκτέλεση ακολουθιών', 1, 4, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 2),
(40, 1, 'Moodle Test', 1, 7, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 2),
(41, 40, 'Lesson Sequence Folder', 1, 7, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 2),
(45, NULL, 'Dimosthenis Nikoudis', 1, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 1),
(46, 1, 'Δημόσιος Φάκελος', 1, NULL, '2020-08-24 04:41:48', '2020-08-24 04:41:48', 3),
(47, NULL, 'ioanna kechagia', 9, NULL, '2020-08-30 17:41:29', '2020-08-30 17:41:29', 1),
(48, NULL, 'maria maria', 10, NULL, '2020-08-30 18:35:19', '2020-08-30 18:35:19', 1),
(49, NULL, 'dimitra dimitra', 11, NULL, '2020-08-30 18:47:28', '2020-08-30 18:47:28', 1),
(50, NULL, 'nikos nikos', 12, NULL, '2020-08-30 18:51:13', '2020-08-30 18:51:13', 1),
(51, NULL, 'giannis giannis', 13, NULL, '2020-08-30 18:52:59', '2020-08-30 18:52:59', 1),
(52, NULL, 'katerina katerina', 14, NULL, '2020-08-30 19:00:14', '2020-08-30 19:00:14', 1),
(53, NULL, 'marios marios', 15, NULL, '2020-08-30 19:02:26', '2020-08-30 19:02:26', 1),
(54, NULL, 'kostas kostas', 16, NULL, '2020-08-30 19:07:52', '2020-08-30 19:07:52', 1),
(55, NULL, 'matina matina', 17, NULL, '2020-08-30 19:08:55', '2020-08-30 19:08:55', 1),
(57, NULL, 'Δίκτυα', 1, 8, '2020-09-04 13:24:02', '2020-09-04 13:24:02', 1),
(58, 57, 'Εκτέλεση ακολουθιών', 1, 8, '2020-09-04 13:24:02', '2020-09-04 13:24:02', 2),
(59, NULL, 'Τέταρτο Λύκειο Αχαρνών', 12, 9, '2020-09-06 13:28:18', '2020-09-06 13:28:18', 1),
(60, 59, 'Εκτέλεση ακολουθιών', 12, 9, '2020-09-06 13:28:18', '2020-09-06 13:28:18', 2),
(61, NULL, 'kk kk', 19, NULL, '2020-09-06 17:59:07', '2020-09-06 17:59:07', 1),
(62, NULL, 'aa bb', 20, NULL, '2020-09-09 17:58:45', '2020-09-09 17:58:45', 1),
(63, NULL, 'abc abc', 21, NULL, '2020-09-09 18:15:08', '2020-09-09 18:15:08', 1),
(64, NULL, 'ee Ee', 22, NULL, '2020-09-12 09:49:44', '2020-09-12 09:49:44', 1),
(65, NULL, 'Πέμπτο Λύκειο Αχαρνών', 1, 13, '2020-09-12 17:15:33', '2020-09-12 17:15:33', 1),
(66, 65, 'Εκτέλεση ακολουθιών', 1, 13, '2020-09-12 17:15:33', '2020-09-12 17:15:33', 2),
(67, NULL, 'ss ss', 23, NULL, '2020-09-12 17:23:52', '2020-09-12 17:23:52', 1),
(68, NULL, 'dd dd', 24, NULL, '2020-09-12 17:29:42', '2020-09-12 17:29:42', 1),
(69, NULL, '1ο Λύκειο Αχαρνών', 1, 14, '2020-09-15 14:29:33', '2020-09-15 14:29:33', 1),
(70, 69, 'Εκτέλεση ακολουθιών', 1, 14, '2020-09-15 14:29:33', '2020-09-15 14:29:33', 2),
(71, NULL, 'Ιωάννα Κεχαγιά', 25, NULL, '2020-09-15 14:32:10', '2020-09-15 14:32:10', 1),
(72, NULL, 'Ελευθερία Ζαφειρίδου', 26, NULL, '2020-09-15 14:44:52', '2020-09-15 14:44:52', 1),
(73, NULL, 'Κλεοπάτρα Αναγνώστου', 27, NULL, '2020-09-15 14:53:00', '2020-09-15 14:53:00', 1),
(74, NULL, '1ο Λύκειο Αχαρνών', 1, 18, '2020-09-15 15:18:03', '2020-09-15 15:18:03', 1),
(75, 74, 'Εκτέλεση ακολουθιών', 1, 18, '2020-09-15 15:18:03', '2020-09-15 15:18:03', 2),
(76, NULL, 'Ιωάννα Κεχαγιά', 28, NULL, '2020-09-15 15:22:48', '2020-09-15 15:22:48', 1),
(77, NULL, 'kkgklg lflfjf', 29, NULL, '2020-09-15 15:29:35', '2020-09-15 15:29:35', 1),
(79, NULL, 'Τέταρτο Γυμνάσιο Αχαρνών', 1, 22, '2020-09-29 17:21:54', '2020-09-29 17:21:54', 1),
(80, 79, 'Εκτέλεση ακολουθιών', 1, 22, '2020-09-29 17:21:54', '2020-09-29 17:21:54', 2),
(81, NULL, 'Καθηγητής Γυμνασίου', 31, NULL, '2020-09-29 17:34:33', '2020-09-29 17:34:33', 1),
(82, NULL, 'Μαθητής Γυμνασίου', 32, NULL, '2020-09-29 17:41:35', '2020-09-29 17:41:35', 1),
(83, NULL, 'ΜαθητήςA Γυμνασίου', 33, NULL, '2020-09-29 17:44:57', '2020-09-29 17:44:57', 1),
(84, NULL, 'ΜαθητήςΒ Γυμνασίου', 34, NULL, '2020-10-05 15:09:01', '2020-10-05 15:09:01', 1),
(86, NULL, 'ΜαθητήςΓ Γυμνασίου', 36, NULL, '2020-10-05 16:02:59', '2020-10-05 16:02:59', 1),
(87, NULL, 'ΜαθητήςΕ Γυμνασίου', 37, NULL, '2020-10-05 17:29:20', '2020-10-05 17:29:20', 1),
(88, NULL, 'ab ab', 38, NULL, '2020-10-18 13:07:06', '2020-10-18 13:07:06', 1),
(89, NULL, '  1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 39, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(90, NULL, '  10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 40, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(91, NULL, '  11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 41, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(92, NULL, '  1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 42, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(93, NULL, '  1ο ΣΕΚ ΚΙΑΤΟΥ', 43, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(94, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', 44, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(95, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 45, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(96, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 46, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(97, NULL, '  3ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 47, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(98, NULL, '  4ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 48, NULL, '2020-11-17 23:14:44', '2020-11-17 23:14:44', 1),
(99, NULL, 'ΣΟΦΙΑ ΠΑΝΑΓΙΩΤΙΔΟΥ', 49, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(100, NULL, 'ΑΙΚΑΤΕΡΙΝΗ ΠΑΝΑΓΙΟΤΙ', 50, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(101, NULL, 'ΓΕΩΡΓΙΟΣ ΧΑΡΑΛΑΜΠΟΠΟΥΛΟΣ', 51, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(102, NULL, 'ΦΛΩΡΑ ΜΑΡΚΟΣΤΑΜΟΥ', 52, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(103, NULL, 'ΜΑΛΑΜΑΤΕΝΙΑ ΛΟΒΕΡΔΟΥ', 53, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(104, NULL, 'ΝΙΚΟΛΑΟΣ ΓΙΑΓΜΟΥΡΙΔΗΣ', 54, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(105, NULL, 'ΚΩΝΣΤΑΝΤΙΝΟΣ ΜΠΑΣΣΑΡΑΣ', 55, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(106, NULL, 'ΑΡΙΣΤΕΙΔΗΣ ΓΕΡΑΣΙΜΟΥ', 56, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(107, NULL, 'ΑΛΕΞΑΝΔΡΟΣ ΚΟΛΙΑΤΣΗΣ', 57, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(108, NULL, 'ΑΠΟΣΤΟΛΟΣ ΜΟΥΖΙΝΑΣ', 58, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(109, NULL, 'ΔΗΜΗΤΡΗΣ ΚΕΛΕΦΙΩΤΗΣ', 59, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(110, NULL, 'ΔΗΜΗΤΡΙΟΣ ΠΑΝΟΥΡΓΙΑΣ', 60, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(111, NULL, 'ΘΕΟΦΑΝΗΣ ΧΡΙΣΤΟΔΟΥΛΟΥ', 61, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(112, NULL, 'ΦΩΤΙΟΣ ΓΟΥΣΙΑΣ', 62, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(113, NULL, 'ΦΩΤΙΟΣ ΣΠΥΡΟΠΟΥΛΟΣ', 63, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(114, NULL, 'ΑΔΑΜΑΝΤΙΑ ΓΙΑΝΝΑΚΟΠΟΥΛΟΥ', 64, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(115, NULL, 'ΓΕΩΡΓΙΑ ΡΑΠΤΗ', 65, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(116, NULL, 'ΙΩΑΝΝΗΣ ΔΗΜΤΣΑΣ', 66, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(117, NULL, 'ΙΩΑΝΝΗΣ ΣΚΑΜΑΓΚΗΣ', 67, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(118, NULL, 'ΚΡΥΣΤΑΛΩ ΣΑΚΕΛΛΑΡΙΟΥ', 68, NULL, '2020-11-17 23:39:03', '2020-11-17 23:39:03', 1),
(124, NULL, 'ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ', 39, NULL, '2020-11-18 04:17:26', '2020-11-18 04:17:26', 1),
(387, NULL, 'ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ', 40, NULL, '2020-11-19 02:07:24', '2020-11-19 02:07:24', 1),
(388, NULL, 'OLD 2 ΤΕΙ ΑΘΗΝΑΣ', 40, 26, '2020-11-19 02:07:24', '2020-11-19 02:07:24', 1),
(389, NULL, 'OLD 3 ΤΕΙ ΑΘΗΝΑΣ', 40, 28, '2020-11-19 00:00:00', '2020-11-19 00:00:00', 1),
(392, NULL, 'ΤΕΙ ΑΘΗΝΑΣ', 40, 30, '2020-11-19 00:00:00', '2020-11-19 00:00:00', 1),
(393, 392, 'ΤΕΙ ΑΘΗΝΑΣ', 40, 30, '2020-11-19 00:00:00', '2020-11-19 00:00:00', 2),
(394, NULL, '  1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 41, NULL, '2020-11-24 20:39:22', '2020-11-24 20:39:22', 1),
(395, NULL, '1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ (ΠΡΩΤΟ ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ)', 41, 32, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(396, 395, '1ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ (ΠΡΩΤΟ ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ)', 41, 32, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(397, NULL, '  10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 42, NULL, '2020-11-24 20:39:22', '2020-11-24 20:39:22', 1),
(398, NULL, '10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 42, 33, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(399, 398, '10ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 42, 33, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(400, NULL, '  11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 43, NULL, '2020-11-24 20:39:22', '2020-11-24 20:39:22', 1),
(401, NULL, '11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 43, 34, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(402, 401, '11ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΚΟΡΙΝΘΟΥ', 43, 34, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(403, NULL, '  1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 44, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(404, NULL, '1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 44, 35, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(405, 404, '1ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 44, 35, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(406, NULL, '  1ο ΣΕΚ ΚΙΑΤΟΥ', 45, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(407, NULL, '1ο ΣΕΚ ΚΙΑΤΟΥ', 45, 36, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(408, 407, '1ο ΣΕΚ ΚΙΑΤΟΥ', 45, 36, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(409, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', 46, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(410, NULL, '2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', 46, 37, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(411, 410, '2ο ΓΥΜΝΑΣΙΟ ΚΙΑΤΟΥ', 46, 37, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(412, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 47, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(413, NULL, '2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 47, 38, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(414, 413, '2ο ΓΥΜΝΑΣΙΟ ΚΟΡΙΝΘΟΥ', 47, 38, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(415, NULL, '  2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 48, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(416, NULL, '2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 48, 39, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(417, 416, '2ο ΓΥΜΝΑΣΙΟ ΞΥΛΟΚΑΣΤΡΟΥ', 48, 39, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(418, NULL, '  3ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 49, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(419, NULL, '3ο ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 49, 40, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(420, 419, '3ο ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 49, 40, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(421, NULL, '  4ο ΕΝΙΑΙΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 50, NULL, '2020-11-24 20:39:23', '2020-11-24 20:39:23', 1),
(422, NULL, '4ο ΓΕΝΙΚΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 50, 41, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(423, 422, '4ο ΓΕΝΙΚΟ ΛΥΚΕΙΟ ΚΟΡΙΝΘΟΥ', 50, 41, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(424, NULL, 'ΗΛΙΑΣ ΚΕΧΑΓΙΑΣ', 51, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(425, NULL, 'ΜΟΥΣΙΚΟ ΣΧΟΛΕΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ (ΓΥΜΝΑΣΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ)', 51, 42, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(426, 425, 'ΜΟΥΣΙΚΟ ΣΧΟΛΕΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ (ΓΥΜΝΑΣΙΟ ΘΕΣΣΑΛΟΝΙΚΗΣ)', 51, 42, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(427, NULL, 'ΕΙΡΗΝΗ ΚΕΧΑΓΙΑ', 52, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(428, NULL, 'ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΒΑΣΙΛΙΚΗΣ ΛΕΥΚΑΔΑΣ', 52, 43, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(429, 428, 'ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΒΑΣΙΛΙΚΗΣ ΛΕΥΚΑΔΑΣ', 52, 43, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(430, NULL, 'ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ', 53, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(431, NULL, 'Πανεπιστήμιο Δυτικής Αττικής', 53, 44, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(432, 431, 'Πανεπιστήμιο Δυτικής Αττικής', 53, 44, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(433, NULL, 'ΙΩΑΝΝΑ ΚΕΧΑΓΙΟΓΛΟΥ', 54, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(434, NULL, '14ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΔΡΑΜΑΣ', 54, 45, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(435, 434, '14ο ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΔΡΑΜΑΣ', 54, 45, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(436, NULL, 'ΙΣΜΗΝΗ ΚΕΧΑΙΔΟΥ', 55, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(437, NULL, 'ΟΛΟΗΜΕΡΟ ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΠΡΟΜΑΧΟΙ', 55, 46, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(438, 437, 'ΟΛΟΗΜΕΡΟ ΔΗΜΟΤΙΚΟ ΣΧΟΛΕΙΟ ΠΡΟΜΑΧΟΙ', 55, 46, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(439, NULL, 'ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ', 56, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(440, NULL, 'ΔΟΚΙΜΑΣΤΙΚΗ ΜΟΝΑΔΑ - ΓΥΜΝΑΣΙΟ ΑΡΓΟΛΙΔΑΣ', 56, 47, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 1),
(441, 440, 'ΔΟΚΙΜΑΣΤΙΚΗ ΜΟΝΑΔΑ - ΓΥΜΝΑΣΙΟ ΑΡΓΟΛΙΔΑΣ', 56, 47, '2020-11-24 00:00:00', '2020-11-24 00:00:00', 2),
(442, NULL, 'ΙΩΑΝΝΑ ΚΕΧΑΓΙΑ', 57, NULL, '2020-11-24 20:50:37', '2020-11-24 20:50:37', 1),
(443, NULL, 'ΤΕΙ ΑΘΗΝΑΣ', 40, 50, '2021-01-10 00:00:00', '2021-01-10 00:00:00', 1),
(444, 443, 'ΤΕΙ ΑΘΗΝΑΣ', 40, 50, '2021-01-10 00:00:00', '2021-01-10 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lams_workspace_folder_content`
--

CREATE TABLE `lams_workspace_folder_content` (
  `folder_content_id` bigint NOT NULL,
  `content_type_id` int NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date_time` datetime NOT NULL,
  `last_modified_date` datetime NOT NULL,
  `workspace_folder_id` bigint NOT NULL,
  `uuid` bigint DEFAULT NULL,
  `version_id` bigint DEFAULT NULL,
  `mime_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lams_workspace_folder_type`
--

CREATE TABLE `lams_workspace_folder_type` (
  `lams_workspace_folder_type_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lams_workspace_folder_type`
--

INSERT INTO `lams_workspace_folder_type` (`lams_workspace_folder_type_id`, `description`) VALUES
(1, 'NORMAL'),
(2, 'RUN SEQUENCES'),
(3, 'PUBLIC SEQUENCES');

-- --------------------------------------------------------

--
-- Table structure for table `patches`
--

CREATE TABLE `patches` (
  `system_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patch_level` int NOT NULL,
  `patch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `patch_in_progress` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patches`
--

INSERT INTO `patches` (`system_name`, `patch_level`, `patch_date`, `patch_in_progress`) VALUES
('laasse10', 20190103, '2020-08-24 01:42:09', 'F'),
('laasse10', 20190423, '2020-08-24 02:19:14', 'F'),
('laasse10', 20190517, '2020-08-24 02:19:15', 'F'),
('laasse10', 20190704, '2020-08-24 02:19:16', 'F'),
('laasse10', 20190809, '2020-08-24 02:19:16', 'F'),
('laasse10', 20190913, '2020-08-24 02:19:17', 'F'),
('laasse10', 20191016, '2020-08-24 02:19:17', 'F'),
('laasse10', 20191120, '2020-08-24 02:19:18', 'F'),
('laasse10', 20191205, '2020-08-24 02:19:18', 'F'),
('laasse10', 20200222, '2020-08-24 02:19:18', 'F'),
('laasse10', 20200420, '2020-08-24 02:19:19', 'F'),
('laasse10', 20200617, '2020-08-24 02:19:20', 'F'),
('laasse10', 20200624, '2020-08-24 02:19:20', 'F'),
('laasse10', 20200710, '2020-08-24 02:19:21', 'F'),
('laasse10', 20210127, '2022-01-29 15:53:59', 'F'),
('laasse10', 20210511, '2022-01-29 15:54:00', 'F'),
('lachat11', 20190103, '2020-08-24 01:42:15', 'F'),
('ladaco10', 20190103, '2020-08-24 01:42:23', 'F'),
('lafrum11', 20190103, '2020-08-24 01:42:30', 'F'),
('lafrum11', 20190121, '2020-08-24 02:19:01', 'F'),
('laimag10', 20190103, '2020-08-24 01:42:37', 'F'),
('laimsc11', 20190103, '2020-08-24 01:42:41', 'F'),
('lalead11', 20190103, '2020-08-24 01:43:00', 'F'),
('lamc11', 20190103, '2020-08-24 01:42:46', 'F'),
('lamc11', 20190517, '2020-08-24 02:19:07', 'F'),
('lamc11', 20190809, '2020-08-24 02:19:08', 'F'),
('lamc11', 20191205, '2020-08-24 02:19:09', 'F'),
('lamc11', 20200218, '2020-08-24 02:19:09', 'F'),
('lamc11', 20200222, '2020-08-24 02:19:10', 'F'),
('lamind10', 20190103, '2020-08-24 01:43:06', 'F'),
('lamind10', 20210731, '2022-01-29 15:54:02', 'F'),
('lams', 20190103, '2020-08-24 01:41:57', 'F'),
('lams', 20190119, '2020-08-24 02:18:15', 'F'),
('lams', 20190126, '2020-08-24 02:18:15', 'F'),
('lams', 20190201, '2020-08-24 02:18:16', 'F'),
('lams', 20190226, '2020-08-24 02:18:16', 'F'),
('lams', 20190313, '2020-08-24 02:18:17', 'F'),
('lams', 20190415, '2020-08-24 02:18:18', 'F'),
('lams', 20190429, '2020-08-24 02:18:18', 'F'),
('lams', 20190520, '2020-08-24 02:18:18', 'F'),
('lams', 20190721, '2020-08-24 02:18:19', 'F'),
('lams', 20190722, '2020-08-24 02:18:35', 'F'),
('lams', 20190723, '2020-08-24 02:18:35', 'F'),
('lams', 20190724, '2020-08-24 02:18:37', 'F'),
('lams', 20190725, '2020-08-24 02:18:38', 'F'),
('lams', 20190806, '2020-08-24 02:18:38', 'F'),
('lams', 20190808, '2020-08-24 02:18:39', 'F'),
('lams', 20190816, '2020-08-24 02:18:39', 'F'),
('lams', 20190913, '2020-08-24 02:18:39', 'F'),
('lams', 20191009, '2020-08-24 02:18:40', 'F'),
('lams', 20191010, '2020-08-24 02:18:40', 'F'),
('lams', 20191023, '2020-08-24 02:18:40', 'F'),
('lams', 20191122, '2020-08-24 02:18:42', 'F'),
('lams', 20191202, '2020-08-24 02:18:43', 'F'),
('lams', 20200116, '2020-08-24 02:18:46', 'F'),
('lams', 20200129, '2020-08-24 02:18:47', 'F'),
('lams', 20200204, '2020-08-24 02:18:50', 'F'),
('lams', 20200219, '2020-08-24 02:18:50', 'F'),
('lams', 20200220, '2020-08-24 02:18:51', 'F'),
('lams', 20200315, '2020-08-24 02:18:53', 'F'),
('lams', 20200326, '2020-08-24 02:18:53', 'F'),
('lams', 20200519, '2020-08-24 02:18:54', 'F'),
('lams', 20200626, '2020-08-24 02:18:55', 'F'),
('lams', 20200710, '2020-08-24 02:18:55', 'F'),
('lams', 20200730, '2020-08-24 02:18:57', 'F'),
('lams', 20201122, '2021-01-23 16:20:12', 'F'),
('lams', 20210215, '2022-01-29 15:53:50', 'F'),
('lams', 20210310, '2022-01-29 15:53:50', 'F'),
('lams', 20210506, '2022-01-29 15:53:51', 'F'),
('lams', 20210701, '2022-01-29 15:53:52', 'F'),
('lams', 20210712, '2022-01-29 15:53:53', 'F'),
('lams', 20210713, '2022-01-29 15:53:53', 'F'),
('lams', 20210824, '2022-01-29 15:53:54', 'F'),
('lams', 20210927, '2022-01-29 15:53:54', 'F'),
('lams', 20211017, '2022-01-29 15:53:56', 'F'),
('lams', 20211025, '2022-01-29 15:53:56', 'F'),
('lanb11', 20190103, '2020-08-24 01:43:11', 'F'),
('lantbk11', 20190103, '2020-08-24 01:43:15', 'F'),
('lapixl10', 20190103, '2020-08-24 01:43:20', 'F'),
('laprev11', 20190103, '2020-08-24 01:44:01', 'F'),
('laprev11', 20200607, '2020-08-24 02:19:25', 'F'),
('laprev11', 20210907, '2022-01-29 15:54:03', 'F'),
('laqa11', 20190103, '2020-08-24 01:42:51', 'F'),
('laqa11', 20190809, '2020-08-24 02:19:12', 'F'),
('laqa11', 20200222, '2020-08-24 02:19:12', 'F'),
('laqa11', 20200710, '2020-08-24 02:19:13', 'F'),
('larsrc11', 20190103, '2020-08-24 01:42:56', 'F'),
('larsrc11', 20210304, '2022-01-29 15:54:04', 'F'),
('lasbmt11', 20190103, '2020-08-24 01:43:23', 'F'),
('lasbmt11', 20191128, '2020-08-24 02:19:26', 'F'),
('lasbmt11', 20210907, '2022-01-29 15:54:03', 'F'),
('lascrb11', 20190103, '2020-08-24 01:43:33', 'F'),
('lascrt11', 20190103, '2020-08-24 01:43:29', 'F'),
('lascrt11', 20190510, '2020-08-24 02:19:27', 'F'),
('lascrt11', 20190809, '2020-08-24 02:19:28', 'F'),
('lascrt11', 20191205, '2020-08-24 02:19:28', 'F'),
('lascrt11', 20200222, '2020-08-24 02:19:29', 'F'),
('lascrt11', 20200413, '2020-08-24 02:19:31', 'F'),
('lascrt11', 20200605, '2020-08-24 02:19:34', 'F'),
('lascrt11', 20201214, '2021-01-23 16:20:24', 'F'),
('lascrt11', 20210301, '2022-01-29 15:54:05', 'F'),
('lascrt11', 20210511, '2022-01-29 15:54:06', 'F'),
('lascrt11', 20210714, '2022-01-29 15:54:06', 'F'),
('lascrt11', 20210819, '2022-01-29 15:54:07', 'F'),
('lasprd10', 20190103, '2020-08-24 01:43:38', 'F'),
('lasurv11', 20190103, '2020-08-24 01:43:43', 'F'),
('latask10', 20190103, '2020-08-24 01:43:48', 'F'),
('lavote11', 20190103, '2020-08-24 01:43:51', 'F'),
('lawiki10', 20190103, '2020-08-24 01:43:56', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_assessment`
--

CREATE TABLE `tl_laasse10_assessment` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_time_limit` smallint UNSIGNED NOT NULL DEFAULT '0',
  `absolute_time_limit` datetime DEFAULT NULL,
  `attempts_allowed` int DEFAULT '1',
  `passing_mark` int DEFAULT '0',
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `allow_question_feedback` tinyint(1) DEFAULT NULL,
  `allow_overall_feedback` tinyint(1) DEFAULT NULL,
  `allow_disclose_answers` tinyint(1) DEFAULT '0',
  `allow_right_answers` tinyint(1) DEFAULT NULL,
  `allow_wrong_answers` tinyint(1) DEFAULT NULL,
  `allow_grades_after_attempt` tinyint(1) DEFAULT NULL,
  `allow_history_responses` tinyint(1) DEFAULT NULL,
  `allow_answer_justification` tinyint DEFAULT '0',
  `allow_discussion_sentiment` tinyint DEFAULT '0',
  `display_summary` tinyint(1) DEFAULT NULL,
  `questions_per_page` int DEFAULT '0',
  `shuffled` tinyint(1) DEFAULT NULL,
  `attempt_completion_notify` tinyint(1) DEFAULT '0',
  `reflect_on_activity` bit(1) DEFAULT b'0',
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `numbered` tinyint(1) DEFAULT '1',
  `use_select_leader_tool_ouput` tinyint(1) NOT NULL DEFAULT '0',
  `question_etherpad_enabled` tinyint(1) DEFAULT '0',
  `enable_confidence_levels` tinyint(1) NOT NULL DEFAULT '0',
  `confidence_levels_type` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_assessment`
--

INSERT INTO `tl_laasse10_assessment` (`uid`, `create_date`, `update_date`, `submission_deadline`, `create_by`, `title`, `relative_time_limit`, `absolute_time_limit`, `attempts_allowed`, `passing_mark`, `instructions`, `define_later`, `content_id`, `allow_question_feedback`, `allow_overall_feedback`, `allow_disclose_answers`, `allow_right_answers`, `allow_wrong_answers`, `allow_grades_after_attempt`, `allow_history_responses`, `allow_answer_justification`, `allow_discussion_sentiment`, `display_summary`, `questions_per_page`, `shuffled`, `attempt_completion_notify`, `reflect_on_activity`, `reflect_instructions`, `numbered`, `use_select_leader_tool_ouput`, `question_etherpad_enabled`, `enable_confidence_levels`, `confidence_levels_type`) VALUES
(1, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(2, '2020-08-31 15:59:58', NULL, NULL, 1, 'IRA', 0, NULL, 1, 0, '', 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, b'0', '', 1, 0, 0, 1, 1),
(3, '2020-08-31 15:59:59', NULL, NULL, 2, 'Άσκηση Εφαρμογής 1', 0, NULL, 1, 0, '', 0, 66, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, b'0', '', 0, 1, 0, 0, NULL),
(4, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(5, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(6, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(7, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(8, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(9, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(10, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(11, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(12, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(13, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1),
(14, NULL, NULL, NULL, NULL, 'Assessment', 0, NULL, 1, 0, 'Instructions', 0, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, b'0', NULL, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_assessment_overall_feedback`
--

CREATE TABLE `tl_laasse10_assessment_overall_feedback` (
  `uid` bigint NOT NULL,
  `assessment_uid` bigint DEFAULT NULL,
  `sequence_id` int DEFAULT NULL,
  `grade_boundary` int DEFAULT NULL,
  `feedback` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_assessment_question`
--

CREATE TABLE `tl_laasse10_assessment_question` (
  `uid` bigint NOT NULL,
  `assessment_uid` bigint DEFAULT NULL,
  `correct_answers_disclosed` tinyint(1) DEFAULT '0',
  `groups_answers_disclosed` tinyint(1) DEFAULT '0',
  `random_question` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_assessment_question`
--

INSERT INTO `tl_laasse10_assessment_question` (`uid`, `assessment_uid`, `correct_answers_disclosed`, `groups_answers_disclosed`, `random_question`) VALUES
(4, 2, 0, 0, 0),
(6, 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_assessment_result`
--

CREATE TABLE `tl_laasse10_assessment_result` (
  `uid` bigint NOT NULL,
  `assessment_uid` bigint DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `maximum_grade` int DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `latest` tinyint(1) DEFAULT NULL,
  `time_limit_launched_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_assessment_result`
--

INSERT INTO `tl_laasse10_assessment_result` (`uid`, `assessment_uid`, `start_date`, `finish_date`, `user_uid`, `session_id`, `maximum_grade`, `grade`, `latest`, `time_limit_launched_date`) VALUES
(1, 13, '2020-11-07 19:25:03', '2020-11-07 19:25:14', 3, 29, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_configuration`
--

CREATE TABLE `tl_laasse10_configuration` (
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_configuration`
--

INSERT INTO `tl_laasse10_configuration` (`config_key`, `config_value`) VALUES
('hideTitles', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_option_answer`
--

CREATE TABLE `tl_laasse10_option_answer` (
  `uid` bigint NOT NULL,
  `question_result_uid` bigint DEFAULT NULL,
  `question_option_uid` bigint DEFAULT NULL,
  `answer_boolean` tinyint(1) DEFAULT NULL,
  `answer_int` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_question_reference`
--

CREATE TABLE `tl_laasse10_question_reference` (
  `uid` bigint NOT NULL,
  `question_uid` bigint DEFAULT NULL,
  `sequence_id` int DEFAULT NULL,
  `default_grade` int DEFAULT '1',
  `random_question` tinyint(1) DEFAULT '0',
  `assessment_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_question_reference`
--

INSERT INTO `tl_laasse10_question_reference` (`uid`, `question_uid`, `sequence_id`, `default_grade`, `random_question`, `assessment_uid`) VALUES
(1, 4, 1, 1, 0, 2),
(2, 6, 1, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_question_result`
--

CREATE TABLE `tl_laasse10_question_result` (
  `uid` bigint NOT NULL,
  `result_uid` bigint DEFAULT NULL,
  `answer_float` float DEFAULT NULL,
  `answer_boolean` tinyint(1) DEFAULT NULL,
  `mark` float DEFAULT NULL,
  `penalty` float DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `max_mark` float DEFAULT NULL,
  `confidence_level` int NOT NULL DEFAULT '0',
  `justification` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_session`
--

CREATE TABLE `tl_laasse10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `assessment_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_leader_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_session`
--

INSERT INTO `tl_laasse10_session` (`uid`, `session_end_date`, `session_start_date`, `status`, `assessment_uid`, `session_id`, `session_name`, `group_leader_uid`) VALUES
(1, NULL, NULL, 1, 13, 29, 'Tutorial Group A learners', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_time_limit`
--

CREATE TABLE `tl_laasse10_time_limit` (
  `assessment_uid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `adjustment` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laasse10_user`
--

CREATE TABLE `tl_laasse10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` smallint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `assessment_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laasse10_user`
--

INSERT INTO `tl_laasse10_user` (`uid`, `user_id`, `last_name`, `first_name`, `login_name`, `session_finished`, `session_uid`, `assessment_uid`) VALUES
(1, NULL, 'Nikoudis', 'Dimosthenis', 'sysadmin', 0, NULL, 2),
(2, NULL, 'Nikoudis', 'Dimosthenis', 'sysadmin', 0, NULL, 3),
(3, 15, 'marios', 'marios', 'test16', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lachat11_chat`
--

CREATE TABLE `tl_lachat11_chat` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `reflect_on_activity` bit(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `filtering_enabled` bit(1) DEFAULT NULL,
  `filter_keywords` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submission_deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lachat11_chat`
--

INSERT INTO `tl_lachat11_chat` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `lock_on_finished`, `reflect_on_activity`, `reflect_instructions`, `content_in_use`, `define_later`, `tool_content_id`, `filtering_enabled`, `filter_keywords`, `submission_deadline`) VALUES
(1, NULL, NULL, NULL, 'Chat', 'Instructions', b'0', b'0', NULL, b'0', b'0', 24, b'0', NULL, NULL),
(2, '2020-08-24 05:20:06', NULL, NULL, 'Chat', 'Instructions', b'0', b'0', NULL, b'0', b'0', 46, b'0', NULL, NULL),
(3, '2020-09-27 18:05:39', NULL, NULL, 'Chat', 'Instructions', b'0', b'0', NULL, b'0', b'0', 132, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lachat11_conditions`
--

CREATE TABLE `tl_lachat11_conditions` (
  `condition_id` bigint NOT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lachat11_message`
--

CREATE TABLE `tl_lachat11_message` (
  `uid` bigint NOT NULL,
  `chat_session_uid` bigint NOT NULL,
  `from_user_uid` bigint DEFAULT NULL,
  `to_user_uid` bigint DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_date` datetime DEFAULT NULL,
  `hidden` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lachat11_session`
--

CREATE TABLE `tl_lachat11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lachat11_user`
--

CREATE TABLE `tl_lachat11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_session_uid` bigint DEFAULT NULL,
  `last_presence` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_answers`
--

CREATE TABLE `tl_ladaco10_answers` (
  `uid` bigint NOT NULL,
  `user_uid` bigint DEFAULT NULL,
  `question_uid` bigint DEFAULT NULL,
  `record_id` smallint UNSIGNED DEFAULT NULL,
  `answer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_uuid` bigint DEFAULT NULL,
  `file_version_id` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_answer_options`
--

CREATE TABLE `tl_ladaco10_answer_options` (
  `uid` bigint NOT NULL,
  `question_uid` bigint DEFAULT NULL,
  `sequence_num` tinyint UNSIGNED DEFAULT '1',
  `answer_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_contents`
--

CREATE TABLE `tl_ladaco10_contents` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT '0',
  `min_records` tinyint UNSIGNED DEFAULT '0',
  `max_records` tinyint UNSIGNED DEFAULT '0',
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT '0',
  `define_later` tinyint(1) DEFAULT '0',
  `content_id` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `learner_entry_notify` tinyint(1) DEFAULT '0',
  `record_submit_notify` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_ladaco10_contents`
--

INSERT INTO `tl_ladaco10_contents` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `lock_on_finished`, `min_records`, `max_records`, `instructions`, `content_in_use`, `define_later`, `content_id`, `reflect_instructions`, `reflect_on_activity`, `learner_entry_notify`, `record_submit_notify`) VALUES
(1, NULL, NULL, NULL, 'Data Collection', 0, 0, 0, 'Instructions', 0, 0, 25, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_questions`
--

CREATE TABLE `tl_ladaco10_questions` (
  `uid` bigint NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT '0',
  `question_type` tinyint UNSIGNED DEFAULT NULL,
  `min_constraint` float DEFAULT NULL,
  `max_constraint` float DEFAULT NULL,
  `digits_decimal` tinyint UNSIGNED DEFAULT NULL,
  `summary` tinyint UNSIGNED DEFAULT NULL,
  `content_uid` bigint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_ladaco10_questions`
--

INSERT INTO `tl_ladaco10_questions` (`uid`, `description`, `create_by`, `create_date`, `is_required`, `question_type`, `min_constraint`, `max_constraint`, `digits_decimal`, `summary`, `content_uid`, `session_uid`) VALUES
(1, '<div>What is your favourite colour?</div>', NULL, '2020-08-24 04:42:23', 0, 1, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_sessions`
--

CREATE TABLE `tl_ladaco10_sessions` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `content_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_ladaco10_users`
--

CREATE TABLE `tl_ladaco10_users` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` smallint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_attachment`
--

CREATE TABLE `tl_lafrum11_attachment` (
  `uid` bigint NOT NULL,
  `file_version_id` bigint DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_uuid` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `forum_uid` bigint DEFAULT NULL,
  `message_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_attachment`
--

INSERT INTO `tl_lafrum11_attachment` (`uid`, `file_version_id`, `file_type`, `file_name`, `file_uuid`, `create_date`, `forum_uid`, `message_uid`) VALUES
(1, 1, NULL, 'Γρίφος.png', 1, NULL, NULL, 11),
(2, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 13),
(3, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 14),
(4, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 16),
(5, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 18),
(6, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 20),
(7, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 22),
(8, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 24),
(9, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 26),
(10, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 28),
(11, 1, NULL, 'Γρίφος.png', 2, NULL, NULL, 30),
(12, 1, NULL, 'Γρίφος.png', 3, NULL, NULL, 35),
(13, 1, NULL, 'Γρίφος.png', 3, NULL, NULL, 37),
(14, 1, NULL, 'Γρίφος.png', 3, NULL, NULL, 38),
(15, 1, NULL, 'Γρίφος.png', 4, NULL, NULL, 41),
(16, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 43),
(17, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 45),
(18, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 47),
(19, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 49),
(20, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 51),
(21, 1, NULL, 'Γρίφος.png', 5, NULL, NULL, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_conditions`
--

CREATE TABLE `tl_lafrum11_conditions` (
  `condition_id` bigint NOT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_condition_topics`
--

CREATE TABLE `tl_lafrum11_condition_topics` (
  `condition_id` bigint NOT NULL,
  `topic_uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_configuration`
--

CREATE TABLE `tl_lafrum11_configuration` (
  `uid` bigint NOT NULL,
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_configuration`
--

INSERT INTO `tl_lafrum11_configuration` (`uid`, `config_key`, `config_value`) VALUES
(1, 'keepLearnerContent', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_forum`
--

CREATE TABLE `tl_lafrum11_forum` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_anonym` tinyint(1) DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `allow_edit` tinyint(1) DEFAULT NULL,
  `allow_rich_editor` tinyint(1) DEFAULT NULL,
  `allow_new_topic` tinyint(1) DEFAULT NULL,
  `allow_upload` tinyint(1) DEFAULT NULL,
  `allow_rate_messages` tinyint(1) DEFAULT NULL,
  `maximum_reply` int DEFAULT NULL,
  `minimum_reply` int DEFAULT NULL,
  `limited_of_chars` int DEFAULT NULL,
  `limited_input_flag` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `notify_learners_on_forum_posting` tinyint(1) DEFAULT '0',
  `notify_teachers_on_forum_posting` tinyint(1) DEFAULT '0',
  `mark_release_notify` tinyint(1) DEFAULT '0',
  `submission_deadline` datetime DEFAULT NULL,
  `minimum_rate` int DEFAULT '0',
  `maximum_rate` int DEFAULT '0',
  `min_characters` int DEFAULT '0',
  `limited_min_characters` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_forum`
--

INSERT INTO `tl_lafrum11_forum` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `allow_anonym`, `lock_on_finished`, `instructions`, `content_in_use`, `define_later`, `content_id`, `allow_edit`, `allow_rich_editor`, `allow_new_topic`, `allow_upload`, `allow_rate_messages`, `maximum_reply`, `minimum_reply`, `limited_of_chars`, `limited_input_flag`, `reflect_instructions`, `reflect_on_activity`, `notify_learners_on_forum_posting`, `notify_teachers_on_forum_posting`, `mark_release_notify`, `submission_deadline`, `minimum_rate`, `maximum_rate`, `min_characters`, `limited_min_characters`) VALUES
(1, NULL, NULL, NULL, 'Forum', 0, 0, 'Instructions', 0, 0, 26, 1, 0, 1, 0, 0, 1, 0, 5000, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(2, '2020-10-05 14:46:29', '2020-10-05 14:46:29', 1, 'Forum', 0, 0, '<div>Instructions</div>\r\n', 0, 0, 172, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(3, '2020-10-05 14:46:29', '2020-10-05 14:47:34', 1, 'Forum', 0, 0, '<div>Instructions</div>\r\n', 1, 0, 173, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(4, '2020-10-05 14:46:29', '2020-10-05 14:47:10', 1, 'Forum', 0, 0, '<div>Instructions</div>\r\n', 0, 0, 174, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(5, '2020-10-07 18:27:33', '2020-10-07 18:27:33', 3, 'Forum', 0, 0, '<div>Απαντήστε στα ερωτήματα</div>\r\n', 0, 0, 188, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(6, '2020-10-07 19:14:26', '2020-10-07 19:14:26', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 192, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(7, '2020-10-07 19:14:26', '2020-10-07 19:16:11', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 193, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(8, '2020-10-07 19:14:26', '2020-10-07 19:16:36', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 196, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(9, '2020-10-07 19:14:26', '2020-10-07 19:16:42', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 199, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(10, '2020-10-07 19:14:26', '2020-10-07 19:17:08', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 202, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(11, '2020-10-07 19:14:26', '2020-10-07 19:17:58', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 0, 0, 205, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(12, '2020-10-07 19:14:26', '2020-10-07 19:19:40', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 1, 0, 208, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(13, '2020-10-07 19:14:26', '2020-10-09 15:31:19', 3, 'Forum', 0, 0, '<div>Συζητήστε για διάφορα θέματα</div>\r\n', 1, 0, 211, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(14, '2020-10-13 18:10:54', '2020-10-13 18:10:54', 3, 'Forum', 0, 0, '<div>Όποιος θέλει απαντάει στις ερωτήσεις</div>\r\n', 0, 0, 221, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(15, '2020-10-13 18:10:54', '2020-10-13 18:39:28', 3, 'Forum', 0, 0, '<div>Όποιος θέλει απαντάει στις ερωτήσεις</div>\r\n', 1, 0, 222, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(16, '2020-10-13 18:58:09', '2020-10-13 18:58:09', 3, 'Forum', 0, 0, '<div>όποιος θέλει ας απαντήσει τις ερωτήσεις</div>\r\n', 0, 0, 231, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(17, '2020-10-13 19:00:58', '2020-10-13 19:00:59', 3, 'Forum', 0, 0, '<div>Απαντήστε προαιρετικά τις ερωτήσεις</div>\r\n', 0, 0, 232, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(18, '2020-10-13 19:00:58', '2020-10-13 19:34:10', 3, 'Forum', 0, 0, '<div>Απαντήστε προαιρετικά τις ερωτήσεις</div>\r\n', 0, 0, 235, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(19, '2020-10-13 19:00:58', '2020-10-13 19:36:12', 3, 'Forum', 0, 0, '<div>Απαντήστε προαιρετικά τις ερωτήσεις</div>\r\n', 0, 0, 238, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(20, '2020-10-13 19:00:58', '2020-10-13 19:37:55', 3, 'Forum', 0, 0, '<div>Απαντήστε προαιρετικά τις ερωτήσεις</div>\r\n', 0, 0, 241, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(21, '2020-11-17 17:20:24', '2020-11-17 17:28:58', 3, 'Forum', 0, 0, '<div>Απαντήστε προαιρετικά τις ερωτήσεις</div>\r\n', 1, 0, 244, 1, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_forum_user`
--

CREATE TABLE `tl_lafrum11_forum_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_forum_user`
--

INSERT INTO `tl_lafrum11_forum_user` (`uid`, `user_id`, `last_name`, `first_name`, `session_id`, `login_name`, `session_finished`) VALUES
(1, 1, 'Nikoudis', 'Dimosthenis', NULL, 'sysadmin', 0),
(2, 1, 'Nikoudis', 'Dimosthenis', 1, 'sysadmin', 0),
(3, 31, 'Γυμνασίου', 'Καθηγητής', NULL, 'Kathigitis1', 0),
(4, 31, 'Γυμνασίου', 'Καθηγητής', 2, 'Kathigitis1', 0),
(5, 32, 'Γυμνασίου', 'Μαθητής', 3, 'Mathitis1', 1),
(6, 31, 'Γυμνασίου', 'Καθηγητής', 4, 'Kathigitis1', 1),
(7, 34, 'Γυμνασίου', 'ΜαθητήςΒ', 5, 'Mathitis3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_message`
--

CREATE TABLE `tl_lafrum11_message` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `last_reply_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sequence_id` int DEFAULT NULL,
  `is_authored` tinyint(1) DEFAULT NULL,
  `is_anonymous` tinyint(1) DEFAULT NULL,
  `forum_session_uid` bigint DEFAULT NULL,
  `parent_uid` bigint DEFAULT NULL,
  `forum_uid` bigint DEFAULT NULL,
  `reply_number` int DEFAULT NULL,
  `hide_flag` tinyint(1) DEFAULT NULL,
  `report_id` bigint DEFAULT NULL,
  `authored_parent_uid` bigint DEFAULT NULL,
  `is_monitor` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_message`
--

INSERT INTO `tl_lafrum11_message` (`uid`, `create_date`, `last_reply_date`, `update_date`, `create_by`, `modified_by`, `subject`, `body`, `sequence_id`, `is_authored`, `is_anonymous`, `forum_session_uid`, `parent_uid`, `forum_uid`, `reply_number`, `hide_flag`, `report_id`, `authored_parent_uid`, `is_monitor`) VALUES
(1, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-08-24 04:42:30', NULL, NULL, 'Topic Heading', 'Topic message', 1, 1, 0, NULL, NULL, 1, 0, 0, NULL, NULL, 0),
(2, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-05 14:46:29', 1, 1, 'Topic Heading', 'Topic message', 1, 1, 0, NULL, NULL, 2, 0, 0, NULL, NULL, 0),
(3, '2020-10-05 14:46:11', '2020-10-05 14:46:11', '2020-10-05 14:46:29', 1, 1, 'einai svsto to mauhma', '<div>\r\n<div class=\"col-md-12\"><img alt=\"\" class=\"img-responsive center-block\" src=\"/lams/www/public/ckeditor-templates/images/centered_image.jpg\"></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 2, 1, 0, NULL, NULL, 2, 0, 0, NULL, NULL, 0),
(4, '2020-10-05 14:46:11', '2020-10-05 14:47:02', '2020-10-05 14:47:02', 1, 1, 'einai svsto to mauhma', '<div>\r\n<div class=\"col-md-12\"><img alt=\"\" class=\"img-responsive center-block\" src=\"/lams/www/public/ckeditor-templates/images/centered_image.jpg\"></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 2, 1, 0, NULL, NULL, 3, 0, 0, NULL, NULL, 0),
(5, '2020-08-24 04:42:30', '2020-10-05 14:47:02', '2020-10-05 14:47:02', 1, 1, 'Topic Heading', 'Topic message', 1, 1, 0, NULL, NULL, 3, 0, 0, NULL, NULL, 0),
(6, '2020-10-05 14:46:11', '2020-10-05 14:47:10', '2020-10-05 14:47:10', 1, 1, 'einai svsto to mauhma', '<div>\r\n<div class=\"col-md-12\"><img alt=\"\" class=\"img-responsive center-block\" src=\"/lams/www/public/ckeditor-templates/images/centered_image.jpg\"></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 2, 1, 0, NULL, NULL, 4, 0, 0, NULL, NULL, 0),
(7, '2020-08-24 04:42:30', '2020-10-05 14:47:10', '2020-10-05 14:47:10', 1, 1, 'Topic Heading', 'Topic message', 1, 1, 0, NULL, NULL, 4, 0, 0, NULL, NULL, 0),
(8, '2020-10-05 14:46:11', '2020-10-05 14:47:02', '2020-10-05 14:47:17', 1, 1, 'einai svsto to mauhma', '<div>\r\n<div class=\"col-md-12\"><img alt=\"\" class=\"img-responsive center-block\" src=\"/lams/www/public/ckeditor-templates/images/centered_image.jpg\"></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 2, 1, 0, 1, NULL, 3, 0, 0, NULL, 4, 0),
(9, '2020-08-24 04:42:30', '2020-10-05 14:47:02', '2020-10-05 14:47:17', 1, 1, 'Topic Heading', 'Topic message', 1, 1, 0, 1, NULL, 3, 0, 0, NULL, 5, 0),
(10, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-07 18:27:33', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι εργασίες επαρκείς. Κάντε προτάσεις για βελτίωση του μαθήματος</div>\r\n', 1, 1, 0, NULL, NULL, 5, 0, 0, NULL, NULL, 0),
(11, '2020-10-07 18:27:16', '2020-10-07 18:27:16', '2020-10-07 18:27:33', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Να δούμε θα το βρείτε;</div>\r\n', 2, 1, 0, NULL, NULL, 5, 0, 0, NULL, NULL, 0),
(12, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-07 19:14:26', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 6, 0, 0, NULL, NULL, 0),
(13, '2020-10-07 19:14:23', '2020-10-07 19:14:23', '2020-10-07 19:14:26', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 6, 0, 0, NULL, NULL, 0),
(14, '2020-10-07 19:14:23', '2020-10-07 19:16:11', '2020-10-07 19:16:11', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 7, 0, 0, NULL, NULL, 0),
(15, '2020-08-24 04:42:30', '2020-10-07 19:16:11', '2020-10-07 19:16:11', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 7, 0, 0, NULL, NULL, 0),
(16, '2020-10-07 19:14:23', '2020-10-07 19:16:36', '2020-10-07 19:16:36', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 8, 0, 0, NULL, NULL, 0),
(17, '2020-08-24 04:42:30', '2020-10-07 19:16:36', '2020-10-07 19:16:36', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 8, 0, 0, NULL, NULL, 0),
(18, '2020-10-07 19:14:23', '2020-10-07 19:16:42', '2020-10-07 19:16:42', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 9, 0, 0, NULL, NULL, 0),
(19, '2020-08-24 04:42:30', '2020-10-07 19:16:42', '2020-10-07 19:16:42', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 9, 0, 0, NULL, NULL, 0),
(20, '2020-10-07 19:14:23', '2020-10-07 19:17:08', '2020-10-07 19:17:08', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 10, 0, 0, NULL, NULL, 0),
(21, '2020-08-24 04:42:30', '2020-10-07 19:17:08', '2020-10-07 19:17:08', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 10, 0, 0, NULL, NULL, 0),
(22, '2020-10-07 19:14:23', '2020-10-07 19:17:58', '2020-10-07 19:17:58', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 11, 0, 0, NULL, NULL, 0),
(23, '2020-08-24 04:42:30', '2020-10-07 19:17:58', '2020-10-07 19:17:58', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 11, 0, 0, NULL, NULL, 0),
(24, '2020-10-07 19:14:23', '2020-10-07 19:18:36', '2020-10-07 19:18:36', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 12, 0, 0, NULL, NULL, 0),
(25, '2020-08-24 04:42:30', '2020-10-07 19:18:36', '2020-10-07 19:18:36', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 12, 0, 0, NULL, NULL, 0),
(26, '2020-10-07 19:14:23', '2020-10-07 19:18:36', '2020-10-07 19:19:37', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, 2, NULL, 12, 0, 0, NULL, 24, 0),
(27, '2020-08-24 04:42:30', '2020-10-07 19:18:36', '2020-10-07 19:19:37', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, 2, NULL, 12, 0, 0, NULL, 25, 0),
(28, '2020-10-07 19:14:23', '2020-10-07 19:22:33', '2020-10-07 19:22:33', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, NULL, NULL, 13, 0, 0, NULL, NULL, 0),
(29, '2020-08-24 04:42:30', '2020-10-07 19:22:33', '2020-10-07 19:22:33', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 13, 0, 0, NULL, NULL, 0),
(30, '2020-10-07 19:14:23', '2020-10-09 15:31:10', '2020-10-09 15:29:21', 3, 3, 'Γρίφος-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι. Ας δούμε ποιος θα το βρει.</div>\r\n', 2, 1, 0, 3, NULL, 13, 1, 0, NULL, 28, 0),
(31, '2020-08-24 04:42:30', '2020-10-09 15:30:13', '2020-10-09 15:29:21', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό μαι οι εργασίες επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, 3, NULL, 13, 1, 0, NULL, 29, 0),
(32, '2020-10-09 15:30:13', '2020-10-09 15:30:13', '2020-10-09 15:30:13', 5, 5, 'Re:Αξιολόγηση μαθήματος', 'Ναι το μάθημα είναι κατανοητό απλά θα ήθελα περισσότερα τεστ.', 0, 0, 0, 3, 31, 13, 0, 0, NULL, NULL, 0),
(33, '2020-10-09 15:31:10', '2020-10-09 15:31:10', '2020-10-09 15:31:10', 5, 5, 'Re:Γρίφος-Παιχνίδια', 'Η λύση είναι 15', 0, 0, 0, 3, 30, 13, 0, 0, NULL, NULL, 0),
(34, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-13 18:10:54', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 14, 0, 0, NULL, NULL, 0),
(35, '2020-10-13 18:10:48', '2020-10-13 18:10:48', '2020-10-13 18:10:54', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 14, 0, 0, NULL, NULL, 0),
(36, '2020-08-24 04:42:30', '2020-10-13 18:38:02', '2020-10-13 18:38:02', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 15, 0, 0, NULL, NULL, 0),
(37, '2020-10-13 18:10:48', '2020-10-13 18:38:02', '2020-10-13 18:38:02', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 15, 0, 0, NULL, NULL, 0),
(38, '2020-10-13 18:10:48', '2020-10-13 18:38:02', '2020-10-13 18:39:05', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, 4, NULL, 15, 0, 0, NULL, 37, 0),
(39, '2020-08-24 04:42:30', '2020-10-13 18:38:02', '2020-10-13 18:39:05', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, 4, NULL, 15, 0, 0, NULL, 36, 0),
(40, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-13 18:58:09', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ερωτήσεις επαρκείς; Κάντε τις προτάσεις σας για βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 16, 0, 0, NULL, NULL, 0),
(41, '2020-10-13 18:58:03', '2020-10-13 18:58:03', '2020-10-13 18:58:09', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 16, 0, 0, NULL, NULL, 0),
(42, '2020-08-24 04:42:30', '2020-08-24 04:42:30', '2020-10-13 19:00:59', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 17, 0, 0, NULL, NULL, 0),
(43, '2020-10-13 19:00:54', '2020-10-13 19:00:54', '2020-10-13 19:00:59', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 17, 0, 0, NULL, NULL, 0),
(44, '2020-08-24 04:42:30', '2020-10-13 19:34:10', '2020-10-13 19:34:10', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 18, 0, 0, NULL, NULL, 0),
(45, '2020-10-13 19:00:54', '2020-10-13 19:34:10', '2020-10-13 19:34:10', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 18, 0, 0, NULL, NULL, 0),
(46, '2020-08-24 04:42:30', '2020-10-13 19:36:12', '2020-10-13 19:36:12', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 19, 0, 0, NULL, NULL, 0),
(47, '2020-10-13 19:00:54', '2020-10-13 19:36:12', '2020-10-13 19:36:12', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 19, 0, 0, NULL, NULL, 0),
(48, '2020-08-24 04:42:30', '2020-10-13 19:37:55', '2020-10-13 19:37:55', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 20, 0, 0, NULL, NULL, 0),
(49, '2020-10-13 19:00:54', '2020-10-13 19:37:55', '2020-10-13 19:37:55', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 20, 0, 0, NULL, NULL, 0),
(50, '2020-08-24 04:42:30', '2020-10-13 19:42:32', '2020-11-17 17:20:24', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, NULL, NULL, 21, 0, 0, NULL, NULL, 0),
(51, '2020-10-13 19:00:54', '2020-10-13 19:42:32', '2020-11-17 17:20:24', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, NULL, NULL, 21, 0, 0, NULL, NULL, 0),
(52, '2020-10-13 19:00:54', '2020-10-13 19:42:32', '2020-11-17 17:28:06', 3, 3, 'Γρίφοι-Παιχνίδια', '<div>Ένας γρίφος για παραγωγικό παιχνίδι</div>\r\n', 2, 1, 0, 5, NULL, 21, 0, 0, NULL, 51, 0),
(53, '2020-08-24 04:42:30', '2020-10-13 19:42:32', '2020-11-17 17:28:06', 3, 3, 'Αξιολόγηση μαθήματος', '<div>Είναι το μάθημα κατανοητό και οι ασκήσεις επαρκείς; Κάντε προτάσεις για τη βελτίωση του μαθήματος.</div>\r\n', 1, 1, 0, 5, NULL, 21, 0, 0, NULL, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_message_rating`
--

CREATE TABLE `tl_lafrum11_message_rating` (
  `uid` bigint NOT NULL,
  `rating` float DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `message_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_message_seq`
--

CREATE TABLE `tl_lafrum11_message_seq` (
  `uid` bigint NOT NULL,
  `root_message_uid` bigint DEFAULT NULL,
  `message_uid` bigint DEFAULT NULL,
  `message_level` smallint DEFAULT NULL,
  `thread_message_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_message_seq`
--

INSERT INTO `tl_lafrum11_message_seq` (`uid`, `root_message_uid`, `message_uid`, `message_level`, `thread_message_uid`) VALUES
(1, 2, 2, 0, NULL),
(2, 3, 3, 0, NULL),
(3, 4, 4, 0, NULL),
(4, 5, 5, 0, NULL),
(5, 6, 6, 0, NULL),
(6, 7, 7, 0, NULL),
(7, 8, 8, 0, NULL),
(8, 9, 9, 0, NULL),
(9, 10, 10, 0, NULL),
(10, 11, 11, 0, NULL),
(11, 12, 12, 0, NULL),
(12, 13, 13, 0, NULL),
(13, 14, 14, 0, NULL),
(14, 15, 15, 0, NULL),
(15, 16, 16, 0, NULL),
(16, 17, 17, 0, NULL),
(17, 18, 18, 0, NULL),
(18, 19, 19, 0, NULL),
(19, 20, 20, 0, NULL),
(20, 21, 21, 0, NULL),
(21, 22, 22, 0, NULL),
(22, 23, 23, 0, NULL),
(23, 24, 24, 0, NULL),
(24, 25, 25, 0, NULL),
(25, 26, 26, 0, NULL),
(26, 27, 27, 0, NULL),
(27, 28, 28, 0, NULL),
(28, 29, 29, 0, NULL),
(29, 30, 30, 0, NULL),
(30, 31, 31, 0, NULL),
(31, 31, 32, 1, 32),
(32, 30, 33, 1, 33),
(33, 34, 34, 0, NULL),
(34, 35, 35, 0, NULL),
(35, 36, 36, 0, NULL),
(36, 37, 37, 0, NULL),
(37, 38, 38, 0, NULL),
(38, 39, 39, 0, NULL),
(39, 40, 40, 0, NULL),
(40, 41, 41, 0, NULL),
(41, 42, 42, 0, NULL),
(42, 43, 43, 0, NULL),
(43, 44, 44, 0, NULL),
(44, 45, 45, 0, NULL),
(45, 46, 46, 0, NULL),
(46, 47, 47, 0, NULL),
(47, 48, 48, 0, NULL),
(48, 49, 49, 0, NULL),
(49, 50, 50, 0, NULL),
(50, 51, 51, 0, NULL),
(51, 52, 52, 0, NULL),
(52, 53, 53, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_report`
--

CREATE TABLE `tl_lafrum11_report` (
  `uid` bigint NOT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mark` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_timestamp`
--

CREATE TABLE `tl_lafrum11_timestamp` (
  `uid` bigint NOT NULL,
  `message_uid` bigint NOT NULL,
  `timestamp_date` datetime NOT NULL,
  `forum_user_uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_timestamp`
--

INSERT INTO `tl_lafrum11_timestamp` (`uid`, `message_uid`, `timestamp_date`, `forum_user_uid`) VALUES
(1, 8, '2020-10-05 14:47:29', 2),
(2, 9, '2020-10-05 14:47:37', 2),
(3, 27, '2020-10-07 19:19:45', 4),
(4, 31, '2020-10-09 15:29:34', 5),
(5, 30, '2020-10-09 15:30:27', 5),
(6, 39, '2020-10-13 18:39:11', 6),
(7, 38, '2020-10-13 18:39:23', 6),
(8, 53, '2020-11-17 17:28:17', 7),
(9, 52, '2020-11-17 17:28:33', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lafrum11_tool_session`
--

CREATE TABLE `tl_lafrum11_tool_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `mark_released` tinyint(1) DEFAULT NULL,
  `forum_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lafrum11_tool_session`
--

INSERT INTO `tl_lafrum11_tool_session` (`uid`, `session_end_date`, `session_start_date`, `status`, `mark_released`, `forum_uid`, `session_id`, `session_name`) VALUES
(1, NULL, NULL, 1, 0, 3, 6, 'Learner Group'),
(2, NULL, NULL, 1, 0, 12, 14, 'Learner Group'),
(3, NULL, NULL, 1, 0, 13, 17, 'Μαθηματικά learners'),
(4, NULL, NULL, 1, 0, 15, 20, 'Learner Group'),
(5, NULL, NULL, 1, 0, 21, 32, 'Μαθηματικά learners');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_configuration`
--

CREATE TABLE `tl_laimag10_configuration` (
  `uid` bigint NOT NULL,
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laimag10_configuration`
--

INSERT INTO `tl_laimag10_configuration` (`uid`, `config_key`, `config_value`) VALUES
(1, 'mediumImageDimensions', '640'),
(2, 'thumbnailImageDimensions', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_imagegallery`
--

CREATE TABLE `tl_laimag10_imagegallery` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `next_image_title` bigint DEFAULT NULL,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `allow_share_images` tinyint(1) DEFAULT NULL,
  `allow_vote` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `allow_rank` tinyint(1) DEFAULT NULL,
  `image_submit_notify` tinyint(1) DEFAULT '0',
  `minimum_rates` int DEFAULT '0',
  `maximum_rates` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laimag10_imagegallery`
--

INSERT INTO `tl_laimag10_imagegallery` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `lock_on_finished`, `instructions`, `next_image_title`, `content_in_use`, `define_later`, `content_id`, `allow_share_images`, `allow_vote`, `reflect_instructions`, `reflect_on_activity`, `allow_rank`, `image_submit_notify`, `minimum_rates`, `maximum_rates`) VALUES
(1, NULL, NULL, NULL, 'Image Gallery', 0, 'Instructions ', 1, 0, 0, 27, 0, 0, NULL, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_imagegallery_item`
--

CREATE TABLE `tl_laimag10_imagegallery_item` (
  `uid` bigint NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by_author` tinyint(1) DEFAULT NULL,
  `sequence_id` int DEFAULT NULL,
  `is_hide` tinyint(1) DEFAULT NULL,
  `imageGallery_uid` bigint DEFAULT NULL,
  `original_file_uuid` bigint DEFAULT NULL,
  `original_image_width` int DEFAULT NULL,
  `original_image_height` int DEFAULT NULL,
  `medium_file_uuid` bigint DEFAULT NULL,
  `medium_image_width` int DEFAULT NULL,
  `medium_image_height` int DEFAULT NULL,
  `thumbnail_file_uuid` bigint DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_image_vote`
--

CREATE TABLE `tl_laimag10_image_vote` (
  `uid` bigint NOT NULL,
  `is_voted` tinyint(1) DEFAULT NULL,
  `imageGallery_item_uid` bigint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_item_log`
--

CREATE TABLE `tl_laimag10_item_log` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `imageGallery_item_uid` bigint DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_session`
--

CREATE TABLE `tl_laimag10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `imageGallery_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimag10_user`
--

CREATE TABLE `tl_laimag10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` smallint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `imageGallery_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_commoncartridge`
--

CREATE TABLE `tl_laimsc11_commoncartridge` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `mini_view_commonCartridge_number` int DEFAULT NULL,
  `allow_auto_run` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laimsc11_commoncartridge`
--

INSERT INTO `tl_laimsc11_commoncartridge` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `content_in_use`, `define_later`, `content_id`, `mini_view_commonCartridge_number`, `allow_auto_run`, `reflect_instructions`, `reflect_on_activity`) VALUES
(1, NULL, NULL, NULL, 'CommonCartridge', 'Instructions ', 0, 0, 28, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_commoncartridge_item`
--

CREATE TABLE `tl_laimsc11_commoncartridge_item` (
  `uid` bigint NOT NULL,
  `file_uuid` bigint DEFAULT NULL,
  `file_version_id` bigint DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ims_schema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `init_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_xml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `launch_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secure_launch_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frame_height` int DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by_author` tinyint(1) DEFAULT NULL,
  `is_hide` tinyint(1) DEFAULT NULL,
  `item_type` smallint DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_url_new_window` tinyint(1) DEFAULT NULL,
  `commonCartridge_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laimsc11_commoncartridge_item`
--

INSERT INTO `tl_laimsc11_commoncartridge_item` (`uid`, `file_uuid`, `file_version_id`, `description`, `ims_schema`, `init_item`, `organization_xml`, `title`, `url`, `launch_url`, `secure_launch_url`, `tool_key`, `tool_secret`, `custom_str`, `button_text`, `frame_height`, `create_by`, `create_date`, `create_by_author`, `is_hide`, `item_type`, `file_type`, `file_name`, `open_url_new_window`, `commonCartridge_uid`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Search', 'http://www.google.com ', NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, '2020-08-24 04:42:41', 1, 0, 1, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_configuration`
--

CREATE TABLE `tl_laimsc11_configuration` (
  `uid` bigint NOT NULL,
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laimsc11_configuration`
--

INSERT INTO `tl_laimsc11_configuration` (`uid`, `config_key`, `config_value`) VALUES
(1, 'allowExposeUserName', 'true'),
(2, 'allowExposeUserEmail', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_item_instruction`
--

CREATE TABLE `tl_laimsc11_item_instruction` (
  `uid` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence_id` int DEFAULT NULL,
  `item_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_item_log`
--

CREATE TABLE `tl_laimsc11_item_log` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `commonCartridge_item_uid` bigint DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_session`
--

CREATE TABLE `tl_laimsc11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `commonCartridge_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laimsc11_user`
--

CREATE TABLE `tl_laimsc11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `commonCartridge_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lalead11_leaderselection`
--

CREATE TABLE `tl_lalead11_leaderselection` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lalead11_leaderselection`
--

INSERT INTO `tl_lalead11_leaderselection` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `content_in_use`, `define_later`, `tool_content_id`) VALUES
(1, NULL, NULL, NULL, 'Leader Selection', 'Instructions', b'0', b'0', 32),
(2, '2020-08-24 05:29:07', NULL, NULL, 'Leader Selection', 'Instructions', b'0', b'0', 51),
(3, '2020-08-31 15:59:58', '2020-08-31 15:59:58', 1, 'Leader Selection', 'Leader Selection', b'0', b'0', 64),
(4, '2020-09-29 17:55:44', NULL, NULL, 'Leader Selection', 'Instructions', b'0', b'0', 151),
(5, '2020-09-29 17:55:58', NULL, NULL, 'Leader Selection', 'Instructions', b'0', b'0', 154),
(6, '2020-10-01 11:41:38', NULL, NULL, 'Leader Selection', 'Instructions', b'0', b'0', 160),
(7, '2020-10-01 11:45:12', '2020-10-01 11:46:16', NULL, 'Leader Selection', '<div>Instructions</div>\r\n', b'0', b'0', 161);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lalead11_session`
--

CREATE TABLE `tl_lalead11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaderselection_uid` bigint DEFAULT NULL,
  `group_leader_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lalead11_user`
--

CREATE TABLE `tl_lalead11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `leaderselection_session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_configuration`
--

CREATE TABLE `tl_lamc11_configuration` (
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_configuration`
--

INSERT INTO `tl_lamc11_configuration` (`config_key`, `config_value`) VALUES
('hideTitles', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_content`
--

CREATE TABLE `tl_lamc11_content` (
  `uid` bigint NOT NULL,
  `content_id` bigint NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `reflect` tinyint(1) NOT NULL DEFAULT '0',
  `questions_sequenced` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint NOT NULL DEFAULT '0',
  `define_later` tinyint(1) NOT NULL DEFAULT '0',
  `retries` tinyint(1) NOT NULL DEFAULT '0',
  `pass_mark` int DEFAULT NULL,
  `show_report` tinyint(1) NOT NULL DEFAULT '0',
  `reflectionSubject` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `showMarks` tinyint(1) NOT NULL DEFAULT '0',
  `randomize` tinyint(1) NOT NULL DEFAULT '0',
  `displayAnswers` tinyint(1) NOT NULL DEFAULT '1',
  `submission_deadline` datetime DEFAULT NULL,
  `use_select_leader_tool_ouput` tinyint(1) NOT NULL DEFAULT '0',
  `prefix_answers_with_letters` tinyint(1) NOT NULL DEFAULT '1',
  `enable_confidence_levels` tinyint(1) NOT NULL DEFAULT '0',
  `display_feedback_only` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_content`
--

INSERT INTO `tl_lamc11_content` (`uid`, `content_id`, `title`, `instructions`, `creation_date`, `update_date`, `reflect`, `questions_sequenced`, `created_by`, `define_later`, `retries`, `pass_mark`, `show_report`, `reflectionSubject`, `showMarks`, `randomize`, `displayAnswers`, `submission_deadline`, `use_select_leader_tool_ouput`, `prefix_answers_with_letters`, `enable_confidence_levels`, `display_feedback_only`) VALUES
(1, 29, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(2, 113, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(4, 186, 'Ερωτήσεις', '<div>Απαντήστε στις παρακάτω ερωτήσεις</div>\r\n', NULL, '2020-10-07 18:02:19', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(5, 191, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(6, 195, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(7, 198, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(8, 201, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(9, 204, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(10, 207, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(11, 210, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(12, 213, 'MCQ', '<div>Instructions</div>\r\n', NULL, '2020-10-07 19:11:33', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(13, 218, 'Ερωτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστά</div>\r\n', NULL, '2020-10-13 17:57:21', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(14, 223, 'Ερωτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστά</div>\r\n', NULL, '2020-10-13 17:57:21', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(15, 230, 'Ερώτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστα.</div>\r\n', NULL, '2020-10-13 18:54:42', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(16, 233, 'Ερώτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστα.</div>\r\n', NULL, '2020-10-13 18:54:42', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(17, 236, 'Ερώτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστα.</div>\r\n', NULL, '2020-10-13 18:54:42', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(18, 239, 'Ερώτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστα.</div>\r\n', NULL, '2020-10-13 18:54:42', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(19, 242, 'Ερώτήσεις', '<div>Αφού διαβάσατε το κείμενο απαντήστε σωστα.</div>\r\n', NULL, '2020-11-17 17:19:50', 0, 0, 31, 0, 0, 0, 0, '', 0, 0, 1, NULL, 0, 1, 0, 0),
(20, 257, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(21, 260, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(22, 266, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(23, 268, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0),
(24, 271, 'MCQ', 'Instructions', '2020-08-24 04:42:45', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, NULL, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_que_content`
--

CREATE TABLE `tl_lamc11_que_content` (
  `uid` bigint NOT NULL,
  `mc_content_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_que_content`
--

INSERT INTO `tl_lamc11_que_content` (`uid`, `mc_content_id`) VALUES
(1, 1),
(12, 2),
(22, 4),
(23, 4),
(24, 5),
(25, 5),
(26, 6),
(27, 6),
(28, 7),
(29, 7),
(30, 8),
(31, 8),
(32, 9),
(33, 9),
(34, 10),
(35, 10),
(36, 11),
(37, 11),
(38, 12),
(39, 12),
(40, 13),
(41, 13),
(42, 14),
(43, 14),
(44, 15),
(45, 15),
(46, 16),
(47, 16),
(48, 17),
(49, 17),
(50, 18),
(51, 18),
(52, 19),
(53, 19),
(54, 20),
(55, 21),
(56, 22),
(57, 23),
(58, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_que_usr`
--

CREATE TABLE `tl_lamc11_que_usr` (
  `uid` bigint NOT NULL,
  `que_usr_id` bigint NOT NULL,
  `mc_session_id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responseFinalised` tinyint(1) NOT NULL DEFAULT '0',
  `viewSummaryRequested` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_total_mark` int DEFAULT NULL,
  `number_attempts` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_que_usr`
--

INSERT INTO `tl_lamc11_que_usr` (`uid`, `que_usr_id`, `mc_session_id`, `username`, `fullname`, `responseFinalised`, `viewSummaryRequested`, `last_attempt_total_mark`, `number_attempts`) VALUES
(1, 31, 1, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 1, 0, 8, 1),
(2, 32, 2, 'Mathitis1', 'Μαθητής Γυμνασίου', 1, 0, 2, 1),
(3, 31, 3, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 1, 0, 5, 1),
(4, 15, 4, 'test16', 'marios marios', 1, 0, 0, 1),
(5, 15, 5, 'test16', 'marios marios', 1, 0, 0, 1),
(6, 33, 6, 'Mathitis2', 'ΜαθητήςA Γυμνασίου', 0, 0, NULL, 0),
(7, 34, 6, 'Mathitis3', 'ΜαθητήςΒ Γυμνασίου', 1, 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_session`
--

CREATE TABLE `tl_lamc11_session` (
  `uid` bigint NOT NULL,
  `mc_session_id` bigint NOT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_content_id` bigint NOT NULL,
  `mc_group_leader_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_session`
--

INSERT INTO `tl_lamc11_session` (`uid`, `mc_session_id`, `session_start_date`, `session_end_date`, `session_name`, `session_status`, `mc_content_id`, `mc_group_leader_uid`) VALUES
(1, 13, '2020-10-07 19:19:04', NULL, 'Learner Group', 'COMPLETED', 11, NULL),
(2, 16, '2020-10-09 15:28:34', NULL, 'Μαθηματικά learners', 'COMPLETED', 12, NULL),
(3, 19, '2020-10-13 18:38:35', NULL, 'Learner Group', 'COMPLETED', 14, NULL),
(4, 24, '2020-11-07 18:52:41', NULL, 'Tutorial Group A learners', 'COMPLETED', 22, NULL),
(5, 27, '2020-11-07 19:17:40', NULL, 'Tutorial Group A learners', 'COMPLETED', 24, NULL),
(6, 31, '2020-11-17 17:21:30', NULL, 'Μαθηματικά learners', 'COMPLETED', 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamc11_usr_attempt`
--

CREATE TABLE `tl_lamc11_usr_attempt` (
  `uid` bigint NOT NULL,
  `qb_tool_question_uid` bigint NOT NULL,
  `que_usr_id` bigint NOT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `isAttemptCorrect` tinyint(1) NOT NULL DEFAULT '0',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passed` tinyint(1) NOT NULL DEFAULT '0',
  `confidence_level` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamc11_usr_attempt`
--

INSERT INTO `tl_lamc11_usr_attempt` (`uid`, `qb_tool_question_uid`, `que_usr_id`, `attempt_time`, `isAttemptCorrect`, `mark`, `passed`, `confidence_level`) VALUES
(1, 36, 1, '2020-10-07 19:19:24', 1, '2', 1, 0),
(2, 37, 1, '2020-10-07 19:19:24', 1, '6', 1, 0),
(3, 38, 2, '2020-10-09 15:29:04', 1, '2', 1, 0),
(4, 39, 2, '2020-10-09 15:29:04', 0, '0', 1, 0),
(5, 42, 3, '2020-10-13 18:38:51', 1, '3', 1, 0),
(6, 43, 3, '2020-10-13 18:38:51', 1, '2', 1, 0),
(7, 56, 4, '2020-11-07 18:53:41', 0, '0', 1, 0),
(8, 58, 5, '2020-11-07 19:21:46', 0, '0', 1, 0),
(9, 52, 7, '2020-11-17 17:27:14', 1, '3', 1, 0),
(10, 53, 7, '2020-11-17 17:27:14', 1, '2', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamind10_mindmap`
--

CREATE TABLE `tl_lamind10_mindmap` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `multiuser_mode` bit(1) DEFAULT NULL,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `export_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` bit(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gallery_walk_enabled` tinyint NOT NULL DEFAULT '0',
  `gallery_walk_read_only` tinyint NOT NULL DEFAULT '0',
  `gallery_walk_started` tinyint NOT NULL DEFAULT '0',
  `gallery_walk_finished` tinyint NOT NULL DEFAULT '0',
  `gallery_walk_edit_enabled` tinyint NOT NULL DEFAULT '0',
  `gallery_walk_instructions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamind10_mindmap`
--

INSERT INTO `tl_lamind10_mindmap` (`uid`, `create_date`, `update_date`, `submission_deadline`, `create_by`, `title`, `instructions`, `lock_on_finished`, `multiuser_mode`, `content_in_use`, `define_later`, `tool_content_id`, `export_content`, `reflect_on_activity`, `reflect_instructions`, `gallery_walk_enabled`, `gallery_walk_read_only`, `gallery_walk_started`, `gallery_walk_finished`, `gallery_walk_edit_enabled`, `gallery_walk_instructions`) VALUES
(1, NULL, NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 33, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL),
(2, '2020-08-24 05:25:47', NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 48, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL),
(3, '2020-09-27 18:25:52', NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 133, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL),
(4, '2020-09-27 18:34:06', NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 135, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL),
(5, '2020-09-28 17:52:06', NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 142, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL),
(6, '2020-09-29 10:41:24', NULL, NULL, NULL, 'Mindmap', 'Instructions', b'0', b'0', b'0', b'0', 144, NULL, b'0', NULL, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamind10_node`
--

CREATE TABLE `tl_lamind10_node` (
  `node_id` bigint NOT NULL,
  `unique_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `node_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `node_color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `mindmap_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lamind10_node`
--

INSERT INTO `tl_lamind10_node` (`node_id`, `unique_id`, `parent_id`, `node_text`, `node_color`, `session_id`, `user_id`, `mindmap_id`) VALUES
(1, 1, NULL, 'Main idea', '#ffffff', NULL, NULL, 2),
(2, 2, 1, 'Sub idea 1', '#ffffff', NULL, NULL, 2),
(3, 3, 1, 'Sub idea 2', '#ffffff', NULL, NULL, 2),
(4, 1, NULL, 'Κύρια Ιδέα', '#ffffff', NULL, NULL, 3),
(5, 2, 4, 'Δευτερεύουσα Ιδέα 1', '#ffffff', NULL, NULL, 3),
(6, 3, 4, 'Δευτερεύουσα Ιδέα 2', '#ffffff', NULL, NULL, 3),
(7, 1, NULL, 'Κύρια Ιδέα', '#ffffff', NULL, NULL, 4),
(8, 2, 7, 'Δευτερεύουσα Ιδέα 1', '#ffffff', NULL, NULL, 4),
(9, 3, 7, 'Δευτερεύουσα Ιδέα 2', '#ffffff', NULL, NULL, 4),
(10, 1, NULL, 'Κύρια Ιδέα', '#ffffff', NULL, NULL, 5),
(11, 2, 10, 'Δευτερεύουσα Ιδέα 1', '#ffffff', NULL, NULL, 5),
(12, 3, 10, 'Δευτερεύουσα Ιδέα 2', '#ffffff', NULL, NULL, 5),
(13, 1, NULL, 'Κύρια Ιδέα', '#ffffff', NULL, NULL, 6),
(14, 2, 13, 'Δευτερεύουσα Ιδέα 1', '#ffffff', NULL, NULL, 6),
(15, 3, 13, 'Δευτερεύουσα Ιδέα 2', '#ffffff', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamind10_request`
--

CREATE TABLE `tl_lamind10_request` (
  `uid` bigint NOT NULL,
  `unique_id` bigint DEFAULT NULL,
  `global_id` bigint DEFAULT NULL,
  `request_type` tinyint DEFAULT NULL,
  `node_id` bigint DEFAULT NULL,
  `node_child_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `mindmap_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamind10_session`
--

CREATE TABLE `tl_lamind10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mindmap_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lamind10_user`
--

CREATE TABLE `tl_lamind10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `mindmap_session_uid` bigint DEFAULT NULL,
  `entry_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lanb11_content`
--

CREATE TABLE `tl_lanb11_content` (
  `uid` bigint NOT NULL,
  `nb_content_id` bigint NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `define_later` tinyint(1) DEFAULT NULL,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `creator_user_id` bigint DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT '0',
  `comments_like_dislike` tinyint(1) DEFAULT '0',
  `allow_anonymous` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lanb11_content`
--

INSERT INTO `tl_lanb11_content` (`uid`, `nb_content_id`, `title`, `content`, `define_later`, `reflect_on_activity`, `reflect_instructions`, `content_in_use`, `creator_user_id`, `date_created`, `date_updated`, `allow_comments`, `comments_like_dislike`, `allow_anonymous`) VALUES
(1, 34, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(2, 62, 'Introduction to TBL', '<p>You would have gone through pre-class activities designated by your instructor. <BR/>You would form groups before completing the Individual Readiness Assessment (IRA). You would then attempt the Team Readiness Assessment (TRA), where your group leader would submit the group\'s answer. <BR/>Next, your group would complete the application exercises. <BR/>As a post-class activity, you would complete a personal reflection on the key learning points. </P>', 0, 0, NULL, 0, 1, '2020-08-31 15:59:58', '2020-08-31 15:59:58', 0, 0, 0),
(3, 70, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(4, 72, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(5, 74, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(6, 79, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(7, 80, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(8, 83, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 1, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(9, 84, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(10, 86, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 1, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(11, 89, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(12, 90, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(13, 92, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(14, 94, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(15, 96, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(16, 100, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(17, 101, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(18, 145, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(19, 148, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(20, 150, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(21, 156, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(22, 158, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(23, 180, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/fa/8f/82/42/9a/ab/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/fa/8f/82/42/9a/ab/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-05 20:34:25', '2020-10-07 19:02:53', 0, 0, 0),
(24, 190, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(25, 194, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(26, 197, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(27, 200, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(28, 203, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(29, 206, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(30, 209, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(31, 212, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/3f/b8/55/74/79/ec/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-07 19:06:29', '2020-10-07 19:06:29', 0, 0, 0),
(32, 214, 'Εισαγωγή', '<div>Διαβάστε το κείμενο που ακολουθεί και απαντήστε σωστά:</div>\r\n\r\n<div><a href=\"/lams//www/secure/39/3d/98/8b/40/db/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/39/3d/98/8b/40/db/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-13 17:36:12', '2020-10-13 17:36:12', 0, 0, 0),
(33, 224, 'Εισαγωγή', '<div>Διαβάστε το κείμενο που ακολουθεί και απαντήστε σωστά:</div>\r\n\r\n<div><a href=\"/lams//www/secure/39/3d/98/8b/40/db/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/39/3d/98/8b/40/db/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-13 17:36:12', '2020-10-13 17:36:12', 0, 0, 0),
(34, 225, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-13 18:43:31', '2020-10-13 18:43:31', 0, 0, 0),
(35, 234, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-13 18:43:31', '2020-10-13 18:43:31', 0, 0, 0),
(36, 237, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-13 18:43:31', '2020-10-13 18:43:31', 0, 0, 0),
(37, 240, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 0, 31, '2020-10-13 18:43:31', '2020-10-13 18:43:31', 0, 0, 0),
(38, 243, 'Εισαγωγή', '<div>Διαβάστε το παρακάτω κείμενο και απαντήστε σωστά</div>\r\n\r\n<div><a href=\"/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx\" target=\"_blank\">/lams//www/secure/80/6b/7e/77/ff/51/File//%CE%95%CE%BE%CE%B9%CF%83%CF%8E%CF%83%CE%B5%CE%B9%CF%82%201%CE%BF%CF%85%20%CE%B2%CE%B1%CE%B8%CE%BC%CE%BF%CF%8D.docx</a></div>\r\n', 0, 0, '', 1, 31, '2020-10-13 18:43:31', '2020-11-17 17:12:06', 0, 0, 0),
(39, 256, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(40, 259, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 1, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(41, 263, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 1, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(42, 267, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(43, 273, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 1, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0),
(44, 276, 'Noticeboard', '<div>Content</div>\r\n', 0, 0, '', 1, 40, '2020-11-19 02:25:08', '2020-11-19 02:25:08', 0, 0, 0),
(45, 278, 'Noticeboard', 'Content', 0, 0, 'Reflect on noticeboard', 0, NULL, '2020-08-24 04:43:11', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lanb11_session`
--

CREATE TABLE `tl_lanb11_session` (
  `uid` bigint NOT NULL,
  `nb_session_id` bigint NOT NULL,
  `nb_session_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_content_uid` bigint NOT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lanb11_session`
--

INSERT INTO `tl_lanb11_session` (`uid`, `nb_session_id`, `nb_session_name`, `nb_content_uid`, `session_start_date`, `session_end_date`, `session_status`) VALUES
(1, 1, 'A learners', 8, '2020-09-07 13:27:43', NULL, 'NOT_ATTEMPTED'),
(2, 2, 'A learners', 10, '2020-09-08 11:40:23', NULL, 'NOT_ATTEMPTED'),
(3, 7, 'Learner Group', 25, '2020-10-07 19:16:13', NULL, 'NOT_ATTEMPTED'),
(4, 8, 'Learner Group', 26, '2020-10-07 19:16:40', NULL, 'NOT_ATTEMPTED'),
(5, 9, 'Learner Group', 27, '2020-10-07 19:16:44', NULL, 'NOT_ATTEMPTED'),
(6, 10, 'Learner Group', 28, '2020-10-07 19:17:09', NULL, 'NOT_ATTEMPTED'),
(7, 11, 'Learner Group', 29, '2020-10-07 19:17:59', NULL, 'NOT_ATTEMPTED'),
(8, 12, 'Learner Group', 30, '2020-10-07 19:18:38', NULL, 'NOT_ATTEMPTED'),
(9, 15, 'Μαθηματικά learners', 31, '2020-10-09 15:28:04', NULL, 'NOT_ATTEMPTED'),
(10, 18, 'Learner Group', 33, '2020-10-13 18:38:04', NULL, 'NOT_ATTEMPTED'),
(11, 21, 'Tutorial Group A learners', 40, '2020-11-07 18:38:58', NULL, 'NOT_ATTEMPTED'),
(12, 22, 'Tutorial Group A learners', 41, '2020-11-07 18:47:55', NULL, 'NOT_ATTEMPTED'),
(13, 26, 'Tutorial Group A learners', 43, '2020-11-07 19:12:38', NULL, 'NOT_ATTEMPTED'),
(14, 30, 'Μαθηματικά learners', 38, '2020-11-17 16:52:52', NULL, 'NOT_ATTEMPTED'),
(15, 33, 'OLD 3  ΤΕΙ ΑΘΗΝΑΣ learners', 44, '2020-11-19 02:30:24', NULL, 'NOT_ATTEMPTED');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lanb11_user`
--

CREATE TABLE `tl_lanb11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `nb_session_uid` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lanb11_user`
--

INSERT INTO `tl_lanb11_user` (`uid`, `user_id`, `nb_session_uid`, `username`, `fullname`, `user_status`) VALUES
(1, 13, 1, 'test14', 'giannis giannis', 'INCOMPLETE'),
(2, 13, 2, 'test14', 'giannis giannis', 'INCOMPLETE'),
(3, 31, 3, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(4, 31, 4, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(5, 31, 5, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(6, 31, 6, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(7, 31, 7, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(8, 31, 8, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'COMPLETED'),
(9, 32, 9, 'Mathitis1', 'Μαθητής Γυμνασίου', 'COMPLETED'),
(10, 31, 10, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'COMPLETED'),
(11, 12, 11, 'test13', 'nikos nikos', 'INCOMPLETE'),
(12, 15, 12, 'test16', 'marios marios', 'COMPLETED'),
(13, 15, 13, 'test16', 'marios marios', 'COMPLETED'),
(14, 31, 14, 'Kathigitis1', 'Καθηγητής Γυμνασίου', 'INCOMPLETE'),
(15, 33, 14, 'Mathitis2', 'ΜαθητήςA Γυμνασίου', 'COMPLETED'),
(16, 34, 14, 'Mathitis3', 'ΜαθητήςΒ Γυμνασίου', 'COMPLETED'),
(17, 40, 15, 'dnikoudis', 'ΔΗΜΟΣΘΕΝΗΣ ΝΙΚΟΥΔΗΣ', 'INCOMPLETE');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lantbk11_conditions`
--

CREATE TABLE `tl_lantbk11_conditions` (
  `condition_id` bigint NOT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lantbk11_notebook`
--

CREATE TABLE `tl_lantbk11_notebook` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `allow_rich_editor` bit(1) DEFAULT NULL,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `force_response` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lantbk11_notebook`
--

INSERT INTO `tl_lantbk11_notebook` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `lock_on_finished`, `allow_rich_editor`, `content_in_use`, `define_later`, `tool_content_id`, `submission_deadline`, `force_response`) VALUES
(1, NULL, NULL, NULL, 'Notebook', 'Instructions', b'0', b'0', b'0', b'0', 35, NULL, b'0'),
(2, '2020-08-31 15:59:59', '2020-08-31 15:59:59', 1, 'Notebook', 'What are your key learning points?', b'0', b'0', b'0', b'0', 68, NULL, b'0'),
(3, '2020-09-28 17:42:57', NULL, NULL, 'Notebook', 'Instructions', b'0', b'0', b'0', b'0', 141, NULL, b'0'),
(4, '2020-09-29 10:38:39', NULL, NULL, 'Notebook', 'Instructions', b'0', b'0', b'0', b'0', 143, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lantbk11_session`
--

CREATE TABLE `tl_lantbk11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notebook_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lantbk11_user`
--

CREATE TABLE `tl_lantbk11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `notebook_session_uid` bigint DEFAULT NULL,
  `entry_uid` bigint DEFAULT NULL,
  `teachers_comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lapixl10_configuration`
--

CREATE TABLE `tl_lapixl10_configuration` (
  `uid` bigint NOT NULL,
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lapixl10_configuration`
--

INSERT INTO `tl_lapixl10_configuration` (`uid`, `config_key`, `config_value`) VALUES
(1, 'LanguageCSV', 'en,es,fr,de,it,ru,ro,zh-cn,pt-br,sv,pl,th');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lapixl10_pixlr`
--

CREATE TABLE `tl_lapixl10_pixlr` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `reflect_on_activity` bit(1) DEFAULT NULL,
  `allow_view_others_images` bit(1) DEFAULT NULL,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `image_file_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_width` bigint DEFAULT NULL,
  `image_height` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lapixl10_pixlr`
--

INSERT INTO `tl_lapixl10_pixlr` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `lock_on_finished`, `reflect_on_activity`, `allow_view_others_images`, `content_in_use`, `define_later`, `tool_content_id`, `image_file_name`, `image_width`, `image_height`, `reflect_instructions`) VALUES
(1, NULL, NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 36, 'blank.jpg', 400, 450, NULL),
(2, '2020-08-24 17:20:54', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 53, 'blank.jpg', 400, 450, NULL),
(3, '2020-09-05 13:36:49', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 75, 'e38df47f-9173-4a10-9482-2ea10f46bfa3.jpg', 400, 450, NULL),
(4, '2020-09-05 13:38:19', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 77, '031b5424-d629-4d2f-af1e-13fa8d366563.jpg', 400, 450, NULL),
(5, '2020-09-07 13:26:41', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 81, 'c0655a3c-fb69-49ec-b176-8de2500e06f2.jpg', 400, 450, NULL),
(6, '2020-09-07 13:27:21', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 82, '52e5a64b-5589-4935-bd13-b31c6c9c1af2.jpg', 400, 450, NULL),
(7, '2020-09-07 13:28:45', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 85, '21034651-410b-46de-be7c-9cf940d1e0d3.jpg', 400, 450, NULL),
(8, '2020-09-07 13:29:44', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 87, '7ef691cc-585e-4e66-8827-b09b8245e186.jpg', 400, 450, NULL),
(9, '2020-09-07 13:38:03', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 88, 'd5fca947-a20e-4c6d-96ea-42154927c771.jpg', 400, 450, NULL),
(10, '2020-09-07 18:42:19', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 91, 'd74b9f94-e36c-405b-9d73-c88364b563e2.jpg', 400, 450, NULL),
(11, '2020-09-08 11:00:24', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 93, 'b40ef5ec-5cd7-4fa2-b4fc-c7dcceae6e88.jpg', 400, 450, NULL),
(12, '2020-09-08 12:48:41', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 95, 'baec869c-f87f-4da2-b1d7-936d7c51e6ca.jpg', 400, 450, NULL),
(13, '2020-09-08 12:50:08', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 97, '88a9102d-f6b7-45de-accb-e4c2faeae573.jpg', 400, 450, NULL),
(14, '2020-09-08 13:08:30', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 99, 'ebde1840-0b42-4de5-9a7a-022cf2c12349.jpg', 400, 450, NULL),
(15, '2020-09-10 12:26:58', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'1', b'0', 102, 'de2adf6a-d492-4b4f-82d5-fb64ed5296f2.jpg', 400, 450, NULL),
(16, '2020-09-15 15:32:29', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 121, '7d5ec9fc-08cb-48ff-a611-09c8c8a51182.jpg', 400, 450, NULL),
(17, '2020-09-15 15:35:43', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 124, '5abf85f0-4f67-4326-9dfc-a95a06319418.jpg', 400, 450, NULL),
(18, '2020-09-21 17:39:38', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'0', b'0', 126, 'blank.jpg', 400, 450, NULL),
(19, '2020-11-07 18:42:07', NULL, NULL, 'Pixlr', 'Instructions', b'0', b'0', b'1', b'1', b'0', 265, '57bfa5da-2868-4c39-8e34-a9f3fd1b121a.jpg', 400, 450, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lapixl10_session`
--

CREATE TABLE `tl_lapixl10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixlr_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lapixl10_session`
--

INSERT INTO `tl_lapixl10_session` (`uid`, `session_end_date`, `session_start_date`, `status`, `session_id`, `session_name`, `pixlr_uid`) VALUES
(1, NULL, NULL, NULL, 3, 'Τέταρτο Λύκειο Αχαρνών learners', 15),
(2, NULL, NULL, NULL, 23, 'Tutorial Group A learners', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lapixl10_user`
--

CREATE TABLE `tl_lapixl10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `pixlr_session_uid` bigint DEFAULT NULL,
  `entry_uid` bigint DEFAULT NULL,
  `image_file_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imageHeight` bigint DEFAULT NULL,
  `imageWidth` bigint DEFAULT NULL,
  `imageHidden` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lapixl10_user`
--

INSERT INTO `tl_lapixl10_user` (`uid`, `user_id`, `last_name`, `login_name`, `first_name`, `finishedActivity`, `pixlr_session_uid`, `entry_uid`, `image_file_name`, `imageHeight`, `imageWidth`, `imageHidden`) VALUES
(1, 15, 'marios', 'test16', 'marios', b'1', 1, NULL, NULL, NULL, NULL, b'0'),
(2, 15, 'marios', 'test16', 'marios', b'1', 2, NULL, NULL, NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_laprev11_peerreview`
--

CREATE TABLE `tl_laprev11_peerreview` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `show_ratings_left_for_user` tinyint(1) DEFAULT '1',
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `minimum_rates` int DEFAULT '0',
  `maximum_rates` int DEFAULT '0',
  `maximum_rates_per_user` int DEFAULT '0',
  `self_review` tinyint(1) DEFAULT '0',
  `show_ratings_left_by_user` tinyint(1) DEFAULT '0',
  `tolerance` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laprev11_peerreview`
--

INSERT INTO `tl_laprev11_peerreview` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `lock_on_finished`, `show_ratings_left_for_user`, `instructions`, `content_in_use`, `define_later`, `content_id`, `reflect_instructions`, `reflect_on_activity`, `minimum_rates`, `maximum_rates`, `maximum_rates_per_user`, `self_review`, `show_ratings_left_by_user`, `tolerance`) VALUES
(1, NULL, NULL, NULL, 'Peer review', 0, 1, 'Instructions ', 0, 0, 45, NULL, 0, 0, 0, 0, 0, 0, 0),
(2, '2020-08-31 15:59:59', '2020-08-31 15:59:59', 1, 'Peer Review', 0, 1, 'Please rate your peers\' interaction with the group.', 0, 0, 67, NULL, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laprev11_session`
--

CREATE TABLE `tl_laprev11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `peerreview_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laprev11_user`
--

CREATE TABLE `tl_laprev11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `peerreview_uid` bigint DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laprev11_user`
--

INSERT INTO `tl_laprev11_user` (`uid`, `user_id`, `last_name`, `first_name`, `login_name`, `session_finished`, `session_uid`, `peerreview_uid`, `hidden`) VALUES
(1, NULL, 'Nikoudis', 'Dimosthenis', 'sysadmin', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_conditions`
--

CREATE TABLE `tl_laqa11_conditions` (
  `condition_id` bigint NOT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_condition_questions`
--

CREATE TABLE `tl_laqa11_condition_questions` (
  `condition_id` bigint NOT NULL,
  `question_uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_content`
--

CREATE TABLE `tl_laqa11_content` (
  `uid` bigint NOT NULL,
  `qa_content_id` bigint NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `reflect` tinyint(1) NOT NULL DEFAULT '0',
  `questions_sequenced` tinyint(1) NOT NULL DEFAULT '0',
  `username_visible` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rate_answers` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint NOT NULL DEFAULT '0',
  `define_later` tinyint(1) NOT NULL DEFAULT '0',
  `reflectionSubject` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lockWhenFinished` tinyint(1) NOT NULL DEFAULT '1',
  `showOtherAnswers` tinyint(1) NOT NULL DEFAULT '1',
  `allow_rich_editor` tinyint(1) NOT NULL DEFAULT '0',
  `use_select_leader_tool_ouput` tinyint(1) NOT NULL DEFAULT '0',
  `notify_response_submit` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_rates` int DEFAULT '0',
  `maximum_rates` int DEFAULT '0',
  `no_reedit_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `show_other_answers_after_deadline` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laqa11_content`
--

INSERT INTO `tl_laqa11_content` (`uid`, `qa_content_id`, `title`, `instructions`, `creation_date`, `update_date`, `submission_deadline`, `reflect`, `questions_sequenced`, `username_visible`, `allow_rate_answers`, `created_by`, `define_later`, `reflectionSubject`, `lockWhenFinished`, `showOtherAnswers`, `allow_rich_editor`, `use_select_leader_tool_ouput`, `notify_response_submit`, `minimum_rates`, `maximum_rates`, `no_reedit_allowed`, `show_other_answers_after_deadline`) VALUES
(1, 30, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 104, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(3, 106, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(6, 112, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(8, 118, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(9, 120, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 146, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(11, 147, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(12, 149, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(13, 155, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(14, 157, 'Q&A', 'Instructions', '2020-08-24 04:42:51', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_que_content`
--

CREATE TABLE `tl_laqa11_que_content` (
  `uid` bigint NOT NULL,
  `qa_content_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_laqa11_que_content`
--

INSERT INTO `tl_laqa11_que_content` (`uid`, `qa_content_id`) VALUES
(3, 1),
(7, 2),
(8, 3),
(11, 6),
(15, 8),
(16, 9),
(17, 10),
(18, 11),
(19, 12),
(20, 13),
(21, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_que_usr`
--

CREATE TABLE `tl_laqa11_que_usr` (
  `uid` bigint NOT NULL,
  `que_usr_id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responseFinalized` tinyint(1) NOT NULL DEFAULT '0',
  `qa_session_id` bigint NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `learnerFinished` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_session`
--

CREATE TABLE `tl_laqa11_session` (
  `uid` bigint NOT NULL,
  `qa_session_id` bigint NOT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_content_id` bigint NOT NULL,
  `qa_group_leader_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_laqa11_usr_resp`
--

CREATE TABLE `tl_laqa11_usr_resp` (
  `uid` bigint NOT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `que_usr_id` bigint NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `answer_autosaved` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_item_instruction`
--

CREATE TABLE `tl_larsrc11_item_instruction` (
  `uid` bigint NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sequence_id` int DEFAULT NULL,
  `item_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_larsrc11_item_instruction`
--

INSERT INTO `tl_larsrc11_item_instruction` (`uid`, `description`, `sequence_id`, `item_uid`) VALUES
(1, 'Use Google to search the web', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_item_log`
--

CREATE TABLE `tl_larsrc11_item_log` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `complete_date` datetime DEFAULT NULL,
  `resource_item_uid` bigint DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_resource`
--

CREATE TABLE `tl_larsrc11_resource` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `allow_add_files` tinyint(1) DEFAULT NULL,
  `allow_add_urls` tinyint(1) DEFAULT NULL,
  `mini_view_resource_number` int DEFAULT NULL,
  `allow_auto_run` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `assigment_submit_notify` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_larsrc11_resource`
--

INSERT INTO `tl_larsrc11_resource` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `lock_on_finished`, `instructions`, `content_in_use`, `define_later`, `content_id`, `allow_add_files`, `allow_add_urls`, `mini_view_resource_number`, `allow_auto_run`, `reflect_instructions`, `reflect_on_activity`, `assigment_submit_notify`) VALUES
(1, NULL, NULL, NULL, 'Resources', 0, 'Instructions ', 0, 0, 31, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_resource_item`
--

CREATE TABLE `tl_larsrc11_resource_item` (
  `uid` bigint NOT NULL,
  `file_uuid` bigint DEFAULT NULL,
  `file_version_id` bigint DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ims_schema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `init_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_xml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by_author` tinyint(1) DEFAULT NULL,
  `is_hide` tinyint(1) DEFAULT NULL,
  `item_type` smallint DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_url_new_window` tinyint(1) DEFAULT NULL,
  `resource_uid` bigint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `is_allow_rating` tinyint(1) DEFAULT '0',
  `is_allow_comments` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_larsrc11_resource_item`
--

INSERT INTO `tl_larsrc11_resource_item` (`uid`, `file_uuid`, `file_version_id`, `description`, `ims_schema`, `init_item`, `organization_xml`, `title`, `url`, `create_by`, `create_date`, `create_by_author`, `is_hide`, `item_type`, `file_type`, `file_name`, `open_url_new_window`, `resource_uid`, `session_uid`, `order_id`, `is_allow_rating`, `is_allow_comments`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Search', 'http://www.google.com ', NULL, '2020-08-24 04:42:56', 1, 0, 1, NULL, NULL, 1, 1, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_session`
--

CREATE TABLE `tl_larsrc11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `resource_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_larsrc11_user`
--

CREATE TABLE `tl_larsrc11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `resource_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasbmt11_content`
--

CREATE TABLE `tl_lasbmt11_content` (
  `content_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `limit_upload` tinyint(1) DEFAULT NULL,
  `limit_upload_number` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `file_submit_notify` tinyint(1) DEFAULT '0',
  `use_select_leader_tool_ouput` tinyint(1) NOT NULL DEFAULT '0',
  `min_limit_upload_number` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasbmt11_content`
--

INSERT INTO `tl_lasbmt11_content` (`content_id`, `title`, `instruction`, `define_later`, `content_in_use`, `lock_on_finished`, `reflect_instructions`, `reflect_on_activity`, `limit_upload`, `limit_upload_number`, `created`, `created_by`, `updated`, `submission_deadline`, `file_submit_notify`, `use_select_leader_tool_ouput`, `min_limit_upload_number`) VALUES
(37, 'Submit Files', 'Instructions', 0, 0, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, 0, 0, NULL),
(269, 'Submit Files', 'Instructions', 0, 0, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, 0, 0, NULL),
(272, 'Submit Files', 'Instructions', 0, 1, 0, NULL, 0, 0, 1, NULL, NULL, '2020-11-07 19:24:40', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasbmt11_report`
--

CREATE TABLE `tl_lasbmt11_report` (
  `report_id` bigint NOT NULL,
  `comments` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marks` float DEFAULT NULL,
  `mark_file_uuid` bigint DEFAULT NULL,
  `mark_file_version_id` bigint DEFAULT NULL,
  `mark_file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasbmt11_session`
--

CREATE TABLE `tl_lasbmt11_session` (
  `session_id` bigint NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_leader_uid` bigint DEFAULT NULL,
  `marks_released` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasbmt11_session`
--

INSERT INTO `tl_lasbmt11_session` (`session_id`, `status`, `content_id`, `session_name`, `group_leader_uid`, `marks_released`) VALUES
(28, 1, 272, 'Tutorial Group A learners', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasbmt11_submission_details`
--

CREATE TABLE `tl_lasbmt11_submission_details` (
  `submission_id` bigint NOT NULL,
  `filePath` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_of_submission` datetime DEFAULT NULL,
  `uuid` bigint DEFAULT NULL,
  `version_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `learner_id` bigint DEFAULT NULL,
  `removed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasbmt11_user`
--

CREATE TABLE `tl_lasbmt11_user` (
  `uid` bigint NOT NULL,
  `user_id` int DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasbmt11_user`
--

INSERT INTO `tl_lasbmt11_user` (`uid`, `user_id`, `finished`, `session_id`, `first_name`, `login_name`, `last_name`, `content_id`) VALUES
(1, 15, 1, 28, 'marios', 'test16', 'marios', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrb11_heading`
--

CREATE TABLE `tl_lascrb11_heading` (
  `uid` bigint NOT NULL,
  `heading` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scribe_uid` bigint DEFAULT NULL,
  `display_order` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrb11_heading`
--

INSERT INTO `tl_lascrb11_heading` (`uid`, `heading`, `scribe_uid`, `display_order`) VALUES
(1, 'Scribe Heading', 1, 0),
(2, 'Scribe Heading', 2, 0),
(3, 'Scribe Heading', 3, 0),
(4, 'Scribe Heading', 4, 0),
(5, 'Scribe Heading', 5, 0),
(6, 'Scribe Heading', 6, 0),
(7, 'Scribe Heading', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrb11_report_entry`
--

CREATE TABLE `tl_lascrb11_report_entry` (
  `uid` bigint NOT NULL,
  `entry_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scribe_heading_uid` bigint DEFAULT NULL,
  `scribe_session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrb11_report_entry`
--

INSERT INTO `tl_lascrb11_report_entry` (`uid`, `entry_text`, `scribe_heading_uid`, `scribe_session_uid`) VALUES
(1, NULL, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrb11_scribe`
--

CREATE TABLE `tl_lascrb11_scribe` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `auto_select_scribe` bit(1) DEFAULT NULL,
  `reflect_on_activity` bit(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `aggregated_reports` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrb11_scribe`
--

INSERT INTO `tl_lascrb11_scribe` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `lock_on_finished`, `auto_select_scribe`, `reflect_on_activity`, `reflect_instructions`, `content_in_use`, `define_later`, `tool_content_id`, `aggregated_reports`) VALUES
(1, NULL, NULL, NULL, 'Scribe', 'Instructions', b'1', b'1', b'0', NULL, b'0', b'0', 39, b'0'),
(2, '2020-09-15 15:32:29', NULL, NULL, 'Scribe', 'Instructions', b'1', b'1', b'0', NULL, b'0', b'0', 122, b'0'),
(3, '2020-09-15 15:35:43', NULL, NULL, 'Scribe', 'Instructions', b'1', b'1', b'0', NULL, b'0', b'0', 123, b'0'),
(4, '2020-09-22 11:20:02', NULL, NULL, 'Scribe', 'Instructions', b'1', b'1', b'0', NULL, b'0', b'0', 129, b'0'),
(5, '2020-10-01 12:20:04', NULL, NULL, 'Scribe', 'Instructions', b'1', b'1', b'0', NULL, b'0', b'0', 167, b'0'),
(6, '2020-11-19 02:44:26', '2020-11-19 02:44:29', NULL, 'Scribe', '<div>Instructions</div>\r\n', b'1', b'1', b'0', '', b'1', b'0', 279, b'0'),
(7, '2020-11-19 02:52:13', '2020-11-19 02:44:29', NULL, 'Scribe', '<div>Instructions</div>\r\n', b'1', b'1', b'0', '', b'1', b'0', 280, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrb11_session`
--

CREATE TABLE `tl_lascrb11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scribe_uid` bigint DEFAULT NULL,
  `appointed_scribe_uid` bigint DEFAULT NULL,
  `force_complete` bit(1) DEFAULT NULL,
  `report_submitted` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrb11_session`
--

INSERT INTO `tl_lascrb11_session` (`uid`, `session_end_date`, `session_start_date`, `status`, `session_id`, `session_name`, `scribe_uid`, `appointed_scribe_uid`, `force_complete`, `report_submitted`) VALUES
(1, NULL, NULL, NULL, 34, 'ΤΕΙ ΑΘΗΝΑΣ learners', 6, 1, b'0', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrb11_user`
--

CREATE TABLE `tl_lascrb11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `scribe_session_uid` bigint DEFAULT NULL,
  `report_approved` bit(1) DEFAULT NULL,
  `started_activity` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrb11_user`
--

INSERT INTO `tl_lascrb11_user` (`uid`, `user_id`, `last_name`, `login_name`, `first_name`, `finishedActivity`, `scribe_session_uid`, `report_approved`, `started_activity`) VALUES
(1, 40, 'ΝΙΚΟΥΔΗΣ', 'dnikoudis', 'ΔΗΜΟΣΘΕΝΗΣ', b'0', 1, b'0', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_answer_log`
--

CREATE TABLE `tl_lascrt11_answer_log` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_burning_question`
--

CREATE TABLE `tl_lascrt11_burning_question` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `scratchie_item_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `question` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `general_question` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_burning_que_like`
--

CREATE TABLE `tl_lascrt11_burning_que_like` (
  `uid` bigint NOT NULL,
  `burning_question_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_configuration`
--

CREATE TABLE `tl_lascrt11_configuration` (
  `uid` bigint NOT NULL,
  `config_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrt11_configuration`
--

INSERT INTO `tl_lascrt11_configuration` (`uid`, `config_key`, `config_value`) VALUES
(2, 'presetMarks', '4,2,1,0'),
(3, 'hideTitles', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_scratchie`
--

CREATE TABLE `tl_lascrt11_scratchie` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `burning_questions_enabled` tinyint(1) DEFAULT '1',
  `discussion_sentiment_enabled` tinyint DEFAULT '0',
  `question_etherpad_enabled` tinyint(1) DEFAULT '0',
  `relative_time_limit` smallint UNSIGNED NOT NULL DEFAULT '0',
  `absolute_time_limit` datetime DEFAULT NULL,
  `double_click` tinyint DEFAULT '0',
  `shuffle_items` tinyint(1) DEFAULT '0',
  `confidence_levels_activity_uiid` int DEFAULT NULL,
  `confidence_levels_anonymous` tinyint DEFAULT '0',
  `preset_marks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_scratchies_in_results` tinyint(1) DEFAULT '1',
  `activity_uuid_providing_vsa_answers` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrt11_scratchie`
--

INSERT INTO `tl_lascrt11_scratchie` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `define_later`, `content_id`, `reflect_instructions`, `reflect_on_activity`, `submission_deadline`, `burning_questions_enabled`, `discussion_sentiment_enabled`, `question_etherpad_enabled`, `relative_time_limit`, `absolute_time_limit`, `double_click`, `shuffle_items`, `confidence_levels_activity_uiid`, `confidence_levels_anonymous`, `preset_marks`, `show_scratchies_in_results`, `activity_uuid_providing_vsa_answers`) VALUES
(1, NULL, NULL, NULL, 'Scratchie', 'Scenario explanation ', 0, 38, NULL, 0, NULL, 1, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, 1, NULL),
(2, '2020-08-31 15:59:59', '2020-08-31 15:59:59', NULL, 'TRA', '', 0, 65, NULL, 0, NULL, 1, 0, 0, 0, NULL, 0, 0, 9, 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_scratchie_item`
--

CREATE TABLE `tl_lascrt11_scratchie_item` (
  `uid` bigint NOT NULL,
  `scratchie_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lascrt11_scratchie_item`
--

INSERT INTO `tl_lascrt11_scratchie_item` (`uid`, `scratchie_uid`) VALUES
(2, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_session`
--

CREATE TABLE `tl_lascrt11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `scratchie_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_leader_uid` bigint DEFAULT NULL,
  `mark` int DEFAULT '0',
  `scratching_finished` tinyint(1) DEFAULT '0',
  `time_limit_launched_date` datetime DEFAULT NULL,
  `time_limit_adjustment` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lascrt11_user`
--

CREATE TABLE `tl_lascrt11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `scratching_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasprd10_session`
--

CREATE TABLE `tl_lasprd10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `spreadsheet_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasprd10_spreadsheet`
--

CREATE TABLE `tl_lasprd10_spreadsheet` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_learner_allowed_to_save` tinyint(1) DEFAULT NULL,
  `is_marking_enabled` tinyint(1) DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasprd10_spreadsheet`
--

INSERT INTO `tl_lasprd10_spreadsheet` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `is_learner_allowed_to_save`, `is_marking_enabled`, `lock_on_finished`, `instructions`, `code`, `content_in_use`, `define_later`, `content_id`, `reflect_instructions`, `reflect_on_activity`) VALUES
(1, NULL, NULL, NULL, 'Spreadsheet', 1, 0, 0, 'Instructions ', '', 0, 0, 40, NULL, 0),
(2, '2020-09-22 10:45:31', '2020-09-22 10:45:31', 1, 'Spreadsheet', 1, 0, 0, '<div>Instructions</div>\r\n', 'dbCells = [\r\n];\r\n', 0, 0, 128, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasprd10_spreadsheet_mark`
--

CREATE TABLE `tl_lasprd10_spreadsheet_mark` (
  `uid` bigint NOT NULL,
  `marks` float DEFAULT NULL,
  `comments` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_marks_released` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasprd10_user`
--

CREATE TABLE `tl_lasprd10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `spreadsheet_uid` bigint DEFAULT NULL,
  `user_modified_spreadsheet_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasprd10_user`
--

INSERT INTO `tl_lasprd10_user` (`uid`, `user_id`, `last_name`, `first_name`, `login_name`, `session_finished`, `session_uid`, `spreadsheet_uid`, `user_modified_spreadsheet_uid`) VALUES
(1, 12, 'nikos', 'nikos', 'test13', 0, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasprd10_user_modified_spreadsheet`
--

CREATE TABLE `tl_lasprd10_user_modified_spreadsheet` (
  `uid` bigint NOT NULL,
  `user_modified_spreadsheet` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mark_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_answer`
--

CREATE TABLE `tl_lasurv11_answer` (
  `uid` bigint NOT NULL,
  `question_uid` bigint DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `answer_choices` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `udpate_date` datetime DEFAULT NULL,
  `answer_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_answer`
--

INSERT INTO `tl_lasurv11_answer` (`uid`, `question_uid`, `user_uid`, `answer_choices`, `udpate_date`, `answer_text`) VALUES
(1, 44, 3, '88&', '2020-11-07 18:56:19', NULL),
(2, 43, 3, '86&', '2020-11-07 18:56:19', NULL),
(3, 45, 3, '', '2020-11-07 18:56:19', 'fdsgs');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_conditions`
--

CREATE TABLE `tl_lasurv11_conditions` (
  `condition_id` bigint NOT NULL,
  `content_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_condition_questions`
--

CREATE TABLE `tl_lasurv11_condition_questions` (
  `condition_id` bigint NOT NULL,
  `question_uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_option`
--

CREATE TABLE `tl_lasurv11_option` (
  `uid` bigint NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sequence_id` int DEFAULT NULL,
  `question_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_option`
--

INSERT INTO `tl_lasurv11_option` (`uid`, `description`, `sequence_id`, `question_uid`) VALUES
(1, 'Option 1', 0, 1),
(2, 'Option 2', 1, 1),
(3, 'Option 3', 2, 1),
(4, 'Option 1', 0, 2),
(5, 'Option 2', 1, 2),
(6, 'Option 3', 2, 2),
(7, 'Option 3', 2, 4),
(8, 'Option 1', 0, 4),
(9, 'Option 2', 1, 4),
(10, 'Option 1', 0, 6),
(11, 'Option 2', 1, 6),
(12, 'Option 3', 2, 6),
(13, 'Option 1', 0, 7),
(14, 'Option 3', 2, 7),
(15, 'Option 2', 1, 7),
(16, 'Option 3', 2, 9),
(17, 'Option 1', 0, 9),
(18, 'Option 2', 1, 9),
(31, 'Option 1', 0, 17),
(32, 'Option 2', 1, 17),
(33, 'Option 3', 2, 17),
(34, 'Option 1', 0, 18),
(35, 'Option 2', 1, 18),
(36, 'Option 3', 2, 18),
(43, 'Option 1', 0, 23),
(44, 'Option 2', 1, 23),
(45, 'Option 3', 2, 23),
(46, 'Option 1', 0, 24),
(47, 'Option 3', 2, 24),
(48, 'Option 2', 1, 24),
(49, 'Option 3', 2, 25),
(50, 'Option 2', 1, 25),
(51, 'Option 1', 0, 25),
(52, 'Option 2', 1, 27),
(53, 'Option 1', 0, 27),
(54, 'Option 3', 2, 27),
(55, 'Option 2', 1, 28),
(56, 'Option 1', 0, 28),
(57, 'Option 3', 2, 28),
(58, 'Option 2', 1, 29),
(59, 'Option 3', 2, 29),
(60, 'Option 1', 0, 29),
(61, 'Option 1', 0, 31),
(62, 'Option 3', 2, 31),
(63, 'Option 2', 1, 31),
(64, 'Option 1', 0, 33),
(65, 'Option 3', 2, 33),
(66, 'Option 2', 1, 33),
(67, 'Option 2', 1, 35),
(68, 'Option 1', 0, 35),
(69, 'Option 3', 2, 35),
(70, 'Option 1', 0, 36),
(71, 'Option 2', 1, 36),
(72, 'Option 3', 2, 36),
(73, 'Option 1', 0, 37),
(74, 'Option 2', 1, 37),
(75, 'Option 3', 2, 37),
(76, 'Option 1', 0, 38),
(77, 'Option 2', 1, 38),
(78, 'Option 3', 2, 38),
(79, 'Option 3', 2, 40),
(80, 'Option 1', 0, 40),
(81, 'Option 2', 1, 40),
(82, 'Option 2', 1, 41),
(83, 'Option 1', 0, 41),
(84, 'Option 3', 2, 41),
(85, 'Option 3', 2, 43),
(86, 'Option 1', 0, 43),
(87, 'Option 2', 1, 43),
(88, 'Option 1', 0, 44),
(89, 'Option 2', 1, 44),
(90, 'Option 3', 2, 44);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_question`
--

CREATE TABLE `tl_lasurv11_question` (
  `uid` bigint NOT NULL,
  `sequence_id` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `question_type` smallint DEFAULT NULL,
  `append_text` tinyint(1) DEFAULT NULL,
  `optional` tinyint(1) DEFAULT NULL,
  `allow_multiple_answer` tinyint(1) DEFAULT NULL,
  `survey_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_question`
--

INSERT INTO `tl_lasurv11_question` (`uid`, `sequence_id`, `description`, `create_by`, `create_date`, `question_type`, `append_text`, `optional`, `allow_multiple_answer`, `survey_uid`) VALUES
(1, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 1),
(2, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 1),
(3, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 1),
(4, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 2),
(5, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 2),
(6, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 2),
(7, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 3),
(8, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 3),
(9, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 3),
(16, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 6),
(17, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 6),
(18, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 6),
(22, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 8),
(23, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 8),
(24, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 8),
(25, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 9),
(26, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 9),
(27, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 9),
(28, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 10),
(29, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 10),
(30, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 10),
(31, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 11),
(32, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 11),
(33, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 11),
(34, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 12),
(35, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 12),
(36, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 12),
(37, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 13),
(38, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 13),
(39, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 13),
(40, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 14),
(41, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 14),
(42, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 14),
(43, 2, 'Sample Multiple choice - multiple response allowed?', NULL, '2020-08-24 04:43:43', 2, 0, 0, 1, 15),
(44, 1, 'Sample Multiple choice - only one response allowed?', NULL, '2020-08-24 04:43:42', 1, 0, 0, 0, 15),
(45, 3, 'Sample Free text question?', NULL, '2020-08-24 04:43:43', 3, 0, 0, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_session`
--

CREATE TABLE `tl_lasurv11_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `survey_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_session`
--

INSERT INTO `tl_lasurv11_session` (`uid`, `session_end_date`, `session_start_date`, `survey_uid`, `session_id`, `session_name`) VALUES
(2, NULL, NULL, 9, 5, 'Μαθηματικά learners'),
(3, NULL, NULL, 15, 25, 'Tutorial Group A learners');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_survey`
--

CREATE TABLE `tl_lasurv11_survey` (
  `uid` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_on_finished` tinyint(1) DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submission_deadline` datetime DEFAULT NULL,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `show_questions_on_one_page` tinyint(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `answer_submit_notify` tinyint(1) DEFAULT '0',
  `show_other_users_answers` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_survey`
--

INSERT INTO `tl_lasurv11_survey` (`uid`, `title`, `lock_on_finished`, `instructions`, `submission_deadline`, `content_in_use`, `define_later`, `content_id`, `reflect_instructions`, `reflect_on_activity`, `show_questions_on_one_page`, `create_date`, `update_date`, `create_by`, `answer_submit_notify`, `show_other_users_answers`) VALUES
(1, 'Survey', 1, 'Instructions', NULL, 0, 0, 41, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(2, 'Survey', 1, 'Instructions', NULL, 0, 0, 103, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(3, 'Survey', 1, 'Instructions', NULL, 0, 0, 105, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(6, 'Survey', 1, 'Instructions', NULL, 0, 0, 111, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(8, 'Survey', 1, 'Instructions', NULL, 0, 0, 117, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(9, 'Survey', 1, 'Instructions', NULL, 1, 0, 119, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(10, 'Survey', 1, 'Instructions', NULL, 0, 0, 152, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(11, 'Survey', 1, 'Instructions', NULL, 0, 0, 153, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(12, 'Survey', 1, 'Instructions', NULL, 0, 0, 258, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(13, 'Survey', 1, 'Instructions', NULL, 0, 0, 261, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(14, 'Survey', 1, 'Instructions', NULL, 0, 0, 262, NULL, 0, 1, NULL, NULL, NULL, 0, 0),
(15, 'Survey', 1, 'Instructions', NULL, 1, 0, 264, NULL, 0, 1, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lasurv11_user`
--

CREATE TABLE `tl_lasurv11_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `survey_uid` bigint DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `response_finalized` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lasurv11_user`
--

INSERT INTO `tl_lasurv11_user` (`uid`, `user_id`, `last_name`, `first_name`, `login_name`, `session_uid`, `survey_uid`, `session_finished`, `response_finalized`) VALUES
(2, 28, 'Κεχαγιά', 'Ιωάννα', 'ioannake', 2, NULL, 0, 0),
(3, 15, 'marios', 'marios', 'test16', 3, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_condition`
--

CREATE TABLE `tl_latask10_condition` (
  `condition_uid` bigint NOT NULL,
  `sequence_id` int DEFAULT NULL,
  `taskList_uid` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_condition_tl_item`
--

CREATE TABLE `tl_latask10_condition_tl_item` (
  `uid` bigint NOT NULL,
  `condition_uid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_item_attachment`
--

CREATE TABLE `tl_latask10_item_attachment` (
  `uid` bigint NOT NULL,
  `file_version_id` bigint DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_uuid` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `taskList_item_uid` bigint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_item_comment`
--

CREATE TABLE `tl_latask10_item_comment` (
  `uid` bigint NOT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `taskList_item_uid` bigint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_item_log`
--

CREATE TABLE `tl_latask10_item_log` (
  `uid` bigint NOT NULL,
  `access_date` datetime DEFAULT NULL,
  `taskList_item_uid` bigint DEFAULT NULL,
  `user_uid` bigint DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `session_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_session`
--

CREATE TABLE `tl_latask10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `taskList_uid` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_tasklist`
--

CREATE TABLE `tl_latask10_tasklist` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_in_use` tinyint(1) DEFAULT NULL,
  `define_later` tinyint(1) DEFAULT NULL,
  `content_id` bigint DEFAULT NULL,
  `lock_when_finished` tinyint(1) DEFAULT NULL,
  `is_sequential_order` tinyint(1) DEFAULT NULL,
  `minimum_number_tasks` int DEFAULT NULL,
  `allow_contribute_tasks` tinyint(1) DEFAULT NULL,
  `is_monitor_verification_required` tinyint(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reflect_on_activity` tinyint(1) DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_latask10_tasklist`
--

INSERT INTO `tl_latask10_tasklist` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `content_in_use`, `define_later`, `content_id`, `lock_when_finished`, `is_sequential_order`, `minimum_number_tasks`, `allow_contribute_tasks`, `is_monitor_verification_required`, `reflect_instructions`, `reflect_on_activity`, `submission_deadline`) VALUES
(1, NULL, NULL, NULL, 'Task List', 'Instructions ', 0, 0, 42, 0, 0, 0, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_tasklist_item`
--

CREATE TABLE `tl_latask10_tasklist_item` (
  `uid` bigint NOT NULL,
  `sequence_id` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `init_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_xml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by_author` tinyint(1) DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `is_comments_allowed` tinyint(1) DEFAULT NULL,
  `is_comments_required` tinyint(1) DEFAULT NULL,
  `is_files_allowed` tinyint(1) DEFAULT NULL,
  `is_files_required` tinyint(1) DEFAULT NULL,
  `is_child_task` tinyint(1) DEFAULT NULL,
  `parent_task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taskList_uid` bigint DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_latask10_tasklist_item`
--

INSERT INTO `tl_latask10_tasklist_item` (`uid`, `sequence_id`, `description`, `init_item`, `organization_xml`, `title`, `create_by`, `create_date`, `create_by_author`, `is_required`, `is_comments_allowed`, `is_comments_required`, `is_files_allowed`, `is_files_required`, `is_child_task`, `parent_task_name`, `taskList_uid`, `session_uid`) VALUES
(1, 1, NULL, NULL, NULL, 'Task number 1', NULL, '2020-08-24 04:43:48', 1, 0, 0, 0, 0, 0, 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_latask10_user`
--

CREATE TABLE `tl_latask10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_finished` tinyint(1) DEFAULT NULL,
  `session_uid` bigint DEFAULT NULL,
  `taskList_uid` bigint DEFAULT NULL,
  `is_verified_by_monitor` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lavote11_content`
--

CREATE TABLE `tl_lavote11_content` (
  `uid` bigint NOT NULL,
  `content_id` bigint NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `maxNominationCount` smallint NOT NULL DEFAULT '1',
  `minNominationCount` smallint NOT NULL DEFAULT '1',
  `allowText` tinyint(1) NOT NULL DEFAULT '0',
  `reflect` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint NOT NULL DEFAULT '0',
  `define_later` tinyint(1) NOT NULL DEFAULT '0',
  `lock_on_finish` tinyint(1) NOT NULL DEFAULT '1',
  `retries` tinyint(1) NOT NULL DEFAULT '0',
  `reflectionSubject` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_results` tinyint(1) NOT NULL DEFAULT '1',
  `assigned_data_flow_object` tinyint(1) DEFAULT NULL,
  `external_inputs_added` smallint DEFAULT '0',
  `max_external_inputs` smallint DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL,
  `use_select_leader_tool_ouput` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lavote11_content`
--

INSERT INTO `tl_lavote11_content` (`uid`, `content_id`, `title`, `instructions`, `creation_date`, `update_date`, `maxNominationCount`, `minNominationCount`, `allowText`, `reflect`, `created_by`, `define_later`, `lock_on_finish`, `retries`, `reflectionSubject`, `show_results`, `assigned_data_flow_object`, `external_inputs_added`, `max_external_inputs`, `submission_deadline`, `use_select_leader_tool_ouput`) VALUES
(1, 43, 'Voting', 'Instructions', '2020-08-24 04:43:51', NULL, 1, 1, 0, 0, 1, 0, 0, 0, NULL, 1, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lavote11_nomination_content`
--

CREATE TABLE `tl_lavote11_nomination_content` (
  `uid` bigint NOT NULL,
  `nomination` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `display_order` int DEFAULT NULL,
  `vote_content_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lavote11_nomination_content`
--

INSERT INTO `tl_lavote11_nomination_content` (`uid`, `nomination`, `display_order`, `vote_content_id`) VALUES
(1, 'Sample Nomination 1', 1, 1),
(2, 'Sample Nomination 2', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lavote11_session`
--

CREATE TABLE `tl_lavote11_session` (
  `uid` bigint NOT NULL,
  `vote_session_id` bigint NOT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote_content_id` bigint NOT NULL,
  `group_leader_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lavote11_usr`
--

CREATE TABLE `tl_lavote11_usr` (
  `uid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vote_session_id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responseFinalised` tinyint(1) NOT NULL DEFAULT '0',
  `finalScreenRequested` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lavote11_usr_attempt`
--

CREATE TABLE `tl_lavote11_usr_attempt` (
  `uid` bigint NOT NULL,
  `que_usr_id` bigint NOT NULL,
  `vote_nomination_content_id` bigint DEFAULT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userEntry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleUserEntry` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lawiki10_session`
--

CREATE TABLE `tl_lawiki10_session` (
  `uid` bigint NOT NULL,
  `session_end_date` datetime DEFAULT NULL,
  `session_start_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `session_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wiki_uid` bigint DEFAULT NULL,
  `wiki_main_page_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lawiki10_user`
--

CREATE TABLE `tl_lawiki10_user` (
  `uid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishedActivity` bit(1) DEFAULT NULL,
  `wiki_session_uid` bigint DEFAULT NULL,
  `entry_uid` bigint DEFAULT NULL,
  `wiki_edits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_lawiki10_wiki`
--

CREATE TABLE `tl_lawiki10_wiki` (
  `uid` bigint NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lock_on_finished` bit(1) DEFAULT NULL,
  `allow_learner_create_pages` bit(1) DEFAULT NULL,
  `allow_learner_insert_links` bit(1) DEFAULT NULL,
  `allow_learner_attach_images` bit(1) DEFAULT NULL,
  `notify_updates` bit(1) DEFAULT NULL,
  `reflect_on_activity` bit(1) DEFAULT NULL,
  `reflect_instructions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `minimum_edits` int DEFAULT NULL,
  `maximum_edits` int DEFAULT NULL,
  `content_in_use` bit(1) DEFAULT NULL,
  `define_later` bit(1) DEFAULT NULL,
  `tool_content_id` bigint DEFAULT NULL,
  `wiki_main_page_uid` bigint DEFAULT NULL,
  `submission_deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lawiki10_wiki`
--

INSERT INTO `tl_lawiki10_wiki` (`uid`, `create_date`, `update_date`, `create_by`, `title`, `instructions`, `lock_on_finished`, `allow_learner_create_pages`, `allow_learner_insert_links`, `allow_learner_attach_images`, `notify_updates`, `reflect_on_activity`, `reflect_instructions`, `minimum_edits`, `maximum_edits`, `content_in_use`, `define_later`, `tool_content_id`, `wiki_main_page_uid`, `submission_deadline`) VALUES
(1, NULL, NULL, NULL, 'Wiki', 'Instructions', b'0', b'1', b'1', b'1', b'0', b'0', '', 0, 0, b'0', b'0', 44, 1, NULL),
(2, '2020-09-27 12:23:20', NULL, NULL, 'Wiki', 'Instructions', b'0', b'1', b'1', b'1', b'0', b'0', '', 0, 0, b'0', b'0', 130, 2, NULL),
(3, '2020-11-19 01:57:21', NULL, NULL, 'Wiki', 'Instructions', b'0', b'1', b'1', b'1', b'0', b'0', '', 0, 0, b'0', b'0', 275, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lawiki10_wiki_page`
--

CREATE TABLE `tl_lawiki10_wiki_page` (
  `uid` bigint NOT NULL,
  `wiki_uid` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT b'0',
  `wiki_current_content` bigint DEFAULT NULL,
  `added_by` bigint DEFAULT NULL,
  `wiki_session_uid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lawiki10_wiki_page`
--

INSERT INTO `tl_lawiki10_wiki_page` (`uid`, `wiki_uid`, `title`, `editable`, `deleted`, `wiki_current_content`, `added_by`, `wiki_session_uid`) VALUES
(1, 1, 'Wiki Main Page', b'1', b'0', 1, NULL, NULL),
(2, 2, 'Wiki Main Page', b'1', b'0', 2, NULL, NULL),
(3, 3, 'Wiki Main Page', b'1', b'0', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_lawiki10_wiki_page_content`
--

CREATE TABLE `tl_lawiki10_wiki_page_content` (
  `uid` bigint NOT NULL,
  `wiki_page_uid` bigint DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `editor` bigint DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `version` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tl_lawiki10_wiki_page_content`
--

INSERT INTO `tl_lawiki10_wiki_page_content` (`uid`, `wiki_page_uid`, `body`, `editor`, `edit_date`, `version`) VALUES
(1, 1, '<div>Wiki Body</div>', NULL, NULL, 0),
(2, 2, '<div>Wiki Body</div>', NULL, '2020-09-27 12:23:20', 0),
(3, 3, '<div>Wiki Body</div>', NULL, '2020-11-19 01:57:21', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lams_activity_evaluation`
--
ALTER TABLE `lams_activity_evaluation`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_authentication_method`
--
ALTER TABLE `lams_authentication_method`
  ADD PRIMARY KEY (`authentication_method_id`),
  ADD UNIQUE KEY `UQ_lams_authentication_method_1` (`authentication_method_name`),
  ADD KEY `authentication_method_type_id` (`authentication_method_type_id`);

--
-- Indexes for table `lams_auth_method_type`
--
ALTER TABLE `lams_auth_method_type`
  ADD PRIMARY KEY (`authentication_method_type_id`);

--
-- Indexes for table `lams_branch_activity_entry`
--
ALTER TABLE `lams_branch_activity_entry`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `sequence_activity_id` (`sequence_activity_id`),
  ADD KEY `branch_activity_id` (`branch_activity_id`),
  ADD KEY `condition_id` (`condition_id`);

--
-- Indexes for table `lams_branch_condition`
--
ALTER TABLE `lams_branch_condition`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indexes for table `lams_comment`
--
ALTER TABLE `lams_comment`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_comment_session` (`session_id`),
  ADD KEY `FK_comment_create` (`create_by`),
  ADD KEY `FK_comment_modify` (`update_by`),
  ADD KEY `FK_comment_parent` (`parent_uid`),
  ADD KEY `FK_comment_root` (`root_comment_uid`),
  ADD KEY `FK_comment_thread` (`thread_comment_uid`),
  ADD KEY `IX_comment_level_sticky` (`comment_level`,`sticky`);

--
-- Indexes for table `lams_comment_likes`
--
ALTER TABLE `lams_comment_likes`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `comment_like_unique` (`comment_uid`,`user_id`),
  ADD KEY `FK_commentlike_comment` (`comment_uid`),
  ADD KEY `FK_commentlike_user` (`user_id`);

--
-- Indexes for table `lams_comment_session`
--
ALTER TABLE `lams_comment_session`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `comment_ext_sig` (`external_id`,`external_signature`);

--
-- Indexes for table `lams_competence`
--
ALTER TABLE `lams_competence`
  ADD PRIMARY KEY (`competence_id`),
  ADD UNIQUE KEY `competence_id` (`competence_id`),
  ADD UNIQUE KEY `learning_design_id` (`learning_design_id`,`title`);

--
-- Indexes for table `lams_competence_mapping`
--
ALTER TABLE `lams_competence_mapping`
  ADD PRIMARY KEY (`competence_mapping_id`),
  ADD UNIQUE KEY `competence_mapping_id` (`competence_mapping_id`),
  ADD UNIQUE KEY `competence_id` (`competence_id`,`activity_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_configuration`
--
ALTER TABLE `lams_configuration`
  ADD PRIMARY KEY (`config_key`);

--
-- Indexes for table `lams_copy_type`
--
ALTER TABLE `lams_copy_type`
  ADD PRIMARY KEY (`copy_type_id`);

--
-- Indexes for table `lams_cr_credential`
--
ALTER TABLE `lams_cr_credential`
  ADD PRIMARY KEY (`credential_id`);

--
-- Indexes for table `lams_cr_node`
--
ALTER TABLE `lams_cr_node`
  ADD PRIMARY KEY (`node_id`),
  ADD UNIQUE KEY `IDX_portrait_uuid` (`portrait_uuid`),
  ADD KEY `workspace_id` (`workspace_id`);

--
-- Indexes for table `lams_cr_node_version`
--
ALTER TABLE `lams_cr_node_version`
  ADD PRIMARY KEY (`nv_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `lams_cr_node_version_property`
--
ALTER TABLE `lams_cr_node_version_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nv_id` (`nv_id`);

--
-- Indexes for table `lams_cr_workspace`
--
ALTER TABLE `lams_cr_workspace`
  ADD PRIMARY KEY (`workspace_id`);

--
-- Indexes for table `lams_cr_workspace_credential`
--
ALTER TABLE `lams_cr_workspace_credential`
  ADD PRIMARY KEY (`wc_id`),
  ADD KEY `workspace_id` (`workspace_id`),
  ADD KEY `credential_id` (`credential_id`);

--
-- Indexes for table `lams_data_flow`
--
ALTER TABLE `lams_data_flow`
  ADD PRIMARY KEY (`data_flow_object_id`),
  ADD KEY `FK_lams_learning_transition_1` (`transition_id`);

--
-- Indexes for table `lams_discussion_sentiment`
--
ALTER TABLE `lams_discussion_sentiment`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_lams_discussion_sentiment_2` (`lesson_id`,`tool_question_uid`,`burning_question_uid`,`user_id`),
  ADD KEY `IDX_lams_discussion_sentiment_1` (`burning_question_uid`),
  ADD KEY `FK_lams_discussion_sentiment_2` (`tool_question_uid`),
  ADD KEY `FK_lams_discussion_sentiment_3` (`user_id`);

--
-- Indexes for table `lams_email_notification_archive`
--
ALTER TABLE `lams_email_notification_archive`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_lams_email_notification_archive_1` (`organisation_id`),
  ADD KEY `FK_lams_email_notification_archive_2` (`lesson_id`);

--
-- Indexes for table `lams_email_notification_recipient_archive`
--
ALTER TABLE `lams_email_notification_recipient_archive`
  ADD KEY `FK_lams_email_notification_recipient_archive_1` (`email_notification_uid`),
  ADD KEY `FK_lams_email_notification_recipient_archive_2` (`user_id`);

--
-- Indexes for table `lams_ext_course_class_map`
--
ALTER TABLE `lams_ext_course_class_map`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `ext_server_org_map_id` (`ext_server_org_map_id`);

--
-- Indexes for table `lams_ext_server_lesson_map`
--
ALTER TABLE `lams_ext_server_lesson_map`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `lesson_id` (`lesson_id`),
  ADD KEY `lams_ext_server_lesson_map_fk1` (`ext_server_org_map_id`);

--
-- Indexes for table `lams_ext_server_org_map`
--
ALTER TABLE `lams_ext_server_org_map`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `serverid` (`serverid`),
  ADD UNIQUE KEY `prefix` (`prefix`),
  ADD KEY `FK_lams_ext_server_type` (`server_type_id`);

--
-- Indexes for table `lams_ext_server_tool_map`
--
ALTER TABLE `lams_ext_server_tool_map`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `unique_adapter_map` (`ext_server_org_map_id`,`tool_id`),
  ADD KEY `lams_ext_server_tool_map_fk2` (`tool_id`);

--
-- Indexes for table `lams_ext_server_type`
--
ALTER TABLE `lams_ext_server_type`
  ADD PRIMARY KEY (`server_type_id`);

--
-- Indexes for table `lams_ext_user_userid_map`
--
ALTER TABLE `lams_ext_user_userid_map`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ext_server_org_map_id` (`ext_server_org_map_id`);

--
-- Indexes for table `lams_favorite_organisation`
--
ALTER TABLE `lams_favorite_organisation`
  ADD PRIMARY KEY (`favorite_organisation_id`),
  ADD KEY `organisation_id` (`organisation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lams_gate_activity_level`
--
ALTER TABLE `lams_gate_activity_level`
  ADD PRIMARY KEY (`gate_activity_level_id`);

--
-- Indexes for table `lams_gate_allowed_learners`
--
ALTER TABLE `lams_gate_allowed_learners`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_gradebook_user_activity`
--
ALTER TABLE `lams_gradebook_user_activity`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_lams_gradebook_user_activity_1` (`activity_id`,`user_id`),
  ADD KEY `FK_lams_gradebook_user_activity_2` (`user_id`);

--
-- Indexes for table `lams_gradebook_user_activity_archive`
--
ALTER TABLE `lams_gradebook_user_activity_archive`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `activity_id` (`activity_id`,`user_id`),
  ADD KEY `FK_lams_gradebook_user_activity_archive_2` (`user_id`);

--
-- Indexes for table `lams_gradebook_user_lesson`
--
ALTER TABLE `lams_gradebook_user_lesson`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `lesson_id` (`lesson_id`,`user_id`),
  ADD KEY `FK_lams_gradebook_user_lesson_2` (`user_id`);

--
-- Indexes for table `lams_gradebook_user_lesson_archive`
--
ALTER TABLE `lams_gradebook_user_lesson_archive`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `lesson_id` (`lesson_id`,`user_id`),
  ADD KEY `FK_lams_gradebook_user_lesson_archive_2` (`user_id`);

--
-- Indexes for table `lams_group`
--
ALTER TABLE `lams_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `UQ_lams_group_1` (`grouping_id`,`order_id`),
  ADD KEY `grouping_id` (`grouping_id`);

--
-- Indexes for table `lams_grouping`
--
ALTER TABLE `lams_grouping`
  ADD PRIMARY KEY (`grouping_id`),
  ADD KEY `grouping_type_id` (`grouping_type_id`);

--
-- Indexes for table `lams_grouping_support_type`
--
ALTER TABLE `lams_grouping_support_type`
  ADD PRIMARY KEY (`grouping_support_type_id`);

--
-- Indexes for table `lams_grouping_type`
--
ALTER TABLE `lams_grouping_type`
  ADD PRIMARY KEY (`grouping_type_id`);

--
-- Indexes for table `lams_input_activity`
--
ALTER TABLE `lams_input_activity`
  ADD UNIQUE KEY `UQ_lams_input_activity_1` (`activity_id`,`input_activity_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_kumalive`
--
ALTER TABLE `lams_kumalive`
  ADD PRIMARY KEY (`kumalive_id`),
  ADD KEY `FK_lams_kumalive_1` (`organisation_id`),
  ADD KEY `FK_lams_kumalive_2` (`created_by`);

--
-- Indexes for table `lams_kumalive_log`
--
ALTER TABLE `lams_kumalive_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `FK_lams_kumalive_log_1` (`kumalive_id`),
  ADD KEY `FK_lams_kumalive_log_2` (`user_id`);

--
-- Indexes for table `lams_kumalive_poll`
--
ALTER TABLE `lams_kumalive_poll`
  ADD PRIMARY KEY (`poll_id`),
  ADD KEY `FK_lams_kumalive_poll_1` (`kumalive_id`);

--
-- Indexes for table `lams_kumalive_poll_answer`
--
ALTER TABLE `lams_kumalive_poll_answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `FK_lams_kumalive_poll_answer_1` (`poll_id`);

--
-- Indexes for table `lams_kumalive_poll_vote`
--
ALTER TABLE `lams_kumalive_poll_vote`
  ADD PRIMARY KEY (`answer_id`,`user_id`),
  ADD KEY `FK_lams_kumalive_poll_vote_2` (`user_id`);

--
-- Indexes for table `lams_kumalive_rubric`
--
ALTER TABLE `lams_kumalive_rubric`
  ADD PRIMARY KEY (`rubric_id`),
  ADD KEY `FK_lams_kumalive_rubric_1` (`organisation_id`),
  ADD KEY `FK_lams_kumalive_rubric_2` (`kumalive_id`);

--
-- Indexes for table `lams_kumalive_score`
--
ALTER TABLE `lams_kumalive_score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `FK_lams_kumalive_score_1` (`rubric_id`),
  ADD KEY `FK_lams_kumalive_score_2` (`user_id`);

--
-- Indexes for table `lams_learner_interaction_event`
--
ALTER TABLE `lams_learner_interaction_event`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `lams_learner_interaction_event_FK1` (`user_id`),
  ADD KEY `lams_learner_interaction_event_FK2` (`qb_tool_question_uid`);

--
-- Indexes for table `lams_learner_progress`
--
ALTER TABLE `lams_learner_progress`
  ADD PRIMARY KEY (`learner_progress_id`),
  ADD UNIQUE KEY `IX_lams_learner_progress_1` (`user_id`,`lesson_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lesson_id` (`lesson_id`),
  ADD KEY `current_activity_id` (`current_activity_id`),
  ADD KEY `next_activity_id` (`next_activity_id`),
  ADD KEY `previous_activity_id` (`previous_activity_id`);

--
-- Indexes for table `lams_learner_progress_archive`
--
ALTER TABLE `lams_learner_progress_archive`
  ADD PRIMARY KEY (`learner_progress_id`),
  ADD UNIQUE KEY `IX_lams_learner_progress_archive_1` (`user_id`,`lesson_id`,`attempt_id`),
  ADD KEY `FK_lams_learner_progress_archive_2` (`lesson_id`),
  ADD KEY `FK_lams_learner_progress_archive_3` (`current_activity_id`);

--
-- Indexes for table `lams_learning_activity`
--
ALTER TABLE `lams_learning_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `lams_learning_activity_tool_content_id` (`tool_content_id`),
  ADD KEY `learning_library_id` (`learning_library_id`),
  ADD KEY `learning_design_id` (`learning_design_id`),
  ADD KEY `parent_activity_id` (`parent_activity_id`),
  ADD KEY `learning_activity_type_id` (`learning_activity_type_id`),
  ADD KEY `grouping_id` (`grouping_id`),
  ADD KEY `tool_id` (`tool_id`),
  ADD KEY `gate_activity_level_id` (`gate_activity_level_id`),
  ADD KEY `create_grouping_id` (`create_grouping_id`),
  ADD KEY `library_activity_id` (`library_activity_id`),
  ADD KEY `grouping_support_type_id` (`grouping_support_type_id`),
  ADD KEY `system_tool_id` (`system_tool_id`),
  ADD KEY `FK_lams_learning_activity_15` (`transition_to_id`),
  ADD KEY `FK_lams_learning_activity_16` (`transition_from_id`),
  ADD KEY `FK_lams_learning_activity_17` (`gate_open_user`);

--
-- Indexes for table `lams_learning_activity_type`
--
ALTER TABLE `lams_learning_activity_type`
  ADD PRIMARY KEY (`learning_activity_type_id`);

--
-- Indexes for table `lams_learning_command`
--
ALTER TABLE `lams_learning_command`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_lesson_id` (`lesson_id`),
  ADD KEY `idx_user_name` (`user_name`),
  ADD KEY `idx_create_date` (`create_date`);

--
-- Indexes for table `lams_learning_design`
--
ALTER TABLE `lams_learning_design`
  ADD PRIMARY KEY (`learning_design_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `workspace_folder_id` (`workspace_folder_id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `copy_type_id` (`copy_type_id`),
  ADD KEY `edit_override_user_id` (`edit_override_user_id`),
  ADD KEY `idx_design_parent_id` (`original_learning_design_id`),
  ADD KEY `idx_design_first_act` (`first_activity_id`),
  ADD KEY `idx_design_floating_act` (`floating_activity_id`);

--
-- Indexes for table `lams_learning_design_access`
--
ALTER TABLE `lams_learning_design_access`
  ADD PRIMARY KEY (`learning_design_id`,`user_id`),
  ADD KEY `FK_lams_learning_design_access_2` (`user_id`);

--
-- Indexes for table `lams_learning_design_annotation`
--
ALTER TABLE `lams_learning_design_annotation`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_lams_learning_design_annotation_1` (`learning_design_id`);

--
-- Indexes for table `lams_learning_library`
--
ALTER TABLE `lams_learning_library`
  ADD PRIMARY KEY (`learning_library_id`);

--
-- Indexes for table `lams_learning_library_to_group`
--
ALTER TABLE `lams_learning_library_to_group`
  ADD PRIMARY KEY (`group_id`,`learning_library_id`);

--
-- Indexes for table `lams_learning_transition`
--
ALTER TABLE `lams_learning_transition`
  ADD PRIMARY KEY (`transition_id`),
  ADD KEY `from_activity_id` (`from_activity_id`),
  ADD KEY `to_activity_id` (`to_activity_id`),
  ADD KEY `learning_design_id` (`learning_design_id`);

--
-- Indexes for table `lams_lesson`
--
ALTER TABLE `lams_lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `learning_design_id` (`learning_design_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `organisation_id` (`organisation_id`),
  ADD KEY `lesson_state_id` (`lesson_state_id`),
  ADD KEY `class_grouping_id` (`class_grouping_id`);

--
-- Indexes for table `lams_lesson_dependency`
--
ALTER TABLE `lams_lesson_dependency`
  ADD PRIMARY KEY (`lesson_id`,`preceding_lesson_id`),
  ADD KEY `FK_lams_lesson_dependency_2` (`preceding_lesson_id`);

--
-- Indexes for table `lams_lesson_state`
--
ALTER TABLE `lams_lesson_state`
  ADD PRIMARY KEY (`lesson_state_id`);

--
-- Indexes for table `lams_license`
--
ALTER TABLE `lams_license`
  ADD PRIMARY KEY (`license_id`);

--
-- Indexes for table `lams_log_event`
--
ALTER TABLE `lams_log_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_log_occurred_date_time` (`occurred_date_time`),
  ADD KEY `FK_event_log_event_type_idx` (`log_event_type_id`),
  ADD KEY `event_log_date_and_type` (`occurred_date_time`,`log_event_type_id`),
  ADD KEY `event_log_user` (`user_id`),
  ADD KEY `event_log_target_user` (`target_user_id`),
  ADD KEY `event_log_lesson` (`lesson_id`),
  ADD KEY `event_log_activity` (`activity_id`);

--
-- Indexes for table `lams_log_event_type`
--
ALTER TABLE `lams_log_event_type`
  ADD PRIMARY KEY (`log_event_type_id`);

--
-- Indexes for table `lams_notebook_entry`
--
ALTER TABLE `lams_notebook_entry`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `ext_sig_user` (`external_id`,`external_id_type`,`external_signature`,`user_id`),
  ADD KEY `idx_create_date` (`create_date`);

--
-- Indexes for table `lams_notification_event`
--
ALTER TABLE `lams_notification_event`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `scope` (`scope`,`name`,`event_session_id`);

--
-- Indexes for table `lams_notification_subscription`
--
ALTER TABLE `lams_notification_subscription`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `EventSubscriptionsToUsers` (`user_id`),
  ADD KEY `event_uid` (`event_uid`);

--
-- Indexes for table `lams_organisation`
--
ALTER TABLE `lams_organisation`
  ADD PRIMARY KEY (`organisation_id`),
  ADD KEY `organisation_type_id` (`organisation_type_id`),
  ADD KEY `parent_organisation_id` (`parent_organisation_id`),
  ADD KEY `organisation_state_id` (`organisation_state_id`);

--
-- Indexes for table `lams_organisation_group`
--
ALTER TABLE `lams_organisation_group`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `FK_lams_organisation_group_1` (`grouping_id`);

--
-- Indexes for table `lams_organisation_grouping`
--
ALTER TABLE `lams_organisation_grouping`
  ADD PRIMARY KEY (`grouping_id`),
  ADD KEY `FK_lams_organisation_grouping_1` (`organisation_id`);

--
-- Indexes for table `lams_organisation_state`
--
ALTER TABLE `lams_organisation_state`
  ADD PRIMARY KEY (`organisation_state_id`);

--
-- Indexes for table `lams_organisation_type`
--
ALTER TABLE `lams_organisation_type`
  ADD PRIMARY KEY (`organisation_type_id`),
  ADD UNIQUE KEY `UQ_lams_organisation_type_name` (`name`);

--
-- Indexes for table `lams_outcome`
--
ALTER TABLE `lams_outcome`
  ADD PRIMARY KEY (`outcome_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`),
  ADD KEY `FK_lams_outcome_2` (`scale_id`);

--
-- Indexes for table `lams_outcome_mapping`
--
ALTER TABLE `lams_outcome_mapping`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `FK_lams_outcome_mapping_1` (`outcome_id`),
  ADD KEY `FK_lams_outcome_mapping_2` (`lesson_id`),
  ADD KEY `FK_lams_outcome_mapping_3` (`tool_content_id`);

--
-- Indexes for table `lams_outcome_result`
--
ALTER TABLE `lams_outcome_result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `FK_lams_outcome_result_1` (`mapping_id`),
  ADD KEY `FK_lams_outcome_result_2` (`user_id`),
  ADD KEY `FK_lams_outcome_result_3` (`create_by`);

--
-- Indexes for table `lams_outcome_scale`
--
ALTER TABLE `lams_outcome_scale`
  ADD PRIMARY KEY (`scale_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `lams_outcome_scale_item`
--
ALTER TABLE `lams_outcome_scale_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FK_lams_outcome_scale_item_1` (`scale_id`);

--
-- Indexes for table `lams_password_request`
--
ALTER TABLE `lams_password_request`
  ADD PRIMARY KEY (`request_id`),
  ADD UNIQUE KEY `IX_lams_psswd_rqst_key` (`request_key`);

--
-- Indexes for table `lams_planner_nodes`
--
ALTER TABLE `lams_planner_nodes`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `parent_uid` (`parent_uid`,`order_id`),
  ADD KEY `FK_lams_planner_node_user` (`user_id`);

--
-- Indexes for table `lams_planner_node_role`
--
ALTER TABLE `lams_planner_node_role`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_planner_node_role_user` (`user_id`),
  ADD KEY `FK_planner_node_role_node` (`node_uid`),
  ADD KEY `FK_planner_node_role_role` (`role_id`);

--
-- Indexes for table `lams_policy`
--
ALTER TABLE `lams_policy`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `policy_state_id` (`policy_state_id`),
  ADD KEY `policy_type_id` (`policy_type_id`);

--
-- Indexes for table `lams_policy_consent`
--
ALTER TABLE `lams_policy_consent`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `policy_uid` (`policy_uid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lams_policy_state`
--
ALTER TABLE `lams_policy_state`
  ADD PRIMARY KEY (`policy_state_id`);

--
-- Indexes for table `lams_policy_type`
--
ALTER TABLE `lams_policy_type`
  ADD PRIMARY KEY (`policy_type_id`);

--
-- Indexes for table `lams_presence_chat_msgs`
--
ALTER TABLE `lams_presence_chat_msgs`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_lams_presence_chat_msgs_lesson` (`lesson_id`),
  ADD KEY `idx_lams_presence_chat_msgs_from` (`from_user`),
  ADD KEY `idx_lams_presence_chat_msgs_to` (`to_user`);

--
-- Indexes for table `lams_presence_user`
--
ALTER TABLE `lams_presence_user`
  ADD PRIMARY KEY (`nickname`,`lesson_id`),
  ADD KEY `FK_lams_presence_user_lesson` (`lesson_id`);

--
-- Indexes for table `lams_progress_attempted`
--
ALTER TABLE `lams_progress_attempted`
  ADD PRIMARY KEY (`learner_progress_id`,`activity_id`),
  ADD KEY `learner_progress_id` (`learner_progress_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_progress_attempted_archive`
--
ALTER TABLE `lams_progress_attempted_archive`
  ADD PRIMARY KEY (`learner_progress_id`,`activity_id`),
  ADD KEY `FK_lams_progress_current_archive_2` (`activity_id`);

--
-- Indexes for table `lams_progress_completed`
--
ALTER TABLE `lams_progress_completed`
  ADD PRIMARY KEY (`learner_progress_id`,`activity_id`),
  ADD KEY `learner_progress_id` (`learner_progress_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `lams_progress_completed_archive`
--
ALTER TABLE `lams_progress_completed_archive`
  ADD PRIMARY KEY (`learner_progress_id`,`activity_id`),
  ADD KEY `FK_lams_progress_completed_archive_2` (`activity_id`);

--
-- Indexes for table `lams_qb_collection`
--
ALTER TABLE `lams_qb_collection`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `personal` (`personal`),
  ADD KEY `FK_lams_qb_collection_1` (`user_id`);

--
-- Indexes for table `lams_qb_collection_organisation`
--
ALTER TABLE `lams_qb_collection_organisation`
  ADD KEY `FK_lams_qb_collection_share_1` (`collection_uid`),
  ADD KEY `FK_lams_qb_collection_share_2` (`organisation_id`);

--
-- Indexes for table `lams_qb_collection_question`
--
ALTER TABLE `lams_qb_collection_question`
  ADD KEY `FK_lams_qb_collection_question_1` (`collection_uid`),
  ADD KEY `FK_lams_qb_collection_question_2` (`qb_question_id`);

--
-- Indexes for table `lams_qb_option`
--
ALTER TABLE `lams_qb_option`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `display_order` (`display_order`),
  ADD KEY `FK_lams_qb_option_1` (`qb_question_uid`);

--
-- Indexes for table `lams_qb_question`
--
ALTER TABLE `lams_qb_question`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_question_version` (`question_id`,`version`);

--
-- Indexes for table `lams_qb_question_unit`
--
ALTER TABLE `lams_qb_question_unit`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_lams_qb_question_unit_1` (`qb_question_uid`);

--
-- Indexes for table `lams_qb_tool_answer`
--
ALTER TABLE `lams_qb_tool_answer`
  ADD PRIMARY KEY (`answer_uid`),
  ADD KEY `FK_lams_qb_tool_answer_1` (`tool_question_uid`),
  ADD KEY `FK_lams_qb_tool_answer_2` (`qb_option_uid`);

--
-- Indexes for table `lams_qb_tool_question`
--
ALTER TABLE `lams_qb_tool_question`
  ADD PRIMARY KEY (`tool_question_uid`),
  ADD KEY `tool_content_id` (`tool_content_id`),
  ADD KEY `FK_lams_qb_tool_question_1` (`qb_question_uid`);

--
-- Indexes for table `lams_qtz_BLOB_TRIGGERS`
--
ALTER TABLE `lams_qtz_BLOB_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  ADD KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_CALENDARS`
--
ALTER TABLE `lams_qtz_CALENDARS`
  ADD PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`);

--
-- Indexes for table `lams_qtz_CRON_TRIGGERS`
--
ALTER TABLE `lams_qtz_CRON_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_FIRED_TRIGGERS`
--
ALTER TABLE `lams_qtz_FIRED_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  ADD KEY `IDX_lams_qtz_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  ADD KEY `IDX_lams_qtz_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  ADD KEY `IDX_lams_qtz_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_lams_qtz_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_lams_qtz_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_lams_qtz_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_JOB_DETAILS`
--
ALTER TABLE `lams_qtz_JOB_DETAILS`
  ADD PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_lams_qtz_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  ADD KEY `IDX_lams_qtz_J_GRP` (`SCHED_NAME`,`JOB_GROUP`);

--
-- Indexes for table `lams_qtz_LOCKS`
--
ALTER TABLE `lams_qtz_LOCKS`
  ADD PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`);

--
-- Indexes for table `lams_qtz_PAUSED_TRIGGER_GRPS`
--
ALTER TABLE `lams_qtz_PAUSED_TRIGGER_GRPS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_SCHEDULER_STATE`
--
ALTER TABLE `lams_qtz_SCHEDULER_STATE`
  ADD PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`);

--
-- Indexes for table `lams_qtz_SIMPLE_TRIGGERS`
--
ALTER TABLE `lams_qtz_SIMPLE_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_SIMPROP_TRIGGERS`
--
ALTER TABLE `lams_qtz_SIMPROP_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `lams_qtz_TRIGGERS`
--
ALTER TABLE `lams_qtz_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_lams_qtz_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_lams_qtz_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_lams_qtz_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  ADD KEY `IDX_lams_qtz_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_lams_qtz_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  ADD KEY `IDX_lams_qtz_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  ADD KEY `IDX_lams_qtz_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  ADD KEY `IDX_lams_qtz_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_lams_qtz_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_lams_qtz_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_lams_qtz_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  ADD KEY `IDX_lams_qtz_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`);

--
-- Indexes for table `lams_rating`
--
ALTER TABLE `lams_rating`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `rating_criteria_id` (`rating_criteria_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `FK_lams_rating_3` (`tool_session_id`);

--
-- Indexes for table `lams_rating_comment`
--
ALTER TABLE `lams_rating_comment`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `rating_criteria_id` (`rating_criteria_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `FK_lams_rating_comment_3` (`tool_session_id`);

--
-- Indexes for table `lams_rating_criteria`
--
ALTER TABLE `lams_rating_criteria`
  ADD PRIMARY KEY (`rating_criteria_id`),
  ADD KEY `rating_criteria_type_id` (`rating_criteria_type_id`),
  ADD KEY `tool_content_id` (`tool_content_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `lams_rating_criteria_type`
--
ALTER TABLE `lams_rating_criteria_type`
  ADD PRIMARY KEY (`rating_criteria_type_id`);

--
-- Indexes for table `lams_rating_rubrics_columns`
--
ALTER TABLE `lams_rating_rubrics_columns`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_lams_rating_rubrics_columns_1` (`rating_criteria_group_id`,`rating_criteria_id`,`order_id`),
  ADD KEY `FK_lams_rating_rubrics_columns_1` (`rating_criteria_id`);

--
-- Indexes for table `lams_role`
--
ALTER TABLE `lams_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `gname` (`name`);

--
-- Indexes for table `lams_sequence_generator`
--
ALTER TABLE `lams_sequence_generator`
  ADD UNIQUE KEY `IDX_lams_qb_question_question_id` (`lams_qb_question_question_id`);

--
-- Indexes for table `lams_signup_organisation`
--
ALTER TABLE `lams_signup_organisation`
  ADD PRIMARY KEY (`signup_organisation_id`),
  ADD UNIQUE KEY `conTEXT` (`conTEXT`),
  ADD KEY `organisation_id` (`organisation_id`);

--
-- Indexes for table `lams_supported_locale`
--
ALTER TABLE `lams_supported_locale`
  ADD PRIMARY KEY (`locale_id`);

--
-- Indexes for table `lams_system_tool`
--
ALTER TABLE `lams_system_tool`
  ADD PRIMARY KEY (`system_tool_id`),
  ADD UNIQUE KEY `UQ_systool_activity_type` (`learning_activity_type_id`);

--
-- Indexes for table `lams_text_search_condition`
--
ALTER TABLE `lams_text_search_condition`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indexes for table `lams_theme`
--
ALTER TABLE `lams_theme`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `UQ_name` (`name`);

--
-- Indexes for table `lams_timezone`
--
ALTER TABLE `lams_timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lams_tool`
--
ALTER TABLE `lams_tool`
  ADD PRIMARY KEY (`tool_id`),
  ADD UNIQUE KEY `UQ_lams_tool_sig` (`tool_signature`),
  ADD UNIQUE KEY `UQ_lams_tool_class_name` (`service_name`),
  ADD KEY `learning_library_id` (`learning_library_id`),
  ADD KEY `grouping_support_type_id` (`grouping_support_type_id`);

--
-- Indexes for table `lams_tool_content`
--
ALTER TABLE `lams_tool_content`
  ADD PRIMARY KEY (`tool_content_id`),
  ADD KEY `tool_id` (`tool_id`);

--
-- Indexes for table `lams_tool_session`
--
ALTER TABLE `lams_tool_session`
  ADD PRIMARY KEY (`tool_session_id`),
  ADD UNIQUE KEY `UQ_lams_tool_session_1` (`unique_key`),
  ADD KEY `tool_session_state_id` (`tool_session_state_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tool_session_type_id` (`tool_session_type_id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lams_tool_session_state`
--
ALTER TABLE `lams_tool_session_state`
  ADD PRIMARY KEY (`tool_session_state_id`);

--
-- Indexes for table `lams_tool_session_type`
--
ALTER TABLE `lams_tool_session_type`
  ADD PRIMARY KEY (`tool_session_type_id`);

--
-- Indexes for table `lams_user`
--
ALTER TABLE `lams_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UQ_lams_user_login` (`login`),
  ADD KEY `authentication_method_id` (`authentication_method_id`),
  ADD KEY `workspace_folder_id` (`workspace_folder_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `locale_id` (`locale_id`),
  ADD KEY `FK_lams_user_7` (`last_visited_organisation_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `lams_user_group`
--
ALTER TABLE `lams_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lams_user_organisation`
--
ALTER TABLE `lams_user_organisation`
  ADD PRIMARY KEY (`user_organisation_id`),
  ADD KEY `organisation_id` (`organisation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lams_user_organisation_collapsed`
--
ALTER TABLE `lams_user_organisation_collapsed`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `organisation_id` (`organisation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lams_user_organisation_group`
--
ALTER TABLE `lams_user_organisation_group`
  ADD PRIMARY KEY (`group_id`,`user_id`),
  ADD KEY `FK_lams_user_organisation_group_2` (`user_id`);

--
-- Indexes for table `lams_user_organisation_role`
--
ALTER TABLE `lams_user_organisation_role`
  ADD PRIMARY KEY (`user_organisation_role_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_organisation_id` (`user_organisation_id`);

--
-- Indexes for table `lams_user_password_history`
--
ALTER TABLE `lams_user_password_history`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_lams_user_password_history_1` (`user_id`);

--
-- Indexes for table `lams_workspace_folder`
--
ALTER TABLE `lams_workspace_folder`
  ADD PRIMARY KEY (`workspace_folder_id`),
  ADD KEY `parent_folder_id` (`parent_folder_id`),
  ADD KEY `lams_workspace_folder_type_id` (`lams_workspace_folder_type_id`);

--
-- Indexes for table `lams_workspace_folder_content`
--
ALTER TABLE `lams_workspace_folder_content`
  ADD PRIMARY KEY (`folder_content_id`),
  ADD UNIQUE KEY `unique_content_name` (`name`,`workspace_folder_id`,`mime_type`),
  ADD UNIQUE KEY `unique_node_version` (`workspace_folder_id`,`uuid`,`version_id`),
  ADD KEY `content_type_id` (`content_type_id`),
  ADD KEY `workspace_folder_id` (`workspace_folder_id`);

--
-- Indexes for table `lams_workspace_folder_type`
--
ALTER TABLE `lams_workspace_folder_type`
  ADD PRIMARY KEY (`lams_workspace_folder_type_id`);

--
-- Indexes for table `patches`
--
ALTER TABLE `patches`
  ADD PRIMARY KEY (`system_name`,`patch_level`);

--
-- Indexes for table `tl_laasse10_assessment`
--
ALTER TABLE `tl_laasse10_assessment`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_1720029621_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_laasse10_assessment_overall_feedback`
--
ALTER TABLE `tl_laasse10_assessment_overall_feedback`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `FK_tl_laasse10_assessment_overall_feedback_1` (`assessment_uid`);

--
-- Indexes for table `tl_laasse10_assessment_question`
--
ALTER TABLE `tl_laasse10_assessment_question`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1720029621_F52D1F9330E79035` (`assessment_uid`);

--
-- Indexes for table `tl_laasse10_assessment_result`
--
ALTER TABLE `tl_laasse10_assessment_result`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_tl_laasse10_assessment_result_5` (`assessment_uid`,`user_uid`,`latest`),
  ADD KEY `FK_tl_laasse10_assessment_result_2` (`user_uid`),
  ADD KEY `latest` (`latest`),
  ADD KEY `FK_tl_laasse10_assessment_result_1` (`session_id`);

--
-- Indexes for table `tl_laasse10_configuration`
--
ALTER TABLE `tl_laasse10_configuration`
  ADD PRIMARY KEY (`config_key`);

--
-- Indexes for table `tl_laasse10_option_answer`
--
ALTER TABLE `tl_laasse10_option_answer`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `FK_tl_laasse10_option_answer_1` (`question_result_uid`),
  ADD KEY `FK_tl_laasse10_option_answer_2` (`question_option_uid`),
  ADD KEY `answer_boolean` (`answer_boolean`);

--
-- Indexes for table `tl_laasse10_question_reference`
--
ALTER TABLE `tl_laasse10_question_reference`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_laasse10_question_reference_1` (`question_uid`),
  ADD KEY `FK_tl_laasse10_question_reference_2` (`assessment_uid`);

--
-- Indexes for table `tl_laasse10_question_result`
--
ALTER TABLE `tl_laasse10_question_result`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_laasse10_question_result_1` (`result_uid`);

--
-- Indexes for table `tl_laasse10_session`
--
ALTER TABLE `tl_laasse10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_1720029621_24AA78C530E79035` (`assessment_uid`),
  ADD KEY `tl_laasse10_session` (`group_leader_uid`);

--
-- Indexes for table `tl_laasse10_time_limit`
--
ALTER TABLE `tl_laasse10_time_limit`
  ADD KEY `FK_tl_laasse10_time_limit_1` (`assessment_uid`),
  ADD KEY `FK_tl_laasse10_time_limit_2` (`user_id`);

--
-- Indexes for table `tl_laasse10_user`
--
ALTER TABLE `tl_laasse10_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `user_id` (`user_id`,`session_uid`),
  ADD KEY `FK_NEW_1720029621_30113BFC309ED320` (`assessment_uid`),
  ADD KEY `FK_NEW_1720029621_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_lachat11_chat`
--
ALTER TABLE `tl_lachat11_chat`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lachat11_conditions`
--
ALTER TABLE `tl_lachat11_conditions`
  ADD PRIMARY KEY (`condition_id`),
  ADD KEY `ChatConditionToChat` (`content_uid`);

--
-- Indexes for table `tl_lachat11_message`
--
ALTER TABLE `tl_lachat11_message`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKCC08C1DC2AF61E05` (`to_user_uid`),
  ADD KEY `FKCC08C1DC9C8469FC` (`chat_session_uid`),
  ADD KEY `FKCC08C1DCCF3BF9B6` (`from_user_uid`);

--
-- Indexes for table `tl_lachat11_session`
--
ALTER TABLE `tl_lachat11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK96E446B1A3926E3` (`chat_uid`);

--
-- Indexes for table `tl_lachat11_user`
--
ALTER TABLE `tl_lachat11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK4EB82169C8469FC` (`chat_session_uid`);

--
-- Indexes for table `tl_ladaco10_answers`
--
ALTER TABLE `tl_ladaco10_answers`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `AnswerToQuestion` (`question_uid`),
  ADD KEY `AnswerToUser` (`user_uid`);

--
-- Indexes for table `tl_ladaco10_answer_options`
--
ALTER TABLE `tl_ladaco10_answer_options`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `tl_ladaco10_answer_options_ibfk_1` (`question_uid`);

--
-- Indexes for table `tl_ladaco10_contents`
--
ALTER TABLE `tl_ladaco10_contents`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `DacoToUser` (`create_by`);

--
-- Indexes for table `tl_ladaco10_questions`
--
ALTER TABLE `tl_ladaco10_questions`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `QuestionToDaco` (`content_uid`),
  ADD KEY `QuestionToUser` (`create_by`),
  ADD KEY `tl_ladaco10_questions_ibfk_1` (`session_uid`);

--
-- Indexes for table `tl_ladaco10_sessions`
--
ALTER TABLE `tl_ladaco10_sessions`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `SessionToDaco` (`content_uid`);

--
-- Indexes for table `tl_ladaco10_users`
--
ALTER TABLE `tl_ladaco10_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `UserToDaco` (`content_uid`),
  ADD KEY `UserToSession` (`session_uid`);

--
-- Indexes for table `tl_lafrum11_attachment`
--
ALTER TABLE `tl_lafrum11_attachment`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK389AD9A2131CE31E` (`forum_uid`),
  ADD KEY `FK389AD9A2FE939F2A` (`message_uid`);

--
-- Indexes for table `tl_lafrum11_conditions`
--
ALTER TABLE `tl_lafrum11_conditions`
  ADD PRIMARY KEY (`condition_id`),
  ADD KEY `ForumConditionToForum` (`content_uid`);

--
-- Indexes for table `tl_lafrum11_condition_topics`
--
ALTER TABLE `tl_lafrum11_condition_topics`
  ADD PRIMARY KEY (`condition_id`,`topic_uid`),
  ADD KEY `ForumConditionQuestionToForumQuestion` (`topic_uid`);

--
-- Indexes for table `tl_lafrum11_configuration`
--
ALTER TABLE `tl_lafrum11_configuration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `tl_lafrum11_forum`
--
ALTER TABLE `tl_lafrum11_forum`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK87917942E42F4351` (`create_by`);

--
-- Indexes for table `tl_lafrum11_forum_user`
--
ALTER TABLE `tl_lafrum11_forum_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `FK7B83A4A85F0116B6` (`session_id`);

--
-- Indexes for table `tl_lafrum11_message`
--
ALTER TABLE `tl_lafrum11_message`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK4A6067E8131CE31E` (`forum_uid`),
  ADD KEY `FK4A6067E8647A7264` (`modified_by`),
  ADD KEY `FK4A6067E89357B45B` (`forum_session_uid`),
  ADD KEY `FK4A6067E897F0DB46` (`report_id`),
  ADD KEY `FK4A6067E8E42F4351` (`create_by`),
  ADD KEY `FK4A6067E824089E4D` (`parent_uid`);

--
-- Indexes for table `tl_lafrum11_message_rating`
--
ALTER TABLE `tl_lafrum11_message_rating`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `tl_lafrum11_message_seq`
--
ALTER TABLE `tl_lafrum11_message_seq`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKD2C71F8845213B4D` (`root_message_uid`),
  ADD KEY `FKD2C71F88FE939F2A` (`message_uid`),
  ADD KEY `fkfrum11mseqthread` (`thread_message_uid`);

--
-- Indexes for table `tl_lafrum11_report`
--
ALTER TABLE `tl_lafrum11_report`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lafrum11_timestamp`
--
ALTER TABLE `tl_lafrum11_timestamp`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `ForumUserFK` (`forum_user_uid`),
  ADD KEY `MessageFK` (`message_uid`);

--
-- Indexes for table `tl_lafrum11_tool_session`
--
ALTER TABLE `tl_lafrum11_tool_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK5A04D7AE131CE31E` (`forum_uid`);

--
-- Indexes for table `tl_laimag10_configuration`
--
ALTER TABLE `tl_laimag10_configuration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `tl_laimag10_imagegallery`
--
ALTER TABLE `tl_laimag10_imagegallery`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_1821149711_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_laimag10_imagegallery_item`
--
ALTER TABLE `tl_laimag10_imagegallery_item`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1821149711_F52D1F9330E79035` (`imageGallery_uid`),
  ADD KEY `FK_NEW_1821149711_F52D1F93758092FB` (`create_by`);

--
-- Indexes for table `tl_laimag10_image_vote`
--
ALTER TABLE `tl_laimag10_image_vote`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_laimag10_image_vote_2` (`create_by`),
  ADD KEY `FK_tl_laimag10_image_vote_3` (`imageGallery_item_uid`);

--
-- Indexes for table `tl_laimag10_item_log`
--
ALTER TABLE `tl_laimag10_item_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1821149711_693580A438BF8DFE` (`imageGallery_item_uid`),
  ADD KEY `FK_NEW_1821149711_693580A441F9365D` (`user_uid`);

--
-- Indexes for table `tl_laimag10_session`
--
ALTER TABLE `tl_laimag10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_1821149711_24AA78C530E79035` (`imageGallery_uid`);

--
-- Indexes for table `tl_laimag10_user`
--
ALTER TABLE `tl_laimag10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1821149711_30113BFC309ED320` (`imageGallery_uid`),
  ADD KEY `FK_NEW_1821149711_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_laimsc11_commoncartridge`
--
ALTER TABLE `tl_laimsc11_commoncartridge`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_1279208528_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_laimsc11_commoncartridge_item`
--
ALTER TABLE `tl_laimsc11_commoncartridge_item`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1279208528_F52D1F9330E79035` (`commonCartridge_uid`),
  ADD KEY `FK_NEW_1279208528_F52D1F93758092FB` (`create_by`);

--
-- Indexes for table `tl_laimsc11_configuration`
--
ALTER TABLE `tl_laimsc11_configuration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `tl_laimsc11_item_instruction`
--
ALTER TABLE `tl_laimsc11_item_instruction`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1279208528_A5665013980570ED` (`item_uid`);

--
-- Indexes for table `tl_laimsc11_item_log`
--
ALTER TABLE `tl_laimsc11_item_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1279208528_693580A438BF8DFE` (`commonCartridge_item_uid`),
  ADD KEY `FK_NEW_1279208528_693580A441F9365D` (`user_uid`);

--
-- Indexes for table `tl_laimsc11_session`
--
ALTER TABLE `tl_laimsc11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_1279208528_24AA78C530E79035` (`commonCartridge_uid`);

--
-- Indexes for table `tl_laimsc11_user`
--
ALTER TABLE `tl_laimsc11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1279208528_30113BFC309ED320` (`commonCartridge_uid`),
  ADD KEY `FK_NEW_1279208528_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_lalead11_leaderselection`
--
ALTER TABLE `tl_lalead11_leaderselection`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lalead11_session`
--
ALTER TABLE `tl_lalead11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_1316293302_B7C198E2FC940906` (`leaderselection_uid`),
  ADD KEY `FK_lalead11_1` (`group_leader_uid`);

--
-- Indexes for table `tl_lalead11_user`
--
ALTER TABLE `tl_lalead11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_1316293302_CB8A58FFA3B0FADF` (`leaderselection_session_uid`);

--
-- Indexes for table `tl_lamc11_configuration`
--
ALTER TABLE `tl_lamc11_configuration`
  ADD PRIMARY KEY (`config_key`);

--
-- Indexes for table `tl_lamc11_content`
--
ALTER TABLE `tl_lamc11_content`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_tl_lamc11_content_1` (`content_id`);

--
-- Indexes for table `tl_lamc11_que_content`
--
ALTER TABLE `tl_lamc11_que_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `mc_content_id` (`mc_content_id`);

--
-- Indexes for table `tl_lamc11_que_usr`
--
ALTER TABLE `tl_lamc11_que_usr`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `que_usr_id` (`que_usr_id`,`mc_session_id`),
  ADD KEY `mc_session_id` (`mc_session_id`);

--
-- Indexes for table `tl_lamc11_session`
--
ALTER TABLE `tl_lamc11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_tl_lamc11_session_1` (`mc_session_id`),
  ADD KEY `mc_content_id` (`mc_content_id`),
  ADD KEY `FK_lamc11_session1` (`mc_group_leader_uid`);

--
-- Indexes for table `tl_lamc11_usr_attempt`
--
ALTER TABLE `tl_lamc11_usr_attempt`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `IDX_attempt_duplicate_prevent` (`qb_tool_question_uid`,`que_usr_id`),
  ADD KEY `que_usr_id` (`que_usr_id`);

--
-- Indexes for table `tl_lamind10_mindmap`
--
ALTER TABLE `tl_lamind10_mindmap`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lamind10_node`
--
ALTER TABLE `tl_lamind10_node`
  ADD PRIMARY KEY (`node_id`),
  ADD KEY `MindmapNode_Mindmap_FK` (`mindmap_id`),
  ADD KEY `MindmapNode_User_FK` (`user_id`),
  ADD KEY `MindmapNode_Parent_FK` (`parent_id`);

--
-- Indexes for table `tl_lamind10_request`
--
ALTER TABLE `tl_lamind10_request`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `mindmap_id` (`mindmap_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tl_lamind10_session`
--
ALTER TABLE `tl_lamind10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_972920762_B7C198E2FC940906` (`mindmap_uid`);

--
-- Indexes for table `tl_lamind10_user`
--
ALTER TABLE `tl_lamind10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_972920762_CB8A58FFA3B0FADF` (`mindmap_session_uid`);

--
-- Indexes for table `tl_lanb11_content`
--
ALTER TABLE `tl_lanb11_content`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `nb_content_id` (`nb_content_id`);

--
-- Indexes for table `tl_lanb11_session`
--
ALTER TABLE `tl_lanb11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `nb_session_id` (`nb_session_id`),
  ADD KEY `nb_content_uid` (`nb_content_uid`);

--
-- Indexes for table `tl_lanb11_user`
--
ALTER TABLE `tl_lanb11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `nb_session_uid` (`nb_session_uid`);

--
-- Indexes for table `tl_lantbk11_conditions`
--
ALTER TABLE `tl_lantbk11_conditions`
  ADD PRIMARY KEY (`condition_id`),
  ADD KEY `NotebookConditionToNotebook` (`content_uid`);

--
-- Indexes for table `tl_lantbk11_notebook`
--
ALTER TABLE `tl_lantbk11_notebook`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lantbk11_session`
--
ALTER TABLE `tl_lantbk11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FKB7C198E2FC940906` (`notebook_uid`);

--
-- Indexes for table `tl_lantbk11_user`
--
ALTER TABLE `tl_lantbk11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKCB8A58FFA3B0FADF` (`notebook_session_uid`);

--
-- Indexes for table `tl_lapixl10_configuration`
--
ALTER TABLE `tl_lapixl10_configuration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `tl_lapixl10_pixlr`
--
ALTER TABLE `tl_lapixl10_pixlr`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lapixl10_session`
--
ALTER TABLE `tl_lapixl10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FKE5C05E7FCB8ADA74` (`pixlr_uid`);

--
-- Indexes for table `tl_lapixl10_user`
--
ALTER TABLE `tl_lapixl10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK9A39C08236E23005` (`pixlr_session_uid`);

--
-- Indexes for table `tl_laprev11_peerreview`
--
ALTER TABLE `tl_laprev11_peerreview`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_1661738138_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_laprev11_session`
--
ALTER TABLE `tl_laprev11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_1661738138_24AA78C530E79035` (`peerreview_uid`);

--
-- Indexes for table `tl_laprev11_user`
--
ALTER TABLE `tl_laprev11_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `prev11uniqusersession` (`user_id`,`session_uid`),
  ADD KEY `FK_NEW_1661738138_30113BFC309ED320` (`peerreview_uid`),
  ADD KEY `FK_NEW_1661738138_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_laqa11_conditions`
--
ALTER TABLE `tl_laqa11_conditions`
  ADD PRIMARY KEY (`condition_id`),
  ADD KEY `QaConditionToQaContent` (`content_uid`);

--
-- Indexes for table `tl_laqa11_condition_questions`
--
ALTER TABLE `tl_laqa11_condition_questions`
  ADD PRIMARY KEY (`condition_id`,`question_uid`),
  ADD KEY `QaConditionQuestionToQaQuestion` (`question_uid`);

--
-- Indexes for table `tl_laqa11_content`
--
ALTER TABLE `tl_laqa11_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `tl_laqa11_content_qa_content_id` (`qa_content_id`);

--
-- Indexes for table `tl_laqa11_que_content`
--
ALTER TABLE `tl_laqa11_que_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `qa_content_id` (`qa_content_id`);

--
-- Indexes for table `tl_laqa11_que_usr`
--
ALTER TABLE `tl_laqa11_que_usr`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `que_usr_id` (`que_usr_id`,`qa_session_id`),
  ADD KEY `qa_session_id` (`qa_session_id`);

--
-- Indexes for table `tl_laqa11_session`
--
ALTER TABLE `tl_laqa11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `qa_session_id` (`qa_session_id`),
  ADD KEY `qa_content_id` (`qa_content_id`),
  ADD KEY `FK_laqa11_session1` (`qa_group_leader_uid`);

--
-- Indexes for table `tl_laqa11_usr_resp`
--
ALTER TABLE `tl_laqa11_usr_resp`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `que_usr_id` (`que_usr_id`);

--
-- Indexes for table `tl_larsrc11_item_instruction`
--
ALTER TABLE `tl_larsrc11_item_instruction`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKA5665013980570ED` (`item_uid`);

--
-- Indexes for table `tl_larsrc11_item_log`
--
ALTER TABLE `tl_larsrc11_item_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_item_log_session_id` (`session_id`),
  ADD KEY `FK693580A438BF8DFE` (`resource_item_uid`),
  ADD KEY `FK693580A441F9365D` (`user_uid`);

--
-- Indexes for table `tl_larsrc11_resource`
--
ALTER TABLE `tl_larsrc11_resource`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_larsrc11_resource_item`
--
ALTER TABLE `tl_larsrc11_resource_item`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKF52D1F9330E79035` (`resource_uid`),
  ADD KEY `FKF52D1F93758092FB` (`create_by`),
  ADD KEY `FKF52D1F93EC0D3147` (`session_uid`);

--
-- Indexes for table `tl_larsrc11_session`
--
ALTER TABLE `tl_larsrc11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK24AA78C530E79035` (`resource_uid`);

--
-- Indexes for table `tl_larsrc11_user`
--
ALTER TABLE `tl_larsrc11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_user_user_id` (`user_id`),
  ADD KEY `FK30113BFC309ED320` (`resource_uid`),
  ADD KEY `FK30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_lasbmt11_content`
--
ALTER TABLE `tl_lasbmt11_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `FKAEF329AC172BC670` (`created_by`);

--
-- Indexes for table `tl_lasbmt11_report`
--
ALTER TABLE `tl_lasbmt11_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `tl_lasbmt11_session`
--
ALTER TABLE `tl_lasbmt11_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `FK_lasbmt11_session_1` (`group_leader_uid`),
  ADD KEY `FKEC8C77C9785A173A` (`content_id`);

--
-- Indexes for table `tl_lasbmt11_submission_details`
--
ALTER TABLE `tl_lasbmt11_submission_details`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `FK1411A53C93C861A` (`session_id`),
  ADD KEY `FK1411A53CFFD5A38B` (`learner_id`);

--
-- Indexes for table `tl_lasbmt11_user`
--
ALTER TABLE `tl_lasbmt11_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `user_id` (`user_id`,`session_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `tl_lascrb11_heading`
--
ALTER TABLE `tl_lascrb11_heading`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK428A22FFB3FA1495` (`scribe_uid`);

--
-- Indexes for table `tl_lascrb11_report_entry`
--
ALTER TABLE `tl_lascrb11_report_entry`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK5439FACA1C266FAE` (`scribe_session_uid`),
  ADD KEY `FK5439FACAEA50D086` (`scribe_heading_uid`);

--
-- Indexes for table `tl_lascrb11_scribe`
--
ALTER TABLE `tl_lascrb11_scribe`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lascrb11_session`
--
ALTER TABLE `tl_lascrb11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK89732793B3FA1495` (`scribe_uid`),
  ADD KEY `FK89732793E46919FF` (`appointed_scribe_uid`);

--
-- Indexes for table `tl_lascrb11_user`
--
ALTER TABLE `tl_lascrb11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK187DAFEE1C266FAE` (`scribe_session_uid`);

--
-- Indexes for table `tl_lascrt11_answer_log`
--
ALTER TABLE `tl_lascrt11_answer_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `sessionIdIndex` (`session_id`);

--
-- Indexes for table `tl_lascrt11_burning_question`
--
ALTER TABLE `tl_lascrt11_burning_question`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_610529188_693580A438BF8DF2` (`scratchie_item_uid`),
  ADD KEY `sessionIdIndex2` (`session_id`);

--
-- Indexes for table `tl_lascrt11_burning_que_like`
--
ALTER TABLE `tl_lascrt11_burning_que_like`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_burning_que_uid` (`burning_question_uid`);

--
-- Indexes for table `tl_lascrt11_configuration`
--
ALTER TABLE `tl_lascrt11_configuration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `tl_lascrt11_scratchie`
--
ALTER TABLE `tl_lascrt11_scratchie`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`);

--
-- Indexes for table `tl_lascrt11_scratchie_item`
--
ALTER TABLE `tl_lascrt11_scratchie_item`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_610529188_F52D1F9330E79035` (`scratchie_uid`);

--
-- Indexes for table `tl_lascrt11_session`
--
ALTER TABLE `tl_lascrt11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id_UNIQUE` (`session_id`),
  ADD KEY `FK_NEW_610529188_24AA78C530E79035` (`scratchie_uid`),
  ADD KEY `FK_lalead11_session1` (`group_leader_uid`);

--
-- Indexes for table `tl_lascrt11_user`
--
ALTER TABLE `tl_lascrt11_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `user_id` (`user_id`,`session_uid`),
  ADD KEY `userIdIndex` (`user_id`),
  ADD KEY `FK_NEW_610529188_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_lasprd10_session`
--
ALTER TABLE `tl_lasprd10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_2065267438_24AA78C530E79035` (`spreadsheet_uid`);

--
-- Indexes for table `tl_lasprd10_spreadsheet`
--
ALTER TABLE `tl_lasprd10_spreadsheet`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_2065267438_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_lasprd10_spreadsheet_mark`
--
ALTER TABLE `tl_lasprd10_spreadsheet_mark`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lasprd10_user`
--
ALTER TABLE `tl_lasprd10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_2065267438_30113BFC309ED320` (`spreadsheet_uid`),
  ADD KEY `FK_NEW_2065267438_30113BFCEC0D3147` (`session_uid`),
  ADD KEY `FK_NEW_2065267438_693580A441F9365D` (`user_modified_spreadsheet_uid`);

--
-- Indexes for table `tl_lasprd10_user_modified_spreadsheet`
--
ALTER TABLE `tl_lasprd10_user_modified_spreadsheet`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_lasprd10_user_modified_spreadsheet_1` (`mark_id`);

--
-- Indexes for table `tl_lasurv11_answer`
--
ALTER TABLE `tl_lasurv11_answer`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK6DAAFE3B25F3BB77` (`question_uid`),
  ADD KEY `FK6DAAFE3BB1423DC1` (`user_uid`);

--
-- Indexes for table `tl_lasurv11_conditions`
--
ALTER TABLE `tl_lasurv11_conditions`
  ADD PRIMARY KEY (`condition_id`),
  ADD KEY `SurveyConditionToSurvey` (`content_uid`);

--
-- Indexes for table `tl_lasurv11_condition_questions`
--
ALTER TABLE `tl_lasurv11_condition_questions`
  ADD PRIMARY KEY (`condition_id`,`question_uid`),
  ADD KEY `SurveyConditionQuestionToSurveyQuestion` (`question_uid`);

--
-- Indexes for table `tl_lasurv11_option`
--
ALTER TABLE `tl_lasurv11_option`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK85AB46F26966134F` (`question_uid`);

--
-- Indexes for table `tl_lasurv11_question`
--
ALTER TABLE `tl_lasurv11_question`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK872D4F23D14146E5` (`survey_uid`),
  ADD KEY `FK872D4F23E4C99A5F` (`create_by`);

--
-- Indexes for table `tl_lasurv11_session`
--
ALTER TABLE `tl_lasurv11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FKF08793B9D14146E5` (`survey_uid`);

--
-- Indexes for table `tl_lasurv11_survey`
--
ALTER TABLE `tl_lasurv11_survey`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK8CC465D7E4C99A5F` (`create_by`);

--
-- Indexes for table `tl_lasurv11_user`
--
ALTER TABLE `tl_lasurv11_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK633F25884F803F63` (`session_uid`),
  ADD KEY `FK633F2588D14146E5` (`survey_uid`);

--
-- Indexes for table `tl_latask10_condition`
--
ALTER TABLE `tl_latask10_condition`
  ADD PRIMARY KEY (`condition_uid`),
  ADD KEY `FK_tl_latask10_condition_1` (`taskList_uid`);

--
-- Indexes for table `tl_latask10_condition_tl_item`
--
ALTER TABLE `tl_latask10_condition_tl_item`
  ADD PRIMARY KEY (`uid`,`condition_uid`),
  ADD KEY `FK_tl_latask10_tasklist_item_condition_1` (`condition_uid`);

--
-- Indexes for table `tl_latask10_item_attachment`
--
ALTER TABLE `tl_latask10_item_attachment`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_latask10_item_attachment_1` (`taskList_item_uid`),
  ADD KEY `FK_tl_latask10_item_attachment_2` (`create_by`);

--
-- Indexes for table `tl_latask10_item_comment`
--
ALTER TABLE `tl_latask10_item_comment`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_tl_latask10_item_comment_2` (`create_by`),
  ADD KEY `FK_tl_latask10_item_comment_3` (`taskList_item_uid`);

--
-- Indexes for table `tl_latask10_item_log`
--
ALTER TABLE `tl_latask10_item_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_174079138_693580A438BF8DFE` (`taskList_item_uid`),
  ADD KEY `FK_NEW_174079138_693580A441F9365D` (`user_uid`);

--
-- Indexes for table `tl_latask10_session`
--
ALTER TABLE `tl_latask10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FK_NEW_174079138_24AA78C530E79035` (`taskList_uid`);

--
-- Indexes for table `tl_latask10_tasklist`
--
ALTER TABLE `tl_latask10_tasklist`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD KEY `FK_NEW_174079138_89093BF758092FB` (`create_by`);

--
-- Indexes for table `tl_latask10_tasklist_item`
--
ALTER TABLE `tl_latask10_tasklist_item`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_174079138_F52D1F9330E79035` (`taskList_uid`),
  ADD KEY `FK_NEW_174079138_F52D1F93758092FB` (`create_by`),
  ADD KEY `FK_NEW_174079138_F52D1F93EC0D3147` (`session_uid`);

--
-- Indexes for table `tl_latask10_user`
--
ALTER TABLE `tl_latask10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK_NEW_174079138_30113BFC309ED320` (`taskList_uid`),
  ADD KEY `FK_NEW_174079138_30113BFCEC0D3147` (`session_uid`);

--
-- Indexes for table `tl_lavote11_content`
--
ALTER TABLE `tl_lavote11_content`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tl_lavote11_nomination_content`
--
ALTER TABLE `tl_lavote11_nomination_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `vote_content_id` (`vote_content_id`);

--
-- Indexes for table `tl_lavote11_session`
--
ALTER TABLE `tl_lavote11_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UQ_tl_lamc11_session_1` (`vote_session_id`),
  ADD KEY `vote_content_id` (`vote_content_id`),
  ADD KEY `tl_lavote11_session` (`group_leader_uid`);

--
-- Indexes for table `tl_lavote11_usr`
--
ALTER TABLE `tl_lavote11_usr`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `user_id` (`user_id`,`vote_session_id`),
  ADD KEY `vote_session_id` (`vote_session_id`);

--
-- Indexes for table `tl_lavote11_usr_attempt`
--
ALTER TABLE `tl_lavote11_usr_attempt`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `que_usr_id` (`que_usr_id`),
  ADD KEY `vote_nomination_content_id` (`vote_nomination_content_id`);

--
-- Indexes for table `tl_lawiki10_session`
--
ALTER TABLE `tl_lawiki10_session`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `FKF01D63C260B3B03B` (`wiki_uid`),
  ADD KEY `FKF01D63C2A3FF7EC0` (`wiki_main_page_uid`);

--
-- Indexes for table `tl_lawiki10_user`
--
ALTER TABLE `tl_lawiki10_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKED5D7A1FD8004954` (`wiki_session_uid`);

--
-- Indexes for table `tl_lawiki10_wiki`
--
ALTER TABLE `tl_lawiki10_wiki`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FKED5E3E04A3FF7EC0` (`wiki_main_page_uid`);

--
-- Indexes for table `tl_lawiki10_wiki_page`
--
ALTER TABLE `tl_lawiki10_wiki_page`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `wiki_unique_key` (`wiki_uid`,`title`,`wiki_session_uid`),
  ADD KEY `wiki_page_fk_1` (`wiki_session_uid`),
  ADD KEY `wiki_page_fk_3` (`added_by`),
  ADD KEY `wiki_page_fk_4` (`wiki_current_content`);

--
-- Indexes for table `tl_lawiki10_wiki_page_content`
--
ALTER TABLE `tl_lawiki10_wiki_page_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK528051242D44CCF8` (`wiki_page_uid`),
  ADD KEY `FK528051243233D952` (`editor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lams_branch_activity_entry`
--
ALTER TABLE `lams_branch_activity_entry`
  MODIFY `entry_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_branch_condition`
--
ALTER TABLE `lams_branch_condition`
  MODIFY `condition_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_comment`
--
ALTER TABLE `lams_comment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_comment_likes`
--
ALTER TABLE `lams_comment_likes`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_comment_session`
--
ALTER TABLE `lams_comment_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_competence`
--
ALTER TABLE `lams_competence`
  MODIFY `competence_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_competence_mapping`
--
ALTER TABLE `lams_competence_mapping`
  MODIFY `competence_mapping_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_cr_credential`
--
ALTER TABLE `lams_cr_credential`
  MODIFY `credential_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_cr_node`
--
ALTER TABLE `lams_cr_node`
  MODIFY `node_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lams_cr_node_version`
--
ALTER TABLE `lams_cr_node_version`
  MODIFY `nv_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lams_cr_node_version_property`
--
ALTER TABLE `lams_cr_node_version_property`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lams_cr_workspace`
--
ALTER TABLE `lams_cr_workspace`
  MODIFY `workspace_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_cr_workspace_credential`
--
ALTER TABLE `lams_cr_workspace_credential`
  MODIFY `wc_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_data_flow`
--
ALTER TABLE `lams_data_flow`
  MODIFY `data_flow_object_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_discussion_sentiment`
--
ALTER TABLE `lams_discussion_sentiment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_email_notification_archive`
--
ALTER TABLE `lams_email_notification_archive`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_ext_course_class_map`
--
ALTER TABLE `lams_ext_course_class_map`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_ext_server_lesson_map`
--
ALTER TABLE `lams_ext_server_lesson_map`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_ext_server_org_map`
--
ALTER TABLE `lams_ext_server_org_map`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_ext_server_tool_map`
--
ALTER TABLE `lams_ext_server_tool_map`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_ext_user_userid_map`
--
ALTER TABLE `lams_ext_user_userid_map`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_favorite_organisation`
--
ALTER TABLE `lams_favorite_organisation`
  MODIFY `favorite_organisation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lams_gradebook_user_activity`
--
ALTER TABLE `lams_gradebook_user_activity`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lams_gradebook_user_lesson`
--
ALTER TABLE `lams_gradebook_user_lesson`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lams_group`
--
ALTER TABLE `lams_group`
  MODIFY `group_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `lams_grouping`
--
ALTER TABLE `lams_grouping`
  MODIFY `grouping_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `lams_kumalive`
--
ALTER TABLE `lams_kumalive`
  MODIFY `kumalive_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_kumalive_log`
--
ALTER TABLE `lams_kumalive_log`
  MODIFY `log_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_kumalive_poll`
--
ALTER TABLE `lams_kumalive_poll`
  MODIFY `poll_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_kumalive_poll_answer`
--
ALTER TABLE `lams_kumalive_poll_answer`
  MODIFY `answer_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_kumalive_rubric`
--
ALTER TABLE `lams_kumalive_rubric`
  MODIFY `rubric_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_kumalive_score`
--
ALTER TABLE `lams_kumalive_score`
  MODIFY `score_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_learner_interaction_event`
--
ALTER TABLE `lams_learner_interaction_event`
  MODIFY `uid` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_learner_progress`
--
ALTER TABLE `lams_learner_progress`
  MODIFY `learner_progress_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lams_learner_progress_archive`
--
ALTER TABLE `lams_learner_progress_archive`
  MODIFY `learner_progress_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_learning_activity`
--
ALTER TABLE `lams_learning_activity`
  MODIFY `activity_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `lams_learning_command`
--
ALTER TABLE `lams_learning_command`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_learning_design`
--
ALTER TABLE `lams_learning_design`
  MODIFY `learning_design_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `lams_learning_design_annotation`
--
ALTER TABLE `lams_learning_design_annotation`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_learning_library`
--
ALTER TABLE `lams_learning_library`
  MODIFY `learning_library_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `lams_learning_transition`
--
ALTER TABLE `lams_learning_transition`
  MODIFY `transition_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `lams_lesson`
--
ALTER TABLE `lams_lesson`
  MODIFY `lesson_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `lams_log_event`
--
ALTER TABLE `lams_log_event`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `lams_notebook_entry`
--
ALTER TABLE `lams_notebook_entry`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_notification_event`
--
ALTER TABLE `lams_notification_event`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_notification_subscription`
--
ALTER TABLE `lams_notification_subscription`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_organisation`
--
ALTER TABLE `lams_organisation`
  MODIFY `organisation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `lams_organisation_group`
--
ALTER TABLE `lams_organisation_group`
  MODIFY `group_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_organisation_grouping`
--
ALTER TABLE `lams_organisation_grouping`
  MODIFY `grouping_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_outcome`
--
ALTER TABLE `lams_outcome`
  MODIFY `outcome_id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_outcome_mapping`
--
ALTER TABLE `lams_outcome_mapping`
  MODIFY `mapping_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_outcome_result`
--
ALTER TABLE `lams_outcome_result`
  MODIFY `result_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_outcome_scale`
--
ALTER TABLE `lams_outcome_scale`
  MODIFY `scale_id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_outcome_scale_item`
--
ALTER TABLE `lams_outcome_scale_item`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lams_password_request`
--
ALTER TABLE `lams_password_request`
  MODIFY `request_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_planner_nodes`
--
ALTER TABLE `lams_planner_nodes`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_planner_node_role`
--
ALTER TABLE `lams_planner_node_role`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_policy`
--
ALTER TABLE `lams_policy`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_policy_consent`
--
ALTER TABLE `lams_policy_consent`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_presence_chat_msgs`
--
ALTER TABLE `lams_presence_chat_msgs`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_qb_collection`
--
ALTER TABLE `lams_qb_collection`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lams_qb_option`
--
ALTER TABLE `lams_qb_option`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `lams_qb_question`
--
ALTER TABLE `lams_qb_question`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lams_qb_question_unit`
--
ALTER TABLE `lams_qb_question_unit`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_qb_tool_answer`
--
ALTER TABLE `lams_qb_tool_answer`
  MODIFY `answer_uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lams_qb_tool_question`
--
ALTER TABLE `lams_qb_tool_question`
  MODIFY `tool_question_uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `lams_rating`
--
ALTER TABLE `lams_rating`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_rating_comment`
--
ALTER TABLE `lams_rating_comment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_rating_criteria`
--
ALTER TABLE `lams_rating_criteria`
  MODIFY `rating_criteria_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_rating_rubrics_columns`
--
ALTER TABLE `lams_rating_rubrics_columns`
  MODIFY `uid` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_signup_organisation`
--
ALTER TABLE `lams_signup_organisation`
  MODIFY `signup_organisation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lams_supported_locale`
--
ALTER TABLE `lams_supported_locale`
  MODIFY `locale_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lams_system_tool`
--
ALTER TABLE `lams_system_tool`
  MODIFY `system_tool_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lams_theme`
--
ALTER TABLE `lams_theme`
  MODIFY `theme_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lams_timezone`
--
ALTER TABLE `lams_timezone`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lams_tool`
--
ALTER TABLE `lams_tool`
  MODIFY `tool_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lams_tool_content`
--
ALTER TABLE `lams_tool_content`
  MODIFY `tool_content_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `lams_tool_session`
--
ALTER TABLE `lams_tool_session`
  MODIFY `tool_session_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `lams_user`
--
ALTER TABLE `lams_user`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `lams_user_organisation`
--
ALTER TABLE `lams_user_organisation`
  MODIFY `user_organisation_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `lams_user_organisation_collapsed`
--
ALTER TABLE `lams_user_organisation_collapsed`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_user_organisation_role`
--
ALTER TABLE `lams_user_organisation_role`
  MODIFY `user_organisation_role_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `lams_user_password_history`
--
ALTER TABLE `lams_user_password_history`
  MODIFY `uid` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lams_workspace_folder`
--
ALTER TABLE `lams_workspace_folder`
  MODIFY `workspace_folder_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `lams_workspace_folder_content`
--
ALTER TABLE `lams_workspace_folder_content`
  MODIFY `folder_content_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laasse10_assessment`
--
ALTER TABLE `tl_laasse10_assessment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tl_laasse10_assessment_overall_feedback`
--
ALTER TABLE `tl_laasse10_assessment_overall_feedback`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laasse10_assessment_question`
--
ALTER TABLE `tl_laasse10_assessment_question`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_laasse10_assessment_result`
--
ALTER TABLE `tl_laasse10_assessment_result`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laasse10_option_answer`
--
ALTER TABLE `tl_laasse10_option_answer`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laasse10_question_reference`
--
ALTER TABLE `tl_laasse10_question_reference`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_laasse10_question_result`
--
ALTER TABLE `tl_laasse10_question_result`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laasse10_session`
--
ALTER TABLE `tl_laasse10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laasse10_user`
--
ALTER TABLE `tl_laasse10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lachat11_chat`
--
ALTER TABLE `tl_lachat11_chat`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lachat11_message`
--
ALTER TABLE `tl_lachat11_message`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lachat11_session`
--
ALTER TABLE `tl_lachat11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lachat11_user`
--
ALTER TABLE `tl_lachat11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_ladaco10_answers`
--
ALTER TABLE `tl_ladaco10_answers`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_ladaco10_answer_options`
--
ALTER TABLE `tl_ladaco10_answer_options`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_ladaco10_contents`
--
ALTER TABLE `tl_ladaco10_contents`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_ladaco10_questions`
--
ALTER TABLE `tl_ladaco10_questions`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_ladaco10_sessions`
--
ALTER TABLE `tl_ladaco10_sessions`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_ladaco10_users`
--
ALTER TABLE `tl_ladaco10_users`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lafrum11_attachment`
--
ALTER TABLE `tl_lafrum11_attachment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tl_lafrum11_configuration`
--
ALTER TABLE `tl_lafrum11_configuration`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lafrum11_forum`
--
ALTER TABLE `tl_lafrum11_forum`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tl_lafrum11_forum_user`
--
ALTER TABLE `tl_lafrum11_forum_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_lafrum11_message`
--
ALTER TABLE `tl_lafrum11_message`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tl_lafrum11_message_rating`
--
ALTER TABLE `tl_lafrum11_message_rating`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lafrum11_message_seq`
--
ALTER TABLE `tl_lafrum11_message_seq`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tl_lafrum11_report`
--
ALTER TABLE `tl_lafrum11_report`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lafrum11_timestamp`
--
ALTER TABLE `tl_lafrum11_timestamp`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tl_lafrum11_tool_session`
--
ALTER TABLE `tl_lafrum11_tool_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tl_laimag10_configuration`
--
ALTER TABLE `tl_laimag10_configuration`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_laimag10_imagegallery`
--
ALTER TABLE `tl_laimag10_imagegallery`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laimag10_imagegallery_item`
--
ALTER TABLE `tl_laimag10_imagegallery_item`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimag10_image_vote`
--
ALTER TABLE `tl_laimag10_image_vote`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimag10_item_log`
--
ALTER TABLE `tl_laimag10_item_log`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimag10_session`
--
ALTER TABLE `tl_laimag10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimag10_user`
--
ALTER TABLE `tl_laimag10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimsc11_commoncartridge`
--
ALTER TABLE `tl_laimsc11_commoncartridge`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laimsc11_commoncartridge_item`
--
ALTER TABLE `tl_laimsc11_commoncartridge_item`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laimsc11_configuration`
--
ALTER TABLE `tl_laimsc11_configuration`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_laimsc11_item_instruction`
--
ALTER TABLE `tl_laimsc11_item_instruction`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimsc11_item_log`
--
ALTER TABLE `tl_laimsc11_item_log`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimsc11_session`
--
ALTER TABLE `tl_laimsc11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laimsc11_user`
--
ALTER TABLE `tl_laimsc11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lalead11_leaderselection`
--
ALTER TABLE `tl_lalead11_leaderselection`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_lalead11_session`
--
ALTER TABLE `tl_lalead11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lalead11_user`
--
ALTER TABLE `tl_lalead11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lamc11_content`
--
ALTER TABLE `tl_lamc11_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tl_lamc11_que_content`
--
ALTER TABLE `tl_lamc11_que_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tl_lamc11_que_usr`
--
ALTER TABLE `tl_lamc11_que_usr`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_lamc11_session`
--
ALTER TABLE `tl_lamc11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_lamc11_usr_attempt`
--
ALTER TABLE `tl_lamc11_usr_attempt`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tl_lamind10_mindmap`
--
ALTER TABLE `tl_lamind10_mindmap`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_lamind10_node`
--
ALTER TABLE `tl_lamind10_node`
  MODIFY `node_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tl_lamind10_request`
--
ALTER TABLE `tl_lamind10_request`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lamind10_session`
--
ALTER TABLE `tl_lamind10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lamind10_user`
--
ALTER TABLE `tl_lamind10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lanb11_content`
--
ALTER TABLE `tl_lanb11_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tl_lanb11_session`
--
ALTER TABLE `tl_lanb11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tl_lanb11_user`
--
ALTER TABLE `tl_lanb11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tl_lantbk11_notebook`
--
ALTER TABLE `tl_lantbk11_notebook`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_lantbk11_session`
--
ALTER TABLE `tl_lantbk11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lantbk11_user`
--
ALTER TABLE `tl_lantbk11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lapixl10_configuration`
--
ALTER TABLE `tl_lapixl10_configuration`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lapixl10_pixlr`
--
ALTER TABLE `tl_lapixl10_pixlr`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tl_lapixl10_session`
--
ALTER TABLE `tl_lapixl10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_lapixl10_user`
--
ALTER TABLE `tl_lapixl10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_laprev11_peerreview`
--
ALTER TABLE `tl_laprev11_peerreview`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_laprev11_session`
--
ALTER TABLE `tl_laprev11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laprev11_user`
--
ALTER TABLE `tl_laprev11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_laqa11_content`
--
ALTER TABLE `tl_laqa11_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tl_laqa11_que_content`
--
ALTER TABLE `tl_laqa11_que_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tl_laqa11_que_usr`
--
ALTER TABLE `tl_laqa11_que_usr`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laqa11_session`
--
ALTER TABLE `tl_laqa11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_laqa11_usr_resp`
--
ALTER TABLE `tl_laqa11_usr_resp`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_larsrc11_item_instruction`
--
ALTER TABLE `tl_larsrc11_item_instruction`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_larsrc11_item_log`
--
ALTER TABLE `tl_larsrc11_item_log`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_larsrc11_resource`
--
ALTER TABLE `tl_larsrc11_resource`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_larsrc11_resource_item`
--
ALTER TABLE `tl_larsrc11_resource_item`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_larsrc11_session`
--
ALTER TABLE `tl_larsrc11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_larsrc11_user`
--
ALTER TABLE `tl_larsrc11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasbmt11_report`
--
ALTER TABLE `tl_lasbmt11_report`
  MODIFY `report_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasbmt11_submission_details`
--
ALTER TABLE `tl_lasbmt11_submission_details`
  MODIFY `submission_id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasbmt11_user`
--
ALTER TABLE `tl_lasbmt11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lascrb11_heading`
--
ALTER TABLE `tl_lascrb11_heading`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_lascrb11_report_entry`
--
ALTER TABLE `tl_lascrb11_report_entry`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lascrb11_scribe`
--
ALTER TABLE `tl_lascrb11_scribe`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_lascrb11_session`
--
ALTER TABLE `tl_lascrb11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lascrb11_user`
--
ALTER TABLE `tl_lascrb11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lascrt11_answer_log`
--
ALTER TABLE `tl_lascrt11_answer_log`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lascrt11_burning_question`
--
ALTER TABLE `tl_lascrt11_burning_question`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lascrt11_burning_que_like`
--
ALTER TABLE `tl_lascrt11_burning_que_like`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lascrt11_configuration`
--
ALTER TABLE `tl_lascrt11_configuration`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lascrt11_scratchie`
--
ALTER TABLE `tl_lascrt11_scratchie`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_lascrt11_scratchie_item`
--
ALTER TABLE `tl_lascrt11_scratchie_item`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tl_lascrt11_session`
--
ALTER TABLE `tl_lascrt11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lascrt11_user`
--
ALTER TABLE `tl_lascrt11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasprd10_session`
--
ALTER TABLE `tl_lasprd10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasprd10_spreadsheet`
--
ALTER TABLE `tl_lasprd10_spreadsheet`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_lasprd10_spreadsheet_mark`
--
ALTER TABLE `tl_lasprd10_spreadsheet_mark`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasprd10_user`
--
ALTER TABLE `tl_lasprd10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lasprd10_user_modified_spreadsheet`
--
ALTER TABLE `tl_lasprd10_user_modified_spreadsheet`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lasurv11_answer`
--
ALTER TABLE `tl_lasurv11_answer`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lasurv11_option`
--
ALTER TABLE `tl_lasurv11_option`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tl_lasurv11_question`
--
ALTER TABLE `tl_lasurv11_question`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tl_lasurv11_session`
--
ALTER TABLE `tl_lasurv11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lasurv11_survey`
--
ALTER TABLE `tl_lasurv11_survey`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tl_lasurv11_user`
--
ALTER TABLE `tl_lasurv11_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_latask10_condition`
--
ALTER TABLE `tl_latask10_condition`
  MODIFY `condition_uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_latask10_item_attachment`
--
ALTER TABLE `tl_latask10_item_attachment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_latask10_item_comment`
--
ALTER TABLE `tl_latask10_item_comment`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_latask10_item_log`
--
ALTER TABLE `tl_latask10_item_log`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_latask10_session`
--
ALTER TABLE `tl_latask10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_latask10_tasklist`
--
ALTER TABLE `tl_latask10_tasklist`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_latask10_tasklist_item`
--
ALTER TABLE `tl_latask10_tasklist_item`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_latask10_user`
--
ALTER TABLE `tl_latask10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lavote11_content`
--
ALTER TABLE `tl_lavote11_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lavote11_nomination_content`
--
ALTER TABLE `tl_lavote11_nomination_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_lavote11_session`
--
ALTER TABLE `tl_lavote11_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lavote11_usr`
--
ALTER TABLE `tl_lavote11_usr`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lavote11_usr_attempt`
--
ALTER TABLE `tl_lavote11_usr_attempt`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lawiki10_session`
--
ALTER TABLE `tl_lawiki10_session`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lawiki10_user`
--
ALTER TABLE `tl_lawiki10_user`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_lawiki10_wiki`
--
ALTER TABLE `tl_lawiki10_wiki`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lawiki10_wiki_page`
--
ALTER TABLE `tl_lawiki10_wiki_page`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_lawiki10_wiki_page_content`
--
ALTER TABLE `tl_lawiki10_wiki_page_content`
  MODIFY `uid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lams_activity_evaluation`
--
ALTER TABLE `lams_activity_evaluation`
  ADD CONSTRAINT `FK_lams_activity_evaluation_1` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_authentication_method`
--
ALTER TABLE `lams_authentication_method`
  ADD CONSTRAINT `FK_lams_authorization_method_1` FOREIGN KEY (`authentication_method_type_id`) REFERENCES `lams_auth_method_type` (`authentication_method_type_id`);

--
-- Constraints for table `lams_branch_activity_entry`
--
ALTER TABLE `lams_branch_activity_entry`
  ADD CONSTRAINT `FK_lams_branch_activity_entry_4` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`),
  ADD CONSTRAINT `FK_lams_branch_map_branch` FOREIGN KEY (`branch_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_branch_map_sequence` FOREIGN KEY (`sequence_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_group_activity_1` FOREIGN KEY (`group_id`) REFERENCES `lams_group` (`group_id`);

--
-- Constraints for table `lams_comment`
--
ALTER TABLE `lams_comment`
  ADD CONSTRAINT `FK_comment_create` FOREIGN KEY (`create_by`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_comment_modify` FOREIGN KEY (`update_by`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_comment_parent` FOREIGN KEY (`parent_uid`) REFERENCES `lams_comment` (`uid`),
  ADD CONSTRAINT `FK_comment_root` FOREIGN KEY (`root_comment_uid`) REFERENCES `lams_comment` (`uid`),
  ADD CONSTRAINT `FK_comment_session` FOREIGN KEY (`session_id`) REFERENCES `lams_comment_session` (`uid`),
  ADD CONSTRAINT `FK_comment_thread` FOREIGN KEY (`thread_comment_uid`) REFERENCES `lams_comment` (`uid`);

--
-- Constraints for table `lams_comment_likes`
--
ALTER TABLE `lams_comment_likes`
  ADD CONSTRAINT `FK_commentlike_comment` FOREIGN KEY (`comment_uid`) REFERENCES `lams_comment` (`uid`),
  ADD CONSTRAINT `FK_commentlike_user` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`);

--
-- Constraints for table `lams_competence`
--
ALTER TABLE `lams_competence`
  ADD CONSTRAINT `LearningDesignCompetenceMap` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_competence_mapping`
--
ALTER TABLE `lams_competence_mapping`
  ADD CONSTRAINT `FK_lams_competence_mapping_1` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_competence_mapping_2` FOREIGN KEY (`competence_id`) REFERENCES `lams_competence` (`competence_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_cr_node`
--
ALTER TABLE `lams_cr_node`
  ADD CONSTRAINT `FK_lams_cr_node_1` FOREIGN KEY (`workspace_id`) REFERENCES `lams_cr_workspace` (`workspace_id`);

--
-- Constraints for table `lams_cr_node_version`
--
ALTER TABLE `lams_cr_node_version`
  ADD CONSTRAINT `FK_lams_cr_node_version_2` FOREIGN KEY (`node_id`) REFERENCES `lams_cr_node` (`node_id`);

--
-- Constraints for table `lams_cr_node_version_property`
--
ALTER TABLE `lams_cr_node_version_property`
  ADD CONSTRAINT `FK_lams_cr_node_version_property_1` FOREIGN KEY (`nv_id`) REFERENCES `lams_cr_node_version` (`nv_id`);

--
-- Constraints for table `lams_cr_workspace_credential`
--
ALTER TABLE `lams_cr_workspace_credential`
  ADD CONSTRAINT `FK_lams_cr_workspace_credential_1` FOREIGN KEY (`workspace_id`) REFERENCES `lams_cr_workspace` (`workspace_id`),
  ADD CONSTRAINT `FK_lams_cr_workspace_credential_2` FOREIGN KEY (`credential_id`) REFERENCES `lams_cr_credential` (`credential_id`);

--
-- Constraints for table `lams_data_flow`
--
ALTER TABLE `lams_data_flow`
  ADD CONSTRAINT `FK_lams_learning_transition_1` FOREIGN KEY (`transition_id`) REFERENCES `lams_learning_transition` (`transition_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_discussion_sentiment`
--
ALTER TABLE `lams_discussion_sentiment`
  ADD CONSTRAINT `FK_lams_discussion_sentiment_1` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_discussion_sentiment_2` FOREIGN KEY (`tool_question_uid`) REFERENCES `lams_qb_tool_question` (`tool_question_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_discussion_sentiment_3` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_email_notification_archive`
--
ALTER TABLE `lams_email_notification_archive`
  ADD CONSTRAINT `FK_lams_email_notification_archive_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_email_notification_archive_2` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_email_notification_recipient_archive`
--
ALTER TABLE `lams_email_notification_recipient_archive`
  ADD CONSTRAINT `FK_lams_email_notification_recipient_archive_1` FOREIGN KEY (`email_notification_uid`) REFERENCES `lams_email_notification_archive` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_email_notification_recipient_archive_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_ext_course_class_map`
--
ALTER TABLE `lams_ext_course_class_map`
  ADD CONSTRAINT `lams_ext_course_class_map_fk` FOREIGN KEY (`classid`) REFERENCES `lams_organisation` (`organisation_id`),
  ADD CONSTRAINT `lams_ext_course_class_map_fk1` FOREIGN KEY (`ext_server_org_map_id`) REFERENCES `lams_ext_server_org_map` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_ext_server_lesson_map`
--
ALTER TABLE `lams_ext_server_lesson_map`
  ADD CONSTRAINT `lams_ext_server_lesson_map_fk1` FOREIGN KEY (`ext_server_org_map_id`) REFERENCES `lams_ext_server_org_map` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lams_ext_server_lesson_map_fk2` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_ext_server_org_map`
--
ALTER TABLE `lams_ext_server_org_map`
  ADD CONSTRAINT `FK_lams_ext_server_type` FOREIGN KEY (`server_type_id`) REFERENCES `lams_ext_server_type` (`server_type_id`);

--
-- Constraints for table `lams_ext_server_tool_map`
--
ALTER TABLE `lams_ext_server_tool_map`
  ADD CONSTRAINT `lams_ext_server_tool_map_fk1` FOREIGN KEY (`ext_server_org_map_id`) REFERENCES `lams_ext_server_org_map` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lams_ext_server_tool_map_fk2` FOREIGN KEY (`tool_id`) REFERENCES `lams_tool` (`tool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_ext_user_userid_map`
--
ALTER TABLE `lams_ext_user_userid_map`
  ADD CONSTRAINT `lams_ext_user_userid_map_fk` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lams_ext_user_userid_map_fk1` FOREIGN KEY (`ext_server_org_map_id`) REFERENCES `lams_ext_server_org_map` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_favorite_organisation`
--
ALTER TABLE `lams_favorite_organisation`
  ADD CONSTRAINT `FK_lams_favorite_organisation_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`),
  ADD CONSTRAINT `FK_lams_favorite_organisation_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`);

--
-- Constraints for table `lams_gate_allowed_learners`
--
ALTER TABLE `lams_gate_allowed_learners`
  ADD CONSTRAINT `FK_TABLE_32_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_TABLE_32_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`);

--
-- Constraints for table `lams_gradebook_user_activity`
--
ALTER TABLE `lams_gradebook_user_activity`
  ADD CONSTRAINT `FK_lams_gradebook_user_activity_1` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_gradebook_user_activity_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_gradebook_user_activity_archive`
--
ALTER TABLE `lams_gradebook_user_activity_archive`
  ADD CONSTRAINT `FK_lams_gradebook_user_activity_archive_1` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_gradebook_user_activity_archive_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_gradebook_user_lesson`
--
ALTER TABLE `lams_gradebook_user_lesson`
  ADD CONSTRAINT `FK_lams_gradebook_user_lesson_1` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`),
  ADD CONSTRAINT `FK_lams_gradebook_user_lesson_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_gradebook_user_lesson_archive`
--
ALTER TABLE `lams_gradebook_user_lesson_archive`
  ADD CONSTRAINT `FK_lams_gradebook_user_lesson_archive_1` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_gradebook_user_lesson_archive_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_group`
--
ALTER TABLE `lams_group`
  ADD CONSTRAINT `FK_lams_learning_group_1` FOREIGN KEY (`grouping_id`) REFERENCES `lams_grouping` (`grouping_id`);

--
-- Constraints for table `lams_grouping`
--
ALTER TABLE `lams_grouping`
  ADD CONSTRAINT `FK_lams_learning_grouping_1` FOREIGN KEY (`grouping_type_id`) REFERENCES `lams_grouping_type` (`grouping_type_id`);

--
-- Constraints for table `lams_input_activity`
--
ALTER TABLE `lams_input_activity`
  ADD CONSTRAINT `FK_lams_input_activity_1` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_input_activity_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`);

--
-- Constraints for table `lams_kumalive`
--
ALTER TABLE `lams_kumalive`
  ADD CONSTRAINT `FK_lams_kumalive_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_kumalive_2` FOREIGN KEY (`created_by`) REFERENCES `lams_user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_log`
--
ALTER TABLE `lams_kumalive_log`
  ADD CONSTRAINT `FK_lams_kumalive_log_1` FOREIGN KEY (`kumalive_id`) REFERENCES `lams_kumalive` (`kumalive_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_kumalive_log_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_poll`
--
ALTER TABLE `lams_kumalive_poll`
  ADD CONSTRAINT `FK_lams_kumalive_poll_1` FOREIGN KEY (`kumalive_id`) REFERENCES `lams_kumalive` (`kumalive_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_poll_answer`
--
ALTER TABLE `lams_kumalive_poll_answer`
  ADD CONSTRAINT `FK_lams_kumalive_poll_answer_1` FOREIGN KEY (`poll_id`) REFERENCES `lams_kumalive_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_poll_vote`
--
ALTER TABLE `lams_kumalive_poll_vote`
  ADD CONSTRAINT `FK_lams_kumalive_poll_vote_1` FOREIGN KEY (`answer_id`) REFERENCES `lams_kumalive_poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_kumalive_poll_vote_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_rubric`
--
ALTER TABLE `lams_kumalive_rubric`
  ADD CONSTRAINT `FK_lams_kumalive_rubric_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_kumalive_rubric_2` FOREIGN KEY (`kumalive_id`) REFERENCES `lams_kumalive` (`kumalive_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_kumalive_score`
--
ALTER TABLE `lams_kumalive_score`
  ADD CONSTRAINT `FK_lams_kumalive_score_1` FOREIGN KEY (`rubric_id`) REFERENCES `lams_kumalive_rubric` (`rubric_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_kumalive_score_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_learner_interaction_event`
--
ALTER TABLE `lams_learner_interaction_event`
  ADD CONSTRAINT `lams_learner_interaction_event_FK1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lams_learner_interaction_event_FK2` FOREIGN KEY (`qb_tool_question_uid`) REFERENCES `lams_qb_tool_question` (`tool_question_uid`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `lams_learner_progress`
--
ALTER TABLE `lams_learner_progress`
  ADD CONSTRAINT `FK_lams_learner_progress_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_learner_progress_2` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`),
  ADD CONSTRAINT `FK_lams_learner_progress_3` FOREIGN KEY (`current_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_learner_progress_4` FOREIGN KEY (`next_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_learner_progress_5` FOREIGN KEY (`previous_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`);

--
-- Constraints for table `lams_learner_progress_archive`
--
ALTER TABLE `lams_learner_progress_archive`
  ADD CONSTRAINT `FK_lams_learner_progress_archive_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learner_progress_archive_2` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learner_progress_archive_3` FOREIGN KEY (`current_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lams_learning_activity`
--
ALTER TABLE `lams_learning_activity`
  ADD CONSTRAINT `FK_lams_learning_activity_10` FOREIGN KEY (`gate_activity_level_id`) REFERENCES `lams_gate_activity_level` (`gate_activity_level_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_11` FOREIGN KEY (`library_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_13` FOREIGN KEY (`grouping_support_type_id`) REFERENCES `lams_grouping_support_type` (`grouping_support_type_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_14` FOREIGN KEY (`system_tool_id`) REFERENCES `lams_system_tool` (`system_tool_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_15` FOREIGN KEY (`transition_to_id`) REFERENCES `lams_learning_transition` (`transition_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learning_activity_16` FOREIGN KEY (`transition_from_id`) REFERENCES `lams_learning_transition` (`transition_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learning_activity_17` FOREIGN KEY (`gate_open_user`) REFERENCES `lams_user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learning_activity_6` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learning_activity_7` FOREIGN KEY (`learning_library_id`) REFERENCES `lams_learning_library` (`learning_library_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_8` FOREIGN KEY (`tool_id`) REFERENCES `lams_tool` (`tool_id`),
  ADD CONSTRAINT `FK_lams_learning_activity_9` FOREIGN KEY (`create_grouping_id`) REFERENCES `lams_grouping` (`grouping_id`),
  ADD CONSTRAINT `FK_learning_activity_2` FOREIGN KEY (`parent_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_learning_activity_3` FOREIGN KEY (`learning_activity_type_id`) REFERENCES `lams_learning_activity_type` (`learning_activity_type_id`),
  ADD CONSTRAINT `FK_learning_activity_6` FOREIGN KEY (`grouping_id`) REFERENCES `lams_grouping` (`grouping_id`);

--
-- Constraints for table `lams_learning_design`
--
ALTER TABLE `lams_learning_design`
  ADD CONSTRAINT `FK_lams_learning_design_3` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_learning_design_4` FOREIGN KEY (`workspace_folder_id`) REFERENCES `lams_workspace_folder` (`workspace_folder_id`),
  ADD CONSTRAINT `FK_lams_learning_design_5` FOREIGN KEY (`license_id`) REFERENCES `lams_license` (`license_id`),
  ADD CONSTRAINT `FK_lams_learning_design_6` FOREIGN KEY (`copy_type_id`) REFERENCES `lams_copy_type` (`copy_type_id`),
  ADD CONSTRAINT `FK_lams_learning_design_7` FOREIGN KEY (`edit_override_user_id`) REFERENCES `lams_user` (`user_id`);

--
-- Constraints for table `lams_learning_design_access`
--
ALTER TABLE `lams_learning_design_access`
  ADD CONSTRAINT `FK_lams_learning_design_access_1` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_learning_design_access_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_learning_design_annotation`
--
ALTER TABLE `lams_learning_design_annotation`
  ADD CONSTRAINT `FK_lams_learning_design_annotation_1` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_learning_transition`
--
ALTER TABLE `lams_learning_transition`
  ADD CONSTRAINT `FK_learning_transition_2` FOREIGN KEY (`to_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `FK_learning_transition_3` FOREIGN KEY (`from_activity_id`) REFERENCES `lams_learning_activity` (`activity_id`),
  ADD CONSTRAINT `lddefn_transition_ibfk_1` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_lesson`
--
ALTER TABLE `lams_lesson`
  ADD CONSTRAINT `FK_lams_lesson_1_1` FOREIGN KEY (`learning_design_id`) REFERENCES `lams_learning_design` (`learning_design_id`),
  ADD CONSTRAINT `FK_lams_lesson_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_lesson_3` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`),
  ADD CONSTRAINT `FK_lams_lesson_4` FOREIGN KEY (`lesson_state_id`) REFERENCES `lams_lesson_state` (`lesson_state_id`),
  ADD CONSTRAINT `FK_lams_lesson_5` FOREIGN KEY (`class_grouping_id`) REFERENCES `lams_grouping` (`grouping_id`);

--
-- Constraints for table `lams_lesson_dependency`
--
ALTER TABLE `lams_lesson_dependency`
  ADD CONSTRAINT `FK_lams_lesson_dependency_1` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_lesson_dependency_2` FOREIGN KEY (`preceding_lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_log_event`
--
ALTER TABLE `lams_log_event`
  ADD CONSTRAINT `FK_event_log_event_type` FOREIGN KEY (`log_event_type_id`) REFERENCES `lams_log_event_type` (`log_event_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `lams_notification_subscription`
--
ALTER TABLE `lams_notification_subscription`
  ADD CONSTRAINT `EventSubscriptionsToEvent` FOREIGN KEY (`event_uid`) REFERENCES `lams_notification_event` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `EventSubscriptionsToUsers` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_organisation`
--
ALTER TABLE `lams_organisation`
  ADD CONSTRAINT `FK_lams_organisation_1` FOREIGN KEY (`organisation_type_id`) REFERENCES `lams_organisation_type` (`organisation_type_id`),
  ADD CONSTRAINT `FK_lams_organisation_3` FOREIGN KEY (`parent_organisation_id`) REFERENCES `lams_organisation` (`organisation_id`),
  ADD CONSTRAINT `FK_lams_organisation_4` FOREIGN KEY (`organisation_state_id`) REFERENCES `lams_organisation_state` (`organisation_state_id`);

--
-- Constraints for table `lams_organisation_group`
--
ALTER TABLE `lams_organisation_group`
  ADD CONSTRAINT `FK_lams_organisation_group_1` FOREIGN KEY (`grouping_id`) REFERENCES `lams_organisation_grouping` (`grouping_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_organisation_grouping`
--
ALTER TABLE `lams_organisation_grouping`
  ADD CONSTRAINT `FK_lams_organisation_grouping_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_outcome`
--
ALTER TABLE `lams_outcome`
  ADD CONSTRAINT `FK_lams_outcome_2` FOREIGN KEY (`scale_id`) REFERENCES `lams_outcome_scale` (`scale_id`) ON UPDATE CASCADE;

--
-- Constraints for table `lams_outcome_mapping`
--
ALTER TABLE `lams_outcome_mapping`
  ADD CONSTRAINT `FK_lams_outcome_mapping_1` FOREIGN KEY (`outcome_id`) REFERENCES `lams_outcome` (`outcome_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_outcome_mapping_2` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_outcome_mapping_3` FOREIGN KEY (`tool_content_id`) REFERENCES `lams_tool_content` (`tool_content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_outcome_result`
--
ALTER TABLE `lams_outcome_result`
  ADD CONSTRAINT `FK_lams_outcome_result_1` FOREIGN KEY (`mapping_id`) REFERENCES `lams_outcome_mapping` (`mapping_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_outcome_result_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_outcome_result_3` FOREIGN KEY (`create_by`) REFERENCES `lams_user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lams_outcome_scale_item`
--
ALTER TABLE `lams_outcome_scale_item`
  ADD CONSTRAINT `FK_lams_outcome_scale_item_1` FOREIGN KEY (`scale_id`) REFERENCES `lams_outcome_scale` (`scale_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_planner_nodes`
--
ALTER TABLE `lams_planner_nodes`
  ADD CONSTRAINT `FK_lams_planner_node_parent` FOREIGN KEY (`parent_uid`) REFERENCES `lams_planner_nodes` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_planner_node_user` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `lams_planner_node_role`
--
ALTER TABLE `lams_planner_node_role`
  ADD CONSTRAINT `FK_planner_node_role_node` FOREIGN KEY (`node_uid`) REFERENCES `lams_planner_nodes` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_planner_node_role_role` FOREIGN KEY (`role_id`) REFERENCES `lams_role` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_planner_node_role_user` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `lams_policy`
--
ALTER TABLE `lams_policy`
  ADD CONSTRAINT `FK_lams_lesson_1` FOREIGN KEY (`created_by`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_policy_2` FOREIGN KEY (`policy_state_id`) REFERENCES `lams_policy_state` (`policy_state_id`),
  ADD CONSTRAINT `FK_lams_policy_3` FOREIGN KEY (`policy_type_id`) REFERENCES `lams_policy_type` (`policy_type_id`);

--
-- Constraints for table `lams_policy_consent`
--
ALTER TABLE `lams_policy_consent`
  ADD CONSTRAINT `FK_lams_consent_1_1` FOREIGN KEY (`policy_uid`) REFERENCES `lams_policy` (`uid`),
  ADD CONSTRAINT `FK_lams_consent_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`);

--
-- Constraints for table `lams_presence_chat_msgs`
--
ALTER TABLE `lams_presence_chat_msgs`
  ADD CONSTRAINT `FK_lams_presence_chat_msgs_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_presence_user`
--
ALTER TABLE `lams_presence_user`
  ADD CONSTRAINT `FK_lams_presence_user_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_progress_attempted`
--
ALTER TABLE `lams_progress_attempted`
  ADD CONSTRAINT `FK_lams_progress_current_1` FOREIGN KEY (`learner_progress_id`) REFERENCES `lams_learner_progress` (`learner_progress_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_progress_current_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_progress_attempted_archive`
--
ALTER TABLE `lams_progress_attempted_archive`
  ADD CONSTRAINT `FK_lams_progress_current_archive_1` FOREIGN KEY (`learner_progress_id`) REFERENCES `lams_learner_progress_archive` (`learner_progress_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_progress_current_archive_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_progress_completed`
--
ALTER TABLE `lams_progress_completed`
  ADD CONSTRAINT `FK_lams_progress_completed_1` FOREIGN KEY (`learner_progress_id`) REFERENCES `lams_learner_progress` (`learner_progress_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_progress_completed_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_progress_completed_archive`
--
ALTER TABLE `lams_progress_completed_archive`
  ADD CONSTRAINT `FK_lams_progress_completed_archive_1` FOREIGN KEY (`learner_progress_id`) REFERENCES `lams_learner_progress_archive` (`learner_progress_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_progress_completed_archive_2` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_collection`
--
ALTER TABLE `lams_qb_collection`
  ADD CONSTRAINT `FK_lams_qb_collection_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_collection_organisation`
--
ALTER TABLE `lams_qb_collection_organisation`
  ADD CONSTRAINT `FK_lams_qb_collection_share_1` FOREIGN KEY (`collection_uid`) REFERENCES `lams_qb_collection` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_qb_collection_share_2` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_collection_question`
--
ALTER TABLE `lams_qb_collection_question`
  ADD CONSTRAINT `FK_lams_qb_collection_question_1` FOREIGN KEY (`collection_uid`) REFERENCES `lams_qb_collection` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_qb_collection_question_2` FOREIGN KEY (`qb_question_id`) REFERENCES `lams_qb_question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_option`
--
ALTER TABLE `lams_qb_option`
  ADD CONSTRAINT `FK_lams_qb_option_1` FOREIGN KEY (`qb_question_uid`) REFERENCES `lams_qb_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_question_unit`
--
ALTER TABLE `lams_qb_question_unit`
  ADD CONSTRAINT `FK_lams_qb_question_unit_1` FOREIGN KEY (`qb_question_uid`) REFERENCES `lams_qb_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_tool_answer`
--
ALTER TABLE `lams_qb_tool_answer`
  ADD CONSTRAINT `FK_lams_qb_tool_answer_1` FOREIGN KEY (`tool_question_uid`) REFERENCES `lams_qb_tool_question` (`tool_question_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_qb_tool_answer_2` FOREIGN KEY (`qb_option_uid`) REFERENCES `lams_qb_option` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_qb_tool_question`
--
ALTER TABLE `lams_qb_tool_question`
  ADD CONSTRAINT `FK_lams_qb_tool_question_1` FOREIGN KEY (`qb_question_uid`) REFERENCES `lams_qb_question` (`uid`) ON UPDATE CASCADE;

--
-- Constraints for table `lams_qtz_BLOB_TRIGGERS`
--
ALTER TABLE `lams_qtz_BLOB_TRIGGERS`
  ADD CONSTRAINT `lams_qtz_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `lams_qtz_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- Constraints for table `lams_qtz_CRON_TRIGGERS`
--
ALTER TABLE `lams_qtz_CRON_TRIGGERS`
  ADD CONSTRAINT `lams_qtz_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `lams_qtz_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- Constraints for table `lams_qtz_SIMPLE_TRIGGERS`
--
ALTER TABLE `lams_qtz_SIMPLE_TRIGGERS`
  ADD CONSTRAINT `lams_qtz_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `lams_qtz_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- Constraints for table `lams_qtz_SIMPROP_TRIGGERS`
--
ALTER TABLE `lams_qtz_SIMPROP_TRIGGERS`
  ADD CONSTRAINT `lams_qtz_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `lams_qtz_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- Constraints for table `lams_qtz_TRIGGERS`
--
ALTER TABLE `lams_qtz_TRIGGERS`
  ADD CONSTRAINT `lams_qtz_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) REFERENCES `lams_qtz_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`);

--
-- Constraints for table `lams_rating`
--
ALTER TABLE `lams_rating`
  ADD CONSTRAINT `FK_lams_rating_1` FOREIGN KEY (`rating_criteria_id`) REFERENCES `lams_rating_criteria` (`rating_criteria_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_rating_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_rating_comment`
--
ALTER TABLE `lams_rating_comment`
  ADD CONSTRAINT `FK_lams_rating_comment_1` FOREIGN KEY (`rating_criteria_id`) REFERENCES `lams_rating_criteria` (`rating_criteria_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_rating_comment_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_rating_criteria`
--
ALTER TABLE `lams_rating_criteria`
  ADD CONSTRAINT `FK_lams_rating_criteria_1` FOREIGN KEY (`rating_criteria_type_id`) REFERENCES `lams_rating_criteria_type` (`rating_criteria_type_id`),
  ADD CONSTRAINT `FK_lams_rating_criteria_2` FOREIGN KEY (`tool_content_id`) REFERENCES `lams_tool_content` (`tool_content_id`),
  ADD CONSTRAINT `FK_lams_rating_criteria_3` FOREIGN KEY (`lesson_id`) REFERENCES `lams_lesson` (`lesson_id`);

--
-- Constraints for table `lams_rating_rubrics_columns`
--
ALTER TABLE `lams_rating_rubrics_columns`
  ADD CONSTRAINT `FK_lams_rating_rubrics_columns_1` FOREIGN KEY (`rating_criteria_id`) REFERENCES `lams_rating_criteria` (`rating_criteria_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_system_tool`
--
ALTER TABLE `lams_system_tool`
  ADD CONSTRAINT `FK_lams_system_tool` FOREIGN KEY (`learning_activity_type_id`) REFERENCES `lams_learning_activity_type` (`learning_activity_type_id`);

--
-- Constraints for table `lams_text_search_condition`
--
ALTER TABLE `lams_text_search_condition`
  ADD CONSTRAINT `TextSearchConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_tool`
--
ALTER TABLE `lams_tool`
  ADD CONSTRAINT `FK_lams_tool_1` FOREIGN KEY (`learning_library_id`) REFERENCES `lams_learning_library` (`learning_library_id`),
  ADD CONSTRAINT `FK_lams_tool_2` FOREIGN KEY (`grouping_support_type_id`) REFERENCES `lams_grouping_support_type` (`grouping_support_type_id`);

--
-- Constraints for table `lams_tool_content`
--
ALTER TABLE `lams_tool_content`
  ADD CONSTRAINT `FK_lams_tool_content_1` FOREIGN KEY (`tool_id`) REFERENCES `lams_tool` (`tool_id`);

--
-- Constraints for table `lams_tool_session`
--
ALTER TABLE `lams_tool_session`
  ADD CONSTRAINT `FK_lams_tool_session_1` FOREIGN KEY (`group_id`) REFERENCES `lams_group` (`group_id`),
  ADD CONSTRAINT `FK_lams_tool_session_4` FOREIGN KEY (`tool_session_state_id`) REFERENCES `lams_tool_session_state` (`tool_session_state_id`),
  ADD CONSTRAINT `FK_lams_tool_session_5` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_tool_session_7` FOREIGN KEY (`tool_session_type_id`) REFERENCES `lams_tool_session_type` (`tool_session_type_id`),
  ADD CONSTRAINT `FK_lams_tool_session_8` FOREIGN KEY (`activity_id`) REFERENCES `lams_learning_activity` (`activity_id`);

--
-- Constraints for table `lams_user`
--
ALTER TABLE `lams_user`
  ADD CONSTRAINT `FK_lams_user_1` FOREIGN KEY (`authentication_method_id`) REFERENCES `lams_authentication_method` (`authentication_method_id`),
  ADD CONSTRAINT `FK_lams_user_2` FOREIGN KEY (`workspace_folder_id`) REFERENCES `lams_workspace_folder` (`workspace_folder_id`),
  ADD CONSTRAINT `FK_lams_user_5` FOREIGN KEY (`theme_id`) REFERENCES `lams_theme` (`theme_id`),
  ADD CONSTRAINT `FK_lams_user_6` FOREIGN KEY (`locale_id`) REFERENCES `lams_supported_locale` (`locale_id`),
  ADD CONSTRAINT `FK_lams_user_7` FOREIGN KEY (`last_visited_organisation_id`) REFERENCES `lams_organisation` (`organisation_id`);

--
-- Constraints for table `lams_user_group`
--
ALTER TABLE `lams_user_group`
  ADD CONSTRAINT `FK_lams_user_group_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`),
  ADD CONSTRAINT `FK_lams_user_group_2` FOREIGN KEY (`group_id`) REFERENCES `lams_group` (`group_id`);

--
-- Constraints for table `lams_user_organisation`
--
ALTER TABLE `lams_user_organisation`
  ADD CONSTRAINT `FK_lams_user_organisation_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_lams_user_organisation_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `lams_user_organisation_collapsed`
--
ALTER TABLE `lams_user_organisation_collapsed`
  ADD CONSTRAINT `FK_lams_user_organisation_collapsed_1` FOREIGN KEY (`organisation_id`) REFERENCES `lams_organisation` (`organisation_id`),
  ADD CONSTRAINT `FK_lams_user_organisation_collapsed_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`);

--
-- Constraints for table `lams_user_organisation_group`
--
ALTER TABLE `lams_user_organisation_group`
  ADD CONSTRAINT `FK_lams_user_organisation_group_1` FOREIGN KEY (`group_id`) REFERENCES `lams_organisation_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lams_user_organisation_group_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_user_organisation_role`
--
ALTER TABLE `lams_user_organisation_role`
  ADD CONSTRAINT `FK_lams_user_organisation_role_2` FOREIGN KEY (`role_id`) REFERENCES `lams_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_lams_user_organisation_role_3` FOREIGN KEY (`user_organisation_id`) REFERENCES `lams_user_organisation` (`user_organisation_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `lams_user_password_history`
--
ALTER TABLE `lams_user_password_history`
  ADD CONSTRAINT `FK_lams_user_password_history_1` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lams_workspace_folder`
--
ALTER TABLE `lams_workspace_folder`
  ADD CONSTRAINT `FK_lams_workspace_folder_2` FOREIGN KEY (`parent_folder_id`) REFERENCES `lams_workspace_folder` (`workspace_folder_id`),
  ADD CONSTRAINT `FK_lams_workspace_folder_4` FOREIGN KEY (`lams_workspace_folder_type_id`) REFERENCES `lams_workspace_folder_type` (`lams_workspace_folder_type_id`);

--
-- Constraints for table `lams_workspace_folder_content`
--
ALTER TABLE `lams_workspace_folder_content`
  ADD CONSTRAINT `FK_lams_workspace_folder_content_1` FOREIGN KEY (`workspace_folder_id`) REFERENCES `lams_workspace_folder` (`workspace_folder_id`);

--
-- Constraints for table `tl_laasse10_assessment`
--
ALTER TABLE `tl_laasse10_assessment`
  ADD CONSTRAINT `FK_NEW_1720029621_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laasse10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_assessment_overall_feedback`
--
ALTER TABLE `tl_laasse10_assessment_overall_feedback`
  ADD CONSTRAINT `FK_tl_laasse10_assessment_overall_feedback_1` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_assessment_question`
--
ALTER TABLE `tl_laasse10_assessment_question`
  ADD CONSTRAINT `FK_NEW_1720029621_F52D1F9330E79035` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_assessment_result`
--
ALTER TABLE `tl_laasse10_assessment_result`
  ADD CONSTRAINT `FK_tl_laasse10_assessment_result_1` FOREIGN KEY (`session_id`) REFERENCES `tl_laasse10_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_assessment_result_2` FOREIGN KEY (`user_uid`) REFERENCES `tl_laasse10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_assessment_result_3` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_option_answer`
--
ALTER TABLE `tl_laasse10_option_answer`
  ADD CONSTRAINT `FK_tl_laasse10_option_answer_1` FOREIGN KEY (`question_result_uid`) REFERENCES `tl_laasse10_question_result` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_option_answer_2` FOREIGN KEY (`question_option_uid`) REFERENCES `lams_qb_option` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_question_reference`
--
ALTER TABLE `tl_laasse10_question_reference`
  ADD CONSTRAINT `FK_tl_laasse10_question_reference_1` FOREIGN KEY (`question_uid`) REFERENCES `tl_laasse10_assessment_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_question_reference_2` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_question_result`
--
ALTER TABLE `tl_laasse10_question_result`
  ADD CONSTRAINT `FK_tl_laasse10_question_result_1` FOREIGN KEY (`result_uid`) REFERENCES `tl_laasse10_assessment_result` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_question_result_2` FOREIGN KEY (`uid`) REFERENCES `lams_qb_tool_answer` (`answer_uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_session`
--
ALTER TABLE `tl_laasse10_session`
  ADD CONSTRAINT `FK_NEW_1720029621_24AA78C530E79035` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tl_laasse10_session` FOREIGN KEY (`group_leader_uid`) REFERENCES `tl_laasse10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_time_limit`
--
ALTER TABLE `tl_laasse10_time_limit`
  ADD CONSTRAINT `FK_tl_laasse10_time_limit_1` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laasse10_time_limit_2` FOREIGN KEY (`user_id`) REFERENCES `lams_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laasse10_user`
--
ALTER TABLE `tl_laasse10_user`
  ADD CONSTRAINT `FK_NEW_1720029621_30113BFC309ED320` FOREIGN KEY (`assessment_uid`) REFERENCES `tl_laasse10_assessment` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1720029621_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_laasse10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lachat11_conditions`
--
ALTER TABLE `tl_lachat11_conditions`
  ADD CONSTRAINT `ChatConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ChatConditionToChat` FOREIGN KEY (`content_uid`) REFERENCES `tl_lachat11_chat` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lachat11_message`
--
ALTER TABLE `tl_lachat11_message`
  ADD CONSTRAINT `FKCC08C1DC2AF61E05` FOREIGN KEY (`to_user_uid`) REFERENCES `tl_lachat11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKCC08C1DC9C8469FC` FOREIGN KEY (`chat_session_uid`) REFERENCES `tl_lachat11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKCC08C1DCCF3BF9B6` FOREIGN KEY (`from_user_uid`) REFERENCES `tl_lachat11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lachat11_session`
--
ALTER TABLE `tl_lachat11_session`
  ADD CONSTRAINT `FK96E446B1A3926E3` FOREIGN KEY (`chat_uid`) REFERENCES `tl_lachat11_chat` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lachat11_user`
--
ALTER TABLE `tl_lachat11_user`
  ADD CONSTRAINT `FK4EB82169C8469FC` FOREIGN KEY (`chat_session_uid`) REFERENCES `tl_lachat11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_answers`
--
ALTER TABLE `tl_ladaco10_answers`
  ADD CONSTRAINT `AnswerToQuestion` FOREIGN KEY (`question_uid`) REFERENCES `tl_ladaco10_questions` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AnswerToUser` FOREIGN KEY (`user_uid`) REFERENCES `tl_ladaco10_users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_answer_options`
--
ALTER TABLE `tl_ladaco10_answer_options`
  ADD CONSTRAINT `tl_ladaco10_answer_options_ibfk_1` FOREIGN KEY (`question_uid`) REFERENCES `tl_ladaco10_questions` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_contents`
--
ALTER TABLE `tl_ladaco10_contents`
  ADD CONSTRAINT `DacoToUser` FOREIGN KEY (`create_by`) REFERENCES `tl_ladaco10_users` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_questions`
--
ALTER TABLE `tl_ladaco10_questions`
  ADD CONSTRAINT `QuestionToDaco` FOREIGN KEY (`content_uid`) REFERENCES `tl_ladaco10_contents` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `QuestionToUser` FOREIGN KEY (`create_by`) REFERENCES `tl_ladaco10_users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tl_ladaco10_questions_ibfk_1` FOREIGN KEY (`session_uid`) REFERENCES `tl_ladaco10_sessions` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_sessions`
--
ALTER TABLE `tl_ladaco10_sessions`
  ADD CONSTRAINT `SessionToDaco` FOREIGN KEY (`content_uid`) REFERENCES `tl_ladaco10_contents` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_ladaco10_users`
--
ALTER TABLE `tl_ladaco10_users`
  ADD CONSTRAINT `UserToDaco` FOREIGN KEY (`content_uid`) REFERENCES `tl_ladaco10_contents` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserToSession` FOREIGN KEY (`session_uid`) REFERENCES `tl_ladaco10_sessions` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_attachment`
--
ALTER TABLE `tl_lafrum11_attachment`
  ADD CONSTRAINT `FK389AD9A2131CE31E` FOREIGN KEY (`forum_uid`) REFERENCES `tl_lafrum11_forum` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK389AD9A2FE939F2A` FOREIGN KEY (`message_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_conditions`
--
ALTER TABLE `tl_lafrum11_conditions`
  ADD CONSTRAINT `ForumConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ForumConditionToForum` FOREIGN KEY (`content_uid`) REFERENCES `tl_lafrum11_forum` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_condition_topics`
--
ALTER TABLE `tl_lafrum11_condition_topics`
  ADD CONSTRAINT `ForumConditionQuestionToForumCondition` FOREIGN KEY (`condition_id`) REFERENCES `tl_lafrum11_conditions` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ForumConditionQuestionToForumQuestion` FOREIGN KEY (`topic_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_forum`
--
ALTER TABLE `tl_lafrum11_forum`
  ADD CONSTRAINT `FK87917942E42F4351` FOREIGN KEY (`create_by`) REFERENCES `tl_lafrum11_forum_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_forum_user`
--
ALTER TABLE `tl_lafrum11_forum_user`
  ADD CONSTRAINT `FK7B83A4A85F0116B6` FOREIGN KEY (`session_id`) REFERENCES `tl_lafrum11_tool_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_message`
--
ALTER TABLE `tl_lafrum11_message`
  ADD CONSTRAINT `FK4A6067E8131CE31E` FOREIGN KEY (`forum_uid`) REFERENCES `tl_lafrum11_forum` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK4A6067E824089E4D` FOREIGN KEY (`parent_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK4A6067E8647A7264` FOREIGN KEY (`modified_by`) REFERENCES `tl_lafrum11_forum_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK4A6067E89357B45B` FOREIGN KEY (`forum_session_uid`) REFERENCES `tl_lafrum11_tool_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK4A6067E897F0DB46` FOREIGN KEY (`report_id`) REFERENCES `tl_lafrum11_report` (`uid`),
  ADD CONSTRAINT `FK4A6067E8E42F4351` FOREIGN KEY (`create_by`) REFERENCES `tl_lafrum11_forum_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_message_rating`
--
ALTER TABLE `tl_lafrum11_message_rating`
  ADD CONSTRAINT `FK_tl_lafrum11_message_rating_1` FOREIGN KEY (`user_id`) REFERENCES `tl_lafrum11_forum_user` (`uid`),
  ADD CONSTRAINT `FK_tl_lafrum11_message_rating_2` FOREIGN KEY (`message_id`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_message_seq`
--
ALTER TABLE `tl_lafrum11_message_seq`
  ADD CONSTRAINT `FKD2C71F8845213B4D` FOREIGN KEY (`root_message_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKD2C71F88FE939F2A` FOREIGN KEY (`message_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkfrum11mseqthread` FOREIGN KEY (`thread_message_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_timestamp`
--
ALTER TABLE `tl_lafrum11_timestamp`
  ADD CONSTRAINT `ForumUserFK` FOREIGN KEY (`forum_user_uid`) REFERENCES `tl_lafrum11_forum_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MessageFK` FOREIGN KEY (`message_uid`) REFERENCES `tl_lafrum11_message` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lafrum11_tool_session`
--
ALTER TABLE `tl_lafrum11_tool_session`
  ADD CONSTRAINT `FK5A04D7AE131CE31E` FOREIGN KEY (`forum_uid`) REFERENCES `tl_lafrum11_forum` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_imagegallery`
--
ALTER TABLE `tl_laimag10_imagegallery`
  ADD CONSTRAINT `FK_NEW_1821149711_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laimag10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_imagegallery_item`
--
ALTER TABLE `tl_laimag10_imagegallery_item`
  ADD CONSTRAINT `FK_NEW_1821149711_F52D1F9330E79035` FOREIGN KEY (`imageGallery_uid`) REFERENCES `tl_laimag10_imagegallery` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1821149711_F52D1F93758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laimag10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_image_vote`
--
ALTER TABLE `tl_laimag10_image_vote`
  ADD CONSTRAINT `FK_tl_laimag10_image_vote_2` FOREIGN KEY (`create_by`) REFERENCES `tl_laimag10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laimag10_image_vote_3` FOREIGN KEY (`imageGallery_item_uid`) REFERENCES `tl_laimag10_imagegallery_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_item_log`
--
ALTER TABLE `tl_laimag10_item_log`
  ADD CONSTRAINT `FK_NEW_1821149711_693580A438BF8DFE` FOREIGN KEY (`imageGallery_item_uid`) REFERENCES `tl_laimag10_imagegallery_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1821149711_693580A441F9365D` FOREIGN KEY (`user_uid`) REFERENCES `tl_laimag10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_session`
--
ALTER TABLE `tl_laimag10_session`
  ADD CONSTRAINT `FK_NEW_1821149711_24AA78C530E79035` FOREIGN KEY (`imageGallery_uid`) REFERENCES `tl_laimag10_imagegallery` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimag10_user`
--
ALTER TABLE `tl_laimag10_user`
  ADD CONSTRAINT `FK_NEW_1821149711_30113BFC309ED320` FOREIGN KEY (`imageGallery_uid`) REFERENCES `tl_laimag10_imagegallery` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1821149711_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_laimag10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_commoncartridge`
--
ALTER TABLE `tl_laimsc11_commoncartridge`
  ADD CONSTRAINT `FK_NEW_1279208528_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laimsc11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_commoncartridge_item`
--
ALTER TABLE `tl_laimsc11_commoncartridge_item`
  ADD CONSTRAINT `FK_NEW_1279208528_F52D1F9330E79035` FOREIGN KEY (`commonCartridge_uid`) REFERENCES `tl_laimsc11_commoncartridge` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1279208528_F52D1F93758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laimsc11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_item_instruction`
--
ALTER TABLE `tl_laimsc11_item_instruction`
  ADD CONSTRAINT `FK_NEW_1279208528_A5665013980570ED` FOREIGN KEY (`item_uid`) REFERENCES `tl_laimsc11_commoncartridge_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_item_log`
--
ALTER TABLE `tl_laimsc11_item_log`
  ADD CONSTRAINT `FK_NEW_1279208528_693580A438BF8DFE` FOREIGN KEY (`commonCartridge_item_uid`) REFERENCES `tl_laimsc11_commoncartridge_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1279208528_693580A441F9365D` FOREIGN KEY (`user_uid`) REFERENCES `tl_laimsc11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_session`
--
ALTER TABLE `tl_laimsc11_session`
  ADD CONSTRAINT `FK_NEW_1279208528_24AA78C530E79035` FOREIGN KEY (`commonCartridge_uid`) REFERENCES `tl_laimsc11_commoncartridge` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laimsc11_user`
--
ALTER TABLE `tl_laimsc11_user`
  ADD CONSTRAINT `FK_NEW_1279208528_30113BFC309ED320` FOREIGN KEY (`commonCartridge_uid`) REFERENCES `tl_laimsc11_commoncartridge` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1279208528_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_laimsc11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lalead11_session`
--
ALTER TABLE `tl_lalead11_session`
  ADD CONSTRAINT `FK_lalead11_1` FOREIGN KEY (`group_leader_uid`) REFERENCES `tl_lalead11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1316293302_B7C198E2FC940906` FOREIGN KEY (`leaderselection_uid`) REFERENCES `tl_lalead11_leaderselection` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lalead11_user`
--
ALTER TABLE `tl_lalead11_user`
  ADD CONSTRAINT `FK_NEW_1316293302_CB8A58FFA3B0FADF` FOREIGN KEY (`leaderselection_session_uid`) REFERENCES `tl_lalead11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamc11_que_content`
--
ALTER TABLE `tl_lamc11_que_content`
  ADD CONSTRAINT `FK_tl_lamc11_que_content_1` FOREIGN KEY (`mc_content_id`) REFERENCES `tl_lamc11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamc11_que_usr`
--
ALTER TABLE `tl_lamc11_que_usr`
  ADD CONSTRAINT `FK_tl_lamc11_que_usr_1` FOREIGN KEY (`mc_session_id`) REFERENCES `tl_lamc11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamc11_session`
--
ALTER TABLE `tl_lamc11_session`
  ADD CONSTRAINT `FK_lamc11_session1` FOREIGN KEY (`mc_group_leader_uid`) REFERENCES `tl_lamc11_que_usr` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_lamc_session_1` FOREIGN KEY (`mc_content_id`) REFERENCES `tl_lamc11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamc11_usr_attempt`
--
ALTER TABLE `tl_lamc11_usr_attempt`
  ADD CONSTRAINT `FK_tl_lamc11_usr_attempt_1` FOREIGN KEY (`uid`) REFERENCES `lams_qb_tool_answer` (`answer_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_lamc11_usr_attempt_4` FOREIGN KEY (`que_usr_id`) REFERENCES `tl_lamc11_que_usr` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamind10_node`
--
ALTER TABLE `tl_lamind10_node`
  ADD CONSTRAINT `MindmapNode_Mindmap_FK` FOREIGN KEY (`mindmap_id`) REFERENCES `tl_lamind10_mindmap` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MindmapNode_Parent_FK` FOREIGN KEY (`parent_id`) REFERENCES `tl_lamind10_node` (`node_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MindmapNode_User_FK` FOREIGN KEY (`user_id`) REFERENCES `tl_lamind10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamind10_request`
--
ALTER TABLE `tl_lamind10_request`
  ADD CONSTRAINT `tl_lamind10_request_fk` FOREIGN KEY (`mindmap_id`) REFERENCES `tl_lamind10_mindmap` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tl_lamind10_request_fk1` FOREIGN KEY (`user_id`) REFERENCES `tl_lamind10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamind10_session`
--
ALTER TABLE `tl_lamind10_session`
  ADD CONSTRAINT `FK_NEW_972920762_B7C198E2FC940906` FOREIGN KEY (`mindmap_uid`) REFERENCES `tl_lamind10_mindmap` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lamind10_user`
--
ALTER TABLE `tl_lamind10_user`
  ADD CONSTRAINT `FK_NEW_972920762_CB8A58FFA3B0FADF` FOREIGN KEY (`mindmap_session_uid`) REFERENCES `tl_lamind10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lanb11_session`
--
ALTER TABLE `tl_lanb11_session`
  ADD CONSTRAINT `FK_tl_lanb11_session_1` FOREIGN KEY (`nb_content_uid`) REFERENCES `tl_lanb11_content` (`uid`);

--
-- Constraints for table `tl_lanb11_user`
--
ALTER TABLE `tl_lanb11_user`
  ADD CONSTRAINT `FK_tl_lanb11_user_1` FOREIGN KEY (`nb_session_uid`) REFERENCES `tl_lanb11_session` (`uid`);

--
-- Constraints for table `tl_lantbk11_conditions`
--
ALTER TABLE `tl_lantbk11_conditions`
  ADD CONSTRAINT `NotebookConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `NotebookConditionToNotebook` FOREIGN KEY (`content_uid`) REFERENCES `tl_lantbk11_notebook` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lantbk11_session`
--
ALTER TABLE `tl_lantbk11_session`
  ADD CONSTRAINT `FKB7C198E2FC940906` FOREIGN KEY (`notebook_uid`) REFERENCES `tl_lantbk11_notebook` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lantbk11_user`
--
ALTER TABLE `tl_lantbk11_user`
  ADD CONSTRAINT `FKCB8A58FFA3B0FADF` FOREIGN KEY (`notebook_session_uid`) REFERENCES `tl_lantbk11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lapixl10_session`
--
ALTER TABLE `tl_lapixl10_session`
  ADD CONSTRAINT `FKE5C05E7FCB8ADA74` FOREIGN KEY (`pixlr_uid`) REFERENCES `tl_lapixl10_pixlr` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lapixl10_user`
--
ALTER TABLE `tl_lapixl10_user`
  ADD CONSTRAINT `FK9A39C08236E23005` FOREIGN KEY (`pixlr_session_uid`) REFERENCES `tl_lapixl10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laprev11_peerreview`
--
ALTER TABLE `tl_laprev11_peerreview`
  ADD CONSTRAINT `FK_NEW_1661738138_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_laprev11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_laprev11_session`
--
ALTER TABLE `tl_laprev11_session`
  ADD CONSTRAINT `FK_NEW_1661738138_24AA78C530E79035` FOREIGN KEY (`peerreview_uid`) REFERENCES `tl_laprev11_peerreview` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laprev11_user`
--
ALTER TABLE `tl_laprev11_user`
  ADD CONSTRAINT `FK_NEW_1661738138_30113BFC309ED320` FOREIGN KEY (`peerreview_uid`) REFERENCES `tl_laprev11_peerreview` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_1661738138_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_laprev11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_conditions`
--
ALTER TABLE `tl_laqa11_conditions`
  ADD CONSTRAINT `QaConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `QaConditionToQaContent` FOREIGN KEY (`content_uid`) REFERENCES `tl_laqa11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_condition_questions`
--
ALTER TABLE `tl_laqa11_condition_questions`
  ADD CONSTRAINT `QaConditionQuestionToQaCondition` FOREIGN KEY (`condition_id`) REFERENCES `tl_laqa11_conditions` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `QaConditionQuestionToQaQuestion` FOREIGN KEY (`question_uid`) REFERENCES `tl_laqa11_que_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_que_content`
--
ALTER TABLE `tl_laqa11_que_content`
  ADD CONSTRAINT `FK_tl_laqa11_que_content_1` FOREIGN KEY (`qa_content_id`) REFERENCES `tl_laqa11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_que_usr`
--
ALTER TABLE `tl_laqa11_que_usr`
  ADD CONSTRAINT `FK_tl_laqa11_que_usr_1` FOREIGN KEY (`qa_session_id`) REFERENCES `tl_laqa11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_session`
--
ALTER TABLE `tl_laqa11_session`
  ADD CONSTRAINT `FK_laqa11_session1` FOREIGN KEY (`qa_group_leader_uid`) REFERENCES `tl_laqa11_que_usr` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laqa11_session_1` FOREIGN KEY (`qa_content_id`) REFERENCES `tl_laqa11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_laqa11_usr_resp`
--
ALTER TABLE `tl_laqa11_usr_resp`
  ADD CONSTRAINT `FK_tl_laqa11_usr_resp_1` FOREIGN KEY (`uid`) REFERENCES `lams_qb_tool_answer` (`answer_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_laqa11_usr_resp_3` FOREIGN KEY (`que_usr_id`) REFERENCES `tl_laqa11_que_usr` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_item_instruction`
--
ALTER TABLE `tl_larsrc11_item_instruction`
  ADD CONSTRAINT `FKA5665013980570ED` FOREIGN KEY (`item_uid`) REFERENCES `tl_larsrc11_resource_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_item_log`
--
ALTER TABLE `tl_larsrc11_item_log`
  ADD CONSTRAINT `FK693580A438BF8DFE` FOREIGN KEY (`resource_item_uid`) REFERENCES `tl_larsrc11_resource_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK693580A441F9365D` FOREIGN KEY (`user_uid`) REFERENCES `tl_larsrc11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_resource`
--
ALTER TABLE `tl_larsrc11_resource`
  ADD CONSTRAINT `FK89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_larsrc11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_resource_item`
--
ALTER TABLE `tl_larsrc11_resource_item`
  ADD CONSTRAINT `FKF52D1F9330E79035` FOREIGN KEY (`resource_uid`) REFERENCES `tl_larsrc11_resource` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKF52D1F93758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_larsrc11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKF52D1F93EC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_larsrc11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_session`
--
ALTER TABLE `tl_larsrc11_session`
  ADD CONSTRAINT `FK24AA78C530E79035` FOREIGN KEY (`resource_uid`) REFERENCES `tl_larsrc11_resource` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_larsrc11_user`
--
ALTER TABLE `tl_larsrc11_user`
  ADD CONSTRAINT `FK30113BFC309ED320` FOREIGN KEY (`resource_uid`) REFERENCES `tl_larsrc11_resource` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_larsrc11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasbmt11_content`
--
ALTER TABLE `tl_lasbmt11_content`
  ADD CONSTRAINT `FKAEF329AC172BC670` FOREIGN KEY (`created_by`) REFERENCES `tl_lasbmt11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasbmt11_report`
--
ALTER TABLE `tl_lasbmt11_report`
  ADD CONSTRAINT `tl_lasbmt11_report_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `tl_lasbmt11_submission_details` (`submission_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasbmt11_session`
--
ALTER TABLE `tl_lasbmt11_session`
  ADD CONSTRAINT `FKEC8C77C9785A173A` FOREIGN KEY (`content_id`) REFERENCES `tl_lasbmt11_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tl_lasbmt11_session` FOREIGN KEY (`group_leader_uid`) REFERENCES `tl_lasbmt11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasbmt11_submission_details`
--
ALTER TABLE `tl_lasbmt11_submission_details`
  ADD CONSTRAINT `FK1411A53C93C861A` FOREIGN KEY (`session_id`) REFERENCES `tl_lasbmt11_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK1411A53CFFD5A38B` FOREIGN KEY (`learner_id`) REFERENCES `tl_lasbmt11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasbmt11_user`
--
ALTER TABLE `tl_lasbmt11_user`
  ADD CONSTRAINT `tl_lasbmt11_user_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `tl_lasbmt11_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrb11_heading`
--
ALTER TABLE `tl_lascrb11_heading`
  ADD CONSTRAINT `FK428A22FFB3FA1495` FOREIGN KEY (`scribe_uid`) REFERENCES `tl_lascrb11_scribe` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrb11_report_entry`
--
ALTER TABLE `tl_lascrb11_report_entry`
  ADD CONSTRAINT `FK5439FACA1C266FAE` FOREIGN KEY (`scribe_session_uid`) REFERENCES `tl_lascrb11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK5439FACAEA50D086` FOREIGN KEY (`scribe_heading_uid`) REFERENCES `tl_lascrb11_heading` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrb11_session`
--
ALTER TABLE `tl_lascrb11_session`
  ADD CONSTRAINT `FK89732793B3FA1495` FOREIGN KEY (`scribe_uid`) REFERENCES `tl_lascrb11_scribe` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK89732793E46919FF` FOREIGN KEY (`appointed_scribe_uid`) REFERENCES `tl_lascrb11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrb11_user`
--
ALTER TABLE `tl_lascrb11_user`
  ADD CONSTRAINT `FK187DAFEE1C266FAE` FOREIGN KEY (`scribe_session_uid`) REFERENCES `tl_lascrb11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_answer_log`
--
ALTER TABLE `tl_lascrt11_answer_log`
  ADD CONSTRAINT `FK_tl_lascrt11_answer_log_1` FOREIGN KEY (`uid`) REFERENCES `lams_qb_tool_answer` (`answer_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sessionIdIndex` FOREIGN KEY (`session_id`) REFERENCES `tl_lascrt11_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_burning_question`
--
ALTER TABLE `tl_lascrt11_burning_question`
  ADD CONSTRAINT `FK_NEW_610529188_693580A438BF8DF2` FOREIGN KEY (`scratchie_item_uid`) REFERENCES `tl_lascrt11_scratchie_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sessionIdIndex2` FOREIGN KEY (`session_id`) REFERENCES `tl_lascrt11_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_burning_que_like`
--
ALTER TABLE `tl_lascrt11_burning_que_like`
  ADD CONSTRAINT `FK_burning_que_uid` FOREIGN KEY (`burning_question_uid`) REFERENCES `tl_lascrt11_burning_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_scratchie_item`
--
ALTER TABLE `tl_lascrt11_scratchie_item`
  ADD CONSTRAINT `FK_NEW_610529188_F52D1F9330E79035` FOREIGN KEY (`scratchie_uid`) REFERENCES `tl_lascrt11_scratchie` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_session`
--
ALTER TABLE `tl_lascrt11_session`
  ADD CONSTRAINT `FK_lalead11_session1` FOREIGN KEY (`group_leader_uid`) REFERENCES `tl_lascrt11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_610529188_24AA78C530E79035` FOREIGN KEY (`scratchie_uid`) REFERENCES `tl_lascrt11_scratchie` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lascrt11_user`
--
ALTER TABLE `tl_lascrt11_user`
  ADD CONSTRAINT `FK_NEW_610529188_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_lascrt11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasprd10_session`
--
ALTER TABLE `tl_lasprd10_session`
  ADD CONSTRAINT `FK_NEW_2065267438_24AA78C530E79035` FOREIGN KEY (`spreadsheet_uid`) REFERENCES `tl_lasprd10_spreadsheet` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasprd10_spreadsheet`
--
ALTER TABLE `tl_lasprd10_spreadsheet`
  ADD CONSTRAINT `FK_NEW_2065267438_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_lasprd10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasprd10_user`
--
ALTER TABLE `tl_lasprd10_user`
  ADD CONSTRAINT `FK_NEW_2065267438_30113BFC309ED320` FOREIGN KEY (`spreadsheet_uid`) REFERENCES `tl_lasprd10_spreadsheet` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_2065267438_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_lasprd10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_2065267438_693580A441F9365D` FOREIGN KEY (`user_modified_spreadsheet_uid`) REFERENCES `tl_lasprd10_user_modified_spreadsheet` (`uid`) ON DELETE SET NULL;

--
-- Constraints for table `tl_lasprd10_user_modified_spreadsheet`
--
ALTER TABLE `tl_lasprd10_user_modified_spreadsheet`
  ADD CONSTRAINT `FK_tl_lasprd10_user_modified_spreadsheet_1` FOREIGN KEY (`mark_id`) REFERENCES `tl_lasprd10_spreadsheet_mark` (`uid`) ON DELETE SET NULL;

--
-- Constraints for table `tl_lasurv11_answer`
--
ALTER TABLE `tl_lasurv11_answer`
  ADD CONSTRAINT `FK6DAAFE3B25F3BB77` FOREIGN KEY (`question_uid`) REFERENCES `tl_lasurv11_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK6DAAFE3BB1423DC1` FOREIGN KEY (`user_uid`) REFERENCES `tl_lasurv11_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_conditions`
--
ALTER TABLE `tl_lasurv11_conditions`
  ADD CONSTRAINT `SurveyConditionInheritance` FOREIGN KEY (`condition_id`) REFERENCES `lams_branch_condition` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SurveyConditionToSurvey` FOREIGN KEY (`content_uid`) REFERENCES `tl_lasurv11_survey` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_condition_questions`
--
ALTER TABLE `tl_lasurv11_condition_questions`
  ADD CONSTRAINT `SurveyConditionQuestionToSurveyCondition` FOREIGN KEY (`condition_id`) REFERENCES `tl_lasurv11_conditions` (`condition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SurveyConditionQuestionToSurveyQuestion` FOREIGN KEY (`question_uid`) REFERENCES `tl_lasurv11_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_option`
--
ALTER TABLE `tl_lasurv11_option`
  ADD CONSTRAINT `FK85AB46F26966134F` FOREIGN KEY (`question_uid`) REFERENCES `tl_lasurv11_question` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_question`
--
ALTER TABLE `tl_lasurv11_question`
  ADD CONSTRAINT `FK872D4F23D14146E5` FOREIGN KEY (`survey_uid`) REFERENCES `tl_lasurv11_survey` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK872D4F23E4C99A5F` FOREIGN KEY (`create_by`) REFERENCES `tl_lasurv11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_session`
--
ALTER TABLE `tl_lasurv11_session`
  ADD CONSTRAINT `FKF08793B9D14146E5` FOREIGN KEY (`survey_uid`) REFERENCES `tl_lasurv11_survey` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_survey`
--
ALTER TABLE `tl_lasurv11_survey`
  ADD CONSTRAINT `FK8CC465D7E4C99A5F` FOREIGN KEY (`create_by`) REFERENCES `tl_lasurv11_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lasurv11_user`
--
ALTER TABLE `tl_lasurv11_user`
  ADD CONSTRAINT `FK633F25884F803F63` FOREIGN KEY (`session_uid`) REFERENCES `tl_lasurv11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK633F2588D14146E5` FOREIGN KEY (`survey_uid`) REFERENCES `tl_lasurv11_survey` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_condition`
--
ALTER TABLE `tl_latask10_condition`
  ADD CONSTRAINT `FK_tl_latask10_condition_1` FOREIGN KEY (`taskList_uid`) REFERENCES `tl_latask10_tasklist` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_condition_tl_item`
--
ALTER TABLE `tl_latask10_condition_tl_item`
  ADD CONSTRAINT `FK_tl_latask10_tasklist_item_condition_1` FOREIGN KEY (`condition_uid`) REFERENCES `tl_latask10_condition` (`condition_uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_latask10_tasklist_item_condition_2` FOREIGN KEY (`uid`) REFERENCES `tl_latask10_tasklist_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_item_attachment`
--
ALTER TABLE `tl_latask10_item_attachment`
  ADD CONSTRAINT `FK_tl_latask10_item_attachment_1` FOREIGN KEY (`taskList_item_uid`) REFERENCES `tl_latask10_tasklist_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_latask10_item_attachment_2` FOREIGN KEY (`create_by`) REFERENCES `tl_latask10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_item_comment`
--
ALTER TABLE `tl_latask10_item_comment`
  ADD CONSTRAINT `FK_tl_latask10_item_comment_2` FOREIGN KEY (`create_by`) REFERENCES `tl_latask10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_latask10_item_comment_3` FOREIGN KEY (`taskList_item_uid`) REFERENCES `tl_latask10_tasklist_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_item_log`
--
ALTER TABLE `tl_latask10_item_log`
  ADD CONSTRAINT `FK_NEW_174079138_693580A438BF8DFE` FOREIGN KEY (`taskList_item_uid`) REFERENCES `tl_latask10_tasklist_item` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_174079138_693580A441F9365D` FOREIGN KEY (`user_uid`) REFERENCES `tl_latask10_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_session`
--
ALTER TABLE `tl_latask10_session`
  ADD CONSTRAINT `FK_NEW_174079138_24AA78C530E79035` FOREIGN KEY (`taskList_uid`) REFERENCES `tl_latask10_tasklist` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_tasklist`
--
ALTER TABLE `tl_latask10_tasklist`
  ADD CONSTRAINT `FK_NEW_174079138_89093BF758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_latask10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_tasklist_item`
--
ALTER TABLE `tl_latask10_tasklist_item`
  ADD CONSTRAINT `FK_NEW_174079138_F52D1F9330E79035` FOREIGN KEY (`taskList_uid`) REFERENCES `tl_latask10_tasklist` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_174079138_F52D1F93758092FB` FOREIGN KEY (`create_by`) REFERENCES `tl_latask10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_174079138_F52D1F93EC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_latask10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_latask10_user`
--
ALTER TABLE `tl_latask10_user`
  ADD CONSTRAINT `FK_NEW_174079138_30113BFC309ED320` FOREIGN KEY (`taskList_uid`) REFERENCES `tl_latask10_tasklist` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NEW_174079138_30113BFCEC0D3147` FOREIGN KEY (`session_uid`) REFERENCES `tl_latask10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lavote11_nomination_content`
--
ALTER TABLE `tl_lavote11_nomination_content`
  ADD CONSTRAINT `FK_tl_lavote11_nomination_content_1` FOREIGN KEY (`vote_content_id`) REFERENCES `tl_lavote11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lavote11_session`
--
ALTER TABLE `tl_lavote11_session`
  ADD CONSTRAINT `FK_tl_lavote11_session_1` FOREIGN KEY (`vote_content_id`) REFERENCES `tl_lavote11_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tl_lavote11_session` FOREIGN KEY (`group_leader_uid`) REFERENCES `tl_lavote11_usr` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lavote11_usr`
--
ALTER TABLE `tl_lavote11_usr`
  ADD CONSTRAINT `FK_tl_lavote11_usr_1` FOREIGN KEY (`vote_session_id`) REFERENCES `tl_lavote11_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lavote11_usr_attempt`
--
ALTER TABLE `tl_lavote11_usr_attempt`
  ADD CONSTRAINT `FK_tl_lavote11_usr_attempt_2` FOREIGN KEY (`que_usr_id`) REFERENCES `tl_lavote11_usr` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tl_lavote11_usr_attempt_3` FOREIGN KEY (`vote_nomination_content_id`) REFERENCES `tl_lavote11_nomination_content` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lawiki10_session`
--
ALTER TABLE `tl_lawiki10_session`
  ADD CONSTRAINT `FKF01D63C260B3B03B` FOREIGN KEY (`wiki_uid`) REFERENCES `tl_lawiki10_wiki` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKF01D63C2A3FF7EC0` FOREIGN KEY (`wiki_main_page_uid`) REFERENCES `tl_lawiki10_wiki_page` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lawiki10_user`
--
ALTER TABLE `tl_lawiki10_user`
  ADD CONSTRAINT `FKED5D7A1FD8004954` FOREIGN KEY (`wiki_session_uid`) REFERENCES `tl_lawiki10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tl_lawiki10_wiki`
--
ALTER TABLE `tl_lawiki10_wiki`
  ADD CONSTRAINT `FKED5E3E04A3FF7EC0` FOREIGN KEY (`wiki_main_page_uid`) REFERENCES `tl_lawiki10_wiki_page` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lawiki10_wiki_page`
--
ALTER TABLE `tl_lawiki10_wiki_page`
  ADD CONSTRAINT `wiki_page_fk_1` FOREIGN KEY (`wiki_session_uid`) REFERENCES `tl_lawiki10_session` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wiki_page_fk_2` FOREIGN KEY (`wiki_uid`) REFERENCES `tl_lawiki10_wiki` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wiki_page_fk_3` FOREIGN KEY (`added_by`) REFERENCES `tl_lawiki10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `wiki_page_fk_4` FOREIGN KEY (`wiki_current_content`) REFERENCES `tl_lawiki10_wiki_page_content` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tl_lawiki10_wiki_page_content`
--
ALTER TABLE `tl_lawiki10_wiki_page_content`
  ADD CONSTRAINT `FK528051242D44CCF8` FOREIGN KEY (`wiki_page_uid`) REFERENCES `tl_lawiki10_wiki_page` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK528051243233D952` FOREIGN KEY (`editor`) REFERENCES `tl_lawiki10_user` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
