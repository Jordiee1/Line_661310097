-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Dec 16, 2025 at 01:00 PM
-- Server version: 8.1.0
-- PHP Version: 8.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('lv:v3.21.1:file:88c0bb4b-laravel.log:ecf8427e:chunk:0', 'a:115:{i:1763709907;a:1:{s:5:\"ERROR\";a:1:{i:0;i:0;}}i:1763709972;a:1:{s:5:\"ERROR\";a:1:{i:1;i:19416;}}i:1763716810;a:1:{s:5:\"ERROR\";a:1:{i:2;i:39622;}}i:1763716952;a:1:{s:5:\"ERROR\";a:1:{i:3;i:63091;}}i:1763794955;a:1:{s:5:\"ERROR\";a:1:{i:4;i:86560;}}i:1763812970;a:1:{s:5:\"ERROR\";a:1:{i:5;i:110029;}}i:1763813204;a:1:{s:5:\"ERROR\";a:1:{i:6;i:130680;}}i:1763813881;a:1:{s:5:\"ERROR\";a:1:{i:7;i:135827;}}i:1763813908;a:1:{s:5:\"ERROR\";a:1:{i:8;i:145575;}}i:1763813951;a:1:{s:5:\"ERROR\";a:1:{i:9;i:155323;}}i:1763816041;a:1:{s:5:\"ERROR\";a:1:{i:10;i:177074;}}i:1763816212;a:1:{s:5:\"ERROR\";a:1:{i:11;i:188107;}}i:1763823051;a:1:{s:5:\"ERROR\";a:1:{i:12;i:214046;}}i:1763823057;a:1:{s:5:\"ERROR\";a:1:{i:13;i:219248;}}i:1763828627;a:1:{s:5:\"ERROR\";a:1:{i:14;i:224450;}}i:1763828669;a:1:{s:5:\"ERROR\";a:1:{i:15;i:234186;}}i:1763828682;a:1:{s:5:\"ERROR\";a:1:{i:16;i:243922;}}i:1763828738;a:1:{s:5:\"ERROR\";a:1:{i:17;i:253658;}}i:1763828792;a:1:{s:5:\"ERROR\";a:1:{i:18;i:287208;}}i:1763901482;a:1:{s:5:\"ERROR\";a:1:{i:19;i:320758;}}i:1763901488;a:1:{s:5:\"ERROR\";a:1:{i:20;i:344187;}}i:1763918123;a:1:{s:5:\"ERROR\";a:1:{i:21;i:367616;}}i:1763918559;a:1:{s:5:\"ERROR\";a:1:{i:22;i:377368;}}i:1764152688;a:2:{s:4:\"INFO\";a:1:{i:23;i:387105;}s:5:\"ERROR\";a:2:{i:24;i:387144;i:25;i:387191;}}i:1764153351;a:2:{s:4:\"INFO\";a:1:{i:26;i:397336;}s:5:\"ERROR\";a:1:{i:27;i:397375;}}i:1764153352;a:1:{s:5:\"ERROR\";a:1:{i:28;i:397422;}}i:1764153403;a:2:{s:4:\"INFO\";a:1:{i:29;i:407567;}s:5:\"ERROR\";a:2:{i:30;i:407606;i:31;i:407653;}}i:1764153449;a:1:{s:4:\"INFO\";a:1:{i:32;i:417798;}}i:1764153744;a:2:{s:4:\"INFO\";a:1:{i:33;i:417837;}s:5:\"ERROR\";a:1:{i:34;i:417877;}}i:1764153745;a:1:{s:5:\"ERROR\";a:1:{i:35;i:417924;}}i:1764154193;a:1:{s:4:\"INFO\";a:1:{i:36;i:428069;}}i:1764154852;a:1:{s:5:\"ERROR\";a:2:{i:37;i:428108;i:38;i:428155;}}i:1764154889;a:1:{s:4:\"INFO\";a:1:{i:39;i:438300;}}i:1764154890;a:1:{s:4:\"INFO\";a:1:{i:40;i:439115;}}i:1764155002;a:1:{s:4:\"INFO\";a:2:{i:41;i:439211;i:42;i:440041;}}i:1764155014;a:1:{s:4:\"INFO\";a:2:{i:43;i:440137;i:44;i:440926;}}i:1764155023;a:1:{s:4:\"INFO\";a:1:{i:45;i:441022;}}i:1764155024;a:1:{s:4:\"INFO\";a:1:{i:46;i:441822;}}i:1764155037;a:1:{s:4:\"INFO\";a:1:{i:47;i:441918;}}i:1764155038;a:1:{s:4:\"INFO\";a:1:{i:48;i:442708;}}i:1764155047;a:2:{s:5:\"ERROR\";a:1:{i:49;i:442804;}s:4:\"INFO\";a:2:{i:50;i:452967;i:51;i:453773;}}i:1764155333;a:1:{s:4:\"INFO\";a:1:{i:52;i:453869;}}i:1764155334;a:1:{s:4:\"INFO\";a:1:{i:53;i:454739;}}i:1764155347;a:1:{s:4:\"INFO\";a:1:{i:54;i:454835;}}i:1764155348;a:1:{s:4:\"INFO\";a:1:{i:55;i:455650;}}i:1764155356;a:1:{s:4:\"INFO\";a:2:{i:56;i:455746;i:57;i:456616;}}i:1764155580;a:1:{s:4:\"INFO\";a:1:{i:58;i:456712;}}i:1764155581;a:1:{s:4:\"INFO\";a:1:{i:59;i:457524;}}i:1764155590;a:2:{s:5:\"ERROR\";a:1:{i:60;i:457620;}s:4:\"INFO\";a:1:{i:61;i:467783;}}i:1764155591;a:1:{s:4:\"INFO\";a:1:{i:62;i:468589;}}i:1764156721;a:1:{s:4:\"INFO\";a:2:{i:63;i:468685;i:64;i:469542;}}i:1764156725;a:1:{s:4:\"INFO\";a:1:{i:65;i:469638;}}i:1764156729;a:1:{s:4:\"INFO\";a:1:{i:66;i:470453;}}i:1764156733;a:1:{s:4:\"INFO\";a:2:{i:67;i:470549;i:68;i:471406;}}i:1764156741;a:1:{s:4:\"INFO\";a:2:{i:69;i:471502;i:70;i:472302;}}i:1764156746;a:2:{s:5:\"ERROR\";a:1:{i:71;i:472398;}s:4:\"INFO\";a:2:{i:72;i:482561;i:73;i:483367;}}i:1764157190;a:1:{s:4:\"INFO\";a:1:{i:74;i:483463;}}i:1764157191;a:1:{s:4:\"INFO\";a:1:{i:75;i:484293;}}i:1764157692;a:1:{s:4:\"INFO\";a:1:{i:76;i:484389;}}i:1764157693;a:1:{s:4:\"INFO\";a:1:{i:77;i:485192;}}i:1764157708;a:1:{s:4:\"INFO\";a:1:{i:78;i:485288;}}i:1764157709;a:1:{s:4:\"INFO\";a:1:{i:79;i:486143;}}i:1764157714;a:2:{s:5:\"ERROR\";a:1:{i:80;i:486239;}s:4:\"INFO\";a:1:{i:81;i:496402;}}i:1764157715;a:1:{s:4:\"INFO\";a:1:{i:82;i:497196;}}i:1764157852;a:1:{s:4:\"INFO\";a:2:{i:83;i:497292;i:84;i:498095;}}i:1764157858;a:1:{s:4:\"INFO\";a:1:{i:85;i:498191;}}i:1764157859;a:1:{s:4:\"INFO\";a:1:{i:86;i:499046;}}i:1764157864;a:2:{s:5:\"ERROR\";a:1:{i:87;i:499142;}s:4:\"INFO\";a:2:{i:88;i:509305;i:89;i:510099;}}i:1764157951;a:1:{s:4:\"INFO\";a:1:{i:90;i:510195;}}i:1764157952;a:1:{s:4:\"INFO\";a:1:{i:91;i:510998;}}i:1764157960;a:1:{s:4:\"INFO\";a:1:{i:92;i:511094;}}i:1764157961;a:1:{s:4:\"INFO\";a:1:{i:93;i:511949;}}i:1764157964;a:1:{s:5:\"ERROR\";a:1:{i:94;i:512045;}}i:1764158354;a:1:{s:4:\"INFO\";a:1:{i:95;i:522208;}}i:1764158355;a:1:{s:4:\"INFO\";a:1:{i:96;i:523011;}}i:1764158359;a:1:{s:4:\"INFO\";a:2:{i:97;i:523107;i:98;i:523962;}}i:1764158363;a:2:{s:5:\"ERROR\";a:1:{i:99;i:524058;}s:4:\"INFO\";a:2:{i:100;i:534221;i:101;i:535015;}}i:1764158366;a:1:{s:4:\"INFO\";a:2:{i:102;i:535111;i:103;i:535167;}}i:1765876038;a:1:{s:4:\"INFO\";a:1:{i:104;i:535481;}}i:1765876039;a:1:{s:4:\"INFO\";a:1:{i:105;i:536284;}}i:1765876187;a:1:{s:4:\"INFO\";a:2:{i:106;i:536380;i:107;i:537180;}}i:1765876316;a:1:{s:4:\"INFO\";a:1:{i:108;i:537276;}}i:1765876550;a:1:{s:5:\"ERROR\";a:1:{i:109;i:538076;}}i:1765876637;a:1:{s:5:\"ERROR\";a:1:{i:110;i:548454;}}i:1765876686;a:1:{s:4:\"INFO\";a:2:{i:111;i:558832;i:112;i:558878;}}i:1765877936;a:2:{s:4:\"INFO\";a:2:{i:113;i:558966;i:114;i:559012;}s:5:\"ERROR\";a:1:{i:115;i:559100;}}i:1765878007;a:2:{s:4:\"INFO\";a:2:{i:116;i:569498;i:117;i:569544;}s:5:\"ERROR\";a:1:{i:118;i:569632;}}i:1765878047;a:1:{s:4:\"INFO\";a:2:{i:119;i:579381;i:120;i:579427;}}i:1765878226;a:2:{s:4:\"INFO\";a:2:{i:121;i:579515;i:122;i:579561;}s:5:\"ERROR\";a:1:{i:123;i:579649;}}i:1765878265;a:1:{s:4:\"INFO\";a:3:{i:124;i:590041;i:125;i:590087;i:126;i:590175;}}i:1765878326;a:1:{s:4:\"INFO\";a:3:{i:127;i:591135;i:128;i:591181;i:129;i:591269;}}i:1765885989;a:1:{s:4:\"INFO\";a:3:{i:130;i:592303;i:131;i:592349;i:132;i:592437;}}i:1765886079;a:1:{s:4:\"INFO\";a:3:{i:133;i:593477;i:134;i:593523;i:135;i:593611;}}i:1765888392;a:1:{s:5:\"ERROR\";a:1:{i:136;i:594651;}}i:1765888396;a:1:{s:4:\"INFO\";a:2:{i:137;i:604814;i:138;i:604870;}}i:1765888671;a:1:{s:4:\"INFO\";a:1:{i:139;i:605184;}}i:1765888676;a:1:{s:4:\"INFO\";a:1:{i:140;i:605987;}}i:1765888680;a:1:{s:4:\"INFO\";a:1:{i:141;i:606842;}}i:1765888681;a:2:{s:5:\"ERROR\";a:1:{i:142;i:607197;}s:4:\"INFO\";a:1:{i:143;i:617360;}}i:1765888684;a:1:{s:4:\"INFO\";a:2:{i:144;i:618154;i:145;i:618210;}}i:1765889032;a:2:{s:4:\"INFO\";a:1:{i:146;i:618524;}s:5:\"ERROR\";a:1:{i:147;i:619309;}}i:1765889075;a:1:{s:4:\"INFO\";a:1:{i:148;i:619358;}}i:1765889079;a:1:{s:4:\"INFO\";a:3:{i:149;i:620143;i:150;i:620189;i:151;i:620277;}}i:1765889116;a:1:{s:4:\"INFO\";a:1:{i:152;i:621315;}}i:1765889117;a:1:{s:5:\"ERROR\";a:1:{i:153;i:621670;}}i:1765889119;a:1:{s:4:\"INFO\";a:1:{i:154;i:631975;}}i:1765889133;a:1:{s:4:\"INFO\";a:1:{i:155;i:632769;}}i:1765889137;a:1:{s:4:\"INFO\";a:3:{i:156;i:633569;i:157;i:633615;i:158;i:633703;}}i:1765889147;a:1:{s:4:\"INFO\";a:1:{i:159;i:634741;}}i:1765889157;a:1:{s:4:\"INFO\";a:1:{i:160;i:635544;}}i:1765889162;a:2:{s:4:\"INFO\";a:1:{i:161;i:636399;}s:5:\"ERROR\";a:1:{i:162;i:636754;}}i:1765889163;a:1:{s:4:\"INFO\";a:1:{i:163;i:647059;}}i:1765889165;a:1:{s:4:\"INFO\";a:2:{i:164;i:647853;i:165;i:647909;}}i:1765889235;a:1:{s:4:\"INFO\";a:1:{i:0;i:0;}}i:1765889238;a:1:{s:4:\"INFO\";a:3:{i:1;i:800;i:2;i:846;i:3;i:934;}}}', 1766494043),
('lv:v3.21.1:file:88c0bb4b-laravel.log:ecf8427e:metadata', 'a:9:{s:5:\"query\";N;s:10:\"identifier\";s:8:\"ecf8427e\";s:26:\"last_scanned_file_position\";i:1972;s:18:\"last_scanned_index\";i:4;s:24:\"next_log_index_to_create\";i:4;s:14:\"max_chunk_size\";i:50000;s:19:\"current_chunk_index\";i:0;s:17:\"chunk_definitions\";a:0:{}s:24:\"current_chunk_definition\";a:5:{s:5:\"index\";i:0;s:4:\"size\";i:170;s:18:\"earliest_timestamp\";i:1763709907;s:16:\"latest_timestamp\";i:1765889238;s:12:\"level_counts\";a:2:{s:5:\"ERROR\";i:50;s:4:\"INFO\";i:120;}}}', 1766494043),
('lv:v3.21.1:file:88c0bb4b-laravel.log:metadata', 'a:8:{s:4:\"type\";s:7:\"laravel\";s:4:\"name\";s:11:\"laravel.log\";s:4:\"path\";s:43:\"/var/www/line_demo/storage/logs/laravel.log\";s:4:\"size\";i:1972;s:18:\"earliest_timestamp\";i:1763709907;s:16:\"latest_timestamp\";i:1765889238;s:26:\"last_scanned_file_position\";i:1972;s:15:\"related_indices\";a:1:{s:8:\"ecf8427e\";a:2:{s:5:\"query\";N;s:26:\"last_scanned_file_position\";i:1972;}}}', 1766494043),
('lv:v3.21.1:file:e0962261-laravel.log:ecf8427e:chunk:0', 'a:78:{i:1763709907;a:1:{s:5:\"ERROR\";a:1:{i:0;i:0;}}i:1763709972;a:1:{s:5:\"ERROR\";a:1:{i:1;i:19416;}}i:1763716810;a:1:{s:5:\"ERROR\";a:1:{i:2;i:39622;}}i:1763716952;a:1:{s:5:\"ERROR\";a:1:{i:3;i:63091;}}i:1763794955;a:1:{s:5:\"ERROR\";a:1:{i:4;i:86560;}}i:1763812970;a:1:{s:5:\"ERROR\";a:1:{i:5;i:110029;}}i:1763813204;a:1:{s:5:\"ERROR\";a:1:{i:6;i:130680;}}i:1763813881;a:1:{s:5:\"ERROR\";a:1:{i:7;i:135827;}}i:1763813908;a:1:{s:5:\"ERROR\";a:1:{i:8;i:145575;}}i:1763813951;a:1:{s:5:\"ERROR\";a:1:{i:9;i:155323;}}i:1763816041;a:1:{s:5:\"ERROR\";a:1:{i:10;i:177074;}}i:1763816212;a:1:{s:5:\"ERROR\";a:1:{i:11;i:188107;}}i:1763823051;a:1:{s:5:\"ERROR\";a:1:{i:12;i:214046;}}i:1763823057;a:1:{s:5:\"ERROR\";a:1:{i:13;i:219248;}}i:1763828627;a:1:{s:5:\"ERROR\";a:1:{i:14;i:224450;}}i:1763828669;a:1:{s:5:\"ERROR\";a:1:{i:15;i:234186;}}i:1763828682;a:1:{s:5:\"ERROR\";a:1:{i:16;i:243922;}}i:1763828738;a:1:{s:5:\"ERROR\";a:1:{i:17;i:253658;}}i:1763828792;a:1:{s:5:\"ERROR\";a:1:{i:18;i:287208;}}i:1763901482;a:1:{s:5:\"ERROR\";a:1:{i:19;i:320758;}}i:1763901488;a:1:{s:5:\"ERROR\";a:1:{i:20;i:344187;}}i:1763918123;a:1:{s:5:\"ERROR\";a:1:{i:21;i:367616;}}i:1763918559;a:1:{s:5:\"ERROR\";a:1:{i:22;i:377368;}}i:1764152688;a:2:{s:4:\"INFO\";a:1:{i:23;i:387105;}s:5:\"ERROR\";a:2:{i:24;i:387144;i:25;i:387191;}}i:1764153351;a:2:{s:4:\"INFO\";a:1:{i:26;i:397336;}s:5:\"ERROR\";a:1:{i:27;i:397375;}}i:1764153352;a:1:{s:5:\"ERROR\";a:1:{i:28;i:397422;}}i:1764153403;a:2:{s:4:\"INFO\";a:1:{i:29;i:407567;}s:5:\"ERROR\";a:2:{i:30;i:407606;i:31;i:407653;}}i:1764153449;a:1:{s:4:\"INFO\";a:1:{i:32;i:417798;}}i:1764153744;a:2:{s:4:\"INFO\";a:1:{i:33;i:417837;}s:5:\"ERROR\";a:1:{i:34;i:417877;}}i:1764153745;a:1:{s:5:\"ERROR\";a:1:{i:35;i:417924;}}i:1764154193;a:1:{s:4:\"INFO\";a:1:{i:36;i:428069;}}i:1764154852;a:1:{s:5:\"ERROR\";a:2:{i:37;i:428108;i:38;i:428155;}}i:1764154889;a:1:{s:4:\"INFO\";a:1:{i:39;i:438300;}}i:1764154890;a:1:{s:4:\"INFO\";a:1:{i:40;i:439115;}}i:1764155002;a:1:{s:4:\"INFO\";a:2:{i:41;i:439211;i:42;i:440041;}}i:1764155014;a:1:{s:4:\"INFO\";a:2:{i:43;i:440137;i:44;i:440926;}}i:1764155023;a:1:{s:4:\"INFO\";a:1:{i:45;i:441022;}}i:1764155024;a:1:{s:4:\"INFO\";a:1:{i:46;i:441822;}}i:1764155037;a:1:{s:4:\"INFO\";a:1:{i:47;i:441918;}}i:1764155038;a:1:{s:4:\"INFO\";a:1:{i:48;i:442708;}}i:1764155047;a:2:{s:5:\"ERROR\";a:1:{i:49;i:442804;}s:4:\"INFO\";a:2:{i:50;i:452967;i:51;i:453773;}}i:1764155333;a:1:{s:4:\"INFO\";a:1:{i:52;i:453869;}}i:1764155334;a:1:{s:4:\"INFO\";a:1:{i:53;i:454739;}}i:1764155347;a:1:{s:4:\"INFO\";a:1:{i:54;i:454835;}}i:1764155348;a:1:{s:4:\"INFO\";a:1:{i:55;i:455650;}}i:1764155356;a:1:{s:4:\"INFO\";a:2:{i:56;i:455746;i:57;i:456616;}}i:1764155580;a:1:{s:4:\"INFO\";a:1:{i:58;i:456712;}}i:1764155581;a:1:{s:4:\"INFO\";a:1:{i:59;i:457524;}}i:1764155590;a:2:{s:5:\"ERROR\";a:1:{i:60;i:457620;}s:4:\"INFO\";a:1:{i:61;i:467783;}}i:1764155591;a:1:{s:4:\"INFO\";a:1:{i:62;i:468589;}}i:1764156721;a:1:{s:4:\"INFO\";a:2:{i:63;i:468685;i:64;i:469542;}}i:1764156725;a:1:{s:4:\"INFO\";a:1:{i:65;i:469638;}}i:1764156729;a:1:{s:4:\"INFO\";a:1:{i:66;i:470453;}}i:1764156733;a:1:{s:4:\"INFO\";a:2:{i:67;i:470549;i:68;i:471406;}}i:1764156741;a:1:{s:4:\"INFO\";a:2:{i:69;i:471502;i:70;i:472302;}}i:1764156746;a:2:{s:5:\"ERROR\";a:1:{i:71;i:472398;}s:4:\"INFO\";a:2:{i:72;i:482561;i:73;i:483367;}}i:1764157190;a:1:{s:4:\"INFO\";a:1:{i:74;i:483463;}}i:1764157191;a:1:{s:4:\"INFO\";a:1:{i:75;i:484293;}}i:1764157692;a:1:{s:4:\"INFO\";a:1:{i:76;i:484389;}}i:1764157693;a:1:{s:4:\"INFO\";a:1:{i:77;i:485192;}}i:1764157708;a:1:{s:4:\"INFO\";a:1:{i:78;i:485288;}}i:1764157709;a:1:{s:4:\"INFO\";a:1:{i:79;i:486143;}}i:1764157714;a:2:{s:5:\"ERROR\";a:1:{i:80;i:486239;}s:4:\"INFO\";a:1:{i:81;i:496402;}}i:1764157715;a:1:{s:4:\"INFO\";a:1:{i:82;i:497196;}}i:1764157852;a:1:{s:4:\"INFO\";a:2:{i:83;i:497292;i:84;i:498095;}}i:1764157858;a:1:{s:4:\"INFO\";a:1:{i:85;i:498191;}}i:1764157859;a:1:{s:4:\"INFO\";a:1:{i:86;i:499046;}}i:1764157864;a:2:{s:5:\"ERROR\";a:1:{i:87;i:499142;}s:4:\"INFO\";a:2:{i:88;i:509305;i:89;i:510099;}}i:1764157951;a:1:{s:4:\"INFO\";a:1:{i:90;i:510195;}}i:1764157952;a:1:{s:4:\"INFO\";a:1:{i:91;i:510998;}}i:1764157960;a:1:{s:4:\"INFO\";a:1:{i:92;i:511094;}}i:1764157961;a:1:{s:4:\"INFO\";a:1:{i:93;i:511949;}}i:1764157964;a:1:{s:5:\"ERROR\";a:1:{i:94;i:512045;}}i:1764158354;a:1:{s:4:\"INFO\";a:1:{i:95;i:522208;}}i:1764158355;a:1:{s:4:\"INFO\";a:1:{i:96;i:523011;}}i:1764158359;a:1:{s:4:\"INFO\";a:2:{i:97;i:523107;i:98;i:523962;}}i:1764158363;a:2:{s:5:\"ERROR\";a:1:{i:99;i:524058;}s:4:\"INFO\";a:2:{i:100;i:534221;i:101;i:535015;}}i:1764158366;a:1:{s:4:\"INFO\";a:2:{i:102;i:535111;i:103;i:535167;}}}', 1764763183),
('lv:v3.21.1:file:e0962261-laravel.log:ecf8427e:metadata', 'a:9:{s:5:\"query\";N;s:10:\"identifier\";s:8:\"ecf8427e\";s:26:\"last_scanned_file_position\";i:535481;s:18:\"last_scanned_index\";i:104;s:24:\"next_log_index_to_create\";i:104;s:14:\"max_chunk_size\";i:50000;s:19:\"current_chunk_index\";i:0;s:17:\"chunk_definitions\";a:0:{}s:24:\"current_chunk_definition\";a:5:{s:5:\"index\";i:0;s:4:\"size\";i:104;s:18:\"earliest_timestamp\";i:1763709907;s:16:\"latest_timestamp\";i:1764158366;s:12:\"level_counts\";a:2:{s:5:\"ERROR\";i:40;s:4:\"INFO\";i:64;}}}', 1764763183),
('lv:v3.21.1:file:e0962261-laravel.log:metadata', 'a:8:{s:4:\"type\";s:7:\"laravel\";s:4:\"name\";s:11:\"laravel.log\";s:4:\"path\";s:43:\"/var/www/line_demo/storage/logs/laravel.log\";s:4:\"size\";i:535481;s:18:\"earliest_timestamp\";i:1763709907;s:16:\"latest_timestamp\";i:1764158366;s:26:\"last_scanned_file_position\";i:535481;s:15:\"related_indices\";a:1:{s:8:\"ecf8427e\";a:2:{s:5:\"query\";N;s:26:\"last_scanned_file_position\";i:535481;}}}', 1764763183);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `line_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `points` int NOT NULL,
  `eat_points` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `line_id` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `expire_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `img`, `expire_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'โปรโมชันพิเศษ', 'promotion-1.jpg', '2025-12-31', NULL, NULL, NULL),
(2, '7.7', 'promotion-2.jpg', '2025-12-31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `redeem_codes`
--

CREATE TABLE `redeem_codes` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `used` enum('N','Y') DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `redeem_codes`
--

INSERT INTO `redeem_codes` (`id`, `code`, `used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1A', 'N', NULL, NULL, NULL),
(2, '2A', 'N', NULL, NULL, NULL),
(3, '3A', 'N', NULL, NULL, NULL),
(4, '4A', 'N', NULL, NULL, NULL),
(5, '5A', 'N', NULL, NULL, NULL),
(6, '6A', 'N', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_codes`
--
ALTER TABLE `redeem_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `redeem_codes`
--
ALTER TABLE `redeem_codes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
