-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2023 at 07:03 PM
-- Server version: 5.7.37
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudsolicitous_onedemand`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `longitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `default` tinyint(1) DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Office', '62219 Julie Fords Apt. 459\nLake Hiram, RI 68148', 50.17264678000000000, 9.07392130000000000, 0, 1, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(2, 'Office', '5897 Kuhic Island\nNaomiborough, GA 10078', 51.22754343000000000, 10.26363276000000000, 0, 7, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(3, 'Hotel', '8413 Marcelle Drive Suite 285\nAltenwerthborough, AZ 06959', 51.33615494000000000, 10.75496960000000000, 0, 2, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(4, 'Hotel', '5778 Wolff Mission Apt. 857\nLake Augusta, WA 85373', 51.57134294000000000, 9.92528812000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(5, 'Home', '8685 Leannon Knolls Suite 866\nWest Alberta, ND 14678', 51.58483564000000000, 9.07746737000000000, 0, 1, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(6, 'Building', '41983 Rowe Mountain Apt. 544\nEwellstad, OK 52256', 50.53783994000000000, 10.01867115000000000, 0, 3, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(7, 'Home', '928 Fadel Crest Suite 343\nPort Adrienberg, LA 04286', 51.66236449000000000, 10.56548594000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(8, 'Workshop', '15825 Melissa Wall Suite 186\nGradyfort, MT 90861', 51.74778042000000000, 9.65834269000000000, 0, 1, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(9, 'Workshop', '8963 Nitzsche Harbor\nJosiahborough, WV 64323', 50.06709201000000000, 10.92247948000000000, 0, 4, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(10, 'Building', '318 Keyon Lights\nPort Marinafort, MA 61542', 51.73031097000000000, 10.00613849000000000, 0, 2, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(11, 'Work', '288 Moen Stravenue\nMyahside, NJ 61149-7610', 50.17795041000000000, 9.29922608000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(12, 'Building', '255 Tristin Forks Apt. 576\nEastertown, WV 68315', 51.35652404000000000, 11.14696469000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(13, 'Work', '6963 Green Curve\nRachaelborough, WY 61241', 51.53061717000000000, 10.87465598000000000, 0, 2, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(14, 'Office', '4603 Timmothy Pass\nPort Amparofort, WV 73368-4912', 51.05694109000000000, 9.68567814000000000, 0, 7, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(15, 'Office', '4898 Schumm Parkway Apt. 720\nBryonshire, HI 49140', 50.59370656000000000, 11.86149774000000000, 0, 2, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(16, 'Home', '2340 Rusty Road\nPort Gregoryton, WY 50691', 51.72859234000000000, 10.82475015000000000, 0, 2, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(17, 'Workshop', '9657 Adrianna Manor\nPort Marquis, VT 03202', 50.82867550000000000, 10.14011244000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(18, 'Building', '300 Greg Street Apt. 767\nPort Marianne, NC 45627-8408', 50.02830390000000000, 10.82984400000000000, 0, 7, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(19, 'Hotel', '7418 Stoltenberg Islands Apt. 634\nNorth Casimir, IL 24676', 51.39958043000000000, 11.55520068000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(20, 'Work', '226 Parker Loop\nSouth Zachary, MS 69768-1036', 50.26384967000000000, 9.78784778000000000, 0, 6, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(22, NULL, '789b4, Ekta Nagar Housing Society, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India', 18.52796900000000000, 73.82527600000000000, NULL, 16, '2022-05-27 09:55:15', '2022-05-27 09:55:15'),
(23, 'Kavita Building', '269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India', 18.53000000000000000, 73.82000000000000000, 0, 16, '2022-05-27 11:21:17', '2022-05-28 08:22:57'),
(25, NULL, '266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India', 18.53000000000000000, 73.82000000000000000, 0, 16, '2022-05-28 08:12:24', '2022-06-11 07:44:02'),
(26, 'Demo Address Location Description', 'Demo Address Location', 0.00000000000000000, 0.00000000000000000, 1, 1, '2022-09-12 03:58:19', '2022-09-12 09:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `app_feedbacks`
--

CREATE TABLE `app_feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `provider_id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `job_apply_id` int(11) UNSIGNED NOT NULL,
  `competancy_rating` varchar(255) DEFAULT NULL,
  `service_rating` varchar(255) DEFAULT NULL,
  `knowledge_rating` varchar(255) DEFAULT NULL,
  `behaviour_rating` varchar(255) DEFAULT NULL,
  `grooming_rating` varchar(255) DEFAULT NULL,
  `punctuality_rating` varchar(255) DEFAULT NULL,
  `feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_feedbacks`
--

INSERT INTO `app_feedbacks` (`id`, `user_id`, `provider_id`, `job_id`, `job_apply_id`, `competancy_rating`, `service_rating`, `knowledge_rating`, `behaviour_rating`, `grooming_rating`, `punctuality_rating`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 50, 66, 79, 91, '2', NULL, '3', NULL, NULL, NULL, NULL, '2023-03-28 06:22:10', '2023-03-28 06:22:10'),
(2, 50, 66, 79, 91, '2', NULL, '3', NULL, NULL, NULL, NULL, '2023-03-28 06:23:46', '2023-03-28 06:23:46'),
(3, 50, 66, 79, 91, '1', NULL, '3', NULL, NULL, NULL, NULL, '2023-03-28 07:29:30', '2023-03-28 07:29:30'),
(4, 50, 66, 83, 102, '4', NULL, '4', '4', '3', '3', NULL, '2023-04-21 17:59:28', '2023-04-21 17:59:28'),
(5, 50, 66, 85, 107, '2', NULL, '3', '4', '3', '3', NULL, '2023-04-25 10:37:39', '2023-04-25 10:37:39'),
(6, 50, 66, 93, 117, '2', NULL, '2', '4', '5', '4', NULL, '2023-05-11 05:05:56', '2023-05-11 05:05:56'),
(7, 50, 66, 96, 119, '5', NULL, '5', '4', '5', '4', NULL, '2023-05-11 06:07:56', '2023-05-11 06:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'H2O'),
(19, 'app_short_description', 'Hire Equals Opportunity'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'server.solicitous.cloud'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'team@solicitousbusiness.com'),
(24, 'mail_password', 'Solicitous@1234'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'team@solicitousbusiness.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'Indian/Antananarivo'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', 'ff07391a-88f7-4f58-aa9f-f738057c46db'),
(35, 'nav_color', 'navbar-dark navbar-navy'),
(38, 'logo_bg_color', 'text-light  navbar-navy'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '₹'),
(108, 'fixed_header', '1'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAodfg5Kg:APA91bGcjKeQRlT7EMlP575YMBQiAzr2dJ1ELIZTFQtvST_Lw1PxGabniNpfIEMBG_oZonZrWGE9qptcZwWFkMiPEun6zTPDOkGIbFYUCvaY0YWAKIKEgUNxmvxWoHvKtZkoBy6RlNS4'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', '-'),
(114, 'paypal_secret', '-'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#072053'),
(117, 'main_dark_color', '#072053'),
(118, 'second_color', '#08143A'),
(119, 'second_dark_color', '#CCCCDD'),
(120, 'accent_color', '#8C9DA8'),
(121, 'accent_dark_color', '#9999AA'),
(122, 'scaffold_dark_color', '#2C2C2C'),
(123, 'scaffold_color', '#FAFAFA'),
(124, 'google_maps_key', 'AIzaSyCbKdOMlMr24konyr3nvj5J8fucSjzbqA0'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '3'),
(129, 'default_currency_code', 'INR'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '1'),
(133, 'distance_unit', 'km'),
(134, 'default_theme', 'light'),
(135, 'enable_paystack', '1'),
(136, 'paystack_key', 'pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),
(137, 'paystack_secret', 'sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),
(138, 'enable_flutterwave', '1'),
(139, 'flutterwave_key', 'FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),
(140, 'flutterwave_secret', 'FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),
(141, 'enable_stripe_fpx', '1'),
(142, 'stripe_fpx_key', 'pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),
(143, 'stripe_fpx_secret', 'sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),
(144, 'enable_paymongo', '1'),
(145, 'paymongo_key', 'pk_test_iD6aYYm4yFuvkuisyU2PGSYH'),
(146, 'paymongo_secret', 'sk_test_oxD79bMKxb8sA47ZNyYPXwf3'),
(147, 'provider_app_name', 'Service Provider'),
(148, 'default_country_code', 'IN'),
(149, 'firebase_api_key', 'AIzaSyBNybmsrj8QYNgbmzjXLXGrdh2FI3Qws8U'),
(150, 'firebase_auth_domain', 'h20-project-a151a.firebaseapp.com'),
(151, 'firebase_database_url', '0'),
(152, 'firebase_project_id', 'h2oprovider'),
(153, 'firebase_storage_bucket', '0'),
(154, 'firebase_messaging_sender_id', '145571358241'),
(155, 'firebase_app_id', '1:145571358241:android:0899efd59f6d4eb40e6560'),
(156, 'firebase_measurement_id', '0'),
(157, 'enable_email_notifications', '1');

-- --------------------------------------------------------

--
-- Table structure for table `availabilities`
--

CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `pref_location` varchar(255) DEFAULT NULL,
  `pref_start_time` varchar(255) DEFAULT NULL,
  `pref_end_time` varchar(255) DEFAULT NULL,
  `pref_date` varchar(255) DEFAULT NULL,
  `pref_day` varchar(255) DEFAULT NULL,
  `remaining_hour` varchar(255) DEFAULT NULL,
  `pref_location_lat_long` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availabilities`
--

INSERT INTO `availabilities` (`id`, `user_id`, `pref_location`, `pref_start_time`, `pref_end_time`, `pref_date`, `pref_day`, `remaining_hour`, `pref_location_lat_long`, `created_at`, `updated_at`) VALUES
(1, 66, 'abc', '10:00 AM', '10:00 PM', 'Mar 22,2023', 'Monday', '0:0', NULL, '2023-03-22 07:22:36', '2023-03-22 07:22:36'),
(2, 66, 'xyz', '10:00 AM', '10:00 PM', 'Mar 22,2023', 'Monday', '0:0', NULL, '2023-03-22 07:23:19', '2023-03-22 07:23:19'),
(3, 66, 'Bengaluru, Karnataka, India', '01:22 PM', '07:22 PM', 'Mar 23, 2023', NULL, NULL, '12.9715987,77.5945627', '2023-03-22 07:53:19', '2023-03-22 07:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `availability_hours`
--

CREATE TABLE `availability_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availability_hours`
--

INSERT INTO `availability_hours` (`id`, `day`, `start_at`, `end_at`, `data`, `e_provider_id`) VALUES
(1, 'monday', '05:00', '17:00', '{\"en\":\"this hospital is one of best hospital in hyadrabad.\"}', 21),
(2, 'thursday', '08:00', '19:00', '{\"en\":\"Hospitals in Hyderabad.\"}', 25),
(3, 'saturday', '09:00', '16:00', '{\"en\":\"It is best health-care center in Hydrabad.\"}', 24),
(5, 'tuesday', '06:00', '18:00', '{\"en\":\"Apollo Hospitals was inaugurated in 1983 by Shri Giani Zail Singh (President of India). The first Apollo Hospital was in Chennai.\"}', 25),
(6, 'saturday', '11:00', '14:00', '{\"en\":\"hospital\"}', 18),
(7, 'sunday', '11:00', '18:00', '{\"en\":\"It is inolved in Human health activities\"}', 26),
(8, 'friday', '11:00', '13:00', '{\"en\":\"By proving quality care for more than a decade, Sunshine Hospitals has been transformed into one of the most trusted and top-rated hospitals in Hyderabad.\"}', 22),
(9, 'wednesday', '10:00', '13:00', '{\"en\":\"A hospital is a health care institution providing patient treatment with specialized medical and nursing staff and medical equipment.\"}', 2),
(10, 'saturday', '08:00', '18:00', '{\"en\":\"This hospital is the most famous.\"}', 18),
(11, 'tuesday', '10:00', '23:00', '{\"en\":\"Himagiri Hospital has a dedicated department of Nephrology that is involved in kidney concerns\"}', 17),
(12, 'thursday', '08:00', '20:00', '{\"en\":\"Medicover Hospital is among the leading health-care centers across Hyderabad city. It is renowned as one of the best health service providers offering world-class health-care facilities.\"}', 24),
(13, 'friday', '04:00', '23:00', '{\"en\":\"It is renowned as one of the best health service providers offering world-class health-care facilities.\"}', 24),
(15, 'thursday', '06:00', '18:00', '{\"en\":\"Prasad Hospitals India Private Limited is a Private incorporated on 23 February 2010. It is classified as Non-govt company and is registered at Registrar of Companies, Hyderabad.\"}', 26),
(16, 'tuesday', '03:00', '13:00', '{\"en\":\"Medicover Hospital\"}', 17),
(17, 'thursday', '04:00', '15:00', '{\"en\":\"Hospitals in Hyderabad.\"}', 28),
(18, 'friday', '11:00', '19:00', '{\"en\":\"Hospitals in Hyderabad.\"}', 25),
(19, 'tuesday', '08:00', '16:00', '{\"en\":\"With a team comprising of the most adept orthopaedics and orthopaedic surgeons, Apollo Hospitals is a pioneer for Orthopedic treatments in Hyderabad\"}', 25),
(20, 'thursday', '05:00', '23:00', '{\"en\":\"Hospital in Hyderabad.\"}', 13),
(22, 'tuesday', '04:00', '19:00', '{\"en\":\"They use minimally invasive surgical techniques and modern diagnostics. We save lives and fight pain.\"}', 24),
(23, 'thursday', '06:00', '19:00', '{\"en\":\"By proving quality care for more than a decade, Sunshine Hospitals has been transformed into one of the most trusted and top-rated hospitals in Hyderabad.\"}', 22),
(24, 'thursday', '12:00', '18:00', '{\"en\":\"hospital\"}', 18),
(25, 'thursday', '12:00', '21:00', '{\"en\":\"Sunshine Hospital, Apollo Hospitals, Prasad Hospital, Medicover Hospital is the best hospitals in Hydrabad.\"}', 2),
(26, 'tuesday', '11:00', '23:00', '{\"en\":\"hospital\"}', 17),
(27, 'saturday', '02:00', '17:00', '{\"en\":\"Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.\"}', 21),
(29, 'friday', '03:00', '15:00', '{\"en\":\"It is classified as Non-govt company and is registered at Registrar of Companies, Hyderabad.\"}', 26),
(30, 'saturday', '05:00', '20:00', '{\"en\":\"hospital\"}', 9),
(32, 'wednesday', '12:00', '23:00', '{\"en\":\"The Department of Surgery at Medicover Hospital is open 24 hours a day, 7 days a week.\"}', 24),
(34, 'friday', '08:00', '23:00', '{\"en\":\"The hospital is the most important.\"}', 13),
(35, 'wednesday', '03:00', '23:00', '{\"en\":\"ozone hospital\"}', 18),
(37, 'monday', '09:00', '14:00', '{\"en\":\"This hospital is top one of the hospitals in hydrabad\"}', 23),
(38, 'thursday', '04:00', '18:00', '{\"en\":\"Prasad Hospitals India Private Limited is a Private incorporated on 23 February 2010.\"}', 26),
(39, 'tuesday', '06:00', '13:00', '{\"en\":\"Yashoda Hospitals, Secunderabad. Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.\"}', 21),
(40, 'sunday', '05:00', '23:00', '{\"en\":\"Yashoda Hospitals, Secunderabad. Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.\"}', 21),
(41, 'thursday', '11:00', '18:00', '{\"en\":\"Hospitals is the most need of humans.\"}', 16),
(42, 'tuesday', '05:00', '22:00', '{\"en\":\"This is the one of the famous hospital in Hyadrabad.\"}', 26),
(43, 'saturday', '07:00', '18:00', '{\"en\":\"Medicover Hospital\"}', 17),
(44, 'saturday', '03:00', '15:00', '{\"en\":\"The hospital strictly follows international standards.\"}', 24),
(45, 'saturday', '12:00', '18:00', '{\"en\":\"28\\/04\\/2022\"}', 16),
(46, 'sunday', '03:00', '16:00', '{\"en\":\"hospital\"}', 9),
(47, 'thursday', '09:00', '21:00', '{\"en\":\"It is renowned as one of the best health service providers offering world-class health-care facilities.\"}', 24),
(49, 'wednesday', '10:00', '14:00', '{\"en\":\"an institution providing medical and surgical treatment and nursing care for sick or injured people.\"}', 13),
(50, 'wednesday', '08:00', '18:00', '{\"en\":\"‘The hospital is an integral part of a social and medical organization, the function of which is to provide for the population complete healthcare, both curative and preventive\"}', 14);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Gleneagles Global Hospitals Hyderabad\"}', '{\"en\":\"Gleneagles Global Hospitals\"}', 20, '2022-03-02 08:52:42', '2022-04-07 03:54:02'),
(3, '{\"en\":\"Poona Hospital\"}', '{\"en\":\"<p><span style=\\\"color: rgb(65, 65, 70); font-family: Camphor; font-size: 14px;\\\"><span style=\\\"font-family: Verdana;\\\"><b>Poona Hospital<\\/b> And Research Centre is an <b>Orthopedics hospital<\\/b> in <b>Sadashiv Peth<\\/b>, <b>Pune<\\/b>. The hospital is visited by doctors like <b>Dr<\\/b>. <b>Nitin Abhyankar<\\/b>,<b> Dr. Nachiket Dubale<\\/b> and <b>Dr. Ashok Desai<\\/b><\\/span>.<\\/span><\\/p><h2 class=\\\"c-profile--details u-bold u-spacer--bottom-less\\\" data-qa-id=\\\"address_title\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\\\"><span style=\\\"font-family: Verdana;\\\">Address :-<\\/span>&nbsp;<\\/span><\\/h2><h2 class=\\\"c-profile--details u-bold u-spacer--bottom-less\\\" data-qa-id=\\\"address_title\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-size: 14px; font-weight: 400; font-family: Verdana;\\\">27, Sadashiv Peth, Landmark: Near Alka Talkies<\\/span><br style=\\\"box-sizing: inherit; font-size: 14px; font-weight: 400;\\\"><span style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 14px; line-height: inherit; vertical-align: baseline; font-family: Verdana;\\\">Landmark<\\/span><span style=\\\"font-size: 14px; font-weight: 400; font-family: Verdana;\\\">:&nbsp;<\\/span><span style=\\\"font-size: 14px; font-weight: 400; font-family: Verdana;\\\">Near Alka Talkies<\\/span><br style=\\\"box-sizing: inherit; font-size: 14px; font-weight: 400;\\\"><span style=\\\"font-size: 14px; font-weight: 400;\\\">Sadashiv Peth<\\/span><span style=\\\"font-size: 14px; font-weight: 400;\\\">,&nbsp;<\\/span><span style=\\\"font-size: 14px; font-weight: 400;\\\">Pune.<\\/span><br><\\/h2>\"}', 7, '2022-03-02 08:52:42', '2022-04-07 02:56:42'),
(4, '{\"en\":\"Ozone Hospital Hyderabad\"}', '{\"en\":\"Ozone Hospital Hyderabad\"}', 18, '2022-03-02 08:52:42', '2022-04-07 03:48:44'),
(5, '{\"en\":\"Prasad Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(34, 34, 34); font-family: Verdana; font-size: 14px;\\\">Best Multispeciality Hospital in <b>KPHB Colony Hyderabad<\\/b>: <b>Prasad Hospital<\\/b> is also the Best children hospital, <b>NABH <\\/b>Accredited, promoted by a group of eminent doctors bringing the Advance Medical Technology with in the reach of Common man at an affordable treatment.<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 10:50:28'),
(6, '{\"en\":\"Sahyadri Hospital Pune\"}', '{\"en\":\"<p><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\"><b>Sahyadri Hospitals<\\/b> is the largest chain of hospitals in Maharashtra. It is the brainchild of <b>Dr. Charudutt Apte<\\/b>, one of<\\/span><br style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\">India’s most renowned <b>Neurosurgeons<\\/b> and more importantly an ardent practitioner of ethical medical practices.<\\/span><\\/p><p><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">The flagship hospital of Sahyadri Group was launched in November 2004. Sahyadri Hospital is an NABH Accredited 200 bedded multispecialty quaternary care hospital, a right blend of experienced expertise, latest technology, and professional management to provide high-quality medical care comparable to in the western world. It is an excellence in Neurosciences &amp; one of the leading Bone Marrow Transplant centers in Western India &amp; High-end Haematology referral Centre in India. The hospital has advanced to become a quaternary healthcare destination with an introduction to the state-of-the-art facility for liver &amp; pancreas transplants &amp; hepatobiliary surgeries.<\\/span><br><\\/p><p><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\"><b>Address :-<\\/b><\\/span><\\/p><p><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">Plot Number 30 C, Karve Road, Erandawane<\\/span><br style=\\\"box-sizing: inherit; color: rgb(65, 65, 70); font-family: Camphor; font-size: 14px;\\\"><span style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Verdana; vertical-align: baseline; color: rgb(65, 65, 70);\\\">Landmark&nbsp;<\\/span><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">:-&nbsp;&nbsp;<\\/span><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">Near Gharware College<\\/span><br style=\\\"box-sizing: inherit; color: rgb(65, 65, 70); font-family: Camphor; font-size: 14px;\\\"><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">Deccan Gymkhana<\\/span><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">,&nbsp;<\\/span><span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">Pune.<\\/span><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\"><br><\\/span><\\/p>\"}', 5, '2022-03-02 08:52:42', '2022-04-07 03:11:54'),
(7, '{\"en\":\"Nakshatra Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(0, 0, 0); font-family: \\\"Titillium Web\\\", sans-serif; font-size: 18px; letter-spacing: 0.1px; background-color: rgb(221, 236, 255);\\\">Our Misson is to provide best care to all our patients, using our full capabilities, through integrating best clinical practices, education and research.<\\/span>\"}', 28, '2022-03-02 08:52:42', '2022-04-06 10:13:43'),
(9, '{\"en\":\"Yashoda Hospital Hyderabad\"}', '{\"en\":\"<div><font color=\\\"#333333\\\" face=\\\"Myriad Pro, sans-serif\\\"><span style=\\\"font-size: 18px;\\\"><b>About Yashoda Hospital :-<\\/b><\\/span><\\/font><\\/div><div><font color=\\\"#333333\\\" face=\\\"Myriad Pro, sans-serif\\\"><span style=\\\"font-size: 18px;\\\"><br><\\/span><\\/font><\\/div><ul style=\\\"margin-bottom: 10px; padding-left: 15px; color: rgb(51, 51, 51); font-family: &quot;Myriad Pro&quot;, sans-serif; font-size: 18px;\\\"><li>Established by<b> Dr. G. Surender Rao<\\/b> in <b>1989 <\\/b>as a small clinic, Yashoda Hospitals is a multi-speciality hospital which is <b>ISO certified<\\/b> and the laboratories and facilities are accredited by <b>NABL <\\/b>and <b>NABH<\\/b>.<\\/li><li>Yashoda Group has 3 independent multi-specialty hospitals located at <b>Somajiguda<\\/b>, <b>Secunderabad <\\/b>and <b>Malakpet<\\/b>.<\\/li><li><p dir=\\\"ltr\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\\\">All the three hospitals had more than <b>25, 00,000 patients<\\/b> admissions in the last 5 years and have performed 1, 00,000 major surgeries per year.<\\/p><\\/li><\\/ul>\"}', 21, '2022-03-02 08:52:42', '2022-04-07 02:47:04'),
(10, '{\"en\":\"Prasad Hospital Hyderabad\"}', '{\"en\":\"<span style=\\\"color: rgb(5, 8, 66); font-family: Verdana; font-size: 14px;\\\">Prasad Hospital not only the Best Hospital in KPHB Colony but also the Best Children in&nbsp; Hyderabad, a 130 bedded Multispeciality hospital promoted by a group of eminent doctors is located on the MIG – 204, Opp. Grand Sitara Hotel , KPHB Colony on the Mumbai Highway, Kukatpally , Hyderabad – 500072 a thickly populated commercial cum residential locality of various colonies housing several employees. The hospital is easily accessible from all parts of twin cities by various kind of public transport such as local city buses, auto rickshaws and local MMTS trains. The main objective of the hospital is to bring the advance medical technology with in the reach of common man, started with 50 bedded hospital initially and extended to 130 bedded multi specialty hospital in the name of&nbsp;<\\/span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: Verdana; font-size: 14px; font-weight: 600; color: rgb(5, 8, 66);\\\">‘PRASAD HOSPITAL<\\/span><span style=\\\"color: rgb(5, 8, 66); font-family: Verdana; font-size: 14px;\\\">”<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-07 03:03:35'),
(11, '{\"en\":\"Welcome to Himagiri Hospitals\"}', '{\"en\":\"<span style=\\\"color: rgb(65, 65, 70); font-family: Camphor; font-size: 14px;\\\"><b>Himagiri<\\/b> has many eminent doctors on its panel, who conduct daily OPD’s across specialties like <b>Gynecology &amp; Obstetrics, Pediatrics, General Medicine, Bariatrics, Gastroenterology, Orthopedics<\\/b> and much more. The highlights of this hospital are modular operation theaters with laminar flow, minimally invasive surgeries, <b>ultra-sophisticated Pathology Labs<\\/b>, all functional under the supervision of Renowned Surgeons, Physicians, and Skilled Support Staff. We are a <b>high-tech Himagiri Multi Speciality Care<\\/b> delivering a depth of proficiency in the absolute continuum of highly developed <b>Medical &amp; Surgical Intercession<\\/b>. With a wide-ranging mix of inpatient and outpatient services, the hospital is out-and-out committed to endow the patients with spirited, accessible and inexpensive world-class healthcare services.<\\/span><span data-qa-id=\\\"summary-shrink\\\" class=\\\"u-c-pointer u-t-link\\\" style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(3, 169, 244); cursor: pointer;\\\">&nbsp;<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-06 04:01:37'),
(13, '{\"en\":\"Why Ozone ?\"}', '{\"en\":\"<p>Ozone is one of the best hospital in Hyderabad&nbsp;<\\/p>\"}', 18, '2022-03-02 08:52:42', '2022-03-23 03:37:52'),
(14, '{\"en\":\"Yashoda Hospital\"}', '{\"en\":\"<p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 15px; vertical-align: baseline; text-size-adjust: 100%; line-height: 22px; color: rgb(51, 51, 51); font-family: Lato-Regular;\\\"><span style=\\\"font-family: Verdana;\\\"><b>Yashoda Hospital<\\/b> is one among the Best Multispecialty Hospitals in <b>Hyderabad<\\/b>, committed to offering inimitable and evidence based health care services. We are a leading and integrated healthcare center with multiple Centers of Excellence for super specialities including <b>Heart, CT surgery, Neuroscience, Cancer, Liver, Multi-organ transplants, Bones &amp; joints, Nephrology, Robotic sciences, Spine surgery, Mother &amp; Child and Fertility.<\\/b><\\/span><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 15px; vertical-align: baseline; text-size-adjust: 100%; line-height: 22px; color: rgb(51, 51, 51); font-family: Lato-Regular;\\\"><span style=\\\"font-family: Verdana;\\\">With advanced facilities and treatments, our hospital is considered as one among the Best Hospitals in Hyderabad. Well-equipped with 2400 Beds, Intensive care unit\\/operation theatre, mobile ultrasound, X-ray, 2D echo etc for critically ill patients, we have multispecialty hospitals located in <b>Somajiguda<\\/b>, <b>Secunderabad<\\/b>, and <b>Malakpet<\\/b>, <b>Hyderabad<\\/b>. This provides accessibility to our <b>24\\/7<\\/b> emergency care services that include <b>blood bank<\\/b>, <b>laboratory<\\/b>,<b> diagnostics<\\/b>, and ventilator management. An upcoming hospital in Hitech City spanning over 2 million sq ft, will add 2000 more beds and is likely to be the biggest hospital in India.<\\/span><\\/p>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 11:21:33'),
(15, '{\"en\":\"Prasad Hospital Hyderabad\"}', '{\"en\":\"Prasad Hospital Hyderabad\"}', 26, '2022-03-02 08:52:42', '2022-04-07 03:53:21'),
(16, '{\"en\":\"Citizens Speciality Hospital\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Citizens Specialty Hospital<\\/b> provides <b>24x7<\\/b> super-specialty healthcare based on top international standards of care and evidence-based protocols across a broad range of medical specialties for inpatients and outpatients. We coordinate care in a way that emphasizes the needs of patients first. We value quality and invest in technology proven for clinical effectiveness.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Our medical staff consists of experts recognized not only for their clinical abilities but their ability to work as a team to get the best outcomes for patients and extend top-level care with compassion. We place the high emphasis on exceeding rigorous quality benchmarks related to safety and performance, and we have struck strategic partnerships with firms possessing similar objectives.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">These aspects of Citizens Specialty Hospital combine to drive its primary mission of bringing the <b>world’s top healthcare standards to<\\/b> <b>India<\\/b>.<\\/span><\\/p>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 10:52:51'),
(17, '{\"en\":\"Citizens Hospital Hyderabad\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Citizens Specialty Hospital<\\/b> provides <b>24x7<\\/b> super-specialty healthcare based on top international standards of care and evidence-based protocols across a broad range of medical specialties for inpatients and outpatients. We coordinate care in a way that emphasizes the needs of patients first. We value quality and invest in technology proven for clinical effectiveness.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Our medical staff consists of experts recognized not only for their clinical abilities but their ability to work as a team to get the best outcomes for patients and extend top-level care with compassion. We place the high emphasis on exceeding rigorous quality benchmarks related to safety and performance, and we have struck strategic partnerships with firms possessing similar objectives.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">These aspects of <b>Citizens Specialty Hospital<\\/b> combine to drive its primary mission of bringing the <b>world’s top healthcare standards to India<\\/b>.<\\/span><\\/p>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 04:49:14'),
(18, '{\"en\":\"Medicover Hospital\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Medicover Hospitals<\\/b> – <b>HITEC city <\\/b>is the nodal center for all the <b>17 hospitals <\\/b>run by the Medicover Group in <b>India<\\/b>. Located in the <b>IT <\\/b>and Cultural cluster of the city of <b>Hyderabad<\\/b>. Medicover Hospital – HITEC city offers a wide range of services, with centers of excellence in <b>Cardiology<\\/b>, <b>Orthopedics<\\/b>, <b>Neurosciences<\\/b>, <b>Gastroenterology<\\/b>, <b>Emergency Care <\\/b>and Internal Medicine along with more than other 25 specialties.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Medicover Hospital – HITEC city is a <b>250-bed<\\/b> capacity hospital equipped with cutting edge technology in diagnostics and care. The hospital hosts an expert team of doctors with national and international accreditation across various departments.<\\/span><span data-qa-id=\\\"summary-shrink\\\" class=\\\"u-c-pointer u-t-link\\\" style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Verdana; vertical-align: baseline; color: rgb(3, 169, 244); cursor: pointer;\\\">&nbsp;<\\/span><\\/p>\"}', 24, '2022-03-02 08:52:42', '2022-04-07 02:35:16'),
(19, '{\"en\":\"Himagiri Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">We believe delivery of world class healthcare is achieved through a combination of unparalleled quality and clinical excellence along with a true focus on the personal needs of our patients and their families. At <b>Himagiri Hospitals<\\/b> our priority is to focus on the delivery of a special brand of health and care to patients. Within a world class hospital, this unique approach is what makes the difference.<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-06 10:09:26'),
(20, '{\"en\":\"Continental Hospital Hyderabad\"}', '{\"en\":\"<p style=\\\"color: rgb(109, 111, 113); font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify;\\\"><span style=\\\"font-family: Verdana;\\\"><b>Continental<\\/b> <b>Hospitals <\\/b>is a <b>NABH <\\/b>and <b>JCI <\\/b>accredited facility in <b>Hyderabad <\\/b>offering multispecialty, tertiary and quaternary care services. The hospital has <b>Green OT<\\/b>, Level 3 <b>NICU<\\/b> and <b>PICU<\\/b>, and is known for it’s efficient critical care team. Continental Hospitals has a special Health check lounge and a dedicated area for International Patients. state-of-the-art facilities and medical equipment, as well as the latest communication and information technology.<\\/span><\\/p><div style=\\\"font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify; position: absolute; left: -98653px;\\\"><span style=\\\"font-family: Verdana;\\\">Prima di giocare per soldi, è fondamentale scegliere un casinò online affidabile. Ci sono molti casinò online&nbsp;<\\/span><a href=\\\"https:\\/\\/casinoprofessor.ch\\/it\\/\\\" style=\\\"transition: color 110ms ease-in-out 0s; box-shadow: none;\\\">https:\\/\\/casinoprofessor.ch\\/it\\/<\\/a><span style=\\\"font-family: Verdana;\\\">&nbsp;affidabili in Svizzera che praticano un trattamento equo dei giocatori, ma ce ne sono anche molti che cercano di imbrogliare i giocatori. Per aiutarti a trovare un buon casinò, controlla la nostra lista dei migliori casinò online. Trovare un casinò onesto tra le centinaia di piattaforme di gioco non è facile. Le valutazioni dei casinò online onesti per soldi ti aiutano a scegliere un buon club online e diventano uno strumento di monitoraggio. Il giocatore ha la possibilità di tenere traccia di nuove promozioni, tornei e spendere soldi nei club con la più alta percentuale di ritorno.<\\/span><\\/div><p style=\\\"color: rgb(109, 111, 113); font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify;\\\"><span style=\\\"font-family: Verdana;\\\">Continental Hospitals is a part of <b>IHH<\\/b> Healthcare, a leading premium integrated healthcare provider with a network of 84 hospitals and more than 16,000 licensed beds. IHH is a leading player in the home markets of <b>Malaysia<\\/b>, <b>Singapore<\\/b>, <b>Turkey <\\/b>and <b>India<\\/b>, and in their key growth markets of <b>China<\\/b> and <b>Hong Kong<\\/b>.<\\/span><\\/p>\"}', 31, '2022-03-02 08:52:42', '2022-04-07 02:40:01'),
(21, '{\"en\":\"Sunshine Hospital Hyderabad\"}', '{\"en\":\"<span style=\\\"color: rgb(36, 36, 36); font-family: Verdana; font-size: 20px;\\\">Sunshine Hospitals is a 350-bed, multispecialty, tertiary care hospital with 30 plus specialties. The Hospital has been set up to offer qualitative care to all its patients in a patient-friendly environment with a focus on clinical excellence, patients’ safety &amp; dignity, transparency &amp; affordability, and accessibility of quality care to every patient. Since its inception, Sunshine hospital has been offering world-class treatment and facilities to patients with compassion, teamwork, transparency, and a process-driven approach. By bringing in the best healthcare practices from across the world and by engaging the best physicians from India and abroad, Sunshine got the most prestigious and coveted NABH accreditation from the highest body of accreditation in India. This signifies Sunshine’s commitment to quality, safety, and continuous improvement in the delivery of care to patients.<\\/span>\"}', 22, '2022-03-02 08:52:42', '2022-04-07 03:43:54'),
(22, '{\"en\":\"Welcome to Medicover Hospital\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Medicover Hospitals<\\/b> – HITEC city is the nodal center for all the 17 hospitals run by the Medicover Group in India. <b>Located in the IT and Cultural cluster of the city of Hyderabad<\\/b>. Medicover Hospital – HITEC city offers a wide range of services, with centers of excellence in <b>Cardiology<\\/b>, <b>Orthopedics<\\/b>, <b>Neurosciences<\\/b>, <b>Gastroenterology<\\/b>,<b> Emergency Care<\\/b> and Internal Medicine along with more than other 25 specialties.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Medicover Hospital – HITEC city is a 250-bed capacity hospital equipped with cutting edge technology in diagnostics and care. The hospital hosts an expert team of doctors with national and international accreditation across various departments.<\\/span><span data-qa-id=\\\"summary-shrink\\\" class=\\\"u-c-pointer u-t-link\\\" style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Verdana; vertical-align: baseline; color: rgb(3, 169, 244); cursor: pointer;\\\">&nbsp;<\\/span><\\/p>\"}', 24, '2022-03-02 08:52:42', '2022-04-06 05:09:04'),
(23, '{\"en\":\"Himgiri Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">We believe delivery of world class healthcare is achieved through a combination of unparalleled quality and clinical excellence along with a true focus on the personal needs of our patients and their families. At <b>Himagiri Hospitals <\\/b>our priority is to focus on the delivery of a special brand of health and care to patients. Within a world class hospital, this unique approach is what makes the difference.<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-07 02:42:12'),
(25, '{\"en\":\"Welcome to Sunshine Hospitals - Top Multi Speciality Hospital in India\"}', '{\"en\":\"<h4 class=\\\"vc_custom_heading\\\" style=\\\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-size: 20px; line-height: 1.8em; color: rgb(51, 51, 51); font-family: Lato; position: relative !important;\\\"><strong style=\\\"background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\\">2nd Largest<\\/strong>&nbsp;<b>Orthopaedic Hospital in Asia<\\/b><\\/h4><div class=\\\"wpb_text_column wpb_content_element \\\" style=\\\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 35px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(61, 61, 61); font-family: Lato; font-size: 15px;\\\"><div class=\\\"wpb_wrapper\\\" style=\\\"background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\\"><p style=\\\"background: 0px 0px; border: 0px; margin: 10px 0px 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(22, 22, 22); line-height: 26px; letter-spacing: 0.4px !important;\\\"><span style=\\\"font-family: Verdana;\\\"><b>Sunshine Hospitals<\\/b> is a <b>350+ beds<\\/b>, Multispeciality tertiary care hospital with<b> 30-plus specialities<\\/b>. The Hospital has been set up to offer qualitative care to all its patients in a patient-friendly environment with a focus on clinical excellence, patients’ safety &amp; dignity, transparency &amp; affordability and accessibility of quality care to every patient. Since its inception, Sunshine hospital has been offering world-class treatment and facilities to patients with compassion, teamwork, transparency and process-driven approach. By bringing in the best healthcare practices from across the world and by engaging the best physicians from India and abroad, Sunshine got the most prestigious and coveted <b>NABH<\\/b> accreditation from the highest body of accreditation in India. This signifies <b>Sunshine’s commitment to quality, safety and continuous improvement in the delivery of care to patients<\\/b>.<\\/span><\\/p><\\/div><\\/div>\"}', 22, '2022-03-02 08:52:42', '2022-04-06 04:37:54'),
(26, '{\"en\":\"Welcome in Nakshatra Hospitals\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">At<b> Nakshatra hospitals<\\/b>, our primary value is that <b>\\\"the needs of the patient come first\\\"<\\/b> and the hallmark of Nakshatra hospitals is integrated group practice. This means a <b>multi-disciplinary team<\\/b> will focus on<b> your care<\\/b>. You will be surrounded by a full team of experts ensuring you receive a comprehensive, individualized wellness experience<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Vision :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Our vision is to be the hospital of choice, recognized for providing the highest quality, cost effective and compassionate health care in the city of Hyderabad.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Mission :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">To provide best care to all our patients, using our full capabilities, through integrating best clinical practices, education and research.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Values :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Respect :-<\\/b> To treat our patients, their families and colleagues with dignity.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Compassion :-<\\/b> Sensitive towards patients and family members and showing utmost empathy in difficult times.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Integrity :-<\\/b> We strive to maintain highest standards of professionalism by taking personal responsibility towards patients expectations and needs.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Teamwork :-<\\/b> Through collaboration we acknowledge and enhance individual staff member’s contributions.<\\/span><\\/p>\"}', 28, '2022-03-02 08:52:42', '2022-04-06 05:00:22'),
(27, '{\"en\":\"Why Choose Prasad Hospital for Child Care\"}', '{\"en\":\"<span style=\\\"color: rgb(5, 8, 66); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\\\"><b>Prasad Hospital<\\/b> not only the Best Hospital in <b>KPHB Colony<\\/b> but also the <b>Best Children in&nbsp; Hyderabad<\\/b>, a <b>130 Bedded<\\/b> Multispeciality Hospital promoted by a group of eminent doctors is located on the <b>MIG – 204<\\/b>,<b> Opp. Grand Sitara Hotel , KPHB Colony on the Mumbai Highway, Kukatpally , Hyderabad – 500072<\\/b> a thickly populated commercial cum residential locality of various colonies housing several employees. The hospital is easily accessible from all parts of twin cities by various kind of public transport such as local city buses, auto rickshaws and local MMTS trains. The main objective of the hospital is to bring the advance medical technology with in the reach of common man, started with 50 bedded hospital initially and extended to 130 bedded multi specialty hospital in the name of&nbsp;<\\/span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-weight: 600; color: rgb(5, 8, 66);\\\">‘PRASAD HOSPITAL<\\/span><span style=\\\"color: rgb(5, 8, 66); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\\\">”<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 04:12:23'),
(28, '{\"en\":\"Aster Prime Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(34, 34, 34); font-family: Verdana; font-size: 14px;\\\"><b>Aster Prime Hospital<\\/b> is private, full-fledged <b>204-bed multi-specialty hospitals<\\/b> situated in the strategic location of <b>Ameerpet<\\/b> at <b>Hyderabad<\\/b>. As one of the pioneer corporate healthcare facilities in the state of <b>Telangana<\\/b>, Aster Prime Hospitals has always been in the forefront offering healthcare services of International standards right here at Hyderabad within the reach of its community. As a leading healthcare provider, the hospital provides patients with the latest technological innovations for diagnosis and treatment of the most acute clinical conditions, highly skilled Medical and Nursing Expertise, round the clock personalized care prompting faster recovery of the patient.<\\/span>\"}', 30, '2022-03-02 08:52:42', '2022-04-07 02:49:27'),
(30, '{\"en\":\"Sasoon Hospital Pune\"}', '{\"en\":\"<span style=\\\"color: rgb(102, 102, 102); font-family: Verdana; font-size: 13px; text-align: justify;\\\">In Pune, Sasoon General Hospital is a recognized name in patient care. It was incepted in the year 1941. They are one of the well-known Hospitals in Sasoon Road. Backed with a vision to offer the best in patient care and equipped with technologically advanced healthcare facilities, they are one of the upcoming names in the healthcare industry. Located in , this hospital is easily accessible by various means of transport. A team of well-trained medical staff, non-medical staff and experienced clinical technicians work round-the-clock to offer various services . Their professional services make them a sought after Hospitals in Pune. A team of doctors on board, including specialists are equipped with the knowledge and expertise for handling various types of medical cases. Visit their official website here www.bjmcpune.org to know more about them and their services.<\\/span>\"}', 6, '2022-03-02 08:52:42', '2022-04-07 03:35:11'),
(32, '{\"en\":\"Apollo Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(38, 38, 38); font-family: Verdana; font-size: 12px; letter-spacing: 0.1px;\\\"><b>Apollo Hospital Established by Dr. Pratap C Reddy in 1983<\\/b>, Apollo Healthcare has a robust presence across the healthcare ecosystem. From routine wellness &amp; preventive health care to innovative life-saving treatments and diagnostic services, Apollo Hospitals has touched more than <b>120 million<\\/b> lives from over <b>120 countries<\\/b>, offering the best clinical outcomes.<\\/span>\"}', 25, '2022-03-02 08:52:42', '2022-04-06 10:20:24'),
(34, '{\"en\":\"Sasoon Hospital\"}', '{\"en\":\"<p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: none medium; padding: 0px 0px 10px; text-size-adjust: none; color: rgb(102, 102, 102); font-size: 13px; text-align: justify; word-break: break-word; font-family: Roboto, sans-serif, arial;\\\"><span style=\\\"font-family: Verdana;\\\"><b>Sasoon General Hospital<\\/b> in <b>Pune<\\/b>. Hospitals with Address, Contact Number, Photos, Maps. View Sasoon General Hospital, Pune on Justdial.<\\/span><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: none medium; padding: 0px 0px 10px; text-size-adjust: none; color: rgb(102, 102, 102); font-size: 13px; text-align: justify; word-break: break-word; font-family: Roboto, sans-serif, arial;\\\"><span style=\\\"font-family: Verdana;\\\">In Pune, Sasoon General Hospital is a recognized name in patient care. It was incepted in the year <b>1941<\\/b>. They are one of the well-known Hospitals in <b>Sasoon Road<\\/b>. Backed with a vision to offer the best in patient care and equipped with technologically advanced healthcare facilities, they are one of the upcoming names in the healthcare industry. Located in , this hospital is easily accessible by various means of transport. A team of well-trained medical staff, non-medical staff and experienced clinical technicians work round-the-clock to offer various services . Their professional services make them a sought after Hospitals in Pune. A team of doctors on board, including specialists are equipped with the knowledge and expertise for handling various types of medical cases. Visit their official website here www.bjmcpune.org to know more about them and their services.<\\/span><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: none medium; padding: 0px 0px 10px; text-size-adjust: none; color: rgb(102, 102, 102); font-size: 13px; text-align: justify; word-break: break-word; font-family: Roboto, sans-serif, arial;\\\"><span style=\\\"font-family: Verdana;\\\"><br><\\/span><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: none medium; padding: 0px 0px 10px; text-size-adjust: none; color: rgb(102, 102, 102); font-size: 13px; text-align: justify; word-break: break-word; font-family: Roboto, sans-serif, arial;\\\"><span style=\\\"font-family: Verdana;\\\">Address :-<\\/span><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: none medium; padding: 0px 0px 10px; text-size-adjust: none; color: rgb(102, 102, 102); font-size: 13px; text-align: justify; word-break: break-word; font-family: Roboto, sans-serif, arial;\\\"><span style=\\\"color: rgb(66, 66, 66); font-size: 14px; text-align: left; background-color: rgb(247, 247, 247);\\\">Sassoon General Hospitals &amp; College Of Nursing, Jay Prakash Narayan Road, Sasoon Road, Pune - 411001, Near PMT Bus Depot, Opposite Central Building, Near Railway Station, Pune.<\\/span><span style=\\\"font-family: Verdana;\\\"><br><\\/span><\\/p>\"}', 6, '2022-03-02 08:52:42', '2022-04-07 03:00:46');
INSERT INTO `awards` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(35, '{\"en\":\"Citizens Speciality Hospital\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Citizens Specialty Hospital provides 24x7 super-specialty healthcare based on top international standards of care and evidence-based protocols across a broad range of medical specialties for inpatients and outpatients. We coordinate care in a way that emphasizes the needs of patients first. We value quality and invest in technology proven for clinical effectiveness.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Our medical staff consists of experts recognized not only for their clinical abilities but their ability to work as a team to get the best outcomes for patients and extend top-level care with compassion. We place the high emphasis on exceeding rigorous quality benchmarks related to safety and performance, and we have struck strategic partnerships with firms possessing similar objectives.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">These aspects of Citizens Specialty Hospital combine to drive its primary mission of bringing the world’s top healthcare standards to India.<\\/span><\\/p>\"}', 23, '2022-03-02 08:52:42', '2022-04-07 03:15:10'),
(37, '{\"en\":\"Poona Hospital Pune\"}', '{\"en\":\"<p><b>Address :-<\\/b>&nbsp;<\\/p><p>Sadashiv Peth, Pune<\\/p>\"}', 7, '2022-03-02 08:52:42', '2022-04-07 03:52:38'),
(38, '{\"en\":\"Gleneagles Global Hospital, Lakdi-Ka-Pul, Hyderabad\"}', '{\"en\":\"<span style=\\\"color: rgb(106, 106, 106); font-family: &quot;Tahoma Regular&quot;; font-size: 14px; text-align: justify;\\\"><b>Gleneagles Global Hospital<\\/b> located at <b>Lakdi-ka-pul<\\/b>, was the first Gleneagles Global Hospitals facility opened in <b>Hyderabad<\\/b>. The facility is known as <b>one of the best tertiary care multi-super speciality hospitals in India<\\/b>. With world-renowned doctors and the best of medical facilities, the hospital has been at the forefront of performing rare and complex surgeries including the first Heart Transplant in the region, Liver and Kidney Transplants amongst others. Expert care and advanced surgical procedures are offered at the facility for a wide range of specialties such as <b>Hepatology, Nephrology, Bariatrics, Gastroenterology, Multi-Organ Transplants and others<\\/b>.<\\/span>\"}', 20, '2022-03-02 08:52:42', '2022-04-06 04:07:22'),
(39, '{\"en\":\"Yashoda Hospital Hyderabad\"}', '{\"en\":\"<ul style=\\\"margin-bottom: 10px; padding-left: 15px; color: rgb(51, 51, 51); font-family: &quot;Myriad Pro&quot;, sans-serif; font-size: 18px;\\\"><li>Established by Dr. G. Surender Rao in 1989 as a small clinic, Yashoda Hospitals is a multi-speciality hospital which is ISO certified and the laboratories and facilities are accredited by NABL and NABH.<\\/li><li>Yashoda Group has 3 independent multi-specialty hospitals located at Somajiguda, Secunderabad and Malakpet.<\\/li><li><p dir=\\\"ltr\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\\\">All the three hospitals had more than 25, 00,000 patients admissions in the last 5 years and have performed 1, 00,000 major surgeries per year.<\\/p><\\/li><\\/ul>\"}', 21, '2022-03-02 08:52:42', '2022-04-07 03:26:49'),
(40, '{\"en\":\"Nakshatra Hospital Hyderabad\"}', '{\"en\":\"<p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">At <b>Nakshatra hospitals<\\/b>, our primary value is that \\\"<b>the needs of the patient come first<\\/b>\\\" and the hallmark of Nakshtra hospitals is integrated group practice. This means a multi-disciplinary team will focus on your care. You will be surrounded by a full team of experts ensuring you receive a comprehensive, individualized wellness experience<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Vision :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">Our vision is to be the hospital of choice, recognized for providing the highest quality, cost effective and compassionate health care in the city of Hyderabad.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Mission :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\">To provide best care to all our patients, using our full capabilities, through integrating best clinical practices, education and research.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Values :-<\\/b><\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Respect :-<\\/b> To treat our patients, their families and colleagues with dignity.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Compassion :- <\\/b>Sensitive towards patients and family members and showing utmost empathy in difficult times.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Integrity :-<\\/b> We strive to maintain highest standards of professionalism by taking personal responsibility towards patients expectations and needs.<\\/span><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><\\/p><p class=\\\"c-profile__description\\\" style=\\\"box-sizing: inherit; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Camphor; vertical-align: baseline; color: rgb(65, 65, 70);\\\"><span style=\\\"font-family: Verdana;\\\"><b>Teamwork :-<\\/b> Through collaboration we acknowledge and enhance individual staff member’s contributions.<\\/span><span data-qa-id=\\\"summary-shrink\\\" class=\\\"u-c-pointer u-t-link\\\" style=\\\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(3, 169, 244); cursor: pointer;\\\">&nbsp;<\\/span><\\/p>\"}', 28, '2022-03-02 08:52:42', '2022-04-07 03:21:02'),
(41, '{\"en\":\"Welcome in Aster Prime Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(56, 79, 126); font-family: \\\"Titillium Web\\\", sans-serif;\\\"><b>Aster Prime Hospitals<\\/b> offer quaternary medical care with best-in-class technology and facilities on par with global standards to ensure world-class healthcare to all the patients. As the leading healthcare provider, the hospital provides patients with the latest technological innovations for diagnosis and treatment of the most acute clinical conditions, highly skilled Medical and Nursing Expertise, round the clock personalized care promoting faster recovery of the patient. Aster Prime Hospital is a private, full-fledged <b>204-bed<\\/b> multi-speciality hospital situated in the strategic location of <b>Ameerpet at Hyderabad<\\/b>. As one of the pioneer corporate healthcare facilities in the state of Telangana, Aster Prime Hospitals has always been at the forefront offering healthcare services of international standards right here at Hyderabad within the reach of its community.<\\/span>\"}', 30, '2022-03-02 08:52:42', '2022-04-06 09:54:30'),
(42, '{\"en\":\"Ozone Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(34, 34, 34); font-family: Verdana; font-size: 14px;\\\"><b>Ozone Hospitals <\\/b>is the ideal conglomeration of a team of internationally educated Indian doctors. The paucity of high-end medical infrastructure and exorbitant costs of the existing corporate healthcare services. Defying the prevailing norm that a corporate hospital management team is indispensable for efficient management; Ozone Hospitals is personally headed by the super-specialists themselves. Ozone sets itself apart from the rest by committing itself to provide quality tertiary care at a very affordable price.<\\/span>\"}', 18, '2022-03-02 08:52:42', '2022-04-07 02:37:08'),
(43, '{\"en\":\"Sahyadri Hospital Pune\"}', '{\"en\":\"<span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\">Sahyadri Hospitals is the largest chain of hospitals in Maharashtra. It is the brainchild of Dr. Charudutt Apte, one of<\\/span><br style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 17px; text-align: center;\\\">India’s most renowned Neurosurgeons and more importantly an ardent practitioner of ethical medical practices<\\/span>\"}', 5, '2022-03-02 08:52:42', '2022-04-07 03:37:02'),
(44, '{\"en\":\"Why Choose Apollo Healthcare\"}', '{\"en\":\"<p><span style=\\\"color: rgb(38, 38, 38); font-family: Lato-Regular, Arial, sans-serif; font-size: 12px; letter-spacing: 0.1px;\\\"><b><span style=\\\"font-family: Verdana;\\\">Apollo Hospitals Established by Dr. Pratap C. Reddy in 1983<\\/span><\\/b><span style=\\\"font-family: Verdana;\\\">, Apollo Healthcare has a robust presence across the healthcare ecosystem. From routine wellness &amp; preventive health care to innovative life-saving treatments and diagnostic services, Apollo Hospitals has touched <\\/span><b><span style=\\\"font-family: Verdana;\\\">more than 120 million lives from over 120 countries<\\/span><\\/b><span style=\\\"font-family: Verdana;\\\">, offering the <\\/span><b><span style=\\\"font-family: Verdana;\\\">best clinical outcomes<\\/span><\\/b><span style=\\\"font-family: Verdana;\\\">.<\\/span><\\/span><\\/p><p><span style=\\\"background-color: rgb(247, 245, 245); color: rgb(38, 38, 38); font-family: Verdana; font-size: 14px; letter-spacing: 0.1px;\\\">Largest network of the world’s finest and brightest medical experts who provide compassionate care using outstanding expertise and advanced technology.<\\/span><\\/p>\"}', 25, '2022-03-02 08:52:42', '2022-04-06 04:27:01'),
(46, '{\"en\":\"Welcome in Ozone Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(34, 34, 34); font-family: Verdana; font-size: 14px;\\\"><b>Ozone Hospitals <\\/b>is the ideal conglomeration of a team of internationally educated <b>Indian doctors<\\/b>. The paucity of high-end medical infrastructure and exorbitant costs of the existing corporate healthcare services. Defying the prevailing norm that a corporate hospital management team is indispensable for efficient management; Ozone Hospitals is personally headed by the super-specialists themselves. Ozone sets itself apart from the rest by committing itself to provide quality tertiary care at a very affordable price.<\\/span>\"}', 18, '2022-03-02 08:52:42', '2022-04-06 10:06:47'),
(47, '{\"en\":\"Why is Yashoda Hospitals known as the best hospital in Hyderabad?\"}', '{\"en\":\"<p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 15px; vertical-align: baseline; text-size-adjust: 100%; line-height: 22px; color: rgb(51, 51, 51); font-family: Lato-Regular;\\\"><b>Yashoda Hospital<\\/b> is one among the Best Multispecialty Hospitals in <b>Hyderabad<\\/b>, committed to offering inimitable and evidence based health care services. We are a leading and integrated healthcare center with multiple Centers of Excellence for <b>Super Specialities<\\/b> including<b> Heart, CT surgery, Neuroscience, Cancer, Liver, Multi-organ transplants, Bones &amp; joints, Nephrology, Robotic sciences, Spine surgery, Mother &amp; Child and<\\/b><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 15px; vertical-align: baseline; text-size-adjust: 100%; line-height: 22px; color: rgb(51, 51, 51); font-family: Lato-Regular;\\\"><b> Fertility :-<\\/b><\\/p><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 15px; vertical-align: baseline; text-size-adjust: 100%; line-height: 22px; color: rgb(51, 51, 51); font-family: Lato-Regular;\\\">With advanced facilities and treatments, our hospital is considered as one among the<b> Best Hospitals in Hyderabad<\\/b>. Well-equipped with <b>2400 Beds<\\/b>, <b>Intensive Care Unit\\/Operation Theatre<\\/b>, <b>mobile ultrasound, X-ray, 2D echo<\\/b> etc for critically ill patients, we have multispecialty hospitals located in <b>Somajiguda<\\/b>, <b>Secunderabad<\\/b>, and <b>Malakpet<\\/b>, <b>Hyderabad<\\/b>. This provides accessibility to our <b>24\\/7 emergency care services<\\/b> that include <b>blood bank, laboratory, diagnostics, and ventilator management.<\\/b> An upcoming hospital in Hitech City spanning over 2 million sq ft, will add 2000 more beds and is likely to be the <b>biggest hospital in India<\\/b>.<\\/p>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 03:54:02'),
(49, '{\"en\":\"Prasad Hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(5, 8, 66); font-family: Verdana; font-size: 14px;\\\"><b>Prasad Hospital<\\/b> not only the Best Hospital in <b>KPHB Colony<\\/b> but also the Best Children in&nbsp;<b>Hyderabad<\\/b>, a <b>130 bedded Multispeciality hospital<\\/b> promoted by a group of eminent doctors is located on the <b>MIG – 204<\\/b>, <b>Opp. Grand Sitara Hotel<\\/b> , <b>KPHB Colony on the Mumbai Highway<\\/b>, <b>Kukatpally<\\/b> , <b>Hyderabad <\\/b>– <b>500072 <\\/b>a thickly populated commercial cum residential locality of various colonies housing several employees. The hospital is easily accessible from all parts of twin cities by various kind of public transport such as local city buses, auto rickshaws and local MMTS trains. The main objective of the hospital is to bring the advance medical technology with in the reach of common man, started with 50 bedded hospital initially and extended to 130 bedded multi specialty hospital in the name of <b>\\\"<\\/b><\\/span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: Verdana; font-size: 14px; color: rgb(5, 8, 66);\\\"><b>PRASAD HOSPITAL\\\"<\\/b><\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 10:17:51'),
(50, '{\"en\":\"Himagiri Hospital Hyderabad\"}', '{\"en\":\"<span style=\\\"color: rgb(65, 65, 70); font-family: Verdana; font-size: 14px;\\\">We believe delivery of world class healthcare is achieved through a combination of unparalleled quality and clinical excellence along with a true focus on the personal needs of our patients and their families. At Himagiri Hospitals our priority is to focus on the delivery of a special brand of health and care to patients. Within a world class hospital, this unique approach is what makes the difference.<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-07 03:47:38'),
(51, '{\"en\":\"Welcome to Continental Hospital\"}', '{\"en\":\"<p style=\\\"color: rgb(109, 111, 113); font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify;\\\"><b><span style=\\\"font-family: Verdana;\\\">Continental Hospitals<\\/span><\\/b><span style=\\\"font-family: Verdana;\\\"> is a <\\/span><b>NABH <\\/b><span style=\\\"font-family: Verdana;\\\">and <\\/span><b>JCI <\\/b><span style=\\\"font-family: Verdana;\\\">accredited facility in <\\/span><b>Hyderabad <\\/b><span style=\\\"font-family: Verdana;\\\">offering multispecialty, tertiary and quaternary care services. The hospital has Green OT, Level 3 NICU and PICU, and is known for it’s efficient critical care team. Continental Hospitals has a special Health check lounge and a dedicated area for International Patients. state-of-the-art facilities and medical equipment, as well as the latest communication and information technology.<\\/span><\\/p><div style=\\\"font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify; position: absolute; left: -98653px;\\\"><span style=\\\"font-family: Verdana;\\\">Prima di giocare per soldi, è fondamentale scegliere un casinò online affidabile. Ci sono molti casinò online&nbsp;<\\/span><a href=\\\"https:\\/\\/casinoprofessor.ch\\/it\\/\\\" style=\\\"transition: color 110ms ease-in-out 0s; box-shadow: none;\\\">https:\\/\\/casinoprofessor.ch\\/it\\/<\\/a><span style=\\\"font-family: Verdana;\\\">&nbsp;affidabili in Svizzera che praticano un trattamento equo dei giocatori, ma ce ne sono anche molti che cercano di imbrogliare i giocatori. Per aiutarti a trovare un buon casinò, controlla la nostra lista dei migliori casinò online. Trovare un casinò onesto tra le centinaia di piattaforme di gioco non è facile. Le valutazioni dei casinò online onesti per soldi ti aiutano a scegliere un buon club online e diventano uno strumento di monitoraggio. Il giocatore ha la possibilità di tenere traccia di nuove promozioni, tornei e spendere soldi nei club con la più alta percentuale di ritorno.<\\/span><\\/div><p style=\\\"color: rgb(109, 111, 113); font-family: &quot;tahoma regular&quot;; font-size: 14px; text-align: justify;\\\"><span style=\\\"font-family: Verdana;\\\">Continental Hospitals is a part of <b>IHH Healthcare<\\/b>, a leading premium integrated healthcare provider with a network of 84 hospitals and more than <b>16,000 <\\/b>licensed beds. IHH is a leading player in the home markets of <b>Malaysia<\\/b>, <b>Singapore<\\/b>, <b>Turkey <\\/b>and <b>India<\\/b>, and in their key growth markets of <b>China <\\/b>and <b>Hong Kong<\\/b>.<\\/span><\\/p>\"}', 31, '2022-04-06 10:02:07', '2022-04-06 10:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `ac_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `name_as_per_bank` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `user_id`, `ac_number`, `bank_name`, `name_as_per_bank`, `ifsc_code`, `branch_name`, `created_at`, `updated_at`) VALUES
(1, 66, '1234567890', 'icici', 'abc', '323535', 'banglore', '2023-03-22 08:01:16', '2023-03-22 08:01:16'),
(2, 66, '12345678901', 'icici1', 'abc1', '3235351', 'banglore1', '2023-03-22 08:06:55', '2023-03-22 08:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `quantity` smallint(6) DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status_id` int(10) UNSIGNED DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon` longtext COLLATE utf8mb4_unicode_ci,
  `taxes` longtext COLLATE utf8mb4_unicode_ci,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci,
  `cancel` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `e_provider`, `e_service`, `options`, `quantity`, `user_id`, `booking_status_id`, `address`, `payment_id`, `coupon`, `taxes`, `booking_at`, `start_at`, `ends_at`, `hint`, `cancel`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":18,\"name\":\"OZONE Hospitals\",\"phone_number\":\"+91 4022 108 108\",\"mobile_number\":\"+91 4022 108 108\"}', '{\"id\":1,\"name\":\"Nurses\",\"price\":25.46000000000000085265128291212022304534912109375,\"discount_price\":21.14999999999999857891452847979962825775146484375,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"03:00\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.50739850000000075169737101532518863677978515625,\"longitude\":73.80765039999999999054125510156154632568359375}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-05-27 14:30:00', NULL, NULL, 'Need urgently', 0, '2022-05-27 09:00:18', '2022-05-27 09:00:18'),
(2, '{\"id\":9,\"name\":\"Hospital\",\"phone_number\":\"1-218-751-0371\",\"mobile_number\":\"1-212-690-5240\"}', '{\"id\":2,\"name\":\"Midwife\",\"price\":18.8599999999999994315658113919198513031005859375,\"discount_price\":15.9900000000000002131628207280300557613372802734375,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"01:00\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.50739850000000075169737101532518863677978515625,\"longitude\":73.80765039999999999054125510156154632568359375}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-05-27 14:53:09', NULL, NULL, 'mental health', 0, '2022-05-27 09:23:26', '2022-05-27 09:23:26'),
(3, '{\"id\":9,\"name\":\"Hospital\",\"phone_number\":\"1-218-751-0371\",\"mobile_number\":\"1-212-690-5240\"}', '{\"id\":2,\"name\":\"Midwife\",\"price\":18.8599999999999994315658113919198513031005859375,\"discount_price\":15.9900000000000002131628207280300557613372802734375,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"01:00\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.50739850000000075169737101532518863677978515625,\"longitude\":73.80765039999999999054125510156154632568359375}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-05-27 14:57:43', NULL, NULL, 'urgent', 0, '2022-05-27 09:27:53', '2022-05-27 09:27:53'),
(4, '{\"id\":9,\"name\":\"Hospital\",\"phone_number\":\"1-218-751-0371\",\"mobile_number\":\"1-212-690-5240\"}', '{\"id\":5,\"name\":\"Cardiac Nurse\",\"price\":36.280000000000001136868377216160297393798828125,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"04:00\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.510000000000001563194018672220408916473388671875,\"longitude\":73.81000000000000227373675443232059478759765625}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-05-27 15:00:35', NULL, NULL, 'yy', 0, '2022-05-27 09:30:45', '2022-05-27 09:30:45'),
(5, '{\"id\":2,\"name\":\"Hospital\",\"phone_number\":\"+1-262-404-7593\",\"mobile_number\":\"+19319237608\"}', '{\"id\":33,\"name\":\"Dental Assistant\",\"price\":360,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.510000000000001563194018672220408916473388671875,\"longitude\":73.81000000000000227373675443232059478759765625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-05-27 15:15:16', NULL, NULL, 'hh', 0, '2022-05-27 09:45:31', '2022-05-27 09:45:31'),
(6, '{\"id\":34,\"name\":\"avd\",\"phone_number\":\"7798925200\",\"mobile_number\":\"7798925200\"}', '{\"id\":38,\"name\":\"kavita22\",\"price\":50,\"discount_price\":40,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":\"02.30\",\"enable_booking\":true}', NULL, 1, 16, 6, '{\"id\":22,\"description\":null,\"address\":\"789b4, Ekta Nagar Housing Society, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.5279689999999988003764883615076541900634765625,\"longitude\":73.825276000000002341039362363517284393310546875}', 1, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-05-27 15:24:12', '2022-05-27 15:35:00', '2022-05-27 15:35:04', NULL, 0, '2022-05-27 09:55:15', '2022-05-27 10:05:13'),
(7, '{\"id\":33,\"name\":\"Kavita Jagtap\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":40,\"name\":\"Emergency Service\",\"price\":55,\"discount_price\":50,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":\"03:45\",\"enable_booking\":true}', NULL, 1, 16, 5, '{\"id\":23,\"description\":\"Kavita Building\",\"address\":\"269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India\",\"latitude\":18.528329200000001719672582112252712249755859375,\"longitude\":73.824190799999996670521795749664306640625}', NULL, NULL, '[]', '2022-05-27 16:50:16', NULL, NULL, NULL, 0, '2022-05-27 11:21:17', '2022-05-27 11:22:41'),
(8, '{\"id\":34,\"name\":\"avd\",\"phone_number\":\"7798925200\",\"mobile_number\":\"7798925200\"}', '{\"id\":38,\"name\":\"kavita22\",\"price\":50,\"discount_price\":40,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":\"02.30\",\"enable_booking\":true}', NULL, 1, NULL, 7, '{\"id\":24,\"description\":\"asacvasc\",\"address\":\"1600 Plymouth St, Mountain View, CA 94043, USA\",\"latitude\":37.41743900000000166983227245509624481201171875,\"longitude\":-122.08418829999999388746800832450389862060546875}', NULL, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-05-27 20:34:05', NULL, NULL, 'aa', 1, '2022-05-27 15:05:43', '2022-06-24 14:45:45'),
(9, '{\"id\":33,\"name\":\"Kavita Jagtap\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":40,\"name\":\"Emergency Service\",\"price\":55,\"discount_price\":50,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":\"03:45\",\"enable_booking\":true}', NULL, 1, 16, 3, '{\"id\":25,\"description\":null,\"address\":\"266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.528308599999999017882146290503442287445068359375,\"longitude\":73.824342099999995525649865157902240753173828125}', NULL, NULL, '[]', '2022-05-28 13:41:19', NULL, NULL, NULL, 0, '2022-05-28 08:12:24', '2022-05-28 09:20:11'),
(10, '{\"id\":33,\"name\":\"Kavita Jagtap\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":40,\"name\":\"Emergency Service\",\"price\":55,\"discount_price\":50,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":\"03:45\",\"enable_booking\":true}', NULL, 1, 16, 5, '{\"id\":23,\"description\":\"Kavita Building\",\"address\":\"269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', NULL, NULL, '[]', '2022-05-28 13:51:53', NULL, NULL, NULL, 0, '2022-05-28 08:22:57', '2022-05-28 09:18:46'),
(11, '{\"id\":41,\"name\":\"ridhya\",\"phone_number\":null,\"mobile_number\":null}', '{\"id\":46,\"name\":\"my service\",\"price\":500,\"discount_price\":450,\"price_unit\":\"fixed\",\"quantity_unit\":\"\\u0968\",\"duration\":\"03:30\",\"enable_booking\":true}', NULL, 1, 16, 5, '{\"id\":23,\"description\":\"Kavita Building\",\"address\":\"269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', NULL, NULL, '[]', '2022-06-10 20:34:59', NULL, NULL, 'no', 0, '2022-06-10 15:06:46', '2022-06-10 15:08:20'),
(14, '{\"id\":42,\"name\":\"isha joshi\",\"phone_number\":\"123456\",\"mobile_number\":\"123456\"}', '{\"id\":50,\"name\":\"jagtap service\",\"price\":80,\"discount_price\":75,\"price_unit\":\"fixed\",\"quantity_unit\":\"2\",\"duration\":\"3:30\",\"enable_booking\":true}', NULL, 1, 16, 6, '{\"id\":25,\"description\":null,\"address\":\"266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', 2, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-06-11 10:35:40', '2022-06-11 10:37:06', '2022-06-11 10:37:55', 'ni', 0, '2022-06-11 05:06:41', '2022-06-11 05:09:07'),
(15, '{\"id\":42,\"name\":\"isha joshi\",\"phone_number\":\"123456\",\"mobile_number\":\"123456\"}', '{\"id\":51,\"name\":\"ex service\",\"price\":500,\"discount_price\":450,\"price_unit\":\"fixed\",\"quantity_unit\":\"2\",\"duration\":\"3:30\",\"enable_booking\":true}', NULL, 1, 16, 5, '{\"id\":25,\"description\":null,\"address\":\"266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', 3, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-06-11 10:53:01', '2022-06-11 10:56:45', '2022-06-11 10:56:48', 'no', 0, '2022-06-11 05:24:04', '2022-06-11 05:28:30'),
(16, '{\"id\":44,\"name\":\"Ra\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":52,\"name\":\"main service 2\",\"price\":50,\"discount_price\":45,\"price_unit\":\"fixed\",\"quantity_unit\":\"3\",\"duration\":\"3:30\",\"enable_booking\":true}', NULL, 1, 33, 6, '{\"id\":25,\"description\":null,\"address\":\"266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', 4, NULL, '[]', '2022-06-11 13:00:39', '2022-06-11 13:02:48', '2022-06-11 13:02:50', NULL, 0, '2022-06-11 07:31:33', '2022-06-11 07:33:50'),
(17, '{\"id\":42,\"name\":\"isha joshi\",\"phone_number\":\"123456\",\"mobile_number\":\"123456\"}', '{\"id\":53,\"name\":\"isha main service\",\"price\":100,\"discount_price\":95,\"price_unit\":\"fixed\",\"quantity_unit\":\"11\",\"duration\":\"3:30\",\"enable_booking\":true}', NULL, 1, 16, 6, '{\"id\":25,\"description\":null,\"address\":\"266, Janwadi, Gokhalenagar, Pune, Maharashtra 411016, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-06-11 13:13:04', '2022-06-11 13:14:22', '2022-06-18 13:02:52', 'no', 0, '2022-06-11 07:44:02', '2022-06-18 07:32:53'),
(18, '{\"id\":42,\"name\":\"isha joshi\",\"phone_number\":\"123456\",\"mobile_number\":\"123456\"}', '{\"id\":61,\"name\":\"max service\",\"price\":500,\"discount_price\":450,\"price_unit\":\"hourly\",\"quantity_unit\":\"2\",\"duration\":\"03:70\",\"enable_booking\":true}', NULL, 1, 16, 6, '{\"id\":23,\"description\":\"Kavita Building\",\"address\":\"269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', 5, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-06-18 13:00:31', '2022-06-18 13:05:25', '2022-06-18 13:05:31', 'okk', 0, '2022-06-18 07:31:35', '2022-06-18 07:36:04'),
(19, '{\"id\":42,\"name\":\"isha joshi\",\"phone_number\":\"123456\",\"mobile_number\":\"123456\"}', '{\"id\":49,\"name\":\"service 2\",\"price\":600,\"discount_price\":550,\"price_unit\":\"fixed\",\"quantity_unit\":\"2\",\"duration\":\"03:30\",\"enable_booking\":true}', NULL, 1, 16, 6, '{\"id\":23,\"description\":\"Kavita Building\",\"address\":\"269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411053, India\",\"latitude\":18.530000000000001136868377216160297393798828125,\"longitude\":73.81999999999999317878973670303821563720703125}', 6, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-06-18 13:09:13', '2022-06-18 13:12:42', '2022-06-18 13:12:51', NULL, 0, '2022-06-18 07:39:43', '2022-06-18 07:43:36'),
(20, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 41, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-12 09:27:54', NULL, NULL, NULL, 0, '2022-09-12 03:58:19', '2022-09-12 03:58:19'),
(21, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 38, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-22 09:42:00', NULL, NULL, 'hh', 0, '2022-09-12 04:13:20', '2022-09-12 04:13:20'),
(22, '{\"id\":39,\"name\":\"provider\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":44,\"name\":\"my service\",\"price\":500,\"discount_price\":400,\"price_unit\":\"fixed\",\"quantity_unit\":\"\\u0968\",\"duration\":\"3:05\",\"enable_booking\":true}', NULL, 1, 38, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-09-12 09:44:58', NULL, NULL, 'he\'ll', 0, '2022-09-12 04:15:10', '2022-09-12 04:15:10'),
(23, '{\"id\":39,\"name\":\"provider\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":43,\"name\":\"my service\",\"price\":800,\"discount_price\":500,\"price_unit\":\"fixed\",\"quantity_unit\":\"\\u0968\",\"duration\":\"06:30\",\"enable_booking\":true}', NULL, 1, 38, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-09-12 09:58:16', NULL, NULL, 'hi', 0, '2022-09-12 04:28:29', '2022-09-12 04:28:29'),
(24, '{\"id\":39,\"name\":\"provider\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":43,\"name\":\"my service\",\"price\":800,\"discount_price\":500,\"price_unit\":\"fixed\",\"quantity_unit\":\"\\u0968\",\"duration\":\"06:30\",\"enable_booking\":true}', NULL, 1, 38, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-09-12 11:17:06', NULL, NULL, 'hh', 0, '2022-09-12 05:47:27', '2022-09-12 05:47:27'),
(25, '{\"id\":39,\"name\":\"provider\",\"phone_number\":\"8380948134\",\"mobile_number\":\"8380948134\"}', '{\"id\":43,\"name\":\"my service\",\"price\":800,\"discount_price\":500,\"price_unit\":\"fixed\",\"quantity_unit\":\"\\u0968\",\"duration\":\"06:30\",\"enable_booking\":true}', '[{\"id\":101,\"name\":\"my service\",\"price\":800}]', 1, 38, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":1,\"name\":\"Tax 20\",\"value\":20,\"type\":\"percent\"}]', '2022-09-12 14:36:39', NULL, NULL, 'hehe', 0, '2022-09-12 09:06:51', '2022-09-12 09:06:51'),
(26, '{\"id\":9,\"name\":\"Hospital\",\"phone_number\":\"1-218-751-0371\",\"mobile_number\":\"1-212-690-5240\"}', '{\"id\":2,\"name\":\"Midwife\",\"price\":18.8599999999999994315658113919198513031005859375,\"discount_price\":15.9900000000000002131628207280300557613372802734375,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"01:00\",\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-09-12 20:25:20', NULL, NULL, NULL, 0, '2022-09-12 14:55:27', '2022-09-12 14:55:27'),
(27, '{\"id\":2,\"name\":\"Hospital\",\"phone_number\":\"+1-262-404-7593\",\"mobile_number\":\"+19319237608\"}', '{\"id\":35,\"name\":\"Kavita Nursing\",\"price\":300,\"discount_price\":250,\"price_unit\":\"hourly\",\"quantity_unit\":\"4\",\"duration\":\"05:09\",\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-16 05:30:00', NULL, NULL, NULL, 0, '2022-09-12 14:57:23', '2022-09-12 14:57:23'),
(28, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:26', '2022-09-14 05:47:26'),
(29, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:31', '2022-09-14 05:47:31'),
(30, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:31', '2022-09-14 05:47:31'),
(31, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
(32, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
(33, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
(35, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
(36, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
(37, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
(38, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:34', '2022-09-14 05:47:34'),
(39, '{\"id\":17,\"name\":\"Himagiri Hospitals\",\"phone_number\":\"+1-707-965-0768\",\"mobile_number\":\"1-786-722-8926\"}', '{\"id\":13,\"name\":\"Camp nursing\",\"price\":500,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 60, 1, '{\"id\":26,\"description\":\"Demo Address Location Description\",\"address\":\"Demo Address Location\",\"latitude\":0,\"longitude\":0}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-09-17 14:16:00', NULL, NULL, 'This will be 6 month program', 0, '2022-09-14 05:47:35', '2022-09-14 05:47:35'),
(40, '{\"id\":19,\"name\":\"Hospital\",\"phone_number\":\"1-218-751-0371\",\"mobile_number\":\"1-212-690-5240\"}', '{\"id\":2,\"name\":\"Midwife\",\"price\":18.8599999999999994315658113919198513031005859375,\"discount_price\":15.9900000000000002131628207280300557613372802734375,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"01:00\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":21,\"description\":\"My home\",\"address\":\"40, near IDBI BANK, Paranjape Scheme, Kothrud, Pune, Maharashtra 411029, India\",\"latitude\":18.50739850000000075169737101532518863677978515625,\"longitude\":73.80765039999999999054125510156154632568359375}', NULL, NULL, '[{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2022-05-27 14:53:09', NULL, NULL, 'mental health', 0, '2022-05-27 09:23:26', '2022-05-27 09:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Received', 1, '2021-01-25 19:25:46', '2021-01-29 17:56:35'),
(2, 'In Progress', 40, '2021-01-25 19:26:02', '2021-02-16 21:56:52'),
(3, 'On the Way', 20, '2021-01-28 07:47:23', '2021-02-16 12:10:13'),
(4, 'Accepted', 10, '2021-02-16 12:09:29', '2021-02-16 12:10:06'),
(5, 'Ready', 30, '2021-02-16 12:11:50', '2021-02-16 21:56:42'),
(6, 'Done', 50, '2021-02-16 21:57:02', '2021-02-16 21:57:02'),
(7, 'Failed', 60, '2021-02-16 21:58:36', '2021-02-16 21:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `color` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `description`, `order`, `featured`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Medical Services\"}', '#0abde3', '{\"en\":\"<p>Categories for all Medical Services<br><\\/p>\"}', 2, 1, NULL, '2021-01-19 18:05:00', '2022-04-08 04:37:01'),
(3, '{\"en\":\"Mental Health\"}', '#ee5253', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">A mental health worker<span> <\\/span><\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\">cares for people with mental health issues, substance abuse, poverty and other social problems<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">. They assist psychiatrists, doctors and nurses by monitoring patients\\/groups, providing therapeutic assistance and keeping patient records.<\\/span><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><\\/span><\\/p>\"}', 3, 1, NULL, '2021-01-31 13:37:04', '2022-04-08 04:37:14'),
(4, '{\"en\":\"Cardiologists\"}', '#10ac84', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">Cardiologists are<span> <\\/span><\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\">doctors specialized in diagnosing, treating and preventing diseases that mainly affect the heart and blood vessels<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">. Cardiologists usually work with a range of patients, from babies and young infants through to the elderly.<\\/span><\\/p>\"}', 4, 1, NULL, '2021-01-31 13:38:37', '2022-04-08 04:37:26'),
(5, '{\"en\":\"Ophthalmologists\"}', '#5f27cd', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">Ophthalmologists are the only practitioners medically trained to<span> <\\/span><\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\">diagnose and treat all eye and visual problems including vision services (glasses and contacts) and provide treatment and prevention of medical disorders of the eye including surgery<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">.<\\/span><\\/p>\"}', 5, 1, NULL, '2021-01-31 13:42:02', '2022-04-08 04:37:39'),
(16, '{\"en\":\"Dentistry\"}', '#ff9f43', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">A dentist has many responsibilities, and one of the most important is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">promoting good dental hygiene<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. This helps to prevent complications in your mouth or other parts of the body. A dentist also diagnoses and treats problems of the gums, teeth, and mouth.<\\/span><br><\\/p>\"}', 12, 1, NULL, '2022-04-08 04:06:39', '2022-04-08 04:06:39'),
(22, '{\"en\":\"Emergency medicine\"}', '#800000', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Emergency medicine is <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">the medical speciality concerned with the care of illnesses or injuries requiring immediate medical attention<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Emergency physicians (often called “ER doctors” in the United States) continuously learn to care for unscheduled and undifferentiated patients of all ages.<\\/span><br><\\/p>\"}', 12, 1, NULL, '2022-04-08 08:42:41', '2022-04-08 08:45:16'),
(59, '{\"en\":\"physiotherapy\"}', 'white', NULL, 0, 0, NULL, '2022-12-22 07:15:22', '2022-12-22 07:15:22'),
(60, '{\"en\":\"nurce\"}', 'white', NULL, 0, 0, NULL, '2023-03-17 08:44:21', '2023-03-17 08:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `symbol` longtext COLLATE utf8mb4_unicode_ci,
  `code` longtext COLLATE utf8mb4_unicode_ci,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2020-10-22 15:50:48', '2020-10-22 15:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2020-10-22 15:51:39', '2020-10-22 15:51:39'),
(3, '{\"en\":\"Indian Rupee\"}', '{\"en\":\"₹\"}', '{\"en\":\"INR\"}', 2, 0, '2020-10-22 15:52:50', '2022-03-10 11:16:49'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2020-10-22 15:53:22', '2020-10-22 15:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2020-10-22 15:54:00', '2020-10-22 15:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2020-10-22 15:55:51', '2020-10-22 15:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2020-10-22 15:56:26', '2020-10-22 15:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 21:43:58', '2019-09-06 21:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 21:49:22', '2019-09-06 21:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(30, NULL, '', 5, 'App\\Models\\User', 2, '2019-09-06 21:52:30', '2022-03-23 07:44:15'),
(31, 'Pune', 'Pune', 6, 'App\\Models\\User', 2, '2019-09-06 21:52:30', '2022-04-06 04:01:22'),
(33, '<p><br></p><p><br></p>', '', 5, 'App\\Models\\User', 1, '2019-09-06 21:53:58', '2022-03-23 08:04:53'),
(34, 'Mumbai', 'Mumbai', 6, 'App\\Models\\User', 1, '2019-09-06 21:53:58', '2022-04-07 05:47:07'),
(36, NULL, '', 5, 'App\\Models\\User', 3, '2019-10-15 17:21:32', '2022-03-23 07:32:21'),
(37, 'Delhi', 'Delhi', 6, 'App\\Models\\User', 3, '2019-10-15 17:21:32', '2022-04-07 05:48:32'),
(39, NULL, '', 5, 'App\\Models\\User', 4, '2019-10-16 19:31:46', '2022-03-23 07:47:16'),
(40, 'pune', 'pune', 6, 'App\\Models\\User', 4, '2019-10-16 19:31:46', '2022-04-07 02:54:43'),
(42, NULL, '', 5, 'App\\Models\\User', 5, '2019-12-15 18:49:44', '2022-03-23 07:52:02'),
(43, 'osmanabad', 'osmanabad', 6, 'App\\Models\\User', 5, '2019-12-15 18:49:44', '2022-04-07 05:49:25'),
(45, '<p><br></p>', '', 5, 'App\\Models\\User', 6, '2020-03-29 17:28:05', '2022-03-23 08:05:55'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 17:28:05', '2020-03-29 17:28:05'),
(48, NULL, '', 5, 'App\\Models\\User', 7, '2021-01-17 16:13:24', '2022-03-23 07:40:29'),
(49, 'Mumbai', 'Mumbai', 6, 'App\\Models\\User', 7, '2021-01-17 16:13:24', '2022-04-07 03:01:14'),
(51, NULL, '', 5, 'App\\Models\\User', 8, '2021-02-10 11:31:12', '2022-03-23 07:38:01'),
(52, 'Thane', 'Thane', 6, 'App\\Models\\User', 8, '2021-02-10 11:31:12', '2022-04-07 03:03:33'),
(53, NULL, '', 5, 'App\\Models\\User', 9, '2022-03-02 09:15:32', '2022-03-02 09:15:32'),
(54, 'dhayri', 'dhayri', 6, 'App\\Models\\User', 9, '2022-03-02 09:15:32', '2022-03-02 09:26:44'),
(55, NULL, '', 5, 'App\\Models\\User', 10, '2022-03-03 09:25:16', '2022-03-03 09:25:16'),
(56, 'pune', 'pune', 6, 'App\\Models\\User', 10, '2022-03-03 09:25:16', '2022-04-07 05:46:13'),
(57, NULL, '', 5, 'App\\Models\\User', 11, '2022-03-05 03:25:04', '2022-03-05 03:25:04'),
(58, 'Delhi', 'Delhi', 6, 'App\\Models\\User', 11, '2022-03-05 03:25:04', '2022-04-07 07:00:41'),
(59, NULL, '', 5, 'App\\Models\\User', 12, '2022-03-10 14:47:10', '2022-03-10 14:47:10'),
(60, 'Thane', 'Thane', 6, 'App\\Models\\User', 12, '2022-03-10 14:47:10', '2022-04-07 07:01:11'),
(61, NULL, '', 5, 'App\\Models\\User', 13, '2022-03-23 03:17:12', '2022-03-23 03:17:12'),
(62, 'pune', 'pune', 6, 'App\\Models\\User', 13, '2022-03-23 03:17:12', '2022-04-07 07:01:33'),
(63, NULL, '', 5, 'App\\Models\\User', 14, '2022-04-05 07:39:12', '2022-04-05 07:39:12'),
(64, 'osmanabad', 'osmanabad', 6, 'App\\Models\\User', 14, '2022-04-05 07:39:12', '2022-04-07 07:01:56'),
(65, NULL, '', 5, 'App\\Models\\User', 15, '2022-05-16 07:52:36', '2022-05-16 07:52:36'),
(66, NULL, NULL, 6, 'App\\Models\\User', 15, '2022-05-16 07:52:36', '2022-05-16 07:52:36'),
(67, NULL, '', 5, 'App\\Models\\User', 16, '2022-05-19 07:22:31', '2022-05-19 07:22:31'),
(68, NULL, NULL, 6, 'App\\Models\\User', 16, '2022-05-19 07:22:31', '2022-05-19 07:22:31'),
(69, NULL, '', 5, 'App\\Models\\User', 17, '2022-05-27 08:46:29', '2022-05-27 08:46:29'),
(70, NULL, NULL, 6, 'App\\Models\\User', 17, '2022-05-27 08:46:29', '2022-05-27 08:46:29'),
(71, NULL, '', 5, 'App\\Models\\User', 18, '2022-05-27 08:51:05', '2022-05-27 08:51:05'),
(72, NULL, NULL, 6, 'App\\Models\\User', 18, '2022-05-27 08:51:05', '2022-05-27 08:51:05'),
(73, NULL, '', 5, 'App\\Models\\User', 20, '2022-05-27 14:57:16', '2022-05-27 14:57:16'),
(74, NULL, NULL, 6, 'App\\Models\\User', 20, '2022-05-27 14:57:16', '2022-05-27 14:57:16'),
(75, '<p>I am nurse</p>', 'I am nurse', 5, 'App\\Models\\User', 32, '2022-06-11 06:10:18', '2022-06-11 06:10:18'),
(76, 'Aditi boys hostel, 269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411016', 'Aditi boys hostel, 269, Janawadi Rd, Shivaji Co operative Housing Society, Ramoshivadi, Gokhalenagar, Pune, Maharashtra 411016', 6, 'App\\Models\\User', 32, '2022-06-11 06:10:18', '2022-06-11 06:10:18'),
(77, '<p><span style=\"font-weight: 700; text-align: right;\">Short Biography</span><br></p>', 'Short Biography', 5, 'App\\Models\\User', 33, '2022-06-11 06:19:50', '2022-06-11 06:19:50'),
(78, '3A, Krushi Society, Maharashtra 411016', '3A, Krushi Society, Maharashtra 411016', 6, 'App\\Models\\User', 33, '2022-06-11 06:19:50', '2022-06-11 06:19:50'),
(79, '<p>Nothing</p>', 'Nothing', 5, 'App\\Models\\User', 34, '2022-06-16 10:49:22', '2022-06-16 10:49:22'),
(80, 'Gokhalenagar, Pune - 16', 'Gokhalenagar, Pune - 16', 6, 'App\\Models\\User', 34, '2022-06-16 10:49:22', '2022-06-16 10:49:22'),
(81, '<p>nothing</p>', 'nothing', 5, 'App\\Models\\User', 35, '2022-06-16 10:52:53', '2022-06-16 10:52:53'),
(82, NULL, NULL, 6, 'App\\Models\\User', 35, '2022-06-16 10:52:53', '2022-06-16 10:52:53'),
(83, '<p>thgrtbgh4tg</p>', 'thgrtbgh4tg', 5, 'App\\Models\\User', 36, '2022-06-18 09:51:53', '2022-06-18 09:51:53'),
(84, '77/5 BALASAHEB DANGAT BANGALA DANGAT WASTI', '77/5 BALASAHEB DANGAT BANGALA DANGAT WASTI', 6, 'App\\Models\\User', 36, '2022-06-18 09:51:53', '2022-06-18 09:51:53'),
(85, 'hello my name is Rohit Zadane.24 year old', 'hello my name is Rohit Zadane.24 year old', 5, 'App\\Models\\User', 38, '2022-07-08 07:25:42', '2022-10-21 11:27:34'),
(86, 'Pune pisoli', 'Pune pisoli', 6, 'App\\Models\\User', 38, '2022-07-08 07:25:42', '2022-10-21 11:27:34'),
(87, NULL, '', 5, 'App\\Models\\User', 39, '2022-08-06 05:11:32', '2022-08-06 05:11:32'),
(88, NULL, NULL, 6, 'App\\Models\\User', 39, '2022-08-06 05:11:32', '2022-08-06 05:11:32'),
(89, NULL, '', 5, 'App\\Models\\User', 40, '2022-08-06 05:13:52', '2022-08-06 05:13:52'),
(90, NULL, NULL, 6, 'App\\Models\\User', 40, '2022-08-06 05:13:52', '2022-08-06 05:13:52'),
(91, NULL, '', 5, 'App\\Models\\User', 41, '2022-08-06 05:17:10', '2022-08-06 05:17:10'),
(92, NULL, NULL, 6, 'App\\Models\\User', 41, '2022-08-06 05:17:10', '2022-08-06 05:17:10'),
(93, NULL, '', 5, 'App\\Models\\User', 50, '2022-08-08 07:53:19', '2022-08-08 07:53:19'),
(94, 'pune', 'pune', 6, 'App\\Models\\User', 50, '2022-08-08 07:53:19', '2022-09-13 10:56:30'),
(95, NULL, '', 5, 'App\\Models\\User', 52, '2022-08-08 08:38:37', '2022-08-08 08:38:37'),
(96, NULL, NULL, 6, 'App\\Models\\User', 52, '2022-08-08 08:38:37', '2022-08-08 08:38:37'),
(97, NULL, '', 5, 'App\\Models\\User', 53, '2022-08-08 08:40:01', '2022-08-08 08:40:01'),
(98, NULL, NULL, 6, 'App\\Models\\User', 53, '2022-08-08 08:40:01', '2022-08-08 08:40:01'),
(99, NULL, '', 5, 'App\\Models\\User', 54, '2022-08-08 08:42:43', '2022-08-08 08:42:43'),
(100, NULL, NULL, 6, 'App\\Models\\User', 54, '2022-08-08 08:42:43', '2022-08-08 08:42:43'),
(101, NULL, '', 5, 'App\\Models\\User', 55, '2022-09-12 06:05:45', '2022-09-12 06:05:45'),
(102, NULL, NULL, 6, 'App\\Models\\User', 55, '2022-09-12 06:05:45', '2022-09-12 06:05:45'),
(103, NULL, '', 5, 'App\\Models\\User', 60, '2022-09-12 14:46:24', '2022-09-12 14:46:24'),
(104, NULL, NULL, 6, 'App\\Models\\User', 60, '2022-09-12 14:46:24', '2022-09-12 14:46:24'),
(105, NULL, '', 5, 'App\\Models\\User', 61, '2022-09-13 08:07:04', '2022-09-13 08:07:04'),
(106, NULL, NULL, 6, 'App\\Models\\User', 61, '2022-09-13 08:07:04', '2022-09-13 08:07:04'),
(107, NULL, '', 5, 'App\\Models\\User', 65, '2022-09-14 05:00:29', '2022-09-14 05:00:29'),
(108, NULL, NULL, 6, 'App\\Models\\User', 65, '2022-09-14 05:00:29', '2022-09-14 05:00:29'),
(109, 'provider', 'provider', 5, 'App\\Models\\User', 66, '2022-09-16 13:20:43', '2022-12-21 08:01:41'),
(110, 'pune', 'pune', 6, 'App\\Models\\User', 66, '2022-09-16 13:20:43', '2022-10-21 10:43:35'),
(111, 'I m Suman from sims', 'I m Suman from sims', 5, 'App\\Models\\User', 67, '2022-09-29 04:56:14', '2022-09-29 05:53:56'),
(112, NULL, NULL, 6, 'App\\Models\\User', 67, '2022-09-29 04:56:14', '2022-09-29 04:56:14'),
(113, NULL, '', 5, 'App\\Models\\User', 68, '2022-09-29 06:36:36', '2022-09-29 06:36:36'),
(114, 'Madhapur', 'Madhapur', 6, 'App\\Models\\User', 68, '2022-09-29 06:36:36', '2022-09-29 07:20:27'),
(115, NULL, '', 5, 'App\\Models\\User', 69, '2022-10-21 10:53:24', '2022-10-21 10:53:24'),
(116, NULL, NULL, 6, 'App\\Models\\User', 69, '2022-10-21 10:53:24', '2022-10-21 10:53:24'),
(117, NULL, '', 5, 'App\\Models\\User', 74, '2022-12-22 10:17:44', '2022-12-22 10:17:44'),
(118, NULL, NULL, 6, 'App\\Models\\User', 74, '2022-12-22 10:17:44', '2022-12-22 10:17:44'),
(119, NULL, '', 5, 'App\\Models\\User', 75, '2022-12-22 10:20:23', '2022-12-22 10:20:23'),
(120, NULL, NULL, 6, 'App\\Models\\User', 75, '2022-12-22 10:20:23', '2022-12-22 10:20:23'),
(121, NULL, '', 5, 'App\\Models\\User', 70, '2022-12-22 11:16:09', '2022-12-22 11:16:09'),
(122, NULL, NULL, 6, 'App\\Models\\User', 70, '2022-12-22 11:16:09', '2022-12-22 11:16:09'),
(123, NULL, '', 5, 'App\\Models\\User', 77, '2023-03-11 10:16:24', '2023-03-11 10:16:24'),
(124, NULL, NULL, 6, 'App\\Models\\User', 77, '2023-03-11 10:16:24', '2023-03-11 10:16:24'),
(125, NULL, '', 5, 'App\\Models\\User', 78, '2023-03-11 10:19:39', '2023-03-11 10:19:39'),
(126, NULL, NULL, 6, 'App\\Models\\User', 78, '2023-03-11 10:19:39', '2023-03-11 10:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<h1>Privacy Policy of SmarterVision</h1>\n<p>SmarterVision operates the SmarterVision website, which provides the SERVICE.</p>\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the smartersvision.com website.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at smartersvision.com, unless otherwise defined in this Privacy Policy.</p>\n<h2>Information Collection and Use</h2>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\n<h2>Log Data</h2>\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us which is called Log Data. This Log Data may include information such as your computer\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\n<h2>Cookies</h2>\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\'s hard drive.</p>\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\n<h2>Service Providers</h2>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<ul>\n<li>To facilitate our Service;</li>\n<li>To provide the Service on our behalf;</li>\n<li>To perform Service-related services; or</li>\n<li>To assist us in analyzing how our Service is used.</li>\n</ul>\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<h2>Security</h2>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<h2>Links to Other Sites</h2>\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<h2>Children\'s Privacy</h2>\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\n<h2>Contact Us</h2>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', 1, '2021-02-24 11:53:21', '2021-02-24 13:19:19'),
(2, '{\"en\":\"Terms & Conditions\"}', '{\"en\":\"<h2>Terms &amp; Conditions<\\/h2><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: outside none; color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\"><li class=\\\"va-top ov-h\\\" style=\\\"margin: 0px 0px 4px; padding: 0px; vertical-align: top; overflow: hidden; zoom: 1;\\\">Terms and conditions act as a contract between you or your business and your users and customers. It serves to set out the&nbsp;rights and responsibilities of both parties. In order to use your website, product, or mobile application, your users must agree to abide by your terms and conditions and to provide services as per the terms.<\\/li><\\/ul>\"}', 1, '2021-02-24 13:20:06', '2022-04-07 11:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_feedbacks`
--

CREATE TABLE `document_feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `provider_id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `job_apply_id` int(11) UNSIGNED NOT NULL,
  `pan_rating` varchar(255) DEFAULT NULL,
  `degree_rating` varchar(255) DEFAULT NULL,
  `passport_rating` varchar(255) DEFAULT NULL,
  `medical_rating` varchar(255) DEFAULT NULL,
  `experience_rating` varchar(255) DEFAULT NULL,
  `aadhaar_rating` varchar(255) DEFAULT NULL,
  `feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_feedbacks`
--

INSERT INTO `document_feedbacks` (`id`, `user_id`, `provider_id`, `job_id`, `job_apply_id`, `pan_rating`, `degree_rating`, `passport_rating`, `medical_rating`, `experience_rating`, `aadhaar_rating`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 50, 66, 79, 91, '0', '0', '0', '0', '0', '0', NULL, '2023-03-28 07:17:33', '2023-03-28 07:17:33'),
(2, 50, 66, 79, 91, '2', '3', '4', '5', '1', '1', NULL, '2023-03-28 07:20:08', '2023-03-28 07:20:08'),
(3, 50, 66, 82, 98, '0', '0', '0', '0', '0', '0', NULL, '2023-03-30 08:12:35', '2023-03-30 08:12:35'),
(4, 50, 66, 82, 98, '3', '2', '3', '3', '3', '2', NULL, '2023-03-30 08:12:50', '2023-03-30 08:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `total_bookings` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `e_provider_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `taxes` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `e_provider_id`, `total_bookings`, `total_earning`, `admin_earning`, `e_provider_earning`, `taxes`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-03 04:18:31', '2022-03-03 04:18:31'),
(2, 9, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-10 03:38:49', '2022-03-10 03:38:49'),
(3, 18, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-10 10:59:41', '2022-03-10 10:59:41'),
(4, 17, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-23 03:12:51', '2022-03-23 03:12:51'),
(5, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 04:25:10', '2022-04-05 04:25:10'),
(6, 20, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 04:53:11', '2022-04-05 04:53:11'),
(7, 21, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 04:54:18', '2022-04-05 04:54:18'),
(8, 22, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 04:57:25', '2022-04-05 04:57:25'),
(9, 24, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 05:06:19', '2022-04-05 05:06:19'),
(10, 25, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 05:10:28', '2022-04-05 05:10:28'),
(11, 26, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 05:28:34', '2022-04-05 05:28:34'),
(12, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 05:28:35', '2022-04-05 05:28:35'),
(13, 13, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 06:50:35', '2022-04-05 06:50:35'),
(14, 14, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 07:23:05', '2022-04-05 07:23:05'),
(15, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 07:43:38', '2022-04-05 07:43:38'),
(16, 28, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 07:54:10', '2022-04-05 07:54:10'),
(17, 23, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-05 08:16:35', '2022-04-05 08:16:35'),
(18, 12, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 02:34:28', '2022-04-06 02:34:28'),
(19, 2, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 02:37:45', '2022-04-06 02:37:45'),
(20, 16, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 02:45:16', '2022-04-06 02:45:16'),
(21, 30, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 09:53:40', '2022-04-06 09:53:40'),
(22, 4, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 09:57:11', '2022-04-06 09:57:11'),
(23, 31, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 09:59:37', '2022-04-06 09:59:37'),
(24, 5, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 10:26:25', '2022-04-06 10:26:25'),
(25, 7, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 10:32:46', '2022-04-06 10:32:46'),
(26, 6, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 10:53:28', '2022-04-06 10:53:28'),
(27, 10, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 11:00:58', '2022-04-06 11:00:58'),
(28, 11, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 11:02:08', '2022-04-06 11:02:08'),
(29, 15, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-06 11:04:44', '2022-04-06 11:04:44'),
(30, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-05-19 07:04:38', '2022-05-19 07:04:38'),
(31, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-05-19 08:24:41', '2022-05-19 08:24:41'),
(32, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-05-27 09:06:52', '2022-05-27 09:06:52'),
(33, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-05-27 09:19:43', '2022-05-27 09:19:43'),
(34, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-09 02:37:46', '2022-06-09 02:37:46'),
(35, 37, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-10 08:17:32', '2022-06-10 08:17:32'),
(36, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-10 08:38:23', '2022-06-10 08:38:23'),
(37, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-10 09:39:04', '2022-06-10 09:39:04'),
(38, 41, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-11 05:00:47', '2022-06-11 05:00:47'),
(39, NULL, 3, 625.00, 543.75, 81.25, 62.50, '2022-06-11 05:02:41', '2022-06-18 07:46:00'),
(40, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-11 07:27:24', '2022-06-11 07:27:24'),
(41, NULL, 1, 45.00, 39.15, 5.85, 0.00, '2022-06-11 07:27:32', '2022-06-11 07:34:19'),
(42, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-06-11 07:28:02', '2022-06-11 07:28:02'),
(43, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-09-17 05:28:56', '2022-09-17 05:28:56'),
(44, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-09-17 05:29:28', '2022-09-17 05:29:28'),
(45, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-09-17 05:29:45', '2022-09-17 05:29:45'),
(46, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-09-17 05:30:14', '2022-09-17 05:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Aged Care\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 24, '2022-03-02 08:52:42', '2022-04-06 08:37:27'),
(3, '{\"en\":\"Community Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">a person trained in the scientific basis of nursing, meeting certain prescribed standards of education and clinical competence; see also nursing practice.<\\/span>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 05:31:42'),
(4, '{\"en\":\"Age care\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Acute care settings tend to be busy and open 24\\/7, available for the sickest patients, Brook explains. Nurses in these environments likely have schedules that include night shifts, weekends and holidays.<\\/span>\"}', 2, '2022-03-02 08:52:42', '2022-04-06 05:26:30'),
(5, '{\"en\":\"Midwife\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Certified Nurse Midwives (CNMs), sometimes referred to as simply nurse midwives, do so much more than just delivering babies.&nbsp;<\\/span>\"}', 14, '2022-03-02 08:52:42', '2022-04-06 07:53:00'),
(6, '{\"en\":\"Ozone Hospital\"}', '{\"en\":\"hospital\"}', 18, '2022-03-02 08:52:42', '2022-04-05 02:43:27'),
(8, '{\"en\":\"Midwife Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(0, 0, 0); font-family: helvetica-w01-light, helvetica-w02-light, sans-serif; font-size: 18px;\\\">There is a lot of confusion in the community about what a midwife&nbsp;<\\/span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: helvetica-w01-light, helvetica-w02-light, sans-serif; font-size: 18px; font-style: italic;\\\">is<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: helvetica-w01-light, helvetica-w02-light, sans-serif; font-size: 18px;\\\">&nbsp;exactly, let alone what a n<\\/span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: helvetica-w01-light, helvetica-w02-light, sans-serif; font-size: 18px; font-style: italic;\\\">urse<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: helvetica-w01-light, helvetica-w02-light, sans-serif; font-size: 18px;\\\">-midwife is.<\\/span>\"}', 25, '2022-03-02 08:52:42', '2022-04-06 08:41:14'),
(9, '{\"en\":\"Cardiac Care Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span>\"}', 24, '2022-03-02 08:52:42', '2022-04-06 07:40:07'),
(10, '{\"en\":\"Acute Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Nurses in these environments likely have schedules that include night shifts, weekends and holidays.<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 07:31:08'),
(11, '{\"en\":\"Educators and Facilators\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">When students ask questions and find the answers for themselves, they get involved in their own learning.<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 08:35:46'),
(12, '{\"en\":\"Critical Care Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Critical care nursing is a branch of nursing that focuses on providing the best possible care to critically sick or unstable patients as a result of major damage, surgery, or life-threatening illness.<\\/span>\"}', 20, '2022-03-02 08:52:42', '2022-04-06 07:34:22'),
(13, '{\"en\":\"Emergency Room Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;Common responsibilities include bone setting, blood transfusions, wound care, medication administration, and much more.<\\/span>\"}', 9, '2022-03-02 08:52:42', '2022-04-06 08:39:26'),
(14, '{\"en\":\"Educators and Facilators\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;When students ask questions and find the answers for themselves, they get involved in their own learning.<\\/span>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 07:56:11'),
(15, '{\"en\":\"Nursing\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">The term relevant experience is used to describe past positions, jobs, trainings, and courses that are related to the position a person is applying for.<\\/span>\"}', 2, '2022-03-02 08:52:42', '2022-04-06 05:16:12'),
(17, '{\"en\":\"Critical Care Room\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">The specialty areas of the critical care nurses can also be based on the patient’s illness or injury.<\\/span>\"}', 18, '2022-03-02 08:52:42', '2022-04-06 08:02:39'),
(18, '{\"en\":\"Nursing\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Nurses in these environments likely have schedules that include night shifts, weekends and holidays.<\\/span>\"}', 18, '2022-03-02 08:52:42', '2022-04-06 05:29:16'),
(19, '{\"en\":\"hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">Hospital<\\/span><span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">, an institution that is built, staffed, and equipped for the diagnosis of disease; for the treatment, both medical and surgical, of the sick and injured; and for their housing during this process.<\\/span>\"}', 9, '2022-03-02 08:52:42', '2022-04-07 08:29:12'),
(20, '{\"en\":\"Nursing\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">here are also specialist areas such as cardiac nursing, orthopedic nursing, palliative care, perioperative nursing, obstetrical nursing, oncology nursing, nursing informatics, telenursing and emergency nursing.<\\/span>\"}', 25, '2022-03-02 08:52:42', '2022-04-06 07:54:26'),
(21, '{\"en\":\"Acute Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif;\\\">Advance your learning Once you have received your nursing credentials, to become an acute care nurse you must.<\\/span>\"}', 22, '2022-03-02 08:52:42', '2022-04-06 07:37:42'),
(22, '{\"en\":\"Community Nurse\"}', '{\"en\":\"<ul class=\\\"b_vList b_divsec b_bullet\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(17, 17, 17); font-family: Roboto, sans-serif;\\\"><li data-priority=\\\"\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;\\\">Performing screening tests, like blood glucose monitoring or cholesterol testing.<\\/li><li><\\/li><\\/ul>\"}', 25, '2022-03-02 08:52:42', '2022-04-06 07:22:28'),
(23, '{\"en\":\"Acute Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Acute care settings tend to be busy and open 24\\/7, available for the sickest patients, Brook explains.&nbsp;<\\/span>\"}', 9, '2022-03-02 08:52:42', '2022-04-06 05:24:38'),
(24, '{\"en\":\"Educators and Facilitors Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 07:32:37'),
(25, '{\"en\":\"Cardiac Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions.<\\/span>\"}', 26, '2022-03-02 08:52:42', '2022-04-06 05:28:19'),
(26, '{\"en\":\"Community Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Registered nurses who are actively involved in the community are eligible to become certified as a Community Health Nurse (CHN).<\\/span>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 05:41:26'),
(27, '{\"en\":\"Nursing\"}', '{\"en\":\"<div class=\\\"rwrl rwrl_small rwrl_padref\\\" style=\\\"font-family: Roboto, sans-serif; line-height: 22px; color: rgb(68, 68, 68); padding-bottom: 15px !important;\\\">Nurses practice in a wide range of settings, including hospitals, private homes, schools,...<\\/div><div><br><\\/div><div class=\\\"rwrl_cred rwrl_f\\\" style=\\\"font-size: 13px; vertical-align: bottom; color: rgb(68, 68, 68); font-family: Roboto, Helvetica, sans-serif;\\\"><div class=\\\"qna_algo\\\"><div class=\\\"b_algo\\\" style=\\\"font-size: 16px; line-height: 1.2;\\\"><\\/div><\\/div><\\/div>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 07:49:13'),
(29, '{\"en\":\"Emergency Room Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">An Emergency Room Nurse is primarily responsible for developing a patient care plan after a quick and thorough evaluation of a patient’s injuries.&nbsp;<\\/span>\"}', 28, '2022-03-02 08:52:42', '2022-04-06 07:18:34'),
(30, '{\"en\":\"Acute Care Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif;\\\">acute care nurses are required to have at least two years of experience working in...<\\/span>\"}', 20, '2022-03-02 08:52:42', '2022-04-06 07:44:53'),
(31, '{\"en\":\"hospital\"}', '{\"en\":\"hospital&nbsp;\"}', 9, '2022-03-02 08:52:42', '2022-03-23 05:11:22'),
(32, '{\"en\":\"Aged Care\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Registered Nurses (Aged Care) provide nursing care to the elderly in community settings, residential aged care facilities, retirement villages and health care facilities.<\\/span>\"}', 16, '2022-03-02 08:52:42', '2022-04-06 07:46:06'),
(33, '{\"en\":\"hospital\"}', '{\"en\":\"<span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">Hospital&nbsp;<\\/span><span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">information&nbsp;<\\/span><span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">system is also known as hospital management software ( HMS) .<\\/span>\"}', 9, '2022-03-02 08:52:42', '2022-04-07 08:28:03'),
(34, '{\"en\":\"Midwife\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;If you are interested in a career in midwifery then midwifery work experience can help you decide what areas of midwifery you prefer, help your personal statement for midwifery school shine and provide you with some in depth experience to wow at a midwifery school interview<\\/span>\"}', 18, '2022-03-02 08:52:42', '2022-04-06 05:20:28'),
(35, '{\"en\":\"Aged Care Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">With the growing population, the demand for aged care nurses is on the rise, making it a secure career choice for the aspiring nurse.<\\/span>\"}', 22, '2022-03-02 08:52:42', '2022-04-06 07:41:26'),
(36, '{\"en\":\"Midwife\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">A certified&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">, sometimes referred to as a CNM or simply a&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span>\"}', 9, '2022-03-02 08:52:42', '2022-04-06 07:36:26'),
(37, '{\"en\":\"Cardiac Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiology nurses collaborate as part of the healthcare team with cardiologists and other specialists to provide care for patients.<\\/span>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 08:10:25'),
(38, '{\"en\":\"Nursing\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">They treat patients who are acutely ill and unstable requiring more frequent nursing assessments and the utilization of life sustaining technology and drugs.<\\/span>\"}', 22, '2022-03-02 08:52:42', '2022-04-06 08:30:00'),
(39, '{\"en\":\"Acute Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;Acute care nurses normally specialize in one particular field, such as surgical, geriatric, oncological, or cardiac care<\\/span>\"}', 21, '2022-03-02 08:52:42', '2022-04-06 08:32:56'),
(40, '{\"en\":\"Nurses\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Nursing information includes data collected by nurses; data used by nurses; data about nursing activity; and data about the nursing resource.<\\/span>\"}', 23, '2022-03-02 08:52:42', '2022-04-06 07:43:02'),
(41, '{\"en\":\"Midwife Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">A Doctor of Nursing Practice (DNP) is a post-graduate degree and is another option, but is not required for entry-level nurse midwifery.<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-06 07:47:20'),
(43, '{\"en\":\"Educators and Facilators\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">An educational facilitator is one who opens the doors to learning rather than simply providing information to students in a rote format.<\\/span>\"}', 22, '2022-03-02 08:52:42', '2022-04-06 05:33:38'),
(44, '{\"en\":\"medicover hospital\"}', '{\"en\":\"Medicover Hospital\"}', 17, '2022-03-02 08:52:42', '2022-03-23 06:22:09'),
(48, '{\"en\":\"Midwife\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Certified nurse midwives (CNMs) are highly trained, versatile healthcare professionals who provide vital medical care and guide patients through important life transitions.<\\/span>\"}', 24, '2022-03-02 08:52:42', '2022-04-06 08:11:33'),
(49, '{\"en\":\"Community Care\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Services a community health nurse is able to provide include: care after a hospital stay. general nursing care, including assistance with chronic conditions.<\\/span>\"}', 16, '2022-03-02 08:52:42', '2022-04-06 08:08:39'),
(50, '{\"en\":\"Critical Care Nurse\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Critical care nurses are also known as&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">ICU nurses<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">. They treat patients who are acutely ill and unstable requiring more frequent nursing assessments and the utilization of life sustaining technology and drugs.<\\/span>\"}', 17, '2022-03-02 08:52:42', '2022-04-06 07:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `e_providers`
--

CREATE TABLE `e_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_type_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT '0.00',
  `available` tinyint(1) DEFAULT '1',
  `featured` tinyint(1) DEFAULT '0',
  `accepted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_providers`
--

INSERT INTO `e_providers` (`id`, `name`, `e_provider_type_id`, `description`, `phone_number`, `mobile_number`, `availability_range`, `available`, `featured`, `accepted`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, \\\"helvetica neue\\\", helvetica, arial, sans-serif;\\\">A hospital is a complex system of interrelated functions requiring constant movement of people and goods.<\\/span>\"}', '+1-262-404-7593', '+19319237608', 12035.46, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 07:45:43'),
(4, '{\"en\":\"Architect Treutel Group\"}', 4, '{\"en\":\"<ul class=\\\"b_vList b_divsec b_bullet\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 22px; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; margin-bottom: -4px !important;\\\"><li data-priority=\\\"\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;\\\">Yashoda Hospitals, Secunderabad. Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.<\\/li><\\/ul>\"}', '1-520-729-3968', '(308) 734-6327', 11270.38, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 04:47:35'),
(5, '{\"en\":\"Sahyadri Hospital\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Sahyadri Hospitals in <\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Deccan Gymkhana, Pune<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\"> was incepted in November 2004. The hospital is known for its excellence in Neuroscience and as one of the leading Bone Marrow Transplant Centres in western India.<\\/span>\"}', '262.819.7326', '952.527.0361', 9826.16, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 03:39:54'),
(6, '{\"en\":\"Sasun Hospital\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Sassoon Hospital played a major role in&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">controlling plague epidemic in 1892<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">. In the year 1909, expansion of Sassoon Hospital was done from the generous donation of Mr. Jacob Sassoon. Further expansion was made from the donation of Shri Ankalesaria in the year 1911.<\\/span>\"}', '9876543210', '9187654561', 14111.15, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-06 10:53:28'),
(7, '{\"en\":\"Poona Hospital\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Poona Hospital a&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">250 bed<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;multispeciality tertiary care centre was established in 1985 under the aegis of the Rajasthani and Gujarati Charitable foundation.<\\/span>\"}', '(857) 991-9887', '1-754-277-9523', 10672.37, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-06 10:32:46'),
(9, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"Medical Jobs<br>\"}', '1-218-751-0371', '1-212-690-5240', 10286.64, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 07:46:16'),
(10, '{\"en\":\"Architect Hoeger and Sons\"}', 4, '{\"en\":\"Cupiditate enim rerum dolorum eius temporibus hic. Ab corporis et consequuntur eveniet quos eum. Deleniti aut accusantium animi quasi ad tenetur itaque blanditiis.\"}', '1-325-221-9539', '(502) 278-5897', 6444.09, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-06 11:00:58'),
(11, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">hospitals&nbsp;<\\/span><span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">are largely staffed by professional physicians, surgeons, nurses, and allied health practitioners, whereas in the past, this work was usually performed by the members of founding religious orders or by volunteers.<\\/span>\"}', '+1.925.986.8810', '562.987.2966', 8659.64, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 05:31:21'),
(12, '{\"en\":\"Hospital\"}', 4, '{\"en\":\" <span style=\\\"color: rgb(77, 81, 86); font-family: Roboto, \\\"helvetica neue\\\", helvetica, arial, sans-serif;\\\">Outpatients visiting diagnostic and treatment areas should not travel through inpatient functional areas nor encounter severely ill inpatients<\\/span>\"}', '1-760-734-5697', '(737) 306-7547', 12460.31, 1, 1, 1, '2022-03-02 08:52:39', '2022-05-06 03:01:30'),
(13, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"<p>Hospital <\\/p>\"}', '520.541.3447', '+1 (469) 423-9997', 9026.73, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 04:04:17'),
(14, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"Hospitals are most important.\"}', '+1-223-208-0995', '1-341-554-5412', 9327.30, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 04:04:56'),
(15, '{\"en\":\"Glass Osinski, Schowalter and Schroeder\"}', 4, '{\"en\":\"hospitals is very important.\"}', '(725) 958-3662', '865-919-1175', 11034.19, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 04:09:06'),
(16, '{\"en\":\"Hospital\"}', 4, '{\"en\":\"hospital nurse job\"}', '9879234512', '1-657-843-6773', 6374.93, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 04:10:45'),
(17, '{\"en\":\"Himagiri Hospitals\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(112, 117, 122); font-family: arial, sans-serif; font-size: 14px;\\\"><b>Hospital in Hyderabad, Telangana<\\/b><\\/span>\"}', '+1-707-965-0768', '1-786-722-8926', 9965.30, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 07:44:24'),
(18, '{\"en\":\"OZONE Hospitals\"}', 4, '{\"en\":\"<span style=\\\"color: rgb(24, 74, 100); font-family: Poppins; font-size: 14px;\\\">Ozone Hospital is an establishment at the center of our healthcare ecosystem with a team of internationally trained medical specialists. The primary motive of our health care providers is to prioritize our patients and ensure high standards of care and attention. The institution takes pride in reducing the number of repetitive patients in the city with their treatment that often results in permanent cure.<\\/span>\"}', '+91 4022 108 108', '+91 4022 108 108', 10.00, 1, 1, 1, '2022-03-02 08:52:39', '2022-04-07 07:44:58'),
(20, '{\"en\":\"Gleneagles Global Hospital\"}', 4, '{\"en\":\"<p>Hospital in Hyderabad.<\\/p>\"}', '3322654845', '9876543210', 12.00, 1, 1, 1, '2022-04-05 04:53:11', '2022-04-05 04:53:11'),
(21, '{\"en\":\"Yashoda Hospital\"}', 4, '{\"en\":\"<ul class=\\\"b_vList b_divsec b_bullet\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 22px; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; margin-bottom: -4px !important;\\\"><li data-priority=\\\"\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;\\\">Yashoda Hospitals, Secunderabad. Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.<\\/li><\\/ul>\"}', '9876543210', '9987674538', 33.00, 1, 1, 1, '2022-04-05 04:54:18', '2022-04-05 04:54:18'),
(22, '{\"en\":\"Sunshine Hospital\"}', 4, '{\"en\":\"<p>Hospitals in Hyderabad.<\\/p>\"}', '4561237891', '1234567890', 10.00, 1, 1, 1, '2022-04-05 04:57:25', '2022-04-05 04:57:25'),
(23, '{\"en\":\"Citizens Speciality Hospital\"}', 4, '{\"en\":\"<p>Hospitals in Hyderabad.<\\/p>\"}', '789564123', '1245639874', 15.00, 1, 1, 1, '2022-04-05 05:02:55', '2022-04-05 05:04:53'),
(24, '{\"en\":\"Medicover Hospital\"}', 4, '{\"en\":\"<p><span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Medicover Hospital is among the leading health-care centers across Hyderabad city. It is renowned as one of the best health service providers offering world-class health-care facilities. The hospital strictly follows international standards.<\\/span><br><\\/p>\"}', '8879766843', '7798684578', 30.00, 1, 1, 1, '2022-04-05 05:06:19', '2022-04-05 05:06:19'),
(25, '{\"en\":\"Apollo Hospital\"}', 4, '{\"en\":\"<p>Hospitals in Hyderabad.<\\/p>\"}', '567891236', '4563217890', 8.00, 1, 1, 1, '2022-04-05 05:10:28', '2022-04-05 05:10:28'),
(26, '{\"en\":\"Prasad Hospital\"}', 4, '{\"en\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px; white-space: pre-wrap;\\\">Prasad Hospitals India Private Limited is a Private incorporated on 23 February 2010. It is classified as Non-govt company and is registered at Registrar of Companies, Hyderabad. Its authorized share capital is Rs. 50,000,000 and its paid up capital is Rs. 50,000,000. It is inolved in Human health activities<\\/span><br><\\/p>\"}', '7869985643', '7798684578', 29.00, 1, 1, 1, '2022-04-05 05:28:34', '2022-04-05 05:28:34'),
(28, '{\"en\":\"Nakshatra Hospital\"}', 4, '{\"en\":\"<p>Hospitals in Hyderabad.<\\/p>\"}', '4568971244', '6589741230', 13.00, 1, 1, 1, '2022-04-05 07:23:36', '2022-04-05 07:54:10'),
(30, '{\"en\":\"Aster Prime Hospital\"}', 4, '{\"en\":\"<p><span style=\\\"color: rgb(56, 79, 126); font-family: \\\"Titillium Web\\\", sans-serif;\\\">Aster Prime Hospitals offer quaternary medical care with best-in-class technology and facilities on par with global standards to ensure world-class healthcare to all the patients. As the leading healthcare provider, the hospital provides patients with the latest technological innovations for diagnosis and treatment of the most acute clinical conditions, highly skilled Medical and Nursing Expertise, round the clock personalized care promoting faster recovery of the patient. Aster Prime Hospital is a private, full-fledged 204-bed multi-speciality hospital situated in the strategic location of Ameerpet at Hyderabad. As one of the pioneer corporate healthcare facilities in the state of Telangana, Aster Prime Hospitals has always been at the forefront offering healthcare services of international standards right here at Hyderabad within the reach of its community.<\\/span><br><\\/p>\"}', '123654799', '98756412330', 13.00, 1, 1, 1, '2022-04-06 09:52:15', '2022-04-06 09:53:40'),
(31, '{\"en\":\"Continental Hospital Hyderabad\"}', 4, '{\"en\":\"<p>Famous Hospital in Hyderabad.<\\/p>\"}', '11254639870', '3214569770', 35.00, 1, 1, 1, '2022-04-06 09:59:37', '2022-04-06 09:59:37'),
(37, '{\"en\":\"Dieter Strickland\",\"de\":\"Dieter Strickland\"}', 5, '{\"de\":null}', '+1 (298) 157-8489', '665', 7.00, 0, 1, 1, '2022-06-10 07:12:52', '2022-09-17 05:36:41'),
(41, '{\"en\":\"ridhya\",\"de\":\"Ridhya\"}', 4, '{\"de\":\"<p><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">hospital<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">, an institution that is built, staffed, and equipped for the diagnosis of disease; for the treatment, both medical and surgical, of the sick and the injured; and for their housing during this process. The modern&nbsp;<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">hospital<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">&nbsp;also often serves as a centre for investigation and for teaching<\\/span><br><\\/p>\"}', '8589586859', '7895685956', 1000.00, 0, 1, 1, NULL, '2022-09-17 05:42:07'),
(52, '{\"en\":\"Suman Chowdary Gudapati\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(53, '{\"en\":\"tester\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(54, '{\"en\":\"tester\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(55, '{\"en\":\"tester\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(56, '{\"en\":\"test\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(57, '{\"en\":\"Max well\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(58, '{\"en\":\"max well\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(59, '{\"en\":\"max well2\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL),
(60, '{\"en\":\"Dipti\"}', 4, NULL, NULL, NULL, 0.00, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_addresses`
--

CREATE TABLE `e_provider_addresses` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_addresses`
--

INSERT INTO `e_provider_addresses` (`e_provider_id`, `address_id`) VALUES
(10, 2),
(20, 2),
(15, 3),
(22, 3),
(26, 3),
(31, 3),
(5, 4),
(14, 4),
(23, 4),
(6, 7),
(7, 7),
(9, 7),
(12, 7),
(11, 8),
(25, 8),
(4, 9),
(9, 9),
(4, 10),
(21, 10),
(30, 11),
(7, 14),
(16, 14),
(37, 14),
(6, 15),
(10, 15),
(37, 15),
(18, 17),
(28, 18),
(2, 19),
(6, 19),
(17, 19),
(24, 19),
(5, 20),
(13, 20),
(41, 22);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_payouts`
--

CREATE TABLE `e_provider_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_taxes`
--

CREATE TABLE `e_provider_taxes` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_taxes`
--

INSERT INTO `e_provider_taxes` (`e_provider_id`, `tax_id`) VALUES
(2, 2),
(4, 2),
(11, 2),
(12, 2),
(14, 2),
(15, 2),
(17, 2),
(21, 2),
(26, 2),
(37, 2),
(41, 2),
(10, 3),
(37, 3),
(5, 4),
(6, 4),
(7, 4),
(9, 4),
(13, 4),
(16, 4),
(18, 4),
(20, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(28, 4),
(30, 4),
(31, 4);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_types`
--

CREATE TABLE `e_provider_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `commission` double(5,2) NOT NULL DEFAULT '0.00',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_types`
--

INSERT INTO `e_provider_types` (`id`, `name`, `commission`, `disabled`, `created_at`, `updated_at`) VALUES
(4, '{\"en\":\"Hospital\"}', 13.00, 0, '2022-03-10 03:36:00', '2022-03-10 03:36:00'),
(5, '{\"en\":\"Medical Clinics\"}', 16.00, 0, '2022-03-10 10:58:17', '2022-03-10 10:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_users`
--

CREATE TABLE `e_provider_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_users`
--

INSERT INTO `e_provider_users` (`user_id`, `e_provider_id`) VALUES
(4, 2),
(5, 4),
(2, 5),
(4, 5),
(2, 6),
(6, 6),
(2, 7),
(4, 7),
(6, 9),
(8, 10),
(5, 11),
(6, 12),
(7, 13),
(6, 14),
(7, 15),
(6, 16),
(6, 17),
(4, 18),
(3, 20),
(6, 20),
(3, 21),
(4, 22),
(7, 22),
(2, 23),
(6, 23),
(5, 24),
(3, 25),
(5, 25),
(5, 26),
(5, 28),
(7, 28),
(3, 30),
(4, 30),
(7, 30),
(2, 31),
(3, 31),
(5, 31),
(7, 31),
(4, 37),
(5, 37),
(16, 37),
(22, 37),
(7, 41),
(67, 52),
(70, 53),
(71, 54),
(72, 55),
(73, 56),
(76, 57),
(79, 58),
(80, 59),
(81, 60);

-- --------------------------------------------------------

--
-- Table structure for table `e_services`
--

CREATE TABLE `e_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(10,2) DEFAULT '0.00',
  `price_unit` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8mb4_unicode_ci,
  `duration` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `enable_booking` tinyint(1) DEFAULT '1',
  `available` tinyint(1) DEFAULT '1',
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_services`
--

INSERT INTO `e_services` (`id`, `name`, `price`, `discount_price`, `price_unit`, `quantity_unit`, `duration`, `description`, `featured`, `enable_booking`, `available`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Nurses\"}', 25.46, 21.15, 'hourly', '{\"en\":null}', '03:00', '{\"en\":\"<b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Identifying patients\' care requirements, focus on their needs and act on them<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Nurturing a compassionate environment by providing psychological support. Resolving or reporting on patients\' needs or problems.<\\/span>\"}', 1, 1, 1, 18, '2022-03-02 08:52:39', '2022-04-05 02:27:09'),
(2, '{\"en\":\"Midwife\"}', 18.86, 15.99, 'hourly', '{\"en\":null}', '01:00', '{\"en\":\"<b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Providing pregnancy care by monitoring the health of the mother-to-be and her unborn baby<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span>\"}', 1, 1, 1, 9, '2022-03-02 08:52:39', '2022-03-10 03:44:06'),
(3, '{\"en\":\"Acute Nurse\"}', 38.28, 30.76, 'hourly', '{\"en\":null}', '05:00', '{\"en\":\"<span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">The Acute Care Nurse <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">provides advanced nursing care for patients with acute conditions including pre- and post-operative patients or performs advanced, invasive diagnostic or therapeutic procedures<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span>\"}', 1, 1, 1, 9, '2022-03-02 08:52:39', '2022-03-10 14:38:28'),
(4, '{\"en\":\"Aged Care\"}', 37.16, 35.53, 'fixed', '{\"en\":null}', '01:00', '{\"en\":\"<span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Regardless of where they work, Aged Care Registered Nurses play an important role in <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">administering medications, observing patients, monitoring health and diet, managing chronic disease and dementia<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span>\"}', 0, 0, 1, 9, '2022-03-02 08:52:39', '2022-03-10 03:44:45'),
(5, '{\"en\":\"Cardiac Nurse\"}', 36.28, 0.00, 'hourly', '{\"en\":null}', '04:00', '{\"en\":\"<span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Cardiac nurses <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">administer stress tests and electrocardiograms -- or EKGs -- to patients suspected of having heart murmurs, blockages and other cardiovascular complications<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Cardiac nurses monitor patients\' vital signs, prepare them for open-heart surgery, and administer medications.<\\/span>\"}', 1, 1, 1, 9, '2022-03-02 08:52:39', '2022-04-05 07:14:49'),
(6, '{\"en\":\"Community Nurse\"}', 47.81, 40.38, 'fixed', '{\"en\":null}', '02:00', '{\"en\":\"<b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Educate patients and their families on diseases, its preventive and controlling measures<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span>\"}', 0, 1, 1, 9, '2022-03-02 08:52:39', '2022-03-10 03:45:36'),
(7, '{\"en\":\"Cosmetic Injector Nurse\"}', 29.13, 0.00, 'hourly', '{\"en\":null}', '04:00', '{\"en\":\"<span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">In addition to providing injections of Botox, which is meant to reduce facial wrinkles, you <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">assess patients to ensure their suitability for non-surgical treatments, such as Botox, dermal fillers, laser hair removal, or chemical skin treatments<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span>\"}', 1, 0, 1, 9, '2022-03-02 08:52:39', '2022-05-06 03:18:51'),
(8, '{\"en\":\"Critical Care\\/ICU Nurse\"}', 31.56, 29.24, 'hourly', '{\"en\":null}', '04:00', '{\"en\":\"<span style=\\\"color: rgb(44, 50, 65); font-family: \\\"Work Sans\\\", \\\"Helvetica Neue Light\\\", \\\"Helvetica Neue\\\", Helvetica, Arial, sans-serif; font-size: 22px; letter-spacing: -0.2px; background-color: rgb(221, 241, 250);\\\">We are searching for a dedicated intensive care unit (ICU) nurse to deliver vital care to seriously ill or injured patients in our ICU department. As a specialized nurse, you will be highly trained to treat patients who have suffered strokes, heart attacks, or undergone invasive surgery.<\\/span>\"}', 1, 1, 1, 9, '2022-03-02 08:52:39', '2022-03-23 02:36:41'),
(9, '{\"en\":\"Educators & Facilitators\"}', 25.45, 21.95, 'hourly', '{\"en\":null}', '02:00', '{\"en\":\"<span style=\\\"color: rgb(95, 95, 95); font-family: proxima-nova, sans-serif;\\\">Instead of dedicating their career exclusively to patient care, a nurse educator is passionate about teaching and advocating for nurses. They instruct aspiring nurses and offer guidance, which may include training in both practical and educational settings.<\\/span>\"}', 1, 1, 1, 9, '2022-03-02 08:52:39', '2022-03-23 02:37:00'),
(10, '{\"en\":\"Emergency Nurse\"}', 24.83, 0.00, 'fixed', '{\"en\":null}', '03:00', '{\"en\":\"<span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">An Emergency Room Nurse is primarily responsible for <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">developing a patient care plan after a quick and thorough evaluation of a patient\'s injuries<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Common responsibilities include bone setting, blood transfusions, wound care, medication administration, and much more.<\\/span>\"}', 1, 1, 1, 18, '2022-03-02 08:52:39', '2022-05-06 03:17:14'),
(11, '{\"en\":\"Hospital nursing‎\"}', 200.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Identifying patients\' care requirements, focus on their needs and act on them<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Nurturing a compassionate environment by providing psychological support. Resolving or reporting on patients\' needs or problems.<\\/span><br><\\/p>\"}', 1, 1, 1, 18, '2022-03-23 08:16:14', '2022-03-23 08:16:14'),
(12, '{\"en\":\"Palliative care‎\"}', 313.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>Palliative care is specialized medical care for people living with a serious illness, such as cancer or heart failure. Patients in palliative care may receive medical care for their symptoms, or palliative care, along with treatment intended to cure their serious illness.<br><\\/p>\"}', 1, 1, 1, 18, '2022-03-23 08:22:47', '2022-03-23 08:22:47'),
(13, '{\"en\":\"Camp nursing\"}', 500.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Camp nurses are <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">charged with making sure all campers are healthy enough to attend the camp, and deal with any injuries or illnesses that may come up in the course of the camp\'s duration<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span><br><\\/p>\"}', 1, 1, 1, 17, '2022-03-23 09:46:07', '2022-03-23 09:46:32'),
(14, '{\"en\":\"Cardiac nursing\"}', 250.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">A Cardiac Care Nurse <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">cares for patients with heart diseases or conditions, from coronary artery disease to heart failure and recovery from bypass surgery<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">.<\\/span><br><\\/p>\"}', 1, 1, 1, 17, '2022-03-23 09:53:58', '2022-03-23 10:02:43'),
(16, '{\"en\":\"Home health nursing\",\"de\":\"Home health nursing\"}', 500.00, NULL, 'hourly', '{\"de\":null}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Home health nursing is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">a nursing specialty in which nurses provide multidimensional home care to patients of all ages<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Home health care is a cost efficient way to deliver quality care in the convenience of the client\'s home. Home health nurses create care plans to achieve goals based on the client\'s diagnosis.<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Home health nursing is <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">a nursing specialty in which nurses provide multidimensional home care to patients of all ages<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Home health care is a cost efficient way to deliver quality care in the convenience of the client\'s home. Home health nurses create care plans to achieve goals based on the client\'s diagnosis.<\\/span><br><\\/p>\"}', 1, 1, 1, 17, '2022-03-23 10:00:39', '2022-09-17 05:26:38'),
(17, '{\"en\":\"Holistic nursing\",\"de\":\"Holistic nursing\"}', 500.00, NULL, 'hourly', '{\"de\":null}', '18:44', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Holistic nursing is generally defined as <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">all nursing practice that has healing the whole person as its goal<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. A holistic nurse is a licensed nurse who takes a “mind-body-spirit-emotion-environment” approach to the practice of traditional nursing.<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Holistic nursing is generally defined as <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">all nursing practice that has healing the whole person as its goal<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. A holistic nurse is a licensed nurse who takes a “mind-body-spirit-emotion-environment” approach to the practice of traditional nursing.<\\/span><br><\\/p>\"}', 1, 1, 1, 18, '2022-03-23 10:46:01', '2022-09-17 05:26:53'),
(18, '{\"en\":\"Neonatal nursing\",\"de\":\"Neonatal nursing\"}', 500.00, NULL, 'hourly', '{\"de\":null}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Neonatal nursing is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">a subspecialty of nursing that works with newborn infants born with a variety of problems ranging from prematurity, birth defects, infection, cardiac malformations, and surgical problems<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. The neonatal period is defined as the first month of life; however, these newborns are often sick for months.<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Neonatal nursing is <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">a subspecialty of nursing that works with newborn infants born with a variety of problems ranging from prematurity, birth defects, infection, cardiac malformations, and surgical problems<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. The neonatal period is defined as the first month of life; however, these newborns are often sick for months.<\\/span><br><\\/p>\"}', 1, 1, 1, 17, '2022-03-23 10:56:00', '2022-09-17 05:27:09'),
(19, '{\"en\":\"Pediatric nursing\",\"de\":\"Pediatric nursing\"}', 450.00, 50.00, 'hourly', '{\"de\":\"2\"}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Pediatric nursing is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">part of the nursing profession, specifically revolving around the care of neonates and children up to adolescence<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Nurses who major in pediatrics devote their knowledge and skills to care for young ages. The word, pediatrics, comes from the Greek words \'paedia\' (child) and \'iatrike\' (physician).<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Pediatric nursing is <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">part of the nursing profession, specifically revolving around the care of neonates and children up to adolescence<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Nurses who major in pediatrics devote their knowledge and skills to care for young ages. The word, pediatrics, comes from the Greek words \'paedia\' (child) and \'iatrike\' (physician).<\\/span><br><\\/p>\"}', 1, 1, 1, 18, '2022-03-23 10:58:24', '2022-09-17 05:27:33'),
(23, '{\"en\":\"Surgical Assistant Registered Nurse\"}', 50.00, 47.23, 'hourly', '{\"en\":\"12\"}', '18:34', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">A registered nurse first assistant (RNFA) is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">a perioperative registered nurse (RN) who functions as the first assistant to the surgeon during surgery<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">&nbsp;(the intraoperative phase).<\\/span><br><\\/p>\"}', 1, 1, 1, 24, '2022-04-05 10:39:38', '2022-04-05 10:39:38'),
(24, '{\"en\":\"Home Care Registered Nurse\"}', 55.00, 52.00, 'hourly', '{\"en\":\"23\"}', '18:39', '{\"en\":\"<p><span style=\\\"color: rgb(44, 50, 65); font-family: &quot;Work Sans&quot;, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 22px; letter-spacing: -0.2px;\\\"><b>Home Care Nurses <\\/b>provide care to patients in their homes under the guidance of a <b>Physician<\\/b>. They perform regular visits where they monitor the patient’s condition, assess their wounds, and change dressings as required. Home care nurses also <b>write reports and communicate with the doctor after each visit.<\\/b><\\/span><\\/p>\"}', 1, 1, 1, 25, '2022-04-05 10:40:44', '2022-04-05 10:40:44'),
(26, '{\"en\":\"Emergency Room Registered Nurse\"}', 40.00, 38.00, 'hourly', '{\"en\":\"15\"}', '18:46', '{\"en\":\"<p><span style=\\\"color: rgb(44, 50, 65); font-family: &quot;Work Sans&quot;, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 22px; letter-spacing: -0.2px;\\\"><b>Emergency Room (ER) Nurses<\\/b> are critical care medical practitioners who help doctors in medical emergencies. ER nurses are expected to assist doctors, perform minor medical operations, and treat patients experiencing a <b>critical injury, allergic reactions, or trauma<\\/b>.<\\/span><br><\\/p>\"}', 1, 1, 1, 26, '2022-04-05 10:47:14', '2022-04-05 10:47:14'),
(28, '{\"en\":\"surgical assistant registered nurse\",\"de\":\"surgical assistant registered nurse\"}', 90.00, 85.00, 'hourly', '{\"en\":\"23\",\"de\":\"23\"}', '18:51', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Staff Nurse - RN - Surgical First Assistant <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">provides direct patient care to surgical patients throughout the perioperative period<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Assists surgeon during surgical procedures by positioning skin preparation, providing wound exposure, performing tissue dissection, suturing, and other surgical tasks.<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Staff Nurse - RN - Surgical First Assistant <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">provides direct patient care to surgical patients throughout the perioperative period<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Assists surgeon during surgical procedures by positioning skin preparation, providing wound exposure, performing tissue dissection, suturing, and other surgical tasks.<\\/span><br><\\/p>\"}', 1, 1, 1, 21, '2022-04-05 10:52:36', '2022-09-17 05:14:53'),
(30, '{\"en\":\"Licensed Practical Nurse\",\"de\":\"Licensed Practical Nurse\"}', 300.00, NULL, 'hourly', '{\"en\":\"21\",\"de\":\"21\"}', '19:02', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Licensed practical nurses (LPNs) i are&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">health care professionals who work independently or in collaboration with other members of a health care team<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. LPNs assess clients and work in health promotion and illness prevention. They assess, plan, implement and evaluate care for clients.<\\/span><br><\\/p>\",\"de\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Licensed practical nurses (LPNs) i are <\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">health care professionals who work independently or in collaboration with other members of a health care team<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. LPNs assess clients and work in health promotion and illness prevention. They assess, plan, implement and evaluate care for clients.<\\/span><br><\\/p>\"}', 1, 1, 1, 21, '2022-04-05 11:03:58', '2022-09-17 05:16:51'),
(31, '{\"en\":\"Certified Nursing Assistant\"}', 423.00, 12.00, 'hourly', '{\"en\":\"11\"}', '19:20', '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">A CNA, or certified nursing assistant, is&nbsp;<\\/span><b style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">an entry-level member of a patient\'s healthcare team, performing important patient-centered tasks under the supervision of licensed nursing staff<\\/b><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">. Although a CNA is not a nurse, they work very closely with nurses, physicians, and other healthcare providers.<\\/span><br><\\/p>\"}', 1, 1, 1, 21, '2022-04-05 11:21:31', '2022-04-05 11:21:31'),
(32, '{\"en\":\"Dental Hygienist\"}', 500.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\\\">Hygienists use a variety of tools and techniques to remove tartar, stains, and plaque from teeth, improving their patients\' dental health by preventing cavities and tooth loss while simultaneously helping them achieve the bright, beautiful smile that they want, while helping the patient to maintain their overall health<\\/span><br><\\/p>\"}', 1, 1, 1, 31, '2022-04-08 08:20:25', '2022-04-08 08:20:25'),
(33, '{\"en\":\"Dental Assistant\"}', 360.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>We are hiring a dental assistant for our busy dental practice. You will help with preparing patients, sterilizing instruments, setting up rooms, and some dental hygiene tasks. To do well in this role you should have a dental x-ray certification and provide a great level of patient care.<br><\\/p>\"}', 1, 1, 1, 2, '2022-04-08 08:25:38', '2022-04-08 08:25:38'),
(34, '{\"en\":\"Dental Technician\"}', 520.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p style=\\\"margin: 0.5em 0px;\\\"><font color=\\\"#202122\\\" face=\\\"sans-serif\\\"><span style=\\\"font-size: 14px;\\\">A dental technologist (dental laboratory technician) is a member of the dental team who, upon prescription from a dental clinician, constructs custom-made restorative and dental appliances.<\\/span><\\/font><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">There are four major disciplines within dental technology. These are fixed prosthesis including crowns, bridges and implants; removable prosthesis, including dentures and removable partial dentures; maxillofacial prosthesis, including ocular prosthesis and craniofacial prosthesis; and orthodontics and auxiliaries, including orthodontic appliances and mouthguards.<\\/span><\\/p><p style=\\\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\"><br><\\/p>\"}', 1, 1, 1, 18, '2022-04-08 08:37:37', '2022-04-08 08:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `e_service_categories`
--

CREATE TABLE `e_service_categories` (
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_categories`
--

INSERT INTO `e_service_categories` (`e_service_id`, `category_id`) VALUES
(1, 2),
(2, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(23, 2),
(24, 2),
(28, 2),
(30, 2),
(31, 2),
(1, 3),
(3, 3),
(16, 3),
(24, 3),
(26, 3),
(11, 4),
(12, 4),
(26, 4),
(13, 5),
(14, 5),
(16, 5),
(18, 5),
(23, 5),
(26, 5),
(28, 5),
(19, 16),
(32, 16),
(33, 16),
(34, 16),
(7, 22),
(10, 22),
(17, 22);

-- --------------------------------------------------------

--
-- Table structure for table `e_service_reviews`
--

CREATE TABLE `e_service_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` decimal(3,2) NOT NULL DEFAULT '0.00',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_reviews`
--

INSERT INTO `e_service_reviews` (`id`, `review`, `rate`, `user_id`, `e_service_id`, `created_at`, `updated_at`) VALUES
(2, '<span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">A brilliant book at a great price!. As a nurse that has just started in ICU, I needed a suitable self help book for different scenarios. Downloaded to my Kindle I can pick up and put down as needed for reference. Separated into different problem areas such as patient with pain, or a patient in respiratory distress, I am able to pick and choose the chapter needed. The only real downside is on the Kindle, a lot of the information is put into tables and they are are hard work trying to read without zooming in and out constantly. Would happily re-invest with the book version instead.</span>', 4.00, 3, 19, '2022-03-02 08:52:40', '2022-04-05 07:45:49'),
(12, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, \" noto=\"\" sans=\"\" devanagari=\"\" ui\",=\"\" \"noto=\"\" bengali=\"\" telugu=\"\" tamil=\"\" gujarati=\"\" kannada=\"\" malayalam=\"\" gurmukhi=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><b>It was an awesome session with wonderful ideas. I am following your channel since my pregnancy and my son is 6 months old now. I have learned so many things and techniques from your videos including Breastfeeding and post-cesarean care.. I have also joined your play date batch and learned so much for keeping engaged my kid that will be beneficial for me and my both in the future.I can continue my motherhood journey peacefully with your out-of-the-box ideas.</b></span>', 4.00, 8, 2, '2022-03-02 08:52:41', '2022-03-22 05:31:23'),
(15, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><b>Very good service</b></span>', 4.00, 8, 7, '2022-03-02 08:52:41', '2022-03-22 10:50:26'),
(22, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Excellent</b></p></div>', 4.00, 3, 9, '2022-03-02 08:52:41', '2022-03-22 11:09:27'),
(30, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><b>Good service provider and very friendly staff.</b></span>', 5.00, 3, 10, '2022-03-02 08:52:41', '2022-03-22 09:08:22'),
(31, '<span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\"><b>\"We had an exceptional experience with Access Midwives and the Purple team. I felt that Tamara, Simone, Erin, and Nicole went above and beyond when it came to supporting us and brought forth their years of combined experience and knowledge. I always felt the team was available for our questions and any concerns and we felt very accommodated from prenatal to post with their thorough appointments. \"</b></span>', 5.00, 8, 2, '2022-03-02 08:52:41', '2022-03-22 05:08:10'),
(35, '<span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\"><b>\"Thank you for giving me a great pregnancy, birth, and postpartum experience. It was exactly what I had hoped for. I had the natural unmedicated birth I wanted, I couldn\'t ask for more. \"</b></span>', 5.00, 3, 2, '2022-03-02 08:52:41', '2022-03-22 05:06:47'),
(36, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Very good service</b></p></div>', 4.00, 8, 10, '2022-03-02 08:52:41', '2022-03-22 11:10:51'),
(38, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><b>Excellent</b></span>', 4.00, 8, 10, '2022-03-02 08:52:41', '2022-03-22 09:13:00'),
(40, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, &quot;Noto Sans Devanagari UI&quot;, &quot;Noto Sans Bengali UI&quot;, &quot;Noto Sans Telugu UI&quot;, &quot;Noto Sans Tamil UI&quot;, &quot;Noto Sans Gujarati UI&quot;, &quot;Noto Sans Kannada UI&quot;, &quot;Noto Sans Malayalam UI&quot;, &quot;Noto Sans Gurmukhi UI&quot;, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\"><b>My family will never forget this loving woman all our lives.</b></span>', 5.00, 3, 10, '2022-03-02 08:52:41', '2022-03-22 10:45:33'),
(43, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><b>Very good service, thanks.</b></span>', 4.00, 3, 8, '2022-03-02 08:52:41', '2022-03-22 09:32:46'),
(45, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, \" noto=\"\" sans=\"\" devanagari=\"\" ui\",=\"\" \"noto=\"\" bengali=\"\" telugu=\"\" tamil=\"\" gujarati=\"\" kannada=\"\" malayalam=\"\" gurmukhi=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><b>Very nice experience. So many informative sessions.. this is helping us to make pregnancy smooth and enjoyable...</b></span>', 5.00, 5, 2, '2022-03-02 08:52:41', '2022-03-22 05:32:01'),
(61, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><b>Best and quick service</b></span>', 3.00, 3, 1, '2022-03-02 08:52:41', '2022-03-22 10:31:28'),
(68, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, \" noto=\"\" sans=\"\" devanagari=\"\" ui\",=\"\" \"noto=\"\" bengali=\"\" telugu=\"\" tamil=\"\" gujarati=\"\" kannada=\"\" malayalam=\"\" gurmukhi=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><b>Very informative pre-pregnancy sessions.</b></span>', 5.00, 5, 4, '2022-03-02 08:52:41', '2022-04-05 07:47:13'),
(69, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Very good service</b></p></div>', 4.00, 3, 4, '2022-03-02 08:52:41', '2022-03-22 11:09:43'),
(74, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\">Excellent!!!</p></div>', 4.00, 3, 10, '2022-03-02 08:52:41', '2022-03-22 11:06:38'),
(77, '<span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\"><b>Me and my wife will be always grateful to Access Midwives , we had a lovely experience. Tamara , Simone and Erin the team who took care of my wife , thank you from the bottom of our hearts .\"</b></span>', 4.00, 7, 2, '2022-03-02 08:52:41', '2022-03-22 05:31:06'),
(79, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Best and quick service</b></p></div><div class=\"scl_cunt\" style=\"margin: 0px; outline: none medium; padding: 10px 0px; text-size-adjust: none; float: left; width: 561.287px; border-bottom: 1px solid rgb(229, 229, 229); font-size: 13px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif, arial;\"><span class=\"lft_cunt\" style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; float: left; color: rgb(116, 116, 116); position: relative;\"><a data-rev=\"1569511807802918\" class=\"likehr open_popup lmk_1569511807802918\" data-cn=\"1\" style=\"margin: 0px; outline: none 0px; padding: 0px; text-size-adjust: none; color: rgb(116, 116, 116); border: 0px; cursor: pointer;\"><b><i class=\"sclsprt sml_thums_icn\" style=\"margin: 0px 2px 0px 0px; outline: none medium; padding: 0px; text-size-adjust: none; background: url(\"https://akam.cdn.jdmagicbox.com/images/icontent/jdsocial/jdsocial_1x.png\") -5px -135px / 175px no-repeat; display: inline-block; width: 15px; height: 15px;\"></i></b></a></span></div>', 5.00, 5, 5, '2022-03-02 08:52:41', '2022-03-23 02:35:08'),
(81, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, \" noto=\"\" sans=\"\" devanagari=\"\" ui\",=\"\" \"noto=\"\" bengali=\"\" telugu=\"\" tamil=\"\" gujarati=\"\" kannada=\"\" malayalam=\"\" gurmukhi=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><b>Their service is great, you can trust them...</b></span>', 5.00, 3, 6, '2022-03-02 08:52:41', '2022-03-22 10:44:18'),
(84, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Nice service.</b></p></div>', 5.00, 8, 1, '2022-03-02 08:52:41', '2022-03-22 10:47:24'),
(85, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b> Great experience, keep it up!!!!!</b></p></div>', 3.00, 3, 18, '2022-03-02 08:52:41', '2022-04-05 07:46:22'),
(86, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left;\"><b style=\"\"><font color=\"#000000\" style=\"background-color: rgb(247, 247, 247);\">Best and quick service</font></b></p></div>', 4.00, 5, 5, '2022-03-02 08:52:41', '2022-03-22 09:29:24'),
(89, '<span style=\"color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial; font-size: 13px;\">Excellent, reliable, and affordable service with a human touch. Great experience, keep it up!!!!!</span>', 4.00, 8, 5, '2022-03-02 08:52:41', '2022-03-22 09:11:28'),
(91, '<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Roboto, \" noto=\"\" sans=\"\" devanagari=\"\" ui\",=\"\" \"noto=\"\" bengali=\"\" telugu=\"\" tamil=\"\" gujarati=\"\" kannada=\"\" malayalam=\"\" gurmukhi=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><b>Good service.</b></span>', 4.00, 3, 30, '2022-03-02 08:52:41', '2022-04-06 01:57:37'),
(93, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\">Great experience.</p></div>', 4.00, 7, 4, '2022-03-02 08:52:41', '2022-03-22 11:04:52'),
(99, '<div style=\"margin: 0px; outline: none medium; padding: 0px; text-size-adjust: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif, arial; font-size: 13px;\"><p class=\"rwopinion2 thr lng_commn\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none medium; padding: 0px; text-size-adjust: none; width: 561.287px; float: left; color: rgb(116, 116, 116);\"><b>Excellent, reliable, and affordable service with a human touch. Great experience, keep it up!!!!!</b></p></div>', 3.00, 8, 16, '2022-03-02 08:52:41', '2022-04-05 07:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Facere sit vitae aut delectus incidunt. Mollitia maiores sit voluptates ex rerum recusandae ut.\"}', '{\"en\":\"Alice could see, when she was quite surprised to find any. And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best of educations--in fact, we went to.\"}', 4, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(2, '{\"en\":\"Repellat culpa non sit fugit et architecto explicabo. Et qui eos rem dolores vel.\"}', '{\"en\":\"King, rubbing his hands; \'so now let the jury--\' \'If any one left alive!\' She was a good deal on where you want to be?\' it asked. \'Oh, I\'m not the smallest idea how to set them free, Exactly as we.\"}', 3, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(3, '{\"en\":\"Qui cumque architecto odit quia. Fuga id numquam ut commodi odit. Quasi est est labore corporis.\"}', '{\"en\":\"And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked sadly down the little golden.\"}', 4, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(4, '{\"en\":\"Odit corporis vitae qui et cum. Dolores debitis assumenda iure exercitationem eius molestiae atque.\"}', '{\"en\":\"Lobster Quadrille The Mock Turtle sighed deeply, and began, in a few minutes she heard one of them were animals, and some of the ground, Alice soon came upon a little nervous about this; \'for it.\"}', 1, '2022-03-02 08:52:41', '2022-03-02 08:52:41'),
(5, '{\"en\":\"Porro dolorem omnis ea rem. Quis autem sint commodi perferendis.\"}', '{\"en\":\"How puzzling all these changes are! I\'m never sure what I\'m going to leave off being arches to do next, when suddenly a White Rabbit with pink eyes ran close by it, and behind it, it occurred to her.\"}', 1, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(6, '{\"en\":\"Excepturi rerum quod doloremque. Voluptas nam aut voluptas natus.\"}', '{\"en\":\"The hedgehog was engaged in a day is very confusing.\' \'It isn\'t,\' said the Eaglet. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King, \'and don\'t look at the Cat\'s head with.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(7, '{\"en\":\"Doloribus sed quisquam itaque vel sed enim. Ab dolor aut sapiente animi.\"}', '{\"en\":\"Alice, that she let the Dormouse shall!\' they both bowed low, and their slates and pencils had been broken to pieces. \'Please, then,\' said Alice, and she swam nearer to watch them, and it\'ll sit up.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(8, '{\"en\":\"Voluptatibus eum sit commodi aperiam ut voluptates adipisci. Ducimus sed soluta aut ipsa.\"}', '{\"en\":\"Presently she began again. \'I wonder how many hours a day or two: wouldn\'t it be of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course had to kneel down on one.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(9, '{\"en\":\"Pariatur est asperiores omnis. Autem tempore velit sunt et recusandae. Dolores amet non beatae sit.\"}', '{\"en\":\"Queen said--\' \'Get to your places!\' shouted the Queen, in a trembling voice:-- \'I passed by his garden, and I could not join the dance? Will you, won\'t you join the dance. Would not, could not help.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(10, '{\"en\":\"Et doloremque numquam voluptatem eligendi. Qui maxime quaerat placeat laboriosam eveniet aut.\"}', '{\"en\":\"All on a little way forwards each time and a Long Tale They were indeed a queer-looking party that assembled on the top of her head down to the three gardeners at it, busily painting them red. Alice.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(11, '{\"en\":\"Non minus placeat eveniet itaque quia. Quis laudantium eum omnis aut dolorum ut illo.\"}', '{\"en\":\"I? Ah, THAT\'S the great hall, with the name again!\' \'I won\'t indeed!\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the Dormouse again, so she tried the roots of trees.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(12, '{\"en\":\"Nemo neque deserunt qui quia. Magni non omnis qui.\"}', '{\"en\":\"King, rubbing his hands; \'so now let the jury--\' \'If any one left alive!\' She was close behind her, listening: so she went hunting about, and make out at all a pity. I said \\\"What for?\\\"\' \'She boxed.\"}', 4, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(13, '{\"en\":\"Fuga ipsam tenetur facere aperiam error. Impedit dolorem repellendus voluptas libero voluptatibus.\"}', '{\"en\":\"Knave. The Knave of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the White Rabbit cried out, \'Silence in the same solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song.\"}', 4, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(14, '{\"en\":\"Molestiae vel repudiandae ut. Ut illum est quos omnis vitae. Mollitia quaerat qui nam ea.\"}', '{\"en\":\"How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(15, '{\"en\":\"A voluptas praesentium velit. Earum quis corporis eius ipsum. Sed totam est omnis quia minus.\"}', '{\"en\":\"How queer everything is queer to-day.\' Just then her head was so small as this is May it won\'t be raving mad after all! I almost wish I hadn\'t quite finished my tea when I sleep\\\" is the same thing a.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(16, '{\"en\":\"Vel fuga sed doloribus. Aut mollitia quae molestias voluptatum aperiam.\"}', '{\"en\":\"I think?\' \'I had NOT!\' cried the Gryphon, before Alice could only see her. She is such a simple question,\' added the Dormouse, not choosing to notice this last remark, \'it\'s a vegetable. It doesn\'t.\"}', 4, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(17, '{\"en\":\"Qui est corrupti modi dolor occaecati assumenda nobis doloremque. In nulla ut vel sit.\"}', '{\"en\":\"What happened to you? Tell us all about as curious as it went. So she sat still and said \'No, never\') \'--so you can find out the verses the White Rabbit returning, splendidly dressed, with a great.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(18, '{\"en\":\"Aliquam dolor debitis et. Odio ut aliquam voluptatum eum expedita nisi. Minima quas ea omnis aut.\"}', '{\"en\":\"I get\\\" is the reason so many out-of-the-way things to happen, that it was as steady as ever; Yet you turned a back-somersault in at once.\' And in she went. Once more she found it so yet,\' said the.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(19, '{\"en\":\"Iure illo facere sit aspernatur. Libero cupiditate quam debitis aperiam sed illum.\"}', '{\"en\":\"I am now? That\'ll be a walrus or hippopotamus, but then she looked up and beg for its dinner, and all of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' \'I couldn\'t help.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(20, '{\"en\":\"Odio et iste dolorem. Voluptas sed et facilis aut voluptas mollitia.\"}', '{\"en\":\"King, looking round the court and got behind Alice as she ran. \'How surprised he\'ll be when he sneezes; For he can EVEN finish, if he thought it must be off, and she could see it trying in a great.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(21, '{\"en\":\"Voluptas rerum quis sequi omnis. Autem ipsam ullam aut. Adipisci error hic voluptas.\"}', '{\"en\":\"Between yourself and me.\' \'That\'s the judge,\' she said to herself; \'his eyes are so VERY much out of the day; and this Alice thought to herself, and fanned herself with one finger for the garden!\'.\"}', 1, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(22, '{\"en\":\"Aperiam facere minima ut. Doloribus quam id veniam et. In et molestiae neque aliquid quisquam odio.\"}', '{\"en\":\"Majesty,\' said the King: \'however, it may kiss my hand if it had grown to her that she was out of sight; and an Eaglet, and several other curious creatures. Alice led the way, and then added them.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(23, '{\"en\":\"Quae rerum labore odit. Quo officiis harum quia ea. Numquam odit tenetur assumenda nemo aspernatur.\"}', '{\"en\":\"I should be raving mad after all! I almost wish I hadn\'t cried so much!\' Alas! it was YOUR table,\' said Alice; \'but a grin without a cat! It\'s the most interesting, and perhaps after all it might be.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(24, '{\"en\":\"Impedit doloremque magnam praesentium praesentium. Facere nihil et corrupti et et ut.\"}', '{\"en\":\"Majesty,\' he began. \'You\'re a very curious to know when the White Rabbit read out, at the Queen, who had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF.\"}', 1, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(25, '{\"en\":\"Dolorum deleniti ut libero rerum. Ut impedit mollitia doloribus suscipit et.\"}', '{\"en\":\"I do,\' said Alice as he spoke, and then all the children she knew, who might do something better with the Duchess, it had been, it suddenly appeared again. \'By-the-bye, what became of the ground.\'.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(26, '{\"en\":\"Voluptas et vel sed vel id. Et fuga quaerat quia fuga repellat. Quia iure nam est sit.\"}', '{\"en\":\"French lesson-book. The Mouse looked at Two. Two began in a very poor speaker,\' said the Duchess. \'I make you grow taller, and the Queen said to herself \'Suppose it should be raving mad--at least.\"}', 3, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(27, '{\"en\":\"Ut doloribus quia qui adipisci debitis nemo. Sapiente vero ad sit provident saepe voluptas.\"}', '{\"en\":\"Hatter. \'It isn\'t directed at all,\' said the Pigeon. \'I can see you\'re trying to put his mouth close to her usual height. It was so large in the pool rippling to the door, and the little magic.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(28, '{\"en\":\"Aut sunt magni qui quis et illo. Dignissimos sapiente in quos ut qui molestias necessitatibus id.\"}', '{\"en\":\"Alice noticed, had powdered hair that curled all over their heads. She felt that there was no one could possibly hear you.\' And certainly there was a little ledge of rock, and, as a last resource.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(29, '{\"en\":\"Nostrum eius est minima deserunt. Dolor rerum ipsum expedita qui voluptatem eveniet.\"}', '{\"en\":\"March Hare and the little door, so she felt that it signifies much,\' she said to the Gryphon. \'Turn a somersault in the kitchen. \'When I\'M a Duchess,\' she said aloud. \'I shall be late!\' (when she.\"}', 1, '2022-03-02 08:52:42', '2022-03-02 08:52:42'),
(30, '{\"en\":\"Ab et ducimus facilis nemo. Deleniti eum eos sint. Nam eos sed tenetur et minima at veniam.\"}', '{\"en\":\"Majesty,\' the Hatter said, tossing his head sadly. \'Do I look like one, but it did not come the same as the White Rabbit: it was a queer-shaped little creature, and held it out to her that she began.\"}', 2, '2022-03-02 08:52:42', '2022-03-02 08:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Service\"}', '2022-03-02 08:52:39', '2022-03-02 08:52:39'),
(2, '{\"en\":\"Service\"}', '2022-03-02 08:52:39', '2022-03-02 08:52:39'),
(3, '{\"en\":\"Service\"}', '2022-03-02 08:52:39', '2022-03-02 08:52:39'),
(4, '{\"en\":\"Service\"}', '2022-03-02 08:52:39', '2022-03-02 08:52:39'),
(5, '{\"en\":\"Service\"}', '2022-03-02 08:52:39', '2022-03-02 08:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Hospital \"}', 18, '2022-03-02 08:52:40', '2022-04-06 03:36:09'),
(2, '{\"en\":\"This hospital is best hospitl in hydrabad.\"}', 22, '2022-03-02 08:52:40', '2022-04-06 08:47:45'),
(3, '{\"en\":\"<ul class=\\\"b_vList b_divsec b_bullet\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 22px; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; margin-bottom: -4px !important;\\\"><li data-priority=\\\"\\\" style=\\\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;\\\">Yashoda Hospitals, Secunderabad. Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.<\\/li><\\/ul>\"}', 21, '2022-03-02 08:52:40', '2022-04-06 08:49:05'),
(5, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px; white-space: pre-wrap;\\\">Gleneagles Global Hospitals, located at Richmond Road, is a 40-bed speciality centre with a focus on Oncology, Orthopaedics, MIS, Interventional Radiology, ENT and Urology.<\\/span>\"}', 20, '2022-03-02 08:52:40', '2022-04-06 08:53:10'),
(6, '{\"en\":\"Ozone hospital \"}', 18, '2022-03-02 08:52:40', '2022-04-05 02:05:25'),
(7, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Nakshatra Hospital has the ‘Level I’ Emergency Department for Patient Care, Research and Training. Meaning. Pediatrics is the branch of medicine that involves the medical care of infants, children, and adolescents.<\\/span>\"}', 28, '2022-03-02 08:52:40', '2022-04-06 08:51:39'),
(8, '{\"en\":\"Hospitals in Hydrabad\"}', 23, '2022-03-02 08:52:40', '2022-04-06 08:50:28'),
(9, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px; white-space: pre-wrap;\\\">Gleneagles Global Hospitals, located at Richmond Road, is a 40-bed speciality centre with a focus on Oncology, Orthopaedics, MIS, Interventional Radiology, ENT and Urology.<\\/span>\"}', 20, '2022-03-02 08:52:40', '2022-04-06 08:54:19'),
(10, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif;\\\">&nbsp;Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to patients via its 3 branches located in Secunderabad, Malakpet and Somajiguda.<\\/span>\"}', 21, '2022-03-02 08:52:40', '2022-04-06 09:09:11'),
(11, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px; white-space: pre-wrap;\\\">Prasad Hospitals India Private Limited is a Private incorporated on 23 February 2010. It is classified as Non-govt company and is registered at Registrar of Companies, Hyderabad.<\\/span>\"}', 26, '2022-03-02 08:52:40', '2022-04-06 09:15:19'),
(12, '{\"en\":\"HOSPITAL \"}', 25, '2022-03-02 08:52:40', '2022-04-06 03:29:57'),
(13, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Nakshatra infrastructure matches international healthcare standards in providing excellent care, such as Hospital Information System (HIS), Electronic Medical Record (EMR), robotic surgical system, and computerized billing.<\\/span>\"}', 28, '2022-03-02 08:52:40', '2022-04-06 09:16:22'),
(14, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Himagiri Hospital has strived to achieve their goals by working on its mission of providing world-class cost-effective healthcare and work on the mental and physical care of the patient and also to bring happiness to them.<\\/span>\"}', 17, '2022-03-02 08:52:40', '2022-04-06 08:58:09'),
(15, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Medicover Hospital is among the leading health-care centers across Hyderabad city. It is renowned as one of the best health service providers offering world-class health-care facilities.&nbsp;<\\/span>\"}', 24, '2022-03-02 08:52:40', '2022-04-06 09:20:33'),
(16, '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">The hospital provides the most advanced super-specialty healthcare services in a comfortable, accessible and patient-centric environment. Spread across 10.5 acres campus in&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">Nalagandla<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">, near the University of Hyderabad.<\\/span>\"}', 23, '2022-03-02 08:52:40', '2022-04-06 09:42:57'),
(19, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Ozone is a Manufacturer &amp; supplier of Architectural Hardware Fittings &amp; Solutions that include glass fittings, spider fittings, door hardware,sliding system and more. menu Ozone International Main menu About Us Solutions Products<\\/span>\"}', 18, '2022-03-02 08:52:40', '2022-04-06 09:24:35'),
(20, '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">This hospital carries a vision of being an excellent healthcare provider and provide modern treatment procedures for delivering quality medical care.<\\/span>\"}', 17, '2022-03-02 08:52:40', '2022-04-06 09:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `h2o_feedbacks`
--

CREATE TABLE `h2o_feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `app_perfomance_rating` varchar(11) DEFAULT NULL,
  `customer_care_rating` varchar(11) DEFAULT NULL,
  `payment_process_rating` varchar(11) DEFAULT NULL,
  `app_feature_rating` varchar(11) DEFAULT NULL,
  `app_service_rating` varchar(11) DEFAULT NULL,
  `feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h2o_feedbacks`
--

INSERT INTO `h2o_feedbacks` (`id`, `user_id`, `app_perfomance_rating`, `customer_care_rating`, `payment_process_rating`, `app_feature_rating`, `app_service_rating`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 66, '1', '2', '4', '3', '5', 'ttyyy', '2023-03-29 13:59:55', '2023-03-29 13:59:55'),
(2, 66, '4', '3', '3', '3', '3', 'good', '2023-05-11 06:17:11', '2023-05-11 06:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `nabh_certificate` varchar(255) NOT NULL,
  `nabh_certificate_file` varchar(255) DEFAULT NULL,
  `amount_rate_per_hour` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `user_id`, `category_id`, `hospital_name`, `hospital_address`, `nabh_certificate`, `nabh_certificate_file`, `amount_rate_per_hour`, `created_at`, `updated_at`) VALUES
(1, 50, 4, 'abc hospital', 'banglore', 'yes', 'upload/hospitalImg/179742518.jpg', '500', '2023-03-24 07:22:31', '2023-03-24 07:22:31'),
(2, 50, 4, 'abc hospital', 'banglore', 'no', NULL, '500', '2023-03-30 12:24:27', '2023-03-30 12:24:27'),
(3, 50, 4, 'abc hospital', 'banglore', 'no', NULL, '500', '2023-03-30 12:25:28', '2023-03-30 12:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `job_apply_id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `apply_status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`job_apply_id`, `job_id`, `user_id`, `apply_status`) VALUES
(1, 1, 66, 'Accepted'),
(2, 2, 66, 'Accepted'),
(3, 3, 66, 'Verified'),
(5, 4, 66, 'Start'),
(6, 5, 66, 'Done'),
(7, 6, 66, 'Done'),
(8, 7, 66, 'Done'),
(9, 8, 66, 'Done'),
(11, 9, 66, 'Start'),
(12, 10, 66, 'Done'),
(13, 17, 66, 'Accepted'),
(14, 18, 66, 'Verified'),
(15, 19, 66, 'Verified'),
(16, 20, 66, 'Done'),
(17, 23, 66, 'Verified'),
(18, 24, 66, 'Start'),
(19, 25, 66, 'Accepted'),
(20, 26, 66, 'Start'),
(21, 27, 66, 'Start'),
(22, 28, 66, 'Verified'),
(23, 30, 67, 'Start'),
(24, 5, 66, 'Pending'),
(25, 5, 66, 'Pending'),
(26, 4, 66, 'Pending'),
(27, 2, 66, 'Pending'),
(28, 1, 66, 'Pending'),
(29, 1, 66, 'Pending'),
(30, 1, 66, 'Pending'),
(31, 5, 66, 'Pending'),
(32, 5, 66, 'Pending'),
(33, 4, 66, 'Pending'),
(34, 36, 66, 'Verified'),
(35, 4, 66, 'Pending'),
(36, 4, 66, 'Pending'),
(37, 9, 66, 'Pending'),
(38, 9, 66, 'Pending'),
(39, 37, 66, 'Start'),
(40, 39, 66, 'Pending'),
(41, 40, 66, 'Pending'),
(42, 41, 66, 'Done'),
(43, 42, 66, 'Done'),
(44, 43, 66, 'Done'),
(45, 44, 66, 'Pending'),
(46, 46, 66, 'Done'),
(47, 47, 66, 'Rejected'),
(48, 47, 66, 'Pending'),
(49, 49, 66, 'Rejected'),
(50, 5, 66, 'Pending'),
(51, 5, 66, 'Pending'),
(52, 51, 66, 'Pending'),
(53, 5, 66, 'Pending'),
(54, 55, 66, 'Verified'),
(55, 5, 66, 'Pending'),
(56, 5, 66, 'Pending'),
(57, 5, 66, 'Pending'),
(58, 49, 66, 'Pending'),
(59, 2, 66, 'Pending'),
(60, 4, 66, 'Pending'),
(61, 9, 66, 'Pending'),
(62, 9, 66, 'Pending'),
(63, 5, 66, 'Pending'),
(64, 1, 66, 'Pending'),
(65, 2, 66, 'Pending'),
(66, 5, 66, 'Rejected'),
(67, 56, 66, 'Verified'),
(68, 61, 66, 'Accepted'),
(69, 62, 66, 'Verified'),
(70, 63, 66, 'Pending'),
(71, 65, 66, 'Pending'),
(72, 49, 66, 'Pending'),
(73, 65, 66, 'Pending'),
(74, 29, 76, 'Pending'),
(75, 8, 66, 'Pending'),
(76, 65, 66, 'Pending'),
(77, 69, 66, 'Rejected'),
(78, 70, 66, 'Rejected'),
(79, 71, 66, 'Done'),
(80, 72, 66, 'Rejected'),
(81, 73, 66, 'Rejected'),
(82, 1, 66, 'Done'),
(83, 74, 66, 'Verified'),
(84, 68, 76, 'Pending'),
(85, 68, 76, 'Pending'),
(86, 74, 66, 'Pending'),
(87, 75, 66, 'Verified'),
(88, 76, 66, 'Start'),
(89, 77, 66, 'Done'),
(90, 78, 66, 'Verified'),
(91, 79, 66, 'Verified'),
(92, 80, 66, 'Pending'),
(93, 80, 66, 'Reached Location'),
(94, 81, 66, 'Done'),
(95, 82, 66, 'Done'),
(96, 62, 66, 'Pending'),
(97, 3, 66, 'Pending'),
(98, 82, 66, 'Done'),
(99, 1, 66, 'Pending'),
(100, 1, 66, 'Pending'),
(101, 1, 66, 'Pending'),
(102, 83, 66, 'Verified'),
(103, 1, 66, 'Pending'),
(104, 84, 66, 'Rejected'),
(105, 57, 66, 'Pending'),
(106, 58, 66, 'Pending'),
(107, 85, 66, 'Verified'),
(108, 1, 66, 'Pending'),
(109, 86, 66, 'Start'),
(110, 87, 66, 'Start'),
(111, 1, 66, 'Pending'),
(112, 90, 66, 'PAYMENT EMP TO H2O'),
(113, 3, 66, 'Pending'),
(114, 1, 66, 'Pending'),
(115, 91, 66, 'Done'),
(116, 92, 66, 'Done'),
(117, 93, 66, 'Verified'),
(118, 95, 66, 'Start'),
(119, 96, 66, 'Verified'),
(120, 64, 81, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `job_request`
--

CREATE TABLE `job_request` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` longtext,
  `description` longtext,
  `duration` text,
  `category_id` int(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `job_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `from_date` varchar(30) DEFAULT NULL,
  `to_date` varchar(30) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `worked_functionality` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `skill_set` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_request`
--

INSERT INTO `job_request` (`id`, `user_id`, `title`, `description`, `duration`, `category_id`, `status`, `job_status`, `from_date`, `to_date`, `hospital_name`, `location`, `worked_functionality`, `gender`, `experience`, `qualification`, `skill_set`, `start_time`, `end_time`) VALUES
(1, 38, 'noise', '1 year', '2 months', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 38, 'medical', '2 years', '2 months', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 38, 'ui', '1 year\'s', '1', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 38, 'UX', '1 year\'s', '3', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 38, 'hospital', '2 years', '4', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 19, 'avd test', 'jdjdj', 'jdhdh', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 19, 'avd himanshu test', 'test', '3 month', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 19, '1 avd', 'vvg', 'ttt', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, '2 testtttttt', 'egvdbbfbb', 'evvvb', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 60, 'rohit chi bike', 'hello', '628', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 19, 'rgrhgrh', 'rghrh', 'evvveg', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 19, 'oopkkokop', 'pokopok', 'pokkppoko', 4, 0, 'Pending', 'Sep 16, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 19, 'oopkkokop', 'pokopok', 'pokkppoko', 4, 0, 'Pending', 'Sep 16, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 19, 'oopkkokop', 'pokopok', 'pokkppoko', 4, 0, 'Pending', 'Sep 16, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 19, 'oopkkokop', 'pokopok', 'pokkppoko', 4, 0, 'Pending', 'Sep 16, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 19, 'oopkkokop', 'pokopok', 'pokkppoko', 4, 0, 'Pending', 'Sep 16, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 38, 'AI developer', '1 year\'s', '1', 4, 0, 'Pending', 'Sep 17, 2022', 'Oct 17, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 38, 'Java developer intern', 'fresher', '2', 4, 0, 'Pending', 'Sep 20, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 66, 'nn', 'nn', '11', 4, 0, 'Pending', 'Sep 19, 2022', 'Sep 21, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 38, 'medical', '2 years of experience', '3', 4, 0, 'Pending', 'Sep 20, 2022', 'Sep 24, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 38, 'Medical team', '2 years', '2', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 38, 'medical nurse', '1 year\'s', '4', 4, 0, 'Pending', 'Sep 20, 2022', 'Sep 24, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 38, 'Orthopaedic', '4 years Of experience', '2', 4, 0, 'Pending', 'Sep 21, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 38, 'bbb', '1 year\'s', '2', 4, 0, 'Pending', 'Sep 21, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 38, 'ab', '1', '2', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 38, 'Java dev', '2 years experience', '2 months', 4, 0, 'Pending', 'Sep 29, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 50, 'Software Tester', 'Automation Testing', '2 years', 4, 0, 'Pending', 'Sep 28, 2022', 'Oct 20, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 50, 'ICU nurse', 'ICU nurse required', '1 month', 4, 0, 'Pending', 'Oct 1, 2022', 'Oct 31, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 50, 'Emergency Medical Assist', 'All 3 shifts will run', '1 month', 2, 0, 'Pending', 'Sep 29, 2022', 'Oct 29, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 68, 'Emergency Doctor', 'MBBS Required', '5 months', 2, 0, 'Pending', 'Sep 29, 2022', 'Oct 14, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 68, 'Radio Grapgher', 'Good Experience required', '1 year', 2, 0, 'Pending', 'Sep 29, 2022', 'Sep 7, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 38, 'new', '1 year\'s', '1', 4, 0, 'Pending', 'Sep 29, 2022', 'Sep 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 38, 'Php', '1 year', '2 months', 4, 0, 'Pending', 'Oct 28, 2022', 'Oct 29, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 38, 'Java dev', '3 years', '1', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 38, 'python', '1', '2', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 38, 'php developer', '5 year', '7 months', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 38, 'Php developer', '2 years', '6 months', 4, 0, 'Pending', 'Nov 16, 2022', 'Mar 18, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 50, 'yhh', 'yyy', '12', 25, 0, 'Pending', 'Nov 17, 2022', 'Nov 18, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 50, 'test', 'test', '1', 4, 0, 'Pending', 'Nov 17, 2022', 'Nov 26, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 50, 'tty', 'rgg', '1', 4, 0, 'Pending', 'Nov 17, 2022', 'Nov 26, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 38, 'ghh', 'ghh', '2', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 38, 'hrhrj', 'jeje', 'jdjd', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 38, 'bxbdndn', 'hsdh', 'hdhej', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 38, 'yhh', 'hh', 'hhh', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 38, 'abcd', 'ggy', 'gy', 5, 0, 'Pending', 'Nov 22, 2022', 'Nov 23, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 38, 'yyy', 'gyy', 'gg', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 38, 'yyfff', 'hy', 'hh', 4, 0, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 38, 'hekko', 'gyy', 'ghh', 4, 0, 'Pending', 'Nov 24, 2022', 'Nov 26, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 38, 'ghh', 'tigififiigigoggiifgigifigififiggifjgigififufghhguhhhjjjbbhhhygghgffgvccv.   vjxcjjxhxjxjc.   jj. k k. j k kj vkvkvkvkvkvk kvlk k k k k kk. k k k k k k k k k k kk k k. kk k lk. k kj k. kk k. kk k. k', 'yhh', 4, 0, 'Pending', 'Nov 23, 2022', 'Nov 25, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, 'test', 'testing', '1', 25, 0, 'Pending', 'Nov 26, 2022', 'Nov 22, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 50, 'hshs', 'heh', '2 years', 4, 0, 'Pending', 'Nov 23, 2022', 'Nov 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 50, 'rohit', 'hshshs', 'hrhr', 4, 0, 'Pending', 'Nov 24, 2022', 'Nov 26, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 50, 'flutter devloper', 'devlopers', '12', 3, 0, 'Pending', 'Nov 24, 2022', 'Nov 29, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 66, 'flutter devloper', 'devlopers', '12 month', 3, 0, 'Pending', 'Nov 24, 2022', 'Nov 24, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 50, 'phh', '5 year\'s experience', '3 months', 4, 0, 'Pending', 'Nov 25, 2022', 'Jan 27, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 50, 'PHP Developer', 'We are looking to hire a talented PHP developer to manage our back-end services and ensure a seamless interchange of data between the server and our users. As a PHP developer, you will be responsible for developing and coding all server-side logic. You will also be required to maintain the central database and respond to requests from front-end developers.', '2 months', 4, 0, 'Pending', 'Dec 21, 2022', 'Dec 31, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 50, 'Python developer', 'We are looking to hire a talented python developer to manage our back-end services and ensure a seamless interchange of data between the server and our users. As a python developer, you will be responsible for developing and coding all server-side logic. You will also be required to maintain the central database and respond to requests from front-end developers.', '6 months', 4, 0, 'Pending', 'Dec 21, 2022', 'Dec 30, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 50, 'HTML Devloper', 'We are looking to hire a talented Java developer to manage our back-end services and ensure a seamless interchange of data between the server and our users. As a Java developer, you will be responsible for developing and coding all server-side logic. You will also be required to maintain the central database and respond to requests from front-end developers.', '6 months', 4, 0, 'Pending', 'Dec 31, 2022', 'Dec 23, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 50, 'React Devloper', 'We are looking to hire a talented React developer to manage our back-end services and ensure a seamless interchange of data between the server and our users. As a React developer, you will be responsible for developing and coding all server-side logic. You will also be required to maintain the central database and respond to requests from front-end developers.', '8 months', 4, 0, 'Pending', 'Dec 21, 2022', 'Dec 31, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 50, 'Angular', '3 years of minimum experience in angular software developmentWe are looking for a angular Dev... ... At Micro Focus, everything we do is based on a simple idea', '6 months', 4, 0, 'Pending', 'Dec 22, 2022', 'Dec 22, 2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 50, 'cardio', 'bdjdodbddibddiehdbdhdudbd7hdusydydhdhdydbdid8jddj', '6months', 4, 0, 'Pending', 'Dec 22, 2022', 'Feb 10, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 50, 'exercise', 'zkgxhlduofhxhdhgxhxhxhchlzjfsfzjrarFjzitzkgd', '6 months', 4, 0, 'Pending', 'Dec 22, 2022', 'May 18, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 50, 'flutter developer', '3 years experience.', '4 Days', 4, 0, 'Pending', 'Mar 2, 2023', 'Mar 2, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 50, 'medical nurse', 'medical nurse', '2', 2, 0, 'Pending', 'Mar 7, 2023', 'Mar 8, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 50, 'nurse', '1 years experience', '2 months', 4, 0, 'Pending', 'Apr 15, 2023', 'Apr 15, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 77, 'test', 'test', '13', 16, 0, 'Pending', 'Mar 11, 2023', 'Mar 31, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 77, 'test medical services', 'trddtgg', 'fgggg', 2, 0, 'Pending', 'Mar 11, 2023', 'Mar 31, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 50, 'windows develiper', 'windows developer', '2 months', 2, 0, 'Pending', 'Mar 14, 2023', 'May 14, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 50, 'cardioligist job', '2 year exp', '1 year', 4, 0, 'Pending', 'Mar 14, 2023', 'Apr 20, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 50, 'tester', 'tester', '1 month', 4, 0, 'Pending', 'Mar 14, 2023', 'Apr 17, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 50, 'abc', 'abc', 'abc', 4, 0, 'Pending', 'Mar 14, 2023', 'Mar 14, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 50, 'reject test', 'reject test', '1 month', 4, 0, 'Pending', 'Mar 14, 2023', 'Mar 18, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 50, 'sales force developer', '3 year of experience', '1 momyh', 4, 0, 'Pending', 'Mar 14, 2023', 'Apr 12, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 50, 'laravel developer', '2 year exp.', '1 month', 4, 0, 'Pending', 'Mar 17, 2023', 'Apr 17, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 50, 'physiotherapy', 'physiotherapy', '1 minth', 4, 0, 'Pending', 'Mar 22, 2023', 'Apr 22, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 50, 'python', 'python', '1 month', 4, 0, 'Pending', 'Mar 23, 2023', 'Apr 23, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 50, 'tester', 'tester', '1 month', 4, 0, 'Pending', 'Mar 23, 2023', 'Apr 23, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 50, 'oodooo developer', 'hehdhhhd', '1 month', 4, 0, 'Pending', 'Mar 24, 2023', 'Apr 24, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 50, 'hdhhd', 'hduud', '1 month', 4, 0, 'Pending', 'Mar 24, 2023', 'Apr 22, 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 50, 'sr java developer', 'hello i need javs developer.2 years of experience.', '2 month', 4, 0, 'Pending', 'Mar 29, 2023', 'Mar 29, 2023', 'Ruby Hospital', 'pune', 'rest api', 'Male', '2 years', 'graduate', 'api', '10:52 AM', '03:52 AM'),
(81, 50, 'laravel developer', 'hospital management', '3 month', 4, 0, 'Pending', 'Mar 28, 2023', 'Jun 28, 2023', 'appoloo', 'banglore', 'chat functionality', 'Male', '5 year of exp', 'Masters', 'front end', '10:00 AM', '07:00 PM'),
(82, 50, 'shopify developer', 'most telanted developer', '1 month', 4, 0, 'Pending', 'Mar 29, 2023', 'Apr 29, 2023', 's hospital', 'banglore', 'chat gpt', 'Male', '1 year', 'ME', 'shopify mvc', '10:00 AM', '08:00 PM'),
(83, 50, 'doctor', 'hebeb bsndbsb jsbsbs hsbsb jsbsn hsdbbd hsbsbd sjbdbd hsbbs sjsjsjjsjsjs bsjdjjsjs dhdhhdd dhhdbd shsnnd d BB dhhd', '2 days', 4, 0, 'Pending', 'Apr 21, 2023', 'Apr 22, 2023', 'appollo Hospital', 'pune', 'heee', 'Male', '2 years', 'graduate', 'hhh', '11:24 PM', '11:24 AM'),
(84, 50, 'flutter team leader', 'flutter team lead', '3 months', 4, 0, 'Pending', 'Apr 25, 2023', 'May 27, 2023', 'flutter hospital', 'xyz', 'abc', 'Male', '10 years', 'masters', 'flutter', '11:42 AM', '07:42 PM'),
(85, 50, 'react native', 'react natibe', '2 months', 4, 0, 'Pending', 'Apr 25, 2023', 'Jun 24, 2023', 'react', 'abc', 'xyz', 'Male', '1 year', 'masters', 'react native', '03:59 PM', '03:59 PM'),
(86, 50, 'node develiper', 'node', '1 month', 4, 0, 'Pending', 'Apr 28, 2023', 'May 27, 2023', 'node', 'banglore', 'node', 'Male', '2 months', 'node', 'node', '01:29 PM', '06:29 PM'),
(87, 50, 'yiii', 'yiii', '2 months', 4, 0, 'Pending', 'Apr 28, 2023', 'Jun 28, 2023', 'yiii', 'banglore', 'yiii', 'Male', '5 years', 'master', 'yii', '01:42 PM', '06:42 PM'),
(88, 50, 'AI developer', 'jenebdbdjrjrjrjrjdjdjfjdndnxncbxbxbxnxnxnxnxnxncbcncncnfnfnfjdjdndn', '2 months', 4, 0, 'Pending', 'May 8, 2023', 'Jul 3, 2023', 'Ruby Hall', 'Bangalore', 'hshsb', 'Male', '5 years of experience', 'graduate', 'hsjsjsjsjsnsnns', '12:59 PM', '06:59 PM'),
(89, 50, 'AI developer', 'jenebdbdjrjrjrjrjdjdjfjdndnxncbxbxbxnxnxnxnxnxncbcncncnfnfnfjdjdndn', '2 months', 4, 0, 'Pending', 'May 8, 2023', 'Jul 3, 2023', 'Ruby Hall', 'Bangalore', 'hshsb', 'Male', '5 years of experience', 'graduate', 'hsjsjsjsjsnsnns', '12:59 PM', '06:59 PM'),
(90, 50, 'AI developer', 'jenebdbdjrjrjrjrjdjdjfjdndnxncbxbxbxnxnxnxnxnxncbcncncnfnfnfjdjdndn', '2 months', 4, 0, 'Pending', 'May 8, 2023', 'Jul 3, 2023', 'Ruby Hall', 'Bangalore', 'hshsb', 'Male', '5 years of experience', 'graduate', 'hsjsjsjsjsnsnns', '12:59 PM', '06:59 PM'),
(91, 50, 'General Nurse', 'dhishsuuuwhs', 'sbeie', 4, 0, 'Pending', 'May 8, 2023', 'May 8, 2023', 'horizontal Hospital', 'Thane', 'Checking patient', 'Male', '3 year of experience', 'yeiegdb', 'heidb', '12:00 PM', '08:00 PM'),
(92, 50, 'new', 'hehehejsjej', 'hdhd', 4, 0, 'Pending', 'May 8, 2023', 'Jun 24, 2023', 'hdhdhe', 'hrhrh', 'heheh', 'Male', '2 months', 'dhdh', 'hehe', '04:04 PM', '12:04 PM'),
(93, 50, 'New Nursing', 'hello new Nurse requirement', '3 months', 4, 0, 'Pending', 'May 11, 2023', 'Aug 11, 2023', 'Ruby Hall', 'Pune', 'nurse', 'Female', '2 years', 'Bsc.nursinh', 'nurse', '10:26 AM', '07:26 AM'),
(94, 50, 'Saff Nursing', 'need staff nursing', '2 months', 4, 0, 'Pending', 'May 11, 2023', 'Jul 11, 2023', 'Horizontal Hospital', 'Pune', 'Nursing', 'Female', '2 years', 'bsc.Nursing', 'nursing', '12:00 AM', '07:00 AM'),
(95, 50, 'Saff Nursing', 'need staff nursing', '2 months', 4, 0, 'Pending', 'May 11, 2023', 'Jul 11, 2023', 'Horizontal Hospital', 'Pune', 'Nursing', 'Female', '2 years', 'bsc.Nursing', 'nursing', '12:00 AM', '07:00 AM'),
(96, 50, 'Demo', 'demo', '2 months', 4, 0, 'Pending', 'May 11, 2023', 'Jul 11, 2023', 'hospital', 'Pune', 'demo', 'Female', '2 years', 'bsc.nursinh', 'demo', '11:29 AM', '07:29 AM'),
(97, 50, 'demo2', 'demo', '2 months', 4, 0, 'Pending', 'May 11, 2023', 'Jul 11, 2023', 'abc hospital', 'pune', 'demo', 'Female', '2 years', 'bsc.nursimg', 'demo', '10:00 PM', '07:00 PM'),
(98, 50, 'demo2', 'demo', '2 months', 4, 0, 'Pending', 'May 11, 2023', 'Jul 11, 2023', 'abc hospital', 'pune', 'demo', 'Female', '2 years', 'bsc.nursimg', 'demo', '10:00 PM', '07:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\PaymentMethod', 2, 'logo', 'razorpay', 'razorpay.png', 'image/png', 'public', 13026, '[]', '{\"uuid\":\"13e62475-6b5f-4812-b484-2b94cc52b715\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-05-07 18:03:38', '2021-05-07 18:03:38'),
(5, 'App\\Models\\PaymentMethod', 5, 'logo', 'paypal', 'paypal.png', 'image/png', 'public', 15819, '[]', '{\"uuid\":\"2b8bd9b8-5c37-4464-a5c7-623496d7655f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2021-05-07 18:03:49', '2021-05-07 18:03:49'),
(7, 'App\\Models\\PaymentMethod', 6, 'logo', 'pay_pickup', 'pay_pickup.png', 'image/png', 'public', 11712, '[]', '{\"uuid\":\"5e06e7ca-ac33-413c-9ab0-6fd4e3083cc1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-05-07 18:03:58', '2021-05-07 18:03:58'),
(9, 'App\\Models\\PaymentMethod', 7, 'logo', 'stripe-logo', 'stripe-logo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a36-8a5e-4c85-8d6e-c356843429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(10, 'App\\Models\\PaymentMethod', 9, 'logo', 'flutterwave', 'flutterwave.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a96-8a5e-4a85-8d6e-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(11, 'App\\Models\\PaymentMethod', 8, 'logo', 'paystack', 'paystack.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a96-8a5e-4c85-8d6e-c356648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(12, 'App\\Models\\PaymentMethod', 10, 'logo', 'fpx', 'fpx.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(13, 'App\\Models\\PaymentMethod', 11, 'logo', 'wallet', 'wallet.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(14, 'App\\Models\\PaymentMethod', 12, 'logo', 'paymongo', 'paymongo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 18:04:23', '2021-05-07 18:04:23'),
(15, 'App\\Models\\Upload', 1, 'default', 'Tumor detected', 'Tumor-detected.jpg', 'image/jpeg', 'public', 44848, '[]', '{\"uuid\":\"5ceaea67-bbbd-4044-a729-ba862db50341\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2022-03-02 08:24:15', '2022-03-02 08:24:16'),
(16, 'App\\Models\\Upload', 2, 'avatar', 'next-light', 'next-light.png', 'image/png', 'public', 142, '[]', '{\"uuid\":\"89cf9695-de71-4e46-82bf-97306fa1c800\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2022-03-02 14:02:21', '2022-03-02 14:02:21'),
(18, 'App\\Models\\Upload', 3, 'avatar', 'Lighthouse', 'Lighthouse.jpg', 'image/jpeg', 'public', 561276, '[]', '{\"uuid\":\"59c66693-1cf8-418a-8ea0-32c5aba6126f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2022-03-02 14:39:29', '2022-03-02 14:39:33'),
(20, 'App\\Models\\Upload', 4, 'avatar', '_GetPaidStock', '_GetPaidStock.png', 'image/png', 'public', 16931, '[]', '{\"uuid\":\"893970b5-872a-48d3-b195-3a5f1a9ffd94\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2022-03-03 02:51:22', '2022-03-03 02:51:24'),
(22, 'App\\Models\\Upload', 5, 'avatar', 'coaching1', 'coaching1.png', 'image/png', 'public', 19048, '[]', '{\"uuid\":\"6e04d8af-6389-4402-a738-1de1d993b9cb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2022-03-03 02:51:57', '2022-03-03 02:51:58'),
(24, 'App\\Models\\Upload', 6, 'image', 'WhatsApp Image 2022-03-03 at 1.44.22 PM', 'WhatsApp-Image-2022-03-03-at-1.44.22-PM.jpeg', 'image/jpeg', 'public', 47085, '[]', '{\"uuid\":\"8b1b5a41-ffe8-4263-b7e2-66cf3c770531\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2022-03-03 04:18:23', '2022-03-03 04:18:24'),
(26, 'App\\Models\\Upload', 7, 'avatar', 'Tumor detected', 'Tumor-detected.jpg', 'image/jpeg', 'public', 44848, '[]', '{\"uuid\":\"2b2c1cd3-1a16-48b2-9a63-79d131863078\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2022-03-03 05:30:25', '2022-03-03 05:30:25'),
(28, 'App\\Models\\Upload', 8, 'avatar', 'WhatsApp Image 2022-03-01 at 11.02.29 PM', 'WhatsApp-Image-2022-03-01-at-11.02.29-PM.jpeg', 'image/jpeg', 'public', 33247, '[]', '{\"uuid\":\"20ce9d54-0c6e-4bcd-bd44-a4bb46b9c8a8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2022-03-03 05:32:58', '2022-03-03 05:32:58'),
(30, 'App\\Models\\Upload', 9, 'image', 'WhatsApp Image 2022-03-03 at 3.38.16 PM', 'WhatsApp-Image-2022-03-03-at-3.38.16-PM.jpeg', 'image/jpeg', 'public', 22822, '[]', '{\"uuid\":\"1fb3c3ca-16ee-4605-adfc-21df57eb8399\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2022-03-03 06:09:32', '2022-03-03 06:09:32'),
(31, 'App\\Models\\EService', 1, 'image', 'WhatsApp Image 2022-03-03 at 3.38.16 PM', 'WhatsApp-Image-2022-03-03-at-3.38.16-PM.jpeg', 'image/jpeg', 'public', 22822, '[]', '{\"uuid\":\"1fb3c3ca-16ee-4605-adfc-21df57eb8399\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2022-03-03 06:09:42', '2022-03-03 06:09:42'),
(32, 'App\\Models\\EService', 1, 'image', 'WhatsApp Image 2022-03-03 at 3.38.16 PM', 'WhatsApp-Image-2022-03-03-at-3.38.16-PM.jpeg', 'image/jpeg', 'public', 22822, '[]', '{\"uuid\":\"1fb3c3ca-16ee-4605-adfc-21df57eb8399\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2022-03-03 06:09:43', '2022-03-03 06:09:43'),
(33, 'App\\Models\\Upload', 10, 'image', 'WhatsApp Image 2022-03-03 at 3.41.20 PM', 'WhatsApp-Image-2022-03-03-at-3.41.20-PM.jpeg', 'image/jpeg', 'public', 42817, '[]', '{\"uuid\":\"3cc247b0-6b8d-4376-a73d-8f03bfdff736\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2022-03-03 06:12:48', '2022-03-03 06:12:48'),
(34, 'App\\Models\\EService', 2, 'image', 'WhatsApp Image 2022-03-03 at 3.41.20 PM', 'WhatsApp-Image-2022-03-03-at-3.41.20-PM.jpeg', 'image/jpeg', 'public', 42817, '[]', '{\"uuid\":\"3cc247b0-6b8d-4376-a73d-8f03bfdff736\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2022-03-03 06:12:52', '2022-03-03 06:12:52'),
(35, 'App\\Models\\Upload', 11, 'image', 'WhatsApp Image 2022-03-03 at 3.41.20 PM', 'WhatsApp-Image-2022-03-03-at-3.41.20-PM.jpeg', 'image/jpeg', 'public', 42817, '[]', '{\"uuid\":\"fd84ec76-2e7f-45c6-b361-0e8042b702a3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2022-03-03 06:15:39', '2022-03-03 06:15:39'),
(36, 'App\\Models\\Upload', 12, 'image', 'WhatsApp Image 2022-03-03 at 3.45.10 PM', 'WhatsApp-Image-2022-03-03-at-3.45.10-PM.jpeg', 'image/jpeg', 'public', 30785, '[]', '{\"uuid\":\"e08f68af-691c-4efa-a964-1eb297b44200\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2022-03-03 06:16:12', '2022-03-03 06:16:12'),
(37, 'App\\Models\\EService', 3, 'image', 'WhatsApp Image 2022-03-03 at 3.45.10 PM', 'WhatsApp-Image-2022-03-03-at-3.45.10-PM.jpeg', 'image/jpeg', 'public', 30785, '[]', '{\"uuid\":\"e08f68af-691c-4efa-a964-1eb297b44200\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2022-03-03 06:16:19', '2022-03-03 06:16:19'),
(38, 'App\\Models\\Upload', 13, 'image', 'WhatsApp Image 2022-03-03 at 3.48.13 PM', 'WhatsApp-Image-2022-03-03-at-3.48.13-PM.jpeg', 'image/jpeg', 'public', 37433, '[]', '{\"uuid\":\"86be1c5d-3c8d-494d-adf1-dc13ffecd0b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2022-03-03 06:19:33', '2022-03-03 06:19:33'),
(40, 'App\\Models\\EService', 4, 'image', 'WhatsApp Image 2022-03-03 at 3.48.13 PM', 'WhatsApp-Image-2022-03-03-at-3.48.13-PM.jpeg', 'image/jpeg', 'public', 37433, '[]', '{\"uuid\":\"86be1c5d-3c8d-494d-adf1-dc13ffecd0b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2022-03-03 06:19:43', '2022-03-03 06:19:43'),
(41, 'App\\Models\\Upload', 14, 'image', 'WhatsApp Image 2022-03-03 at 3.51.46 PM', 'WhatsApp-Image-2022-03-03-at-3.51.46-PM.jpeg', 'image/jpeg', 'public', 27723, '[]', '{\"uuid\":\"38a371d1-352a-4271-a81e-bf41e3cb8bf0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2022-03-03 06:22:47', '2022-03-03 06:22:47'),
(42, 'App\\Models\\EService', 5, 'image', 'WhatsApp Image 2022-03-03 at 3.51.46 PM', 'WhatsApp-Image-2022-03-03-at-3.51.46-PM.jpeg', 'image/jpeg', 'public', 27723, '[]', '{\"uuid\":\"38a371d1-352a-4271-a81e-bf41e3cb8bf0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2022-03-03 06:22:54', '2022-03-03 06:22:54'),
(43, 'App\\Models\\Upload', 15, 'image', 'WhatsApp Image 2022-03-03 at 3.51.46 PM', 'WhatsApp-Image-2022-03-03-at-3.51.46-PM.jpeg', 'image/jpeg', 'public', 27723, '[]', '{\"uuid\":\"0ac07d4d-e294-443b-8745-a83d34db92a0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2022-03-03 06:25:43', '2022-03-03 06:25:44'),
(44, 'App\\Models\\Upload', 16, 'image', 'WhatsApp Image 2022-03-03 at 3.55.11 PM', 'WhatsApp-Image-2022-03-03-at-3.55.11-PM.jpeg', 'image/jpeg', 'public', 40261, '[]', '{\"uuid\":\"d65e6c07-6a0f-4d63-9e77-e678aa1bc97d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2022-03-03 06:26:05', '2022-03-03 06:26:05'),
(45, 'App\\Models\\EService', 6, 'image', 'WhatsApp Image 2022-03-03 at 3.55.11 PM', 'WhatsApp-Image-2022-03-03-at-3.55.11-PM.jpeg', 'image/jpeg', 'public', 40261, '[]', '{\"uuid\":\"d65e6c07-6a0f-4d63-9e77-e678aa1bc97d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 39, '2022-03-03 06:26:13', '2022-03-03 06:26:13'),
(46, 'App\\Models\\Upload', 17, 'image', 'WhatsApp Image 2022-03-03 at 3.58.26 PM', 'WhatsApp-Image-2022-03-03-at-3.58.26-PM.jpeg', 'image/jpeg', 'public', 21751, '[]', '{\"uuid\":\"f44c5c79-19b4-4638-814f-33d80b653d88\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2022-03-03 06:30:26', '2022-03-03 06:30:26'),
(47, 'App\\Models\\EService', 7, 'image', 'WhatsApp Image 2022-03-03 at 3.58.26 PM', 'WhatsApp-Image-2022-03-03-at-3.58.26-PM.jpeg', 'image/jpeg', 'public', 21751, '[]', '{\"uuid\":\"f44c5c79-19b4-4638-814f-33d80b653d88\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 41, '2022-03-03 06:30:26', '2022-03-03 06:30:26'),
(48, 'App\\Models\\Upload', 18, 'image', 'WhatsApp Image 2022-03-03 at 4.04.51 PM', 'WhatsApp-Image-2022-03-03-at-4.04.51-PM.jpeg', 'image/jpeg', 'public', 31574, '[]', '{\"uuid\":\"4f819303-1ad2-4356-9674-ab9eba777fea\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 42, '2022-03-03 06:35:27', '2022-03-03 06:35:27'),
(49, 'App\\Models\\EService', 8, 'image', 'WhatsApp Image 2022-03-03 at 4.04.51 PM', 'WhatsApp-Image-2022-03-03-at-4.04.51-PM.jpeg', 'image/jpeg', 'public', 31574, '[]', '{\"uuid\":\"4f819303-1ad2-4356-9674-ab9eba777fea\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 43, '2022-03-03 06:35:39', '2022-03-03 06:35:39'),
(50, 'App\\Models\\Upload', 19, 'image', 'WhatsApp Image 2022-03-03 at 4.12.33 PM', 'WhatsApp-Image-2022-03-03-at-4.12.33-PM.jpeg', 'image/jpeg', 'public', 27342, '[]', '{\"uuid\":\"3f2f200d-8ce9-4bde-bb71-271955324544\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 44, '2022-03-03 06:43:03', '2022-03-03 06:43:03'),
(51, 'App\\Models\\EService', 9, 'image', 'WhatsApp Image 2022-03-03 at 4.12.33 PM', 'WhatsApp-Image-2022-03-03-at-4.12.33-PM.jpeg', 'image/jpeg', 'public', 27342, '[]', '{\"uuid\":\"3f2f200d-8ce9-4bde-bb71-271955324544\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 45, '2022-03-03 06:43:10', '2022-03-03 06:43:10'),
(52, 'App\\Models\\Upload', 20, 'image', 'WhatsApp Image 2022-03-03 at 4.14.53 PM', 'WhatsApp-Image-2022-03-03-at-4.14.53-PM.jpeg', 'image/jpeg', 'public', 34827, '[]', '{\"uuid\":\"37c7a4f5-790f-40ca-acac-c9e2b090e959\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2022-03-03 06:47:32', '2022-03-03 06:47:32'),
(53, 'App\\Models\\Category', 2, 'image', 'WhatsApp Image 2022-03-03 at 4.14.53 PM', 'WhatsApp-Image-2022-03-03-at-4.14.53-PM.jpeg', 'image/jpeg', 'public', 34827, '[]', '{\"uuid\":\"37c7a4f5-790f-40ca-acac-c9e2b090e959\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 47, '2022-03-03 06:47:58', '2022-03-03 06:47:58'),
(54, 'App\\Models\\Upload', 21, 'image', 'WhatsApp Image 2022-03-03 at 4.14.53 PM', 'WhatsApp-Image-2022-03-03-at-4.14.53-PM.jpeg', 'image/jpeg', 'public', 34827, '[]', '{\"uuid\":\"dc4c952c-b377-402e-b5c6-14487353cc07\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2022-03-03 06:55:05', '2022-03-03 06:55:05'),
(55, 'App\\Models\\EService', 10, 'image', 'WhatsApp Image 2022-03-03 at 4.14.53 PM', 'WhatsApp-Image-2022-03-03-at-4.14.53-PM.jpeg', 'image/jpeg', 'public', 34827, '[]', '{\"uuid\":\"dc4c952c-b377-402e-b5c6-14487353cc07\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2022-03-03 06:55:09', '2022-03-03 06:55:09'),
(56, 'App\\Models\\Upload', 22, 'image', 'WhatsApp Image 2022-03-03 at 4.14.53 PM', 'WhatsApp-Image-2022-03-03-at-4.14.53-PM.jpeg', 'image/jpeg', 'public', 34827, '[]', '{\"uuid\":\"a17f8bea-062b-4945-804f-cf19de2156b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2022-03-03 06:58:10', '2022-03-03 06:58:10'),
(57, 'App\\Models\\Upload', 23, 'image', 'WhatsApp Image 2022-03-03 at 4.27.08 PM', 'WhatsApp-Image-2022-03-03-at-4.27.08-PM.jpeg', 'image/jpeg', 'public', 21952, '[]', '{\"uuid\":\"6a56e06b-2085-4db7-a51a-1ca67b0cee49\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 51, '2022-03-03 06:58:33', '2022-03-03 06:58:33'),
(59, 'App\\Models\\Upload', 24, 'image', 'WhatsApp Image 2022-03-03 at 4.30.57 PM', 'WhatsApp-Image-2022-03-03-at-4.30.57-PM.jpeg', 'image/jpeg', 'public', 49699, '[]', '{\"uuid\":\"16aa6bd0-bb47-4244-b862-ac4725071652\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 53, '2022-03-03 07:02:33', '2022-03-03 07:02:33'),
(60, 'App\\Models\\EService', 12, 'image', 'WhatsApp Image 2022-03-03 at 4.30.57 PM', 'WhatsApp-Image-2022-03-03-at-4.30.57-PM.jpeg', 'image/jpeg', 'public', 49699, '[]', '{\"uuid\":\"16aa6bd0-bb47-4244-b862-ac4725071652\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 54, '2022-03-03 07:02:41', '2022-03-03 07:02:41'),
(61, 'App\\Models\\Upload', 25, 'image', 'WhatsApp Image 2022-03-03 at 4.35.46 PM', 'WhatsApp-Image-2022-03-03-at-4.35.46-PM.jpeg', 'image/jpeg', 'public', 29060, '[]', '{\"uuid\":\"8f202b60-3326-4e3e-9795-7351bf85ca96\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2022-03-03 07:06:37', '2022-03-03 07:06:37'),
(63, 'App\\Models\\Upload', 26, 'image', 'WhatsApp Image 2022-03-03 at 4.38.32 PM (1)', 'WhatsApp-Image-2022-03-03-at-4.38.32-PM-(1).jpeg', 'image/jpeg', 'public', 42403, '[]', '{\"uuid\":\"da76b8b8-3043-4417-9e3b-a221ced90f13\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2022-03-03 07:17:55', '2022-03-03 07:17:56'),
(65, 'App\\Models\\Upload', 27, 'image', 'WhatsApp Image 2022-03-03 at 4.55.20 PM (1)', 'WhatsApp-Image-2022-03-03-at-4.55.20-PM-(1).jpeg', 'image/jpeg', 'public', 32184, '[]', '{\"uuid\":\"4bdda6cf-2bf9-4ada-8c79-ec03ba52078b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2022-03-03 07:28:24', '2022-03-03 07:28:24'),
(67, 'App\\Models\\Upload', 28, 'image', 'WhatsApp Image 2022-03-03 at 5.01.09 PM', 'WhatsApp-Image-2022-03-03-at-5.01.09-PM.jpeg', 'image/jpeg', 'public', 21944, '[]', '{\"uuid\":\"e78d3efb-7572-4910-a91b-95c8075a99cc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 61, '2022-03-03 07:32:19', '2022-03-03 07:32:19'),
(69, 'App\\Models\\Upload', 29, 'image', 'WhatsApp Image 2022-03-03 at 5.04.19 PM', 'WhatsApp-Image-2022-03-03-at-5.04.19-PM.jpeg', 'image/jpeg', 'public', 28371, '[]', '{\"uuid\":\"a7311d52-2a7f-4736-a2eb-705a3343bfab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 63, '2022-03-03 07:35:18', '2022-03-03 07:35:19'),
(71, 'App\\Models\\Upload', 30, 'image', 'WhatsApp Image 2022-03-03 at 5.04.19 PM', 'WhatsApp-Image-2022-03-03-at-5.04.19-PM.jpeg', 'image/jpeg', 'public', 28371, '[]', '{\"uuid\":\"060a3071-cf7c-4c39-ba70-124b8b18eeec\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 65, '2022-03-03 07:39:45', '2022-03-03 07:39:45'),
(73, 'App\\Models\\Upload', 31, 'image', 'WhatsApp Image 2022-03-03 at 5.04.19 PM', 'WhatsApp-Image-2022-03-03-at-5.04.19-PM.jpeg', 'image/jpeg', 'public', 28371, '[]', '{\"uuid\":\"18edf65e-7055-4826-8cda-0ebdb55795b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2022-03-03 07:43:27', '2022-03-03 07:43:27'),
(74, 'App\\Models\\Upload', 32, 'image', 'WhatsApp Image 2022-03-03 at 5.11.36 PM', 'WhatsApp-Image-2022-03-03-at-5.11.36-PM.jpeg', 'image/jpeg', 'public', 33910, '[]', '{\"uuid\":\"917888ab-38c4-40f8-8b3c-7b742d67a6b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 68, '2022-03-03 07:43:57', '2022-03-03 07:43:57'),
(75, 'App\\Models\\EService', 18, 'image', 'WhatsApp Image 2022-03-03 at 5.11.36 PM', 'WhatsApp-Image-2022-03-03-at-5.11.36-PM.jpeg', 'image/jpeg', 'public', 33910, '[]', '{\"uuid\":\"917888ab-38c4-40f8-8b3c-7b742d67a6b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 69, '2022-03-03 07:44:20', '2022-03-03 07:44:20'),
(76, 'App\\Models\\Upload', 33, 'image', 'WhatsApp Image 2022-03-03 at 5.16.02 PM', 'WhatsApp-Image-2022-03-03-at-5.16.02-PM.jpeg', 'image/jpeg', 'public', 39504, '[]', '{\"uuid\":\"fbf7294d-39e2-44cf-82c9-0bd1c969118b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2022-03-03 07:46:41', '2022-03-03 07:46:41'),
(77, 'App\\Models\\EService', 19, 'image', 'WhatsApp Image 2022-03-03 at 5.16.02 PM', 'WhatsApp-Image-2022-03-03-at-5.16.02-PM.jpeg', 'image/jpeg', 'public', 39504, '[]', '{\"uuid\":\"fbf7294d-39e2-44cf-82c9-0bd1c969118b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 71, '2022-03-03 07:46:50', '2022-03-03 07:46:50'),
(78, 'App\\Models\\Upload', 34, 'image', 'WhatsApp Image 2022-03-03 at 5.19.25 PM', 'WhatsApp-Image-2022-03-03-at-5.19.25-PM.jpeg', 'image/jpeg', 'public', 32644, '[]', '{\"uuid\":\"19576dc5-943b-4a9b-9a17-6047705c92e1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2022-03-03 07:50:24', '2022-03-03 07:50:25'),
(80, 'App\\Models\\Upload', 35, 'image', 'WhatsApp Image 2022-03-03 at 5.19.25 PM', 'WhatsApp-Image-2022-03-03-at-5.19.25-PM.jpeg', 'image/jpeg', 'public', 32644, '[]', '{\"uuid\":\"672b314a-5d70-4d2f-82c6-3b84f1dfdfba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 74, '2022-03-03 07:55:08', '2022-03-03 07:55:08'),
(81, 'App\\Models\\Upload', 36, 'image', 'WhatsApp Image 2022-03-03 at 5.19.25 PM', 'WhatsApp-Image-2022-03-03-at-5.19.25-PM.jpeg', 'image/jpeg', 'public', 32644, '[]', '{\"uuid\":\"d6f507c2-3ceb-463a-9265-3b2cacfff8ab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 75, '2022-03-03 07:55:31', '2022-03-03 07:55:31'),
(82, 'App\\Models\\Upload', 37, 'image', 'WhatsApp Image 2022-03-03 at 5.24.43 PM', 'WhatsApp-Image-2022-03-03-at-5.24.43-PM.jpeg', 'image/jpeg', 'public', 18123, '[]', '{\"uuid\":\"2953bbfa-2e74-4eec-bf61-266ccb998261\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 76, '2022-03-03 07:56:01', '2022-03-03 07:56:01'),
(85, 'App\\Models\\Upload', 38, 'image', 'WhatsApp Image 2022-03-03 at 5.30.54 PM', 'WhatsApp-Image-2022-03-03-at-5.30.54-PM.jpeg', 'image/jpeg', 'public', 32445, '[]', '{\"uuid\":\"fae95ac9-cc9c-48c7-9edb-c134458f65fe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 79, '2022-03-03 08:02:15', '2022-03-03 08:02:16'),
(86, 'App\\Models\\EService', 23, 'image', 'WhatsApp Image 2022-03-03 at 5.30.54 PM', 'WhatsApp-Image-2022-03-03-at-5.30.54-PM.jpeg', 'image/jpeg', 'public', 32445, '[]', '{\"uuid\":\"fae95ac9-cc9c-48c7-9edb-c134458f65fe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2022-03-03 08:02:21', '2022-03-03 08:02:21'),
(87, 'App\\Models\\Upload', 39, 'image', 'WhatsApp Image 2022-03-03 at 5.30.54 PM', 'WhatsApp-Image-2022-03-03-at-5.30.54-PM.jpeg', 'image/jpeg', 'public', 32445, '[]', '{\"uuid\":\"86368d39-fef2-4253-929e-7f98d2c54bf2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 81, '2022-03-03 08:06:40', '2022-03-03 08:06:40'),
(88, 'App\\Models\\Upload', 40, 'image', 'WhatsApp Image 2022-03-03 at 5.35.54 PM', 'WhatsApp-Image-2022-03-03-at-5.35.54-PM.jpeg', 'image/jpeg', 'public', 29461, '[]', '{\"uuid\":\"b83ad11b-46d6-40ed-a310-fc8346f570b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2022-03-03 08:07:16', '2022-03-03 08:07:16'),
(89, 'App\\Models\\EService', 24, 'image', 'WhatsApp Image 2022-03-03 at 5.35.54 PM', 'WhatsApp-Image-2022-03-03-at-5.35.54-PM.jpeg', 'image/jpeg', 'public', 29461, '[]', '{\"uuid\":\"b83ad11b-46d6-40ed-a310-fc8346f570b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 83, '2022-03-03 08:07:18', '2022-03-03 08:07:18'),
(90, 'App\\Models\\Upload', 41, 'image', 'WhatsApp Image 2022-03-03 at 5.35.54 PM', 'WhatsApp-Image-2022-03-03-at-5.35.54-PM.jpeg', 'image/jpeg', 'public', 29461, '[]', '{\"uuid\":\"9a44396e-5205-43a4-832d-fd612c79d27b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2022-03-03 08:09:34', '2022-03-03 08:09:34'),
(91, 'App\\Models\\Upload', 42, 'image', 'WhatsApp Image 2022-03-03 at 5.39.08 PM', 'WhatsApp-Image-2022-03-03-at-5.39.08-PM.jpeg', 'image/jpeg', 'public', 24100, '[]', '{\"uuid\":\"165a4c4f-c97a-444b-b5fe-f0ca55985f5b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 85, '2022-03-03 08:09:57', '2022-03-03 08:09:57'),
(92, 'App\\Models\\EService', 25, 'image', 'WhatsApp Image 2022-03-03 at 5.39.08 PM', 'WhatsApp-Image-2022-03-03-at-5.39.08-PM.jpeg', 'image/jpeg', 'public', 24100, '[]', '{\"uuid\":\"165a4c4f-c97a-444b-b5fe-f0ca55985f5b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2022-03-03 08:10:04', '2022-03-03 08:10:04'),
(93, 'App\\Models\\Upload', 43, 'image', 'WhatsApp Image 2022-03-03 at 5.39.08 PM', 'WhatsApp-Image-2022-03-03-at-5.39.08-PM.jpeg', 'image/jpeg', 'public', 24100, '[]', '{\"uuid\":\"46fef04b-35c3-4a61-9b12-042b3a343332\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 87, '2022-03-03 08:11:56', '2022-03-03 08:11:56'),
(94, 'App\\Models\\Upload', 44, 'image', 'WhatsApp Image 2022-03-03 at 5.41.27 PM', 'WhatsApp-Image-2022-03-03-at-5.41.27-PM.jpeg', 'image/jpeg', 'public', 33394, '[]', '{\"uuid\":\"ad06fe3a-0a80-45c1-9ac3-40517a6c9b01\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 88, '2022-03-03 08:12:19', '2022-03-03 08:12:19'),
(95, 'App\\Models\\EService', 26, 'image', 'WhatsApp Image 2022-03-03 at 5.41.27 PM', 'WhatsApp-Image-2022-03-03-at-5.41.27-PM.jpeg', 'image/jpeg', 'public', 33394, '[]', '{\"uuid\":\"ad06fe3a-0a80-45c1-9ac3-40517a6c9b01\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2022-03-03 08:12:24', '2022-03-03 08:12:24'),
(96, 'App\\Models\\Upload', 45, 'image', 'WhatsApp Image 2022-03-03 at 5.44.48 PM', 'WhatsApp-Image-2022-03-03-at-5.44.48-PM.jpeg', 'image/jpeg', 'public', 24449, '[]', '{\"uuid\":\"e5b27ad0-506a-4bcd-8812-cc671f5f7d54\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2022-03-03 08:15:10', '2022-03-03 08:15:10'),
(97, 'App\\Models\\EService', 27, 'image', 'WhatsApp Image 2022-03-03 at 5.44.48 PM', 'WhatsApp-Image-2022-03-03-at-5.44.48-PM.jpeg', 'image/jpeg', 'public', 24449, '[]', '{\"uuid\":\"e5b27ad0-506a-4bcd-8812-cc671f5f7d54\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 91, '2022-03-03 08:15:17', '2022-03-03 08:15:17'),
(98, 'App\\Models\\Upload', 46, 'image', 'mental health', 'mental-health.jpg', 'image/jpeg', 'public', 48170, '[]', '{\"uuid\":\"680aad82-fc31-45a0-8ec9-44a01b03dba1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2022-03-04 09:31:00', '2022-03-04 09:31:00'),
(100, 'App\\Models\\Upload', 47, 'image', 'Cardiologists', 'Cardiologists.jpg', 'image/jpeg', 'public', 6183, '[]', '{\"uuid\":\"11aa291b-7d07-4c1e-93db-28b27edd3a60\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 94, '2022-03-04 09:33:57', '2022-03-04 09:33:57'),
(101, 'App\\Models\\Category', 4, 'image', 'Cardiologists', 'Cardiologists.jpg', 'image/jpeg', 'public', 6183, '[]', '{\"uuid\":\"11aa291b-7d07-4c1e-93db-28b27edd3a60\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 95, '2022-03-04 09:34:00', '2022-03-04 09:34:00'),
(102, 'App\\Models\\Upload', 48, 'image', 'Ophthalmologists', 'Ophthalmologists.jpg', 'image/jpeg', 'public', 107945, '[]', '{\"uuid\":\"48dd73d6-39f0-4298-9117-560a77f1fc3b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2022-03-04 09:35:46', '2022-03-04 09:35:47'),
(104, 'App\\Models\\Upload', 49, 'image', 'Ophthalmologists', 'Ophthalmologists.jpg', 'image/jpeg', 'public', 107945, '[]', '{\"uuid\":\"d441ea1f-5aba-4479-b9ab-5e02457a3647\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2022-03-04 09:36:36', '2022-03-04 09:36:36'),
(105, 'App\\Models\\Category', 5, 'image', 'Ophthalmologists', 'Ophthalmologists.jpg', 'image/jpeg', 'public', 107945, '[]', '{\"uuid\":\"d441ea1f-5aba-4479-b9ab-5e02457a3647\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 99, '2022-03-04 09:36:38', '2022-03-04 09:36:38'),
(106, 'App\\Models\\Upload', 50, 'image', 'Pathologists', 'Pathologists.jpg', 'image/jpeg', 'public', 29400, '[]', '{\"uuid\":\"605505c7-fb43-4ffb-b6e1-cc0ddf3884c1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2022-03-04 09:39:59', '2022-03-04 09:39:59'),
(108, 'App\\Models\\Upload', 51, 'image', 'MDP_3875', 'MDP_3875.jpg', 'image/jpeg', 'public', 107780, '[]', '{\"uuid\":\"88de1e9a-b4bd-4a83-a9fc-11237e56408b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 102, '2022-03-04 09:59:18', '2022-03-04 09:59:19'),
(109, 'App\\Models\\Upload', 52, 'image', 'MDP_3875', 'MDP_3875.jpg', 'image/jpeg', 'public', 107780, '[]', '{\"uuid\":\"8bd35b81-d115-4a23-9211-bcfb6a2f97f6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 103, '2022-03-04 10:02:30', '2022-03-04 10:02:30'),
(110, 'App\\Models\\Upload', 53, 'image', 'MDP_3875', 'MDP_3875.jpg', 'image/jpeg', 'public', 107780, '[]', '{\"uuid\":\"edf7c5d4-ed9b-451d-964b-06adfb7c007a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2022-03-04 10:04:15', '2022-03-04 10:04:15'),
(112, 'App\\Models\\Upload', 54, 'image', 'Pathologists', 'Pathologists.jpg', 'image/jpeg', 'public', 29400, '[]', '{\"uuid\":\"47eff0be-6d0d-47ee-aa41-4db334f107e3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2022-03-05 07:03:21', '2022-03-05 07:03:21'),
(114, 'App\\Models\\Upload', 55, 'image', 'mental health', 'mental-health.jpg', 'image/jpeg', 'public', 48170, '[]', '{\"uuid\":\"a16ebd1c-7f04-413b-b678-7f19747dab35\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2022-03-05 07:23:42', '2022-03-05 07:23:43'),
(115, 'App\\Models\\Category', 3, 'image', 'mental health', 'mental-health.jpg', 'image/jpeg', 'public', 48170, '[]', '{\"uuid\":\"a16ebd1c-7f04-413b-b678-7f19747dab35\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2022-03-05 07:23:43', '2022-03-05 07:23:43'),
(116, 'App\\Models\\Upload', 56, 'image', 'medical-jobs', 'medical-jobs.jpg', 'image/jpeg', 'public', 19331, '[]', '{\"uuid\":\"3c9cb8ac-2600-4597-b644-c75db4af5580\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 109, '2022-03-10 03:26:59', '2022-03-10 03:26:59'),
(118, 'App\\Models\\Upload', 57, 'image', 'WhatsApp Image 2022-03-08 at 10.58.58 PM', 'WhatsApp-Image-2022-03-08-at-10.58.58-PM.jpeg', 'image/jpeg', 'public', 134445, '[]', '{\"uuid\":\"0715209e-2c97-4b36-8bbf-76914613a046\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 111, '2022-03-10 03:35:52', '2022-03-10 03:35:52'),
(119, 'App\\Models\\Upload', 58, 'image', 'WhatsApp Image 2022-03-08 at 10.58.58 PM', 'WhatsApp-Image-2022-03-08-at-10.58.58-PM.jpeg', 'image/jpeg', 'public', 134445, '[]', '{\"uuid\":\"60faf96e-2e90-4511-84a8-f2ca5db19023\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2022-03-10 03:35:55', '2022-03-10 03:35:55'),
(120, 'App\\Models\\Upload', 59, 'image', 'h2o_2-02 (1)', 'h2o_2-02-(1).png', 'image/png', 'public', 17490, '[]', '{\"uuid\":\"36361f64-85b7-4031-bfdd-bfc8fe6641d5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 113, '2022-03-10 03:35:57', '2022-03-10 03:35:58'),
(122, 'App\\Models\\Upload', 60, 'app_logo', 'logo_default.png', 'logo_default.png.png', 'image/png', 'public', 42727, '[]', '{\"uuid\":\"9ff3d620-4bb5-44e6-b0fb-e40589e1f5f4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 115, '2022-03-10 10:49:36', '2022-03-10 10:49:37'),
(123, 'App\\Models\\Upload', 61, 'image', 'aa', 'aa.jpg', 'image/jpeg', 'public', 118799, '[]', '{\"uuid\":\"cbaf551a-34e5-4b1d-8857-b526f4b4a753\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2022-03-10 10:56:54', '2022-03-10 10:56:54'),
(124, 'App\\Models\\Upload', 62, 'app_logo', 'logo-02.png', 'logo-02.png.png', 'image/png', 'public', 44072, '[]', '{\"uuid\":\"ff07391a-88f7-4f58-aa9f-f738057c46db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, '2022-03-10 11:09:27', '2022-03-10 11:09:28'),
(125, 'App\\Models\\Upload', 63, 'image', 'logo_default.png', 'logo_default.png.png', 'image/png', 'public', 42727, '[]', '{\"uuid\":\"5016fc14-cdf7-41ac-80cc-ec5e21ebf7b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 118, '2022-03-10 11:18:01', '2022-03-10 11:18:02'),
(127, 'App\\Models\\Upload', 64, 'image', 'medical-jobs', 'medical-jobs.jpg', 'image/jpeg', 'public', 19331, '[]', '{\"uuid\":\"fe91adaa-ac16-4485-a671-0514a1d1238a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 120, '2022-03-10 11:19:01', '2022-03-10 11:19:01'),
(128, 'App\\Models\\Slide', 7, 'image', 'medical-jobs', 'medical-jobs.jpg', 'image/jpeg', 'public', 19331, '[]', '{\"uuid\":\"fe91adaa-ac16-4485-a671-0514a1d1238a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2022-03-10 11:19:04', '2022-03-10 11:19:04'),
(129, 'App\\Models\\Upload', 65, 'image', 'ee', 'ee.jpg', 'image/jpeg', 'public', 116025, '[]', '{\"uuid\":\"45068199-c432-496d-8610-860320a44010\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 122, '2022-03-10 11:20:00', '2022-03-10 11:20:00'),
(130, 'App\\Models\\Slide', 13, 'image', 'ee', 'ee.jpg', 'image/jpeg', 'public', 116025, '[]', '{\"uuid\":\"45068199-c432-496d-8610-860320a44010\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, '2022-03-10 11:20:10', '2022-03-10 11:20:10'),
(131, 'App\\Models\\Upload', 66, 'image', 'df', 'df.jpg', 'image/jpeg', 'public', 18069, '[]', '{\"uuid\":\"4c922251-976e-4cf9-9fa6-b99ad28283ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 124, '2022-03-10 11:32:06', '2022-03-10 11:32:06'),
(133, 'App\\Models\\Upload', 67, 'image', 'df', 'df.jpg', 'image/jpeg', 'public', 18069, '[]', '{\"uuid\":\"2a57a35b-fcd5-46ff-8262-61528bf54d0e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2022-03-10 11:32:39', '2022-03-10 11:32:39'),
(135, 'App\\Models\\Upload', 68, 'image', 'Healthcare-Software-Solution', 'Healthcare-Software-Solution.jpg', 'image/jpeg', 'public', 225312, '[]', '{\"uuid\":\"6fc8aa99-d9e1-4664-b510-8735d97a515a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2022-03-10 12:25:06', '2022-03-10 12:25:06'),
(137, 'App\\Models\\Upload', 69, 'image', 'Healthcare-Software-Solution', 'Healthcare-Software-Solution.jpg', 'image/jpeg', 'public', 225312, '[]', '{\"uuid\":\"7424f5c6-d022-45f6-9649-69ab42dfbcfc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2022-03-10 12:25:31', '2022-03-10 12:25:32'),
(138, 'App\\Models\\Upload', 70, 'image', 'Healthcare-Software-Solution', 'Healthcare-Software-Solution.jpg', 'image/jpeg', 'public', 225312, '[]', '{\"uuid\":\"fc1ff7ba-3553-427b-be98-cffc82e6e01d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 129, '2022-03-10 12:25:40', '2022-03-10 12:25:41'),
(140, 'App\\Models\\Upload', 71, 'image', '24286', '24286.jpg', 'image/jpeg', 'public', 1211886, '[]', '{\"uuid\":\"19e38348-aae2-4eb2-8af4-bded06b6fa70\",\"user_id\":1}', '[]', 130, '2022-03-10 12:30:54', '2022-03-10 12:30:54'),
(142, 'App\\Models\\Upload', 72, 'image', 'healthcare jobs medical degree', 'healthcare-jobs-medical-degree.jpg', 'image/jpeg', 'public', 57962, '[]', '{\"uuid\":\"b407da73-440b-40ff-9f31-978d2fd5f528\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2022-03-10 12:33:46', '2022-03-10 12:33:46'),
(144, 'App\\Models\\Upload', 73, 'image', 'healthcare jobs medical degree', 'healthcare-jobs-medical-degree.jpg', 'image/jpeg', 'public', 57962, '[]', '{\"uuid\":\"965b1389-419d-4eda-bf13-e9781a18f053\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 133, '2022-03-10 12:35:37', '2022-03-10 12:35:37'),
(145, 'App\\Models\\Slide', 15, 'image', 'healthcare jobs medical degree', 'healthcare-jobs-medical-degree.jpg', 'image/jpeg', 'public', 57962, '[]', '{\"uuid\":\"965b1389-419d-4eda-bf13-e9781a18f053\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 134, '2022-03-10 12:35:40', '2022-03-10 12:35:40'),
(146, 'App\\Models\\Upload', 74, 'image', 'df', 'df.jpg', 'image/jpeg', 'public', 18069, '[]', '{\"uuid\":\"94d14102-e8b3-46b5-8d30-5d855eabec59\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2022-03-10 12:49:37', '2022-03-10 12:49:37'),
(148, 'App\\Models\\Upload', 75, 'image', 'ee', 'ee.jpg', 'image/jpeg', 'public', 116025, '[]', '{\"uuid\":\"f8b3db22-a9c6-496f-a769-f7c593b3c885\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, '2022-03-10 13:16:31', '2022-03-10 13:16:31'),
(149, 'App\\Models\\Slide', 14, 'image', 'ee', 'ee.jpg', 'image/jpeg', 'public', 116025, '[]', '{\"uuid\":\"f8b3db22-a9c6-496f-a769-f7c593b3c885\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2022-03-10 13:16:34', '2022-03-10 13:16:34'),
(150, 'App\\Models\\Upload', 76, 'image', 'istockphoto-1191718778-612x612', 'istockphoto-1191718778-612x612.jpg', 'image/jpeg', 'public', 33370, '[]', '{\"uuid\":\"ba9f59fc-6590-4bce-9376-4f98432387ed\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 138, '2022-03-23 04:26:43', '2022-03-23 04:26:43'),
(151, 'App\\Models\\Gallery', 6, 'image', 'istockphoto-1191718778-612x612', 'istockphoto-1191718778-612x612.jpg', 'image/jpeg', 'public', 33370, '[]', '{\"uuid\":\"ba9f59fc-6590-4bce-9376-4f98432387ed\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2022-03-23 04:26:47', '2022-03-23 04:26:47'),
(152, 'App\\Models\\Upload', 77, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 10078, '[]', '{\"uuid\":\"3aa5f94a-c92b-4f50-bed8-4ee833c4282f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 140, '2022-03-23 07:35:28', '2022-03-23 07:35:28'),
(153, 'App\\Models\\User', 12, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 10078, '[]', '{\"uuid\":\"3aa5f94a-c92b-4f50-bed8-4ee833c4282f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2022-03-23 07:35:32', '2022-03-23 07:35:32'),
(154, 'App\\Models\\Upload', 78, 'avatar', '1', '1.jpg', 'image/jpeg', 'public', 30837, '[]', '{\"uuid\":\"0f274c57-71d6-4412-beaf-4a28cd7202d7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 142, '2022-03-23 07:36:46', '2022-03-23 07:36:46'),
(156, 'App\\Models\\Upload', 79, 'avatar', 'pic1', 'pic1.jpg', 'image/jpeg', 'public', 2191, '[]', '{\"uuid\":\"cc5c74b5-ae2d-4a64-bbd8-c73d9be113bc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 144, '2022-03-23 07:37:51', '2022-03-23 07:37:51'),
(158, 'App\\Models\\Upload', 80, 'avatar', 'pic8', 'pic8.jpg', 'image/jpeg', 'public', 2564, '[]', '{\"uuid\":\"3deb5318-302e-4887-afb1-7946978cd021\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 146, '2022-03-23 07:39:53', '2022-03-23 07:39:53'),
(159, 'App\\Models\\Upload', 81, 'avatar', 'pic8', 'pic8.jpg', 'image/jpeg', 'public', 2564, '[]', '{\"uuid\":\"6dd59d2f-18f6-43c6-8cf2-c87d3fd0a84a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, '2022-03-23 07:40:17', '2022-03-23 07:40:17'),
(161, 'App\\Models\\Upload', 82, 'avatar', 'pic10', 'pic10.jpg', 'image/jpeg', 'public', 3135, '[]', '{\"uuid\":\"8c975db4-c265-4e2d-901b-9d9526b640da\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2022-03-23 07:44:12', '2022-03-23 07:44:12'),
(163, 'App\\Models\\Upload', 83, 'avatar', 'pic7', 'pic7.jpg', 'image/jpeg', 'public', 2413, '[]', '{\"uuid\":\"ae04dcb4-147b-4f01-a213-7e58dabc8e0c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 151, '2022-03-23 07:46:27', '2022-03-23 07:46:27'),
(165, 'App\\Models\\Upload', 84, 'avatar', 'pic4', 'pic4.jpg', 'image/jpeg', 'public', 2570, '[]', '{\"uuid\":\"344333a5-d2b9-44ed-85bc-8eed64e635c7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, '2022-03-23 07:46:55', '2022-03-23 07:46:55'),
(167, 'App\\Models\\Upload', 85, 'avatar', 'pic9', 'pic9.jpg', 'image/jpeg', 'public', 2914, '[]', '{\"uuid\":\"55cf51b6-3341-4af1-afc4-b9fa9948d033\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, '2022-03-23 07:47:52', '2022-03-23 07:47:52'),
(168, 'App\\Models\\Upload', 86, 'avatar', '6', '6.jpg', 'image/jpeg', 'public', 2716, '[]', '{\"uuid\":\"91f7402f-e248-42de-8a7a-5c0df1ff2fc3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 156, '2022-03-23 07:49:50', '2022-03-23 07:49:50'),
(169, 'App\\Models\\Upload', 87, 'avatar', '5', '5.jpg', 'image/jpeg', 'public', 2703, '[]', '{\"uuid\":\"e38b0b94-310c-488f-822d-7b0e6db98b72\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 157, '2022-03-23 07:50:51', '2022-03-23 07:50:51'),
(170, 'App\\Models\\Upload', 88, 'avatar', '5', '5.jpg', 'image/jpeg', 'public', 2703, '[]', '{\"uuid\":\"5471b6c6-3534-4f36-bce7-af68a5d8106b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 158, '2022-03-23 07:51:51', '2022-03-23 07:51:52'),
(172, 'App\\Models\\Upload', 89, 'avatar', 'Download - App-01', 'Download---App-01.png', 'image/png', 'public', 223043, '[]', '{\"uuid\":\"10d2c2af-9e00-4b31-ab84-68ca02621985\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 160, '2022-03-23 08:04:25', '2022-03-23 08:04:26'),
(173, 'App\\Models\\Upload', 90, 'avatar', '1', '1.jpg', 'image/jpeg', 'public', 67329, '[]', '{\"uuid\":\"d91339f0-d8c3-4336-928e-a287919ce901\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 161, '2022-03-23 08:04:50', '2022-03-23 08:04:50'),
(175, 'App\\Models\\Upload', 91, 'avatar', 'Admin - Panel-04', 'Admin---Panel-04.png', 'image/png', 'public', 2989, '[]', '{\"uuid\":\"44a358c3-7108-42f7-81d1-992cc5b786d6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2022-03-23 08:05:31', '2022-03-23 08:05:31'),
(176, 'App\\Models\\Upload', 92, 'avatar', 'Admin - Panel-04', 'Admin---Panel-04.png', 'image/png', 'public', 2989, '[]', '{\"uuid\":\"a95a402c-34dc-4de9-b696-1d0d9a613e25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 164, '2022-03-23 08:05:46', '2022-03-23 08:05:46'),
(177, 'App\\Models\\User', 6, 'avatar', 'Admin - Panel-04', 'Admin---Panel-04.png', 'image/png', 'public', 2989, '[]', '{\"uuid\":\"a95a402c-34dc-4de9-b696-1d0d9a613e25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 165, '2022-03-23 08:05:55', '2022-03-23 08:05:55'),
(178, 'App\\Models\\User', 6, 'avatar', 'Admin - Panel-04', 'Admin---Panel-04.png', 'image/png', 'public', 2989, '[]', '{\"uuid\":\"a95a402c-34dc-4de9-b696-1d0d9a613e25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 166, '2022-03-23 08:05:55', '2022-03-23 08:05:55'),
(179, 'App\\Models\\Upload', 93, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 11547, '[]', '{\"uuid\":\"0f7d56be-23db-49a6-ae12-93cdb4b44210\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 167, '2022-03-23 08:06:43', '2022-03-23 08:06:43'),
(180, 'App\\Models\\User', 11, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 11547, '[]', '{\"uuid\":\"0f7d56be-23db-49a6-ae12-93cdb4b44210\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 168, '2022-03-23 08:06:46', '2022-03-23 08:06:46'),
(181, 'App\\Models\\Upload', 94, 'avatar', '4', '4.jpg', 'image/jpeg', 'public', 7438, '[]', '{\"uuid\":\"ff6cb20d-f452-4451-a232-d0e6fcd17fca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 169, '2022-03-23 08:07:18', '2022-03-23 08:07:18'),
(182, 'App\\Models\\User', 13, 'avatar', '4', '4.jpg', 'image/jpeg', 'public', 7438, '[]', '{\"uuid\":\"ff6cb20d-f452-4451-a232-d0e6fcd17fca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 170, '2022-03-23 08:07:20', '2022-03-23 08:07:20'),
(183, 'App\\Models\\Upload', 95, 'image', 'blog_20160815', 'blog_20160815.jpg', 'image/jpeg', 'public', 56354, '[]', '{\"uuid\":\"a0b99c2e-9658-4d52-8608-d9778263d501\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2022-03-23 08:15:26', '2022-03-23 08:15:26'),
(184, 'App\\Models\\Upload', 96, 'image', 'blog_20160815', 'blog_20160815.jpg', 'image/jpeg', 'public', 56354, '[]', '{\"uuid\":\"cd73b4dd-32c9-4627-a37f-fb136156c727\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2022-03-23 08:16:10', '2022-03-23 08:16:11'),
(185, 'App\\Models\\EService', 11, 'image', 'blog_20160815', 'blog_20160815.jpg', 'image/jpeg', 'public', 56354, '[]', '{\"uuid\":\"cd73b4dd-32c9-4627-a37f-fb136156c727\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2022-03-23 08:16:14', '2022-03-23 08:16:14'),
(186, 'App\\Models\\Upload', 97, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 8419, '[]', '{\"uuid\":\"4081f68e-724c-466f-8959-3763b5d9971b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 174, '2022-03-23 09:45:51', '2022-03-23 09:45:51'),
(187, 'App\\Models\\Upload', 98, 'image', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 10724, '[]', '{\"uuid\":\"0182a590-7894-420d-b614-1e8917b59dce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2022-03-23 09:46:04', '2022-03-23 09:46:04'),
(188, 'App\\Models\\EService', 13, 'image', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 10724, '[]', '{\"uuid\":\"0182a590-7894-420d-b614-1e8917b59dce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 176, '2022-03-23 09:46:07', '2022-03-23 09:46:07'),
(189, 'App\\Models\\Upload', 99, 'image', 'images (1)', 'images-(1).jpg', 'image/jpeg', 'public', 8183, '[]', '{\"uuid\":\"bf24e94c-e427-4d8b-bd9f-05f909a32a0e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 177, '2022-03-23 09:52:50', '2022-03-23 09:52:50'),
(190, 'App\\Models\\EService', 14, 'image', 'images (1)', 'images-(1).jpg', 'image/jpeg', 'public', 8183, '[]', '{\"uuid\":\"bf24e94c-e427-4d8b-bd9f-05f909a32a0e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 178, '2022-03-23 09:53:58', '2022-03-23 09:53:58'),
(191, 'App\\Models\\Upload', 100, 'image', 'Perks-of-Working-in-Home-Health-Care', 'Perks-of-Working-in-Home-Health-Care.jpeg', 'image/jpeg', 'public', 158823, '[]', '{\"uuid\":\"873ad861-cb90-4cd3-a7ab-04da082ea1e9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 179, '2022-03-23 09:59:25', '2022-03-23 09:59:26'),
(192, 'App\\Models\\Upload', 101, 'image', 'Perks-of-Working-in-Home-Health-Care', 'Perks-of-Working-in-Home-Health-Care.jpeg', 'image/jpeg', 'public', 158823, '[]', '{\"uuid\":\"51d66bb2-1c7b-4617-bee6-5ccf66fd0957\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 180, '2022-03-23 10:00:35', '2022-03-23 10:00:35'),
(194, 'App\\Models\\Upload', 102, 'image', 'holistic-nurse', 'holistic-nurse.jpg', 'image/jpeg', 'public', 37649, '[]', '{\"uuid\":\"ee71437c-3b03-4f6a-b3cf-866cb827cc7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 182, '2022-03-23 10:45:53', '2022-03-23 10:45:53'),
(195, 'App\\Models\\EService', 17, 'image', 'holistic-nurse', 'holistic-nurse.jpg', 'image/jpeg', 'public', 37649, '[]', '{\"uuid\":\"ee71437c-3b03-4f6a-b3cf-866cb827cc7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 183, '2022-03-23 10:46:01', '2022-03-23 10:46:01'),
(196, 'App\\Models\\Upload', 103, 'image', '20-NUR-1935157-YON-Spotlight-Neonatal-CQD-650x450-2-650x450', '20-NUR-1935157-YON-Spotlight-Neonatal-CQD-650x450-2-650x450.jpg', 'image/jpeg', 'public', 54080, '[]', '{\"uuid\":\"bb3b4708-f992-4fe0-b027-0a862d72c1cb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 184, '2022-03-23 10:54:45', '2022-03-23 10:54:45'),
(197, 'App\\Models\\Upload', 104, 'image', 'Neonatal_Nurse_Practitioner', 'Neonatal_Nurse_Practitioner.jpg', 'image/jpeg', 'public', 284579, '[]', '{\"uuid\":\"f2e3f6a1-426d-4ec4-aaa8-735de0bdf1b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 185, '2022-03-23 10:55:31', '2022-03-23 10:55:32'),
(198, 'App\\Models\\EService', 18, 'image', 'Neonatal_Nurse_Practitioner', 'Neonatal_Nurse_Practitioner.jpg', 'image/jpeg', 'public', 284579, '[]', '{\"uuid\":\"f2e3f6a1-426d-4ec4-aaa8-735de0bdf1b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2022-03-23 10:56:00', '2022-03-23 10:56:00'),
(199, 'App\\Models\\Upload', 105, 'image', 'pediatric-nurse-with-patient-290x253-1', 'pediatric-nurse-with-patient-290x253-1.jpg', 'image/jpeg', 'public', 45859, '[]', '{\"uuid\":\"049de71e-abc7-4c2a-a997-23ca43d51e55\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 187, '2022-03-23 10:58:01', '2022-03-23 10:58:01'),
(200, 'App\\Models\\EService', 19, 'image', 'pediatric-nurse-with-patient-290x253-1', 'pediatric-nurse-with-patient-290x253-1.jpg', 'image/jpeg', 'public', 45859, '[]', '{\"uuid\":\"049de71e-abc7-4c2a-a997-23ca43d51e55\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 188, '2022-03-23 10:58:25', '2022-03-23 10:58:25'),
(201, 'App\\Models\\Upload', 106, 'image', 'download (2)', 'download-(2).jpg', 'image/jpeg', 'public', 9092, '[]', '{\"uuid\":\"c5094bcf-9f5d-4dd5-9d56-466a49f5e709\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 189, '2022-03-23 11:12:34', '2022-03-23 11:12:34'),
(202, 'App\\Models\\EProvider', 18, 'image', 'download (2)', 'download-(2).jpg', 'image/jpeg', 'public', 9092, '[]', '{\"uuid\":\"c5094bcf-9f5d-4dd5-9d56-466a49f5e709\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2022-03-23 11:12:41', '2022-03-23 11:12:41'),
(203, 'App\\Models\\Upload', 107, 'image', 'himagiri-hospitals-hyderabad-1469100652-5790b26c4327e', 'himagiri-hospitals-hyderabad-1469100652-5790b26c4327e.jpg', 'image/jpeg', 'public', 107410, '[]', '{\"uuid\":\"d362f60d-f2dc-4aba-b0ab-b338da9686ca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 191, '2022-04-05 01:52:29', '2022-04-05 01:52:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(204, 'App\\Models\\EProvider', 17, 'image', 'himagiri-hospitals-hyderabad-1469100652-5790b26c4327e', 'himagiri-hospitals-hyderabad-1469100652-5790b26c4327e.jpg', 'image/jpeg', 'public', 107410, '[]', '{\"uuid\":\"d362f60d-f2dc-4aba-b0ab-b338da9686ca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 192, '2022-04-05 01:58:38', '2022-04-05 01:58:38'),
(205, 'App\\Models\\Upload', 108, 'avatar', 'indian-dating-woman-smiling', 'indian-dating-woman-smiling.jpg', 'image/jpeg', 'public', 48644, '[]', '{\"uuid\":\"2f12b348-6d85-4cd9-8395-c5cdb702b022\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 193, '2022-04-05 04:02:45', '2022-04-05 04:02:45'),
(206, 'App\\Models\\User', 3, 'avatar', 'indian-dating-woman-smiling', 'indian-dating-woman-smiling.jpg', 'image/jpeg', 'public', 48644, '[]', '{\"uuid\":\"2f12b348-6d85-4cd9-8395-c5cdb702b022\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 194, '2022-04-05 04:02:48', '2022-04-05 04:02:48'),
(207, 'App\\Models\\Upload', 109, 'image', 'doctor-indian-38175858', 'doctor-indian-38175858.jpg', 'image/jpeg', 'public', 52518, '[]', '{\"uuid\":\"78aaa19c-ec1c-421b-a2c5-b25d318cbc65\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 195, '2022-04-05 04:47:46', '2022-04-05 04:47:46'),
(208, 'App\\Models\\Upload', 110, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"114ced56-1bf6-493d-82a7-3521a46be0f1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 196, '2022-04-05 04:50:51', '2022-04-05 04:50:51'),
(209, 'App\\Models\\EProvider', 20, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"114ced56-1bf6-493d-82a7-3521a46be0f1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 197, '2022-04-05 04:53:11', '2022-04-05 04:53:11'),
(210, 'App\\Models\\Upload', 111, 'image', 'sunshine-hospitals-secunderabad', 'sunshine-hospitals-secunderabad.jpg', 'image/jpeg', 'public', 45151, '[]', '{\"uuid\":\"4b2b4894-7bad-4b94-ad4f-21b4d62071f2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 198, '2022-04-05 04:57:01', '2022-04-05 04:57:02'),
(211, 'App\\Models\\EProvider', 22, 'image', 'sunshine-hospitals-secunderabad', 'sunshine-hospitals-secunderabad.jpg', 'image/jpeg', 'public', 45151, '[]', '{\"uuid\":\"4b2b4894-7bad-4b94-ad4f-21b4d62071f2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 199, '2022-04-05 04:57:25', '2022-04-05 04:57:25'),
(212, 'App\\Models\\Upload', 112, 'image', 'apollo_hospitals-hyderabad', 'apollo_hospitals-hyderabad.jpg', 'image/jpeg', 'public', 61320, '[]', '{\"uuid\":\"10157b48-418e-4318-8906-c9b5418df2b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 200, '2022-04-05 05:06:40', '2022-04-05 05:06:40'),
(213, 'App\\Models\\Upload', 113, 'image', 'apollo_hospitals-hyderabad', 'apollo_hospitals-hyderabad.jpg', 'image/jpeg', 'public', 61320, '[]', '{\"uuid\":\"0fdb52ad-709d-4a1f-8278-9e08d3aa7ac5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 201, '2022-04-05 05:09:13', '2022-04-05 05:09:14'),
(214, 'App\\Models\\EProvider', 25, 'image', 'apollo_hospitals-hyderabad', 'apollo_hospitals-hyderabad.jpg', 'image/jpeg', 'public', 61320, '[]', '{\"uuid\":\"0fdb52ad-709d-4a1f-8278-9e08d3aa7ac5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 202, '2022-04-05 05:10:28', '2022-04-05 05:10:28'),
(215, 'App\\Models\\Upload', 114, 'image', 'R', 'R.jpg', 'image/jpeg', 'public', 1960868, '[]', '{\"uuid\":\"46f78519-6b61-437a-a083-6882921fe499\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 203, '2022-04-05 05:46:11', '2022-04-05 05:46:12'),
(216, 'App\\Models\\EProvider', 26, 'image', 'R', 'R.jpg', 'image/jpeg', 'public', 1960868, '[]', '{\"uuid\":\"46f78519-6b61-437a-a083-6882921fe499\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 204, '2022-04-05 05:46:14', '2022-04-05 05:46:14'),
(217, 'App\\Models\\Upload', 115, 'image', 'medicover', 'medicover.jpg', 'image/jpeg', 'public', 25774, '[]', '{\"uuid\":\"6d353b17-28d1-4e2e-9a50-0764ca60c2fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 205, '2022-04-05 05:47:24', '2022-04-05 05:47:24'),
(218, 'App\\Models\\EProvider', 24, 'image', 'medicover', 'medicover.jpg', 'image/jpeg', 'public', 25774, '[]', '{\"uuid\":\"6d353b17-28d1-4e2e-9a50-0764ca60c2fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 206, '2022-04-05 05:47:31', '2022-04-05 05:47:31'),
(219, 'App\\Models\\Upload', 116, 'image', 'istockphoto-1191718778-612x612', 'istockphoto-1191718778-612x612.jpg', 'image/jpeg', 'public', 33370, '[]', '{\"uuid\":\"642b8602-dec7-4355-9a08-f0613f8d7953\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 207, '2022-04-05 07:09:22', '2022-04-05 07:09:22'),
(220, 'App\\Models\\Upload', 117, 'image', 'istockphoto-1191718778-612x612', 'istockphoto-1191718778-612x612.jpg', 'image/jpeg', 'public', 33370, '[]', '{\"uuid\":\"2813e36f-bcf3-46ef-b12c-bd3d7824a103\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 208, '2022-04-05 07:18:53', '2022-04-05 07:18:53'),
(222, 'App\\Models\\Upload', 118, 'image', 'RN-Visit-Nurse', 'RN-Visit-Nurse.jpg', 'image/jpeg', 'public', 278608, '[]', '{\"uuid\":\"5dd46102-a7e2-459c-9841-cecf124c0c46\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 209, '2022-04-05 07:36:04', '2022-04-05 07:36:06'),
(223, 'App\\Models\\Upload', 119, 'image', 's', 's.jpeg', 'image/jpeg', 'public', 140849, '[]', '{\"uuid\":\"1f5e1d86-39fc-4de5-b809-fd3c53bf2c4c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 210, '2022-04-05 07:42:56', '2022-04-05 07:42:57'),
(225, 'App\\Models\\Upload', 120, 'image', 'RN-Visit-Nurse', 'RN-Visit-Nurse.jpg', 'image/jpeg', 'public', 278608, '[]', '{\"uuid\":\"cc042390-ac66-45f9-bcdd-6551e6ff6f46\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 212, '2022-04-05 07:51:57', '2022-04-05 07:51:57'),
(226, 'App\\Models\\Upload', 121, 'image', 'OIP', 'OIP.jpg', 'image/jpeg', 'public', 16525, '[]', '{\"uuid\":\"44ccda66-4269-4bf0-b747-10d12de83bb8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 213, '2022-04-05 07:53:45', '2022-04-05 07:53:45'),
(227, 'App\\Models\\EProvider', 28, 'image', 'OIP', 'OIP.jpg', 'image/jpeg', 'public', 16525, '[]', '{\"uuid\":\"44ccda66-4269-4bf0-b747-10d12de83bb8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 214, '2022-04-05 07:54:10', '2022-04-05 07:54:10'),
(229, 'App\\Models\\Upload', 122, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"01dfbd51-eaf4-464b-b44e-4a2989fba84e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 216, '2022-04-05 08:13:21', '2022-04-05 08:13:21'),
(230, 'App\\Models\\EProvider', 21, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"01dfbd51-eaf4-464b-b44e-4a2989fba84e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 217, '2022-04-05 08:13:29', '2022-04-05 08:13:29'),
(231, 'App\\Models\\Upload', 123, 'image', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683.jpg', 'image/jpeg', 'public', 216246, '[]', '{\"uuid\":\"7765c5a3-a381-4027-8dad-47d68dfbb5c9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 218, '2022-04-05 08:15:26', '2022-04-05 08:15:26'),
(233, 'App\\Models\\Upload', 124, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"57b0adf3-3dec-4593-8f46-e80ef5f8a941\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 220, '2022-04-05 08:15:46', '2022-04-05 08:15:47'),
(234, 'App\\Models\\EProvider', 23, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"57b0adf3-3dec-4593-8f46-e80ef5f8a941\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 221, '2022-04-05 08:16:35', '2022-04-05 08:16:35'),
(235, 'App\\Models\\Upload', 125, 'image', 's', 's.jpg', 'image/jpeg', 'public', 14277, '[]', '{\"uuid\":\"6a31824c-15b4-46d6-af56-27b9b8633353\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 222, '2022-04-05 10:13:11', '2022-04-05 10:13:11'),
(236, 'App\\Models\\Upload', 126, 'image', 'RN-Visit-Nurse', 'RN-Visit-Nurse.jpg', 'image/jpeg', 'public', 278608, '[]', '{\"uuid\":\"9c58c0ee-5497-4279-b38a-653d5d3c4adb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 223, '2022-04-05 10:38:15', '2022-04-05 10:38:16'),
(237, 'App\\Models\\Upload', 127, 'image', 'sss', 'sss.jpg', 'image/jpeg', 'public', 10429, '[]', '{\"uuid\":\"fd76696b-89d0-403e-b052-d2311762c05d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 224, '2022-04-05 10:39:18', '2022-04-05 10:39:18'),
(238, 'App\\Models\\EService', 23, 'image', 'sss', 'sss.jpg', 'image/jpeg', 'public', 10429, '[]', '{\"uuid\":\"fd76696b-89d0-403e-b052-d2311762c05d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 225, '2022-04-05 10:39:38', '2022-04-05 10:39:38'),
(239, 'App\\Models\\EService', 24, 'image', 'RN-Visit-Nurse', 'RN-Visit-Nurse.jpg', 'image/jpeg', 'public', 278608, '[]', '{\"uuid\":\"9c58c0ee-5497-4279-b38a-653d5d3c4adb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2022-04-05 10:40:44', '2022-04-05 10:40:44'),
(240, 'App\\Models\\Upload', 128, 'image', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683.jpg', 'image/jpeg', 'public', 216246, '[]', '{\"uuid\":\"cf02f3b9-0e28-4cc9-8c5e-143ea8132bbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2022-04-05 10:42:21', '2022-04-05 10:42:21'),
(241, 'App\\Models\\EService', 25, 'image', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683', '7674e9712a0aa0c493e30f45a499e2fc5dbaf683.jpg', 'image/jpeg', 'public', 216246, '[]', '{\"uuid\":\"cf02f3b9-0e28-4cc9-8c5e-143ea8132bbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 228, '2022-04-05 10:43:04', '2022-04-05 10:43:04'),
(242, 'App\\Models\\Upload', 129, 'image', 'er-nurses-crop', 'er-nurses-crop.jpg', 'image/jpeg', 'public', 376048, '[]', '{\"uuid\":\"8f1846be-1b87-4425-8d5f-8aed420f9c8a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2022-04-05 10:46:11', '2022-04-05 10:46:11'),
(243, 'App\\Models\\EService', 26, 'image', 'er-nurses-crop', 'er-nurses-crop.jpg', 'image/jpeg', 'public', 376048, '[]', '{\"uuid\":\"8f1846be-1b87-4425-8d5f-8aed420f9c8a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 230, '2022-04-05 10:47:14', '2022-04-05 10:47:14'),
(244, 'App\\Models\\Upload', 130, 'image', 'asas', 'asas.jpg', 'image/jpeg', 'public', 11588, '[]', '{\"uuid\":\"f5a8f31a-7897-4308-8d71-b84ef1bceff2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2022-04-05 10:50:08', '2022-04-05 10:50:08'),
(245, 'App\\Models\\EService', 27, 'image', 'asas', 'asas.jpg', 'image/jpeg', 'public', 11588, '[]', '{\"uuid\":\"f5a8f31a-7897-4308-8d71-b84ef1bceff2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2022-04-05 10:50:32', '2022-04-05 10:50:32'),
(246, 'App\\Models\\Upload', 131, 'image', 'www', 'www.jpg', 'image/jpeg', 'public', 9159, '[]', '{\"uuid\":\"7c46a9a0-a5f1-47cc-b999-130a5147fd80\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 233, '2022-04-05 11:02:38', '2022-04-05 11:02:38'),
(248, 'App\\Models\\Upload', 132, 'image', 'jjj', 'jjj.jpg', 'image/jpeg', 'public', 9544, '[]', '{\"uuid\":\"9d5f82ec-11d7-4ab3-95b6-691747d97c28\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 235, '2022-04-05 11:19:13', '2022-04-05 11:19:13'),
(249, 'App\\Models\\EService', 31, 'image', 'jjj', 'jjj.jpg', 'image/jpeg', 'public', 9544, '[]', '{\"uuid\":\"9d5f82ec-11d7-4ab3-95b6-691747d97c28\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2022-04-05 11:21:31', '2022-04-05 11:21:31'),
(250, 'App\\Models\\Upload', 133, 'image', 'apollo_hospitals-hyderabad', 'apollo_hospitals-hyderabad.jpg', 'image/jpeg', 'public', 61320, '[]', '{\"uuid\":\"9b7372bc-9db3-42f2-afe1-5648ea261747\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2022-04-06 03:29:54', '2022-04-06 03:29:55'),
(251, 'App\\Models\\Gallery', 12, 'image', 'apollo_hospitals-hyderabad', 'apollo_hospitals-hyderabad.jpg', 'image/jpeg', 'public', 61320, '[]', '{\"uuid\":\"9b7372bc-9db3-42f2-afe1-5648ea261747\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2022-04-06 03:29:57', '2022-04-06 03:29:57'),
(252, 'App\\Models\\Upload', 134, 'image', 'sunshine-hospitals-secunderabad', 'sunshine-hospitals-secunderabad.jpg', 'image/jpeg', 'public', 45151, '[]', '{\"uuid\":\"2e6d7cc3-0068-4208-a568-75a649577722\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2022-04-06 03:30:18', '2022-04-06 03:30:18'),
(253, 'App\\Models\\Gallery', 2, 'image', 'sunshine-hospitals-secunderabad', 'sunshine-hospitals-secunderabad.jpg', 'image/jpeg', 'public', 45151, '[]', '{\"uuid\":\"2e6d7cc3-0068-4208-a568-75a649577722\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2022-04-06 03:30:21', '2022-04-06 03:30:21'),
(254, 'App\\Models\\Upload', 135, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"12479900-7c25-4a96-9ad1-25f4000e5f37\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2022-04-06 03:31:22', '2022-04-06 03:31:22'),
(255, 'App\\Models\\Gallery', 5, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"12479900-7c25-4a96-9ad1-25f4000e5f37\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2022-04-06 03:31:24', '2022-04-06 03:31:24'),
(256, 'App\\Models\\Upload', 136, 'image', 'logo', 'logo.jpg', 'image/jpeg', 'public', 37843, '[]', '{\"uuid\":\"2a573291-b160-48a5-9062-372595980654\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2022-04-06 03:32:25', '2022-04-06 03:32:25'),
(257, 'App\\Models\\Gallery', 7, 'image', 'logo', 'logo.jpg', 'image/jpeg', 'public', 37843, '[]', '{\"uuid\":\"2a573291-b160-48a5-9062-372595980654\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 244, '2022-04-06 03:32:28', '2022-04-06 03:32:28'),
(258, 'App\\Models\\Upload', 137, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"695f7835-d1d4-424d-b15b-a0ff8bdebde3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2022-04-06 03:32:49', '2022-04-06 03:32:49'),
(259, 'App\\Models\\Gallery', 9, 'image', 'Gleneagles-Global-Hospitals', 'Gleneagles-Global-Hospitals.jpg', 'image/jpeg', 'public', 82516, '[]', '{\"uuid\":\"695f7835-d1d4-424d-b15b-a0ff8bdebde3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2022-04-06 03:32:57', '2022-04-06 03:32:57'),
(260, 'App\\Models\\Upload', 138, 'image', 'logo', 'logo.jpg', 'image/jpeg', 'public', 37843, '[]', '{\"uuid\":\"b39db3e9-caa4-4061-8d1a-ff811879f383\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2022-04-06 03:33:51', '2022-04-06 03:33:51'),
(261, 'App\\Models\\Gallery', 13, 'image', 'logo', 'logo.jpg', 'image/jpeg', 'public', 37843, '[]', '{\"uuid\":\"b39db3e9-caa4-4061-8d1a-ff811879f383\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 248, '2022-04-06 03:33:54', '2022-04-06 03:33:54'),
(262, 'App\\Models\\Upload', 139, 'image', 'istockphoto-1191718778-612x612-thumb', 'istockphoto-1191718778-612x612-thumb.jpg', 'image/jpeg', 'public', 14423, '[]', '{\"uuid\":\"4ed7e78e-58f6-4bbd-8437-46e1e6b764bc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2022-04-06 03:36:07', '2022-04-06 03:36:07'),
(263, 'App\\Models\\Gallery', 1, 'image', 'istockphoto-1191718778-612x612-thumb', 'istockphoto-1191718778-612x612-thumb.jpg', 'image/jpeg', 'public', 14423, '[]', '{\"uuid\":\"4ed7e78e-58f6-4bbd-8437-46e1e6b764bc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2022-04-06 03:36:09', '2022-04-06 03:36:09'),
(264, 'App\\Models\\Upload', 140, 'image', 'istockphoto-1189777172-170667a', 'istockphoto-1189777172-170667a.jpg', 'image/jpeg', 'public', 60390, '[]', '{\"uuid\":\"1104beaf-7422-4fcd-a89f-e23d8edf4ea4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2022-04-06 03:47:24', '2022-04-06 03:47:24'),
(266, 'App\\Models\\Upload', 141, 'avatar', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 9677, '[]', '{\"uuid\":\"75fb27fa-b477-4cb3-8ef7-85a5fd49866e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2022-04-06 03:58:02', '2022-04-06 03:58:02'),
(267, 'App\\Models\\Upload', 142, 'avatar', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 9677, '[]', '{\"uuid\":\"f9a689fb-bfbc-41af-837e-45b763160d91\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2022-04-06 04:00:58', '2022-04-06 04:00:58'),
(268, 'App\\Models\\User', 2, 'avatar', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 9677, '[]', '{\"uuid\":\"f9a689fb-bfbc-41af-837e-45b763160d91\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 255, '2022-04-06 04:01:22', '2022-04-06 04:01:22'),
(269, 'App\\Models\\Upload', 143, 'avatar', 'Rohit_Saraf', 'Rohit_Saraf.jpg', 'image/jpeg', 'public', 555593, '[]', '{\"uuid\":\"f081e3a3-dfe8-4db3-92b7-51e53a8fb32b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2022-04-06 04:02:50', '2022-04-06 04:02:51'),
(270, 'App\\Models\\Upload', 144, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"16c2ce2c-7005-4caa-ae77-bbe70f8870d3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 257, '2022-04-06 08:49:03', '2022-04-06 08:49:04'),
(271, 'App\\Models\\Gallery', 3, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"16c2ce2c-7005-4caa-ae77-bbe70f8870d3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 258, '2022-04-06 08:49:05', '2022-04-06 08:49:05'),
(272, 'App\\Models\\Upload', 145, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"65b1f552-e078-41f9-b270-4358a28f5407\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 259, '2022-04-06 08:50:27', '2022-04-06 08:50:28'),
(273, 'App\\Models\\Gallery', 8, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"65b1f552-e078-41f9-b270-4358a28f5407\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2022-04-06 08:50:28', '2022-04-06 08:50:28'),
(274, 'App\\Models\\Upload', 146, 'image', 'qqq', 'qqq.jpg', 'image/jpeg', 'public', 18247, '[]', '{\"uuid\":\"8aa4ab48-536a-4bd5-baad-220472f12ddb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2022-04-06 08:58:02', '2022-04-06 08:58:03'),
(275, 'App\\Models\\Gallery', 14, 'image', 'qqq', 'qqq.jpg', 'image/jpeg', 'public', 18247, '[]', '{\"uuid\":\"8aa4ab48-536a-4bd5-baad-220472f12ddb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 262, '2022-04-06 08:58:09', '2022-04-06 08:58:09'),
(276, 'App\\Models\\Upload', 147, 'image', 'qqq', 'qqq.jpg', 'image/jpeg', 'public', 18247, '[]', '{\"uuid\":\"fa77ea06-1a43-43dd-ad5d-81ffe5ceed87\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2022-04-06 09:01:18', '2022-04-06 09:01:18'),
(277, 'App\\Models\\Gallery', 20, 'image', 'qqq', 'qqq.jpg', 'image/jpeg', 'public', 18247, '[]', '{\"uuid\":\"fa77ea06-1a43-43dd-ad5d-81ffe5ceed87\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2022-04-06 09:01:22', '2022-04-06 09:01:22'),
(278, 'App\\Models\\Upload', 148, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"38a5fdb3-e3c6-4cff-9a9d-007c53e1dd5c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2022-04-06 09:09:08', '2022-04-06 09:09:09'),
(279, 'App\\Models\\Gallery', 10, 'image', 'YashodaHospitals_23122020_1200', 'YashodaHospitals_23122020_1200.jpg', 'image/jpeg', 'public', 61587, '[]', '{\"uuid\":\"38a5fdb3-e3c6-4cff-9a9d-007c53e1dd5c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 266, '2022-04-06 09:09:11', '2022-04-06 09:09:11'),
(280, 'App\\Models\\Upload', 149, 'image', 'R', 'R.jpg', 'image/jpeg', 'public', 1960868, '[]', '{\"uuid\":\"ce405eef-50f4-4185-a825-75f3e0a5f3df\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2022-04-06 09:11:13', '2022-04-06 09:11:14'),
(281, 'App\\Models\\Upload', 150, 'image', 'kkk', 'kkk.jpg', 'image/jpeg', 'public', 21121, '[]', '{\"uuid\":\"f7d1c6f0-19f6-40db-b6c5-d4d8e4d519d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 268, '2022-04-06 09:15:14', '2022-04-06 09:15:14'),
(282, 'App\\Models\\Gallery', 11, 'image', 'kkk', 'kkk.jpg', 'image/jpeg', 'public', 21121, '[]', '{\"uuid\":\"f7d1c6f0-19f6-40db-b6c5-d4d8e4d519d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2022-04-06 09:15:19', '2022-04-06 09:15:19'),
(283, 'App\\Models\\Upload', 151, 'image', 'medicover', 'medicover.jpg', 'image/jpeg', 'public', 25774, '[]', '{\"uuid\":\"de8f6feb-ace7-40e1-b98b-02166c62f197\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 270, '2022-04-06 09:20:31', '2022-04-06 09:20:31'),
(284, 'App\\Models\\Gallery', 15, 'image', 'medicover', 'medicover.jpg', 'image/jpeg', 'public', 25774, '[]', '{\"uuid\":\"de8f6feb-ace7-40e1-b98b-02166c62f197\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 271, '2022-04-06 09:20:33', '2022-04-06 09:20:33'),
(285, 'App\\Models\\Upload', 152, 'image', 'hhh', 'hhh.jpg', 'image/jpeg', 'public', 11256, '[]', '{\"uuid\":\"252ba977-8aa3-4f99-bd18-020fa59a907c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 272, '2022-04-06 09:24:31', '2022-04-06 09:24:32'),
(286, 'App\\Models\\Gallery', 19, 'image', 'hhh', 'hhh.jpg', 'image/jpeg', 'public', 11256, '[]', '{\"uuid\":\"252ba977-8aa3-4f99-bd18-020fa59a907c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 273, '2022-04-06 09:24:35', '2022-04-06 09:24:35'),
(287, 'App\\Models\\Upload', 153, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"3a98dcd3-c2a8-4289-95f2-96626440716f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 274, '2022-04-06 09:42:49', '2022-04-06 09:42:49'),
(288, 'App\\Models\\Gallery', 16, 'image', 'OIP (1)', 'OIP-(1).jpg', 'image/jpeg', 'public', 9102, '[]', '{\"uuid\":\"3a98dcd3-c2a8-4289-95f2-96626440716f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 275, '2022-04-06 09:42:57', '2022-04-06 09:42:57'),
(289, 'App\\Models\\Upload', 154, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 101499, '[]', '{\"uuid\":\"e7e30469-b0a1-447a-984a-8c2640680397\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2022-04-06 09:53:02', '2022-04-06 09:53:03'),
(290, 'App\\Models\\Upload', 155, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 101499, '[]', '{\"uuid\":\"9592be3b-f1fe-48f7-acb5-18c72702c855\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2022-04-06 09:53:35', '2022-04-06 09:53:35'),
(291, 'App\\Models\\EProvider', 30, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 101499, '[]', '{\"uuid\":\"9592be3b-f1fe-48f7-acb5-18c72702c855\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2022-04-06 09:53:40', '2022-04-06 09:53:40'),
(292, 'App\\Models\\Upload', 156, 'image', '1-Continental-Hospitals-Hyderabad.jpg', '1-Continental-Hospitals-Hyderabad.jpg.crdownload', 'image/jpeg', 'public', 59298, '[]', '{\"uuid\":\"a3a9178c-702a-41f2-9a63-ac9a20214a31\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2022-04-06 09:56:30', '2022-04-06 09:56:30'),
(293, 'App\\Models\\Upload', 157, 'image', 'dc-Cover-bsnudco08r3igtj44duecnr7m4-20170913015336.Medi', 'dc-Cover-bsnudco08r3igtj44duecnr7m4-20170913015336.Medi.jpeg', 'image/jpeg', 'public', 40865, '[]', '{\"uuid\":\"c554f27c-0593-437c-a958-f42585978412\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2022-04-06 09:58:07', '2022-04-06 09:58:07'),
(294, 'App\\Models\\EProvider', 31, 'image', 'dc-Cover-bsnudco08r3igtj44duecnr7m4-20170913015336.Medi', 'dc-Cover-bsnudco08r3igtj44duecnr7m4-20170913015336.Medi.jpeg', 'image/jpeg', 'public', 40865, '[]', '{\"uuid\":\"c554f27c-0593-437c-a958-f42585978412\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2022-04-06 09:59:37', '2022-04-06 09:59:37'),
(295, 'App\\Models\\Upload', 158, 'image', 'ggg', 'ggg.jpg', 'image/jpeg', 'public', 17933, '[]', '{\"uuid\":\"716ac807-113f-485f-90f2-4240ab65c7a1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2022-04-06 10:26:13', '2022-04-06 10:26:13'),
(296, 'App\\Models\\EProvider', 5, 'image', 'ggg', 'ggg.jpg', 'image/jpeg', 'public', 17933, '[]', '{\"uuid\":\"716ac807-113f-485f-90f2-4240ab65c7a1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 283, '2022-04-06 10:26:25', '2022-04-06 10:26:25'),
(297, 'App\\Models\\Upload', 159, 'image', 'nnn', 'nnn.jpg', 'image/jpeg', 'public', 16851, '[]', '{\"uuid\":\"62acfc0a-1e23-4435-bc74-31c2d4023560\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 284, '2022-04-06 10:32:32', '2022-04-06 10:32:32'),
(298, 'App\\Models\\EProvider', 7, 'image', 'nnn', 'nnn.jpg', 'image/jpeg', 'public', 16851, '[]', '{\"uuid\":\"62acfc0a-1e23-4435-bc74-31c2d4023560\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 285, '2022-04-06 10:32:46', '2022-04-06 10:32:46'),
(299, 'App\\Models\\Upload', 160, 'image', 'ccc', 'ccc.jpg', 'image/jpeg', 'public', 18352, '[]', '{\"uuid\":\"6d8ac7e4-a1b6-4b27-848e-5a27a43528d7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 286, '2022-04-06 10:52:45', '2022-04-06 10:52:45'),
(300, 'App\\Models\\EProvider', 6, 'image', 'ccc', 'ccc.jpg', 'image/jpeg', 'public', 18352, '[]', '{\"uuid\":\"6d8ac7e4-a1b6-4b27-848e-5a27a43528d7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 287, '2022-04-06 10:53:28', '2022-04-06 10:53:28'),
(301, 'App\\Models\\Upload', 161, 'avatar', 's1', 's1.jpg', 'image/jpeg', 'public', 8344, '[]', '{\"uuid\":\"df043d85-58f1-4ad1-9bf3-9a71db766ecc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 288, '2022-04-07 02:45:16', '2022-04-07 02:45:17'),
(302, 'App\\Models\\User', 5, 'avatar', 's1', 's1.jpg', 'image/jpeg', 'public', 8344, '[]', '{\"uuid\":\"df043d85-58f1-4ad1-9bf3-9a71db766ecc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 289, '2022-04-07 02:45:25', '2022-04-07 02:45:25'),
(303, 'App\\Models\\Upload', 162, 'avatar', 's2', 's2.jpg', 'image/jpeg', 'public', 5904, '[]', '{\"uuid\":\"6197f1da-5bc2-4c27-a537-365c9dcd4aa5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 290, '2022-04-07 02:46:53', '2022-04-07 02:46:53'),
(304, 'App\\Models\\User', 14, 'avatar', 's2', 's2.jpg', 'image/jpeg', 'public', 5904, '[]', '{\"uuid\":\"6197f1da-5bc2-4c27-a537-365c9dcd4aa5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 291, '2022-04-07 02:47:08', '2022-04-07 02:47:08'),
(305, 'App\\Models\\Upload', 163, 'avatar', 'a1', 'a1.jpg', 'image/jpeg', 'public', 7204, '[]', '{\"uuid\":\"c50a750a-83b6-483c-b550-cc883ddc8806\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 292, '2022-04-07 02:49:14', '2022-04-07 02:49:14'),
(306, 'App\\Models\\User', 4, 'avatar', 'a1', 'a1.jpg', 'image/jpeg', 'public', 7204, '[]', '{\"uuid\":\"c50a750a-83b6-483c-b550-cc883ddc8806\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 293, '2022-04-07 02:49:22', '2022-04-07 02:49:22'),
(307, 'App\\Models\\Upload', 164, 'avatar', 'a2', 'a2.jpg', 'image/jpeg', 'public', 4943, '[]', '{\"uuid\":\"03d66d41-1e47-49c0-bf9e-1013393ace6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 294, '2022-04-07 02:55:35', '2022-04-07 02:55:35'),
(308, 'App\\Models\\User', 9, 'avatar', 'a2', 'a2.jpg', 'image/jpeg', 'public', 4943, '[]', '{\"uuid\":\"03d66d41-1e47-49c0-bf9e-1013393ace6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 295, '2022-04-07 02:55:47', '2022-04-07 02:55:47'),
(309, 'App\\Models\\Upload', 165, 'avatar', 's4', 's4.jpg', 'image/jpeg', 'public', 7630, '[]', '{\"uuid\":\"63c13875-057f-4ac4-87b8-d5e3a10e40b7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 296, '2022-04-07 03:00:30', '2022-04-07 03:00:30'),
(310, 'App\\Models\\User', 7, 'avatar', 's4', 's4.jpg', 'image/jpeg', 'public', 7630, '[]', '{\"uuid\":\"63c13875-057f-4ac4-87b8-d5e3a10e40b7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 297, '2022-04-07 03:00:32', '2022-04-07 03:00:32'),
(311, 'App\\Models\\Upload', 166, 'avatar', 'a3', 'a3.jpg', 'image/jpeg', 'public', 4025, '[]', '{\"uuid\":\"fd61cd8f-0170-49db-aa1b-530d76a8aa64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 298, '2022-04-07 03:03:13', '2022-04-07 03:03:14'),
(312, 'App\\Models\\User', 8, 'avatar', 'a3', 'a3.jpg', 'image/jpeg', 'public', 4025, '[]', '{\"uuid\":\"fd61cd8f-0170-49db-aa1b-530d76a8aa64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 299, '2022-04-07 03:03:32', '2022-04-07 03:03:32'),
(313, 'App\\Models\\Upload', 167, 'image', 'rnfa', 'rnfa.jpg', 'image/jpeg', 'public', 29436, '[]', '{\"uuid\":\"a83c5b74-a4de-4117-a80c-0f07482193ff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 300, '2022-04-07 03:36:18', '2022-04-07 03:36:18'),
(315, 'App\\Models\\Upload', 168, 'image', 'ded', 'ded.jpg', 'image/jpeg', 'public', 8901, '[]', '{\"uuid\":\"3e56135a-fd48-432f-95ad-f3977cc4a246\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 302, '2022-04-07 04:04:11', '2022-04-07 04:04:11'),
(316, 'App\\Models\\EProvider', 13, 'image', 'ded', 'ded.jpg', 'image/jpeg', 'public', 8901, '[]', '{\"uuid\":\"3e56135a-fd48-432f-95ad-f3977cc4a246\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 303, '2022-04-07 04:04:17', '2022-04-07 04:04:17'),
(317, 'App\\Models\\Upload', 169, 'image', 'aqa', 'aqa.jpg', 'image/jpeg', 'public', 9554, '[]', '{\"uuid\":\"3da6952f-d68c-45cc-9ec6-e94961706f76\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 304, '2022-04-07 04:04:49', '2022-04-07 04:04:49'),
(318, 'App\\Models\\EProvider', 14, 'image', 'aqa', 'aqa.jpg', 'image/jpeg', 'public', 9554, '[]', '{\"uuid\":\"3da6952f-d68c-45cc-9ec6-e94961706f76\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 305, '2022-04-07 04:04:56', '2022-04-07 04:04:56'),
(319, 'App\\Models\\Upload', 170, 'image', 'aaa', 'aaa.jpg', 'image/jpeg', 'public', 11069, '[]', '{\"uuid\":\"8c794cfa-eb5f-4c79-8d33-92e441535935\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 306, '2022-04-07 04:05:28', '2022-04-07 04:05:28'),
(320, 'App\\Models\\Upload', 171, 'image', 'aaa', 'aaa.jpg', 'image/jpeg', 'public', 11069, '[]', '{\"uuid\":\"6881f1c4-33d0-4656-b73f-d365ed69816e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 307, '2022-04-07 04:08:12', '2022-04-07 04:08:12'),
(321, 'App\\Models\\EProvider', 15, 'image', 'aaa', 'aaa.jpg', 'image/jpeg', 'public', 11069, '[]', '{\"uuid\":\"6881f1c4-33d0-4656-b73f-d365ed69816e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 308, '2022-04-07 04:09:06', '2022-04-07 04:09:06'),
(322, 'App\\Models\\Upload', 172, 'image', 'jjj', 'jjj.jpg', 'image/jpeg', 'public', 9544, '[]', '{\"uuid\":\"57b49645-d6ca-4c35-9b4f-0f09490e2638\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 309, '2022-04-07 04:09:41', '2022-04-07 04:09:41'),
(323, 'App\\Models\\EProvider', 16, 'image', 'jjj', 'jjj.jpg', 'image/jpeg', 'public', 9544, '[]', '{\"uuid\":\"57b49645-d6ca-4c35-9b4f-0f09490e2638\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 310, '2022-04-07 04:10:45', '2022-04-07 04:10:45'),
(324, 'App\\Models\\Upload', 173, 'image', 'ded', 'ded.jpg', 'image/jpeg', 'public', 8901, '[]', '{\"uuid\":\"68d6dbc7-b192-4258-9c70-94d0b85c8892\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 311, '2022-04-07 04:44:47', '2022-04-07 04:44:47'),
(325, 'App\\Models\\EProvider', 2, 'image', 'ded', 'ded.jpg', 'image/jpeg', 'public', 8901, '[]', '{\"uuid\":\"68d6dbc7-b192-4258-9c70-94d0b85c8892\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 312, '2022-04-07 04:44:53', '2022-04-07 04:44:53'),
(326, 'App\\Models\\Upload', 174, 'image', 'aaa', 'aaa.jpg', 'image/jpeg', 'public', 11069, '[]', '{\"uuid\":\"102ea2d5-7c97-4749-9261-4f334c6a334b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 313, '2022-04-07 04:46:48', '2022-04-07 04:46:48'),
(327, 'App\\Models\\EProvider', 4, 'image', 'aaa', 'aaa.jpg', 'image/jpeg', 'public', 11069, '[]', '{\"uuid\":\"102ea2d5-7c97-4749-9261-4f334c6a334b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 314, '2022-04-07 04:47:35', '2022-04-07 04:47:35'),
(328, 'App\\Models\\Upload', 175, 'image', 'asas', 'asas.jpg', 'image/jpeg', 'public', 11588, '[]', '{\"uuid\":\"284e3049-c209-4b60-b78d-97ba0f9f9e99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 315, '2022-04-07 04:48:58', '2022-04-07 04:48:58'),
(329, 'App\\Models\\EProvider', 9, 'image', 'asas', 'asas.jpg', 'image/jpeg', 'public', 11588, '[]', '{\"uuid\":\"284e3049-c209-4b60-b78d-97ba0f9f9e99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 316, '2022-04-07 04:49:28', '2022-04-07 04:49:28'),
(330, 'App\\Models\\Upload', 176, 'image', 'vvv', 'vvv.jpg', 'image/jpeg', 'public', 8079, '[]', '{\"uuid\":\"a0118148-f487-4ee2-97f0-c26ca2b9a5a4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 317, '2022-04-07 04:52:01', '2022-04-07 04:52:01'),
(331, 'App\\Models\\EProvider', 12, 'image', 'vvv', 'vvv.jpg', 'image/jpeg', 'public', 8079, '[]', '{\"uuid\":\"a0118148-f487-4ee2-97f0-c26ca2b9a5a4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 318, '2022-04-07 04:52:10', '2022-04-07 04:52:10'),
(332, 'App\\Models\\Upload', 177, 'image', 'sws', 'sws.jpg', 'image/jpeg', 'public', 9064, '[]', '{\"uuid\":\"41c1a6e9-efbd-4ef8-823d-e74d45e5a5c2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 319, '2022-04-07 04:52:39', '2022-04-07 04:52:39'),
(333, 'App\\Models\\EProvider', 11, 'image', 'sws', 'sws.jpg', 'image/jpeg', 'public', 9064, '[]', '{\"uuid\":\"41c1a6e9-efbd-4ef8-823d-e74d45e5a5c2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 320, '2022-04-07 04:52:51', '2022-04-07 04:52:51'),
(334, 'App\\Models\\Upload', 178, 'image', 'sss', 'sss.jpg', 'image/jpeg', 'public', 10429, '[]', '{\"uuid\":\"c4bfb341-17fa-4ca1-b129-ed547e567232\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 321, '2022-04-07 04:53:19', '2022-04-07 04:53:19'),
(335, 'App\\Models\\EProvider', 10, 'image', 'sss', 'sss.jpg', 'image/jpeg', 'public', 10429, '[]', '{\"uuid\":\"c4bfb341-17fa-4ca1-b129-ed547e567232\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 322, '2022-04-07 04:53:25', '2022-04-07 04:53:25'),
(336, 'App\\Models\\Upload', 179, 'avatar', 'aza', 'aza.jpg', 'image/jpeg', 'public', 8512, '[]', '{\"uuid\":\"8c5cf9d0-e56a-4b1f-900c-f69029746629\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 323, '2022-04-07 05:45:53', '2022-04-07 05:45:53'),
(337, 'App\\Models\\User', 10, 'avatar', 'aza', 'aza.jpg', 'image/jpeg', 'public', 8512, '[]', '{\"uuid\":\"8c5cf9d0-e56a-4b1f-900c-f69029746629\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 324, '2022-04-07 05:46:13', '2022-04-07 05:46:13'),
(338, 'App\\Models\\Upload', 180, 'image', '1212', '1212.jpg', 'image/jpeg', 'public', 12979, '[]', '{\"uuid\":\"8647228c-e61c-4b08-8e21-bdc7d2d44c90\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 325, '2022-04-07 10:10:36', '2022-04-07 10:10:36'),
(339, 'App\\Models\\Option', 25, 'image', '1212', '1212.jpg', 'image/jpeg', 'public', 12979, '[]', '{\"uuid\":\"8647228c-e61c-4b08-8e21-bdc7d2d44c90\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 326, '2022-04-07 10:10:39', '2022-04-07 10:10:39'),
(340, 'App\\Models\\Upload', 181, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"6ac9e790-ec2e-4e5b-952f-c6ae2085d773\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 327, '2022-04-07 10:11:16', '2022-04-07 10:11:16'),
(341, 'App\\Models\\Option', 34, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"6ac9e790-ec2e-4e5b-952f-c6ae2085d773\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 328, '2022-04-07 10:11:23', '2022-04-07 10:11:23'),
(342, 'App\\Models\\Upload', 182, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"2fd5f59d-37ec-471c-bdd0-e40d0dd3417b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 329, '2022-04-07 10:12:12', '2022-04-07 10:12:12'),
(343, 'App\\Models\\Option', 55, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"2fd5f59d-37ec-471c-bdd0-e40d0dd3417b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 330, '2022-04-07 10:12:22', '2022-04-07 10:12:22'),
(344, 'App\\Models\\Upload', 183, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"35e29379-444a-450e-9806-1acba0ee9aa5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 331, '2022-04-07 10:12:45', '2022-04-07 10:12:45'),
(345, 'App\\Models\\Option', 74, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"35e29379-444a-450e-9806-1acba0ee9aa5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 332, '2022-04-07 10:12:53', '2022-04-07 10:12:53'),
(346, 'App\\Models\\Upload', 184, 'image', '3333', '3333.jpg', 'image/jpeg', 'public', 10344, '[]', '{\"uuid\":\"5a0c66ba-3928-4608-88bf-59603ab4d6bf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 333, '2022-04-07 10:14:05', '2022-04-07 10:14:05'),
(347, 'App\\Models\\Option', 52, 'image', '3333', '3333.jpg', 'image/jpeg', 'public', 10344, '[]', '{\"uuid\":\"5a0c66ba-3928-4608-88bf-59603ab4d6bf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 334, '2022-04-07 10:14:09', '2022-04-07 10:14:09'),
(348, 'App\\Models\\Upload', 185, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"a5e47633-eb23-4e79-828b-e20a8f37a068\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 335, '2022-04-07 10:14:31', '2022-04-07 10:14:32'),
(349, 'App\\Models\\Option', 49, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"a5e47633-eb23-4e79-828b-e20a8f37a068\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 336, '2022-04-07 10:14:36', '2022-04-07 10:14:36'),
(350, 'App\\Models\\Upload', 186, 'image', '9999', '9999.jpg', 'image/jpeg', 'public', 11353, '[]', '{\"uuid\":\"318314ac-3b82-48dc-8b40-de534ec16792\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 337, '2022-04-07 10:15:01', '2022-04-07 10:15:02'),
(351, 'App\\Models\\Option', 26, 'image', '9999', '9999.jpg', 'image/jpeg', 'public', 11353, '[]', '{\"uuid\":\"318314ac-3b82-48dc-8b40-de534ec16792\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 338, '2022-04-07 10:15:07', '2022-04-07 10:15:07'),
(352, 'App\\Models\\Upload', 187, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"c781cd9c-b79f-4ca7-99bf-e5801add22b7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 339, '2022-04-07 10:15:32', '2022-04-07 10:15:32'),
(353, 'App\\Models\\Option', 24, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"c781cd9c-b79f-4ca7-99bf-e5801add22b7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 340, '2022-04-07 10:15:37', '2022-04-07 10:15:37'),
(354, 'App\\Models\\Upload', 188, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"25d074b3-08c5-45b4-81c3-dbc326f9444c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 341, '2022-04-07 10:16:22', '2022-04-07 10:16:22'),
(355, 'App\\Models\\Option', 18, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"25d074b3-08c5-45b4-81c3-dbc326f9444c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 342, '2022-04-07 10:16:29', '2022-04-07 10:16:29'),
(356, 'App\\Models\\Upload', 189, 'image', '1111', '1111.jpg', 'image/jpeg', 'public', 7767, '[]', '{\"uuid\":\"e0c93e92-0f7c-4de6-9e55-9db22bd16411\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 343, '2022-04-07 10:16:50', '2022-04-07 10:16:50'),
(357, 'App\\Models\\Upload', 190, 'image', '1111', '1111.jpg', 'image/jpeg', 'public', 7767, '[]', '{\"uuid\":\"304e93bd-a962-47e3-adf3-7597ec5f02a5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 344, '2022-04-07 10:17:14', '2022-04-07 10:17:15'),
(358, 'App\\Models\\Option', 95, 'image', '1111', '1111.jpg', 'image/jpeg', 'public', 7767, '[]', '{\"uuid\":\"304e93bd-a962-47e3-adf3-7597ec5f02a5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 345, '2022-04-07 10:17:20', '2022-04-07 10:17:20'),
(359, 'App\\Models\\Upload', 191, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"8e736356-78e2-4acb-a940-2375b7e9b808\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 346, '2022-04-07 10:17:50', '2022-04-07 10:17:50'),
(360, 'App\\Models\\Option', 69, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"8e736356-78e2-4acb-a940-2375b7e9b808\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 347, '2022-04-07 10:17:55', '2022-04-07 10:17:55'),
(361, 'App\\Models\\Upload', 192, 'image', '9999', '9999.jpg', 'image/jpeg', 'public', 11353, '[]', '{\"uuid\":\"cffee14d-eb79-4479-a167-5b8f364e8352\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 348, '2022-04-07 10:18:36', '2022-04-07 10:18:37'),
(362, 'App\\Models\\Option', 46, 'image', '9999', '9999.jpg', 'image/jpeg', 'public', 11353, '[]', '{\"uuid\":\"cffee14d-eb79-4479-a167-5b8f364e8352\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 349, '2022-04-07 10:18:44', '2022-04-07 10:18:44'),
(363, 'App\\Models\\Upload', 193, 'image', '4444', '4444.jpg', 'image/jpeg', 'public', 14084, '[]', '{\"uuid\":\"a96fd235-4c31-4d24-87d2-89c0da7d2a70\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 350, '2022-04-07 10:19:10', '2022-04-07 10:19:10'),
(364, 'App\\Models\\Option', 14, 'image', '4444', '4444.jpg', 'image/jpeg', 'public', 14084, '[]', '{\"uuid\":\"a96fd235-4c31-4d24-87d2-89c0da7d2a70\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 351, '2022-04-07 10:19:13', '2022-04-07 10:19:13'),
(365, 'App\\Models\\Upload', 194, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"de8876f2-5dca-4fde-a2c8-768a8da605f0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 352, '2022-04-07 10:19:33', '2022-04-07 10:19:33'),
(366, 'App\\Models\\Option', 6, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"de8876f2-5dca-4fde-a2c8-768a8da605f0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 353, '2022-04-07 10:19:38', '2022-04-07 10:19:38'),
(367, 'App\\Models\\Upload', 195, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"b954437c-fd3c-4794-98b5-2a7837abd8ab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 354, '2022-04-07 10:20:27', '2022-04-07 10:20:27'),
(368, 'App\\Models\\Option', 3, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"b954437c-fd3c-4794-98b5-2a7837abd8ab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 355, '2022-04-07 10:20:31', '2022-04-07 10:20:31'),
(369, 'App\\Models\\Upload', 196, 'image', '1111', '1111.jpg', 'image/jpeg', 'public', 7767, '[]', '{\"uuid\":\"1fc96209-15f9-4349-9dc3-4b161042d14f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 356, '2022-04-07 10:21:24', '2022-04-07 10:21:25'),
(370, 'App\\Models\\Option', 88, 'image', '1111', '1111.jpg', 'image/jpeg', 'public', 7767, '[]', '{\"uuid\":\"1fc96209-15f9-4349-9dc3-4b161042d14f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 357, '2022-04-07 10:21:29', '2022-04-07 10:21:29'),
(371, 'App\\Models\\Upload', 197, 'image', '6666', '6666.jpg', 'image/jpeg', 'public', 8304, '[]', '{\"uuid\":\"e1c9e1f8-c979-4cea-b441-294e430dffdb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 358, '2022-04-07 10:21:57', '2022-04-07 10:21:57'),
(372, 'App\\Models\\Option', 87, 'image', '6666', '6666.jpg', 'image/jpeg', 'public', 8304, '[]', '{\"uuid\":\"e1c9e1f8-c979-4cea-b441-294e430dffdb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 359, '2022-04-07 10:22:01', '2022-04-07 10:22:01'),
(373, 'App\\Models\\Upload', 198, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"25ddf5f8-23fe-4f84-9c62-f345b175b220\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 360, '2022-04-07 10:22:26', '2022-04-07 10:22:26'),
(374, 'App\\Models\\Option', 72, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"25ddf5f8-23fe-4f84-9c62-f345b175b220\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 361, '2022-04-07 10:22:30', '2022-04-07 10:22:30'),
(375, 'App\\Models\\Upload', 199, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"e3d2f355-08c7-4d5b-b3be-961f4fbb7fab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 362, '2022-04-07 10:22:48', '2022-04-07 10:22:48'),
(376, 'App\\Models\\Option', 36, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"e3d2f355-08c7-4d5b-b3be-961f4fbb7fab\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 363, '2022-04-07 10:22:52', '2022-04-07 10:22:52'),
(377, 'App\\Models\\Upload', 200, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"8e34cd6f-552b-4c02-af03-9e05c8e9dee6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 364, '2022-04-07 10:23:27', '2022-04-07 10:23:27'),
(378, 'App\\Models\\Option', 33, 'image', '5555', '5555.jpg', 'image/jpeg', 'public', 10208, '[]', '{\"uuid\":\"8e34cd6f-552b-4c02-af03-9e05c8e9dee6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 365, '2022-04-07 10:23:47', '2022-04-07 10:23:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(379, 'App\\Models\\Upload', 201, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"7110b345-0491-4e8f-b1da-980a6fdc3d97\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 366, '2022-04-07 10:24:18', '2022-04-07 10:24:18'),
(380, 'App\\Models\\Option', 10, 'image', '2222', '2222.jpg', 'image/jpeg', 'public', 8802, '[]', '{\"uuid\":\"7110b345-0491-4e8f-b1da-980a6fdc3d97\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 367, '2022-04-07 10:24:25', '2022-04-07 10:24:25'),
(381, 'App\\Models\\Upload', 202, 'image', '7777', '7777.jpg', 'image/jpeg', 'public', 18674, '[]', '{\"uuid\":\"4c96f9d2-ac37-4ea5-9faf-997f57e5d8a9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 368, '2022-04-07 10:26:24', '2022-04-07 10:26:24'),
(382, 'App\\Models\\Option', 5, 'image', '7777', '7777.jpg', 'image/jpeg', 'public', 18674, '[]', '{\"uuid\":\"4c96f9d2-ac37-4ea5-9faf-997f57e5d8a9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 369, '2022-04-07 10:26:27', '2022-04-07 10:26:27'),
(383, 'App\\Models\\Upload', 203, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"62500818-0572-499b-8900-21d5665be949\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 370, '2022-04-07 10:26:47', '2022-04-07 10:26:47'),
(384, 'App\\Models\\Option', 4, 'image', '8888', '8888.jpg', 'image/jpeg', 'public', 11885, '[]', '{\"uuid\":\"62500818-0572-499b-8900-21d5665be949\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 371, '2022-04-07 10:26:52', '2022-04-07 10:26:52'),
(385, 'App\\Models\\Upload', 204, 'image', '7777', '7777.jpg', 'image/jpeg', 'public', 18674, '[]', '{\"uuid\":\"f611ff00-35c5-43c6-aa14-3b97f2aff9ce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 372, '2022-04-07 10:27:22', '2022-04-07 10:27:23'),
(386, 'App\\Models\\Option', 2, 'image', '7777', '7777.jpg', 'image/jpeg', 'public', 18674, '[]', '{\"uuid\":\"f611ff00-35c5-43c6-aa14-3b97f2aff9ce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 373, '2022-04-07 10:27:28', '2022-04-07 10:27:28'),
(387, 'App\\Models\\Upload', 205, 'image', 'GettyImages-487195922-cbf5950202f740a592ed82b4f0f6c931', 'GettyImages-487195922-cbf5950202f740a592ed82b4f0f6c931.jpg', 'image/jpeg', 'public', 233817, '[]', '{\"uuid\":\"2bee2e65-4d32-4878-90ab-a80748b51316\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 374, '2022-04-08 03:59:38', '2022-04-08 03:59:38'),
(388, 'App\\Models\\Upload', 206, 'image', 'GettyImages-487195922-cbf5950202f740a592ed82b4f0f6c931', 'GettyImages-487195922-cbf5950202f740a592ed82b4f0f6c931.jpg', 'image/jpeg', 'public', 233817, '[]', '{\"uuid\":\"d6185577-2cf0-4cf6-b654-78d0acc893ec\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 375, '2022-04-08 04:01:10', '2022-04-08 04:01:11'),
(390, 'App\\Models\\Upload', 207, 'image', 'download (2)', 'download-(2).jpg', 'image/jpeg', 'public', 6632, '[]', '{\"uuid\":\"81d8d7f6-f051-4cae-8ed0-c2b0cdebfcc7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 377, '2022-04-08 04:02:59', '2022-04-08 04:02:59'),
(392, 'App\\Models\\Upload', 208, 'image', 'download (3)', 'download-(3).jpg', 'image/jpeg', 'public', 5157, '[]', '{\"uuid\":\"cdd111cd-5b5f-4aef-b984-c3734032772c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 379, '2022-04-08 04:04:43', '2022-04-08 04:04:43'),
(394, 'App\\Models\\Upload', 209, 'image', 'download (4)', 'download-(4).jpg', 'image/jpeg', 'public', 5732, '[]', '{\"uuid\":\"d7066b73-05f4-436b-b843-5efb15bb1212\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 381, '2022-04-08 04:06:16', '2022-04-08 04:06:16'),
(395, 'App\\Models\\Category', 16, 'image', 'download (4)', 'download-(4).jpg', 'image/jpeg', 'public', 5732, '[]', '{\"uuid\":\"d7066b73-05f4-436b-b843-5efb15bb1212\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 382, '2022-04-08 04:06:39', '2022-04-08 04:06:39'),
(396, 'App\\Models\\Upload', 210, 'image', 'dermatology-sassoon', 'dermatology-sassoon.jpg', 'image/jpeg', 'public', 33477, '[]', '{\"uuid\":\"5a6a2c5d-619c-4368-91f0-27bc5d03601d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 383, '2022-04-08 04:08:02', '2022-04-08 04:08:03'),
(398, 'App\\Models\\Upload', 211, 'image', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine.jpg', 'image/jpeg', 'public', 143810, '[]', '{\"uuid\":\"990b8d1a-b082-4d6c-afa1-ae4985231714\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 385, '2022-04-08 04:09:19', '2022-04-08 04:09:19'),
(399, 'App\\Models\\Upload', 212, 'image', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine.jpg', 'image/jpeg', 'public', 143810, '[]', '{\"uuid\":\"c334beaa-c158-486c-a324-0eba0e8ffc35\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 386, '2022-04-08 04:10:21', '2022-04-08 04:10:22'),
(401, 'App\\Models\\Upload', 213, 'image', '5e0a8787a0b208a9e42144ef_Endocrinology.jpeg', '5e0a8787a0b208a9e42144ef_Endocrinology.jpeg.png', 'image/png', 'public', 436205, '[]', '{\"uuid\":\"f2c07c27-cabe-4ef6-8247-6b35f1ed1e86\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 388, '2022-04-08 04:12:47', '2022-04-08 04:12:47'),
(403, 'App\\Models\\Upload', 214, 'image', 'dreamstime_xxl_107997601', 'dreamstime_xxl_107997601.jpg', 'image/jpeg', 'public', 257095, '[]', '{\"uuid\":\"0ed68c9c-b0d6-4bcf-ba12-503463150a0a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 390, '2022-04-08 04:14:27', '2022-04-08 04:14:27'),
(405, 'App\\Models\\Upload', 215, 'image', 'GettyImages-845814134-29d89f4', 'GettyImages-845814134-29d89f4.jpg', 'image/jpeg', 'public', 167161, '[]', '{\"uuid\":\"d243d752-efc4-4150-9e77-bf9da96e87de\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 392, '2022-04-08 04:16:04', '2022-04-08 04:16:04'),
(407, 'App\\Models\\Upload', 216, 'image', 'download (5)', 'download-(5).jpg', 'image/jpeg', 'public', 7638, '[]', '{\"uuid\":\"a84e8cf5-25e4-43cc-93ca-c55bccc652c7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 394, '2022-04-08 04:17:43', '2022-04-08 04:17:43'),
(408, 'App\\Models\\Upload', 217, 'image', 'iStock-810206880', 'iStock-810206880.jpg', 'image/jpeg', 'public', 528859, '[]', '{\"uuid\":\"80ff50ab-f28e-4e4a-b485-8572130da66c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 395, '2022-04-08 08:20:22', '2022-04-08 08:20:23'),
(409, 'App\\Models\\EService', 32, 'image', 'iStock-810206880', 'iStock-810206880.jpg', 'image/jpeg', 'public', 528859, '[]', '{\"uuid\":\"80ff50ab-f28e-4e4a-b485-8572130da66c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 396, '2022-04-08 08:20:25', '2022-04-08 08:20:25'),
(410, 'App\\Models\\Upload', 218, 'image', 'dreamstime-xxl-101510790-1-5cfec19c9da70-1200x628', 'dreamstime-xxl-101510790-1-5cfec19c9da70-1200x628.jpg', 'image/jpeg', 'public', 100264, '[]', '{\"uuid\":\"d263779d-41ea-44ae-85ce-a90ae28562f4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 397, '2022-04-08 08:21:51', '2022-04-08 08:21:51'),
(411, 'App\\Models\\EService', 33, 'image', 'dreamstime-xxl-101510790-1-5cfec19c9da70-1200x628', 'dreamstime-xxl-101510790-1-5cfec19c9da70-1200x628.jpg', 'image/jpeg', 'public', 100264, '[]', '{\"uuid\":\"d263779d-41ea-44ae-85ce-a90ae28562f4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 398, '2022-04-08 08:25:38', '2022-04-08 08:25:38'),
(412, 'App\\Models\\Upload', 219, 'image', 'dental_laboratory_technician', 'dental_laboratory_technician.jpg', 'image/jpeg', 'public', 115795, '[]', '{\"uuid\":\"22a148b8-bebd-4bcd-ab50-321e463461c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 399, '2022-04-08 08:35:17', '2022-04-08 08:35:17'),
(413, 'App\\Models\\Upload', 220, 'image', 'dental_laboratory_technician', 'dental_laboratory_technician.jpg', 'image/jpeg', 'public', 115795, '[]', '{\"uuid\":\"5e5ab10e-db42-425a-8e24-f218cf63fe6d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 400, '2022-04-08 08:36:40', '2022-04-08 08:36:40'),
(414, 'App\\Models\\Upload', 221, 'image', 'dental-technician-56a0f06f3df78cafdaa696ad', 'dental-technician-56a0f06f3df78cafdaa696ad.jpg', 'image/jpeg', 'public', 151874, '[]', '{\"uuid\":\"679fe8fe-9d1f-4590-9100-d7fd01b2809b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 401, '2022-04-08 08:37:14', '2022-04-08 08:37:14'),
(415, 'App\\Models\\EService', 34, 'image', 'dental-technician-56a0f06f3df78cafdaa696ad', 'dental-technician-56a0f06f3df78cafdaa696ad.jpg', 'image/jpeg', 'public', 151874, '[]', '{\"uuid\":\"679fe8fe-9d1f-4590-9100-d7fd01b2809b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 402, '2022-04-08 08:37:37', '2022-04-08 08:37:37'),
(416, 'App\\Models\\Upload', 222, 'image', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine (1)', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine-(1).jpg', 'image/jpeg', 'public', 143810, '[]', '{\"uuid\":\"6d730989-f601-4031-a343-d2e16f5128ff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 403, '2022-04-08 08:39:57', '2022-04-08 08:39:58'),
(417, 'App\\Models\\Category', 22, 'image', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine (1)', 'Drupal-NEWS_Five-challenges-facing-emergency-medicine-(1).jpg', 'image/jpeg', 'public', 143810, '[]', '{\"uuid\":\"6d730989-f601-4031-a343-d2e16f5128ff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 404, '2022-04-08 08:42:41', '2022-04-08 08:42:41'),
(418, 'App\\Models\\Upload', 223, 'avatar', 'smiley-pregnant-woman-holding-clipboard-pointing-up-with-copy-space', 'smiley-pregnant-woman-holding-clipboard-pointing-up-with-copy-space.jpg', 'image/jpeg', 'public', 1228116, '[]', '{\"uuid\":\"bd942153-89cc-4431-a923-b6bb7d80675c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 405, '2022-05-19 07:13:36', '2022-05-19 07:13:41'),
(419, 'App\\Models\\User', 1, 'avatar', 'smiley-pregnant-woman-holding-clipboard-pointing-up-with-copy-space', 'smiley-pregnant-woman-holding-clipboard-pointing-up-with-copy-space.jpg', 'image/jpeg', 'public', 1228116, '[]', '{\"uuid\":\"bd942153-89cc-4431-a923-b6bb7d80675c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 406, '2022-05-19 07:13:38', '2022-05-19 07:13:42'),
(420, 'App\\Models\\Upload', 224, 'image', 'banner-03', 'banner-03.jpg', 'image/jpeg', 'public', 1547058, '[]', '{\"uuid\":\"e4cbfd33-655f-4b7a-bcc6-05b4cd46dbce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 407, '2022-05-19 08:22:31', '2022-05-19 08:22:32'),
(421, 'App\\Models\\EProvider', 33, 'image', 'banner-03', 'banner-03.jpg', 'image/jpeg', 'public', 1547058, '[]', '{\"uuid\":\"e4cbfd33-655f-4b7a-bcc6-05b4cd46dbce\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 408, '2022-05-19 08:24:40', '2022-05-19 08:24:40'),
(422, 'App\\Models\\Upload', 225, 'image', 'banner-03', 'banner-03.jpg', 'image/jpeg', 'public', 1547058, '[]', '{\"uuid\":\"8802cb07-8fee-4f4e-9498-8b970bb8366d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 409, '2022-05-19 09:10:20', '2022-05-19 09:10:20'),
(424, 'App\\Models\\Upload', 226, 'image', 'scaled_image_picker7334875347844873015', 'scaled_image_picker7334875347844873015.jpg', 'image/jpeg', 'public', 135662, '[]', '{\"uuid\":\"9342a2d7-571b-474b-846d-5c2e76d13d47\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 411, '2022-05-27 09:20:48', '2022-05-27 09:20:49'),
(426, 'App\\Models\\Upload', 227, 'image', 'scaled_image_picker7241071604285159580', 'scaled_image_picker7241071604285159580.jpg', 'image/jpeg', 'public', 151233, '[]', '{\"uuid\":\"c9c3c280-728b-44f2-90d9-5303ae9b759f\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 413, '2022-05-27 09:24:06', '2022-05-27 09:24:06'),
(428, 'App\\Models\\Upload', 228, 'image', 'scaled_image_picker5450885588060580653', 'scaled_image_picker5450885588060580653.jpg', 'image/jpeg', 'public', 206155, '[]', '{\"uuid\":\"7849b657-91b1-484b-8d01-47721b7a8ddb\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 415, '2022-05-27 09:24:56', '2022-05-27 09:24:56'),
(429, 'App\\Models\\Option', 96, 'image', 'scaled_image_picker5450885588060580653', 'scaled_image_picker5450885588060580653.jpg', 'image/jpeg', 'public', 206155, '[]', '{\"uuid\":\"7849b657-91b1-484b-8d01-47721b7a8ddb\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 416, '2022-05-27 09:25:10', '2022-05-27 09:25:10'),
(430, 'App\\Models\\Upload', 229, 'image', 'scaled_image_picker6332901164603032594', 'scaled_image_picker6332901164603032594.png', 'image/png', 'public', 61756, '[]', '{\"uuid\":\"a0cf88aa-143a-461b-b549-393ffc4658d0\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 417, '2022-05-27 09:48:41', '2022-05-27 09:48:41'),
(432, 'App\\Models\\Upload', 230, 'image', 'AdobeStock_Minerva_Studio', 'AdobeStock_Minerva_Studio.jpg', 'image/jpeg', 'public', 186770, '[]', '{\"uuid\":\"ae92b9a5-7d57-423f-a576-3d8ba3c9f24b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 419, '2022-05-27 10:37:09', '2022-05-27 10:37:10'),
(434, 'App\\Models\\Upload', 231, 'image', 'scaled_image_picker7681852952600267129', 'scaled_image_picker7681852952600267129.jpg', 'image/jpeg', 'public', 181416, '[]', '{\"uuid\":\"9acecb65-a01e-45ca-a9d5-99a391613e03\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 421, '2022-05-27 11:12:14', '2022-05-27 11:12:15'),
(435, 'App\\Models\\Upload', 232, 'image', 'scaled_image_picker9080122376261950259', 'scaled_image_picker9080122376261950259.jpg', 'image/jpeg', 'public', 28684, '[]', '{\"uuid\":\"92a8a755-3d50-44b6-b0f9-26c46fd23b9f\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 422, '2022-05-27 11:13:29', '2022-05-27 11:13:29'),
(436, 'App\\Models\\EService', 40, 'image', 'scaled_image_picker9080122376261950259', 'scaled_image_picker9080122376261950259.jpg', 'image/jpeg', 'public', 28684, '[]', '{\"uuid\":\"92a8a755-3d50-44b6-b0f9-26c46fd23b9f\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 423, '2022-05-27 11:16:24', '2022-05-27 11:16:24'),
(437, 'App\\Models\\Upload', 233, 'image', 'scaled_image_picker176320291236841715', 'scaled_image_picker176320291236841715.jpg', 'image/jpeg', 'public', 28684, '[]', '{\"uuid\":\"74e4520e-603d-48dd-b38a-07f7be9a4c2a\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 424, '2022-05-27 11:16:35', '2022-05-27 11:16:36'),
(438, 'App\\Models\\Option', 99, 'image', 'scaled_image_picker176320291236841715', 'scaled_image_picker176320291236841715.jpg', 'image/jpeg', 'public', 28684, '[]', '{\"uuid\":\"74e4520e-603d-48dd-b38a-07f7be9a4c2a\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 425, '2022-05-27 11:17:28', '2022-05-27 11:17:28'),
(439, 'App\\Models\\Upload', 234, 'image', 'scaled_image_picker3564722837117303878', 'scaled_image_picker3564722837117303878.jpg', 'image/jpeg', 'public', 18212, '[]', '{\"uuid\":\"e3d96b1f-d3d9-4711-b509-5362462e0992\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 426, '2022-05-28 09:14:28', '2022-05-28 09:14:28'),
(440, 'App\\Models\\Upload', 235, 'image', 'scaled_image_picker6998042003205154164', 'scaled_image_picker6998042003205154164.jpg', 'image/jpeg', 'public', 18212, '[]', '{\"uuid\":\"af64ca13-5517-4b1a-9fcc-3e63ee6ffa76\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 427, '2022-05-28 09:14:40', '2022-05-28 09:14:40'),
(441, 'App\\Models\\Upload', 236, 'image', 'scaled_image_picker114978415733891933', 'scaled_image_picker114978415733891933.jpg', 'image/jpeg', 'public', 18212, '[]', '{\"uuid\":\"d72e5474-7a15-4d19-9b27-afc7f25a20de\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 428, '2022-05-28 09:21:52', '2022-05-28 09:21:52'),
(442, 'App\\Models\\EService', 41, 'image', 'scaled_image_picker114978415733891933', 'scaled_image_picker114978415733891933.jpg', 'image/jpeg', 'public', 18212, '[]', '{\"uuid\":\"d72e5474-7a15-4d19-9b27-afc7f25a20de\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 429, '2022-05-28 09:23:45', '2022-05-28 09:23:45'),
(443, 'App\\Models\\Upload', 237, 'image', 'scaled_image_picker2752695469377495280', 'scaled_image_picker2752695469377495280.jpg', 'image/jpeg', 'public', 18212, '[]', '{\"uuid\":\"b941c0d3-7425-45cb-96db-cc6a32ac776e\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 430, '2022-05-28 09:23:49', '2022-05-28 09:23:49'),
(444, 'App\\Models\\Upload', 238, 'image', 'scaled_image_picker7470238102222409078', 'scaled_image_picker7470238102222409078.jpg', 'image/jpeg', 'public', 64134, '[]', '{\"uuid\":\"735c7767-5162-4d93-b158-5dcd532d2e91\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 431, '2022-06-09 05:07:13', '2022-06-09 05:07:14'),
(446, 'App\\Models\\Upload', 239, 'avatar', 'scaled_image_picker4389676410976632303', 'scaled_image_picker4389676410976632303.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"229c8d7d-11f7-47c1-8119-171c5d39d890\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 433, '2022-06-09 05:15:09', '2022-06-09 05:15:09'),
(447, 'App\\Models\\Upload', 240, 'image', 'businessman-black-suit-makes-thumb-up-sign (1)', 'businessman-black-suit-makes-thumb-up-sign-(1).jpg', 'image/jpeg', 'public', 652964, '[]', '{\"uuid\":\"11644e95-7f1d-437d-a946-ca12f4058f4b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 434, '2022-06-10 08:37:33', '2022-06-10 08:37:40'),
(449, 'App\\Models\\Upload', 241, 'image', 'scaled_image_picker4855680043822660097', 'scaled_image_picker4855680043822660097.jpg', 'image/jpeg', 'public', 1398278, '[]', '{\"uuid\":\"51b6e716-8035-4c51-9b0b-85b622753187\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 435, '2022-06-10 09:34:20', '2022-06-10 09:34:22'),
(450, 'App\\Models\\Upload', 242, 'image', 'scaled_image_picker7313469499330303177', 'scaled_image_picker7313469499330303177.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"bbb29464-1967-4e6a-a7ed-15219e996c4b\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 436, '2022-06-10 09:38:37', '2022-06-10 09:38:37'),
(451, 'App\\Models\\Upload', 243, 'image', 'scaled_image_picker421167015224363643', 'scaled_image_picker421167015224363643.jpg', 'image/jpeg', 'public', 35543, '[]', '{\"uuid\":\"7e47d9ba-439f-46e8-b425-d4dde5e5d42b\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 437, '2022-06-10 09:38:49', '2022-06-10 09:38:49'),
(452, 'App\\Models\\Upload', 244, 'image', 'scaled_image_picker1040793799672399143', 'scaled_image_picker1040793799672399143.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"1e2530bf-3234-4ccd-a148-17c5adfe2cf8\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 438, '2022-06-10 13:19:03', '2022-06-10 13:19:03'),
(455, 'App\\Models\\Option', 100, 'image', 'scaled_image_picker1531636459589548338', 'scaled_image_picker1531636459589548338.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"bbfa5b17-b5b3-4a6f-a734-0263c4c2b10d\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 441, '2022-06-10 13:20:44', '2022-06-10 13:20:44'),
(456, 'App\\Models\\Option', 101, 'image', 'scaled_image_picker1531636459589548338', 'scaled_image_picker1531636459589548338.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"bbfa5b17-b5b3-4a6f-a734-0263c4c2b10d\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 442, '2022-06-10 13:20:45', '2022-06-10 13:20:45'),
(457, 'App\\Models\\Option', 102, 'image', 'scaled_image_picker1531636459589548338', 'scaled_image_picker1531636459589548338.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"bbfa5b17-b5b3-4a6f-a734-0263c4c2b10d\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 443, '2022-06-10 13:20:46', '2022-06-10 13:20:46'),
(458, 'App\\Models\\Upload', 246, 'image', 'scaled_image_picker3530624958599795531', 'scaled_image_picker3530624958599795531.jpg', 'image/jpeg', 'public', 103283, '[]', '{\"uuid\":\"0427a2ed-7bdb-4e26-a059-d22cfc32d34a\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 444, '2022-06-10 13:21:10', '2022-06-10 13:21:10'),
(459, 'App\\Models\\Upload', 247, 'image', 'scaled_image_picker782005977894694253', 'scaled_image_picker782005977894694253.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"7033047c-ad57-4412-8dd3-8dbbf123a9ed\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 445, '2022-06-10 13:21:31', '2022-06-10 13:21:31'),
(461, 'App\\Models\\Upload', 248, 'image', 'scaled_image_picker7413876842816993824', 'scaled_image_picker7413876842816993824.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"eff40e92-c7dd-4452-9ee6-66261517f7c8\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 447, '2022-06-10 13:22:15', '2022-06-10 13:22:16'),
(462, 'App\\Models\\Option', 103, 'image', 'scaled_image_picker7413876842816993824', 'scaled_image_picker7413876842816993824.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"eff40e92-c7dd-4452-9ee6-66261517f7c8\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 448, '2022-06-10 13:22:50', '2022-06-10 13:22:50'),
(463, 'App\\Models\\Option', 104, 'image', 'scaled_image_picker7413876842816993824', 'scaled_image_picker7413876842816993824.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"eff40e92-c7dd-4452-9ee6-66261517f7c8\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 449, '2022-06-10 13:22:55', '2022-06-10 13:22:55'),
(464, 'App\\Models\\Upload', 249, 'image', 'scaled_image_picker2419415422285861315', 'scaled_image_picker2419415422285861315.jpg', 'image/jpeg', 'public', 44067, '[]', '{\"uuid\":\"ff8bf8a4-bc62-4b0d-b2d7-53b46db6c5ab\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 450, '2022-06-10 13:24:46', '2022-06-10 13:24:47'),
(465, 'App\\Models\\Upload', 250, 'image', 'scaled_image_picker106797594051228761', 'scaled_image_picker106797594051228761.jpg', 'image/jpeg', 'public', 12693, '[]', '{\"uuid\":\"d6755004-84e8-48ba-9c02-82083f830157\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 451, '2022-06-10 13:25:41', '2022-06-10 13:25:41'),
(467, 'App\\Models\\Upload', 251, 'image', 'scaled_image_picker4592193900402991237', 'scaled_image_picker4592193900402991237.jpg', 'image/jpeg', 'public', 12693, '[]', '{\"uuid\":\"08aec09a-0e7b-4888-84c4-6430a6c630d3\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 453, '2022-06-10 13:26:29', '2022-06-10 13:26:30'),
(468, 'App\\Models\\Option', 105, 'image', 'scaled_image_picker4592193900402991237', 'scaled_image_picker4592193900402991237.jpg', 'image/jpeg', 'public', 12693, '[]', '{\"uuid\":\"08aec09a-0e7b-4888-84c4-6430a6c630d3\",\"user_id\":27,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 454, '2022-06-10 13:26:59', '2022-06-10 13:26:59'),
(469, 'App\\Models\\Upload', 252, 'image', 'scaled_image_picker3475231149450425889', 'scaled_image_picker3475231149450425889.jpg', 'image/jpeg', 'public', 53657, '[]', '{\"uuid\":\"19ab261a-9e7f-4c2c-b2c4-070911f1fbf1\",\"user_id\":30,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 455, '2022-06-10 14:39:03', '2022-06-10 14:39:05'),
(471, 'App\\Models\\Upload', 253, 'image', 'scaled_image_picker6112669428726553682', 'scaled_image_picker6112669428726553682.jpg', 'image/jpeg', 'public', 12693, '[]', '{\"uuid\":\"4e200135-d3c2-44a3-820e-b51edf6fc7b6\",\"user_id\":30,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 457, '2022-06-10 14:42:34', '2022-06-10 14:42:34'),
(472, 'App\\Models\\Option', 106, 'image', 'scaled_image_picker6112669428726553682', 'scaled_image_picker6112669428726553682.jpg', 'image/jpeg', 'public', 12693, '[]', '{\"uuid\":\"4e200135-d3c2-44a3-820e-b51edf6fc7b6\",\"user_id\":30,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 458, '2022-06-10 14:43:31', '2022-06-10 14:43:31'),
(473, 'App\\Models\\Upload', 254, 'image', 'scaled_image_picker8054153290622634067', 'scaled_image_picker8054153290622634067.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"e8f5918d-fbe8-4f49-bc68-f85e58a34f91\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 459, '2022-06-11 03:08:25', '2022-06-11 03:08:26'),
(476, 'App\\Models\\Upload', 255, 'image', 'scaled_image_picker7171419549852482909', 'scaled_image_picker7171419549852482909.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"c57a21c6-1306-4b94-b12f-917b9be3e261\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 462, '2022-06-11 03:10:34', '2022-06-11 03:10:34'),
(477, 'App\\Models\\Upload', 256, 'image', 'scaled_image_picker5962986989553524758', 'scaled_image_picker5962986989553524758.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"a1cbb454-639f-43f1-b442-40bb84726bdc\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 463, '2022-06-11 04:56:41', '2022-06-11 04:56:41'),
(479, 'App\\Models\\Upload', 257, 'image', 'scaled_image_picker4569518628833485564', 'scaled_image_picker4569518628833485564.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"9d40a283-b21d-4f82-b5dc-29e5b2598210\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 465, '2022-06-11 04:57:52', '2022-06-11 04:57:53'),
(480, 'App\\Models\\Option', 107, 'image', 'scaled_image_picker4569518628833485564', 'scaled_image_picker4569518628833485564.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"9d40a283-b21d-4f82-b5dc-29e5b2598210\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 466, '2022-06-11 04:58:22', '2022-06-11 04:58:22'),
(481, 'App\\Models\\Upload', 258, 'image', 'scaled_image_picker712925288268879501', 'scaled_image_picker712925288268879501.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"adf90e70-83cd-4e5d-8b96-dcc4f4fc3b15\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 467, '2022-06-11 05:03:31', '2022-06-11 05:03:32'),
(483, 'App\\Models\\Upload', 259, 'image', 'scaled_image_picker8720787969012398570', 'scaled_image_picker8720787969012398570.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"0191634c-56b2-40a3-bd33-1a6dcfe6a314\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 469, '2022-06-11 05:04:16', '2022-06-11 05:04:16'),
(484, 'App\\Models\\Option', 108, 'image', 'scaled_image_picker8720787969012398570', 'scaled_image_picker8720787969012398570.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"0191634c-56b2-40a3-bd33-1a6dcfe6a314\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 470, '2022-06-11 05:04:41', '2022-06-11 05:04:41'),
(485, 'App\\Models\\Upload', 260, 'image', 'scaled_image_picker5874174970765765026', 'scaled_image_picker5874174970765765026.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"a58dd502-ea38-4056-bf56-b9ea156bdade\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 471, '2022-06-11 05:20:30', '2022-06-11 05:20:31'),
(487, 'App\\Models\\Upload', 261, 'image', 'scaled_image_picker3484683979591557294', 'scaled_image_picker3484683979591557294.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"3a45f9f8-fbe5-4c00-b31a-93825e37f7c2\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 473, '2022-06-11 05:22:42', '2022-06-11 05:22:43'),
(488, 'App\\Models\\Option', 109, 'image', 'scaled_image_picker3484683979591557294', 'scaled_image_picker3484683979591557294.jpg', 'image/jpeg', 'public', 172872, '[]', '{\"uuid\":\"3a45f9f8-fbe5-4c00-b31a-93825e37f7c2\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 474, '2022-06-11 05:23:07', '2022-06-11 05:23:07'),
(489, 'App\\Models\\Upload', 262, 'avatar', 'businessman-black-suit-makes-thumb-up-sign (1)', 'businessman-black-suit-makes-thumb-up-sign-(1).jpg', 'image/jpeg', 'public', 652964, '[]', '{\"uuid\":\"812df78d-3849-4efd-ae04-24dd645efd86\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 475, '2022-06-11 06:14:42', '2022-06-11 06:14:48'),
(490, 'App\\Models\\Upload', 263, 'avatar', 'fun-cartoon-kid-with-rain-gear', 'fun-cartoon-kid-with-rain-gear.jpg', 'image/jpeg', 'public', 2249295, '[]', '{\"uuid\":\"b6ae7135-b0d6-4982-b389-8ce9522ab838\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 476, '2022-06-11 06:19:41', '2022-06-11 06:19:45'),
(491, 'App\\Models\\User', 33, 'avatar', 'fun-cartoon-kid-with-rain-gear', 'fun-cartoon-kid-with-rain-gear.jpg', 'image/jpeg', 'public', 2249295, '[]', '{\"uuid\":\"b6ae7135-b0d6-4982-b389-8ce9522ab838\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 477, '2022-06-11 06:19:50', '2022-06-11 06:19:50'),
(492, 'App\\Models\\Upload', 264, 'image', 'scaled_image_picker3709659310613639428', 'scaled_image_picker3709659310613639428.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"06e42c94-e972-40f7-bba2-0f176ab4c42b\",\"user_id\":32,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 478, '2022-06-11 06:26:08', '2022-06-11 06:26:08'),
(493, 'App\\Models\\Upload', 265, 'image', 'scaled_image_picker3259277948505568436', 'scaled_image_picker3259277948505568436.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"85cabb54-e440-42f3-bd3b-1dc801ebeaf4\",\"user_id\":32,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 479, '2022-06-11 06:28:09', '2022-06-11 06:28:09'),
(494, 'App\\Models\\Upload', 266, 'image', 'businessman-black-suit-makes-thumb-up-sign (1)', 'businessman-black-suit-makes-thumb-up-sign-(1).jpg', 'image/jpeg', 'public', 652964, '[]', '{\"uuid\":\"275e0452-f4ae-48c7-a55e-38a953512749\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 480, '2022-06-11 07:22:50', '2022-06-11 07:22:57'),
(498, 'App\\Models\\Upload', 267, 'image', 'scaled_image_picker6721599106263380275', 'scaled_image_picker6721599106263380275.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"35d497de-bf3d-4aaa-aca9-07b01d59cde7\",\"user_id\":32,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 484, '2022-06-11 07:28:23', '2022-06-11 07:28:23'),
(500, 'App\\Models\\Upload', 268, 'image', 'scaled_image_picker6018533662421845394', 'scaled_image_picker6018533662421845394.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"6a4b107e-db3f-4c66-b6cf-8fa18de3805a\",\"user_id\":32,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 486, '2022-06-11 07:30:08', '2022-06-11 07:30:10'),
(501, 'App\\Models\\Option', 110, 'image', 'scaled_image_picker6018533662421845394', 'scaled_image_picker6018533662421845394.jpg', 'image/jpeg', 'public', 192620, '[]', '{\"uuid\":\"6a4b107e-db3f-4c66-b6cf-8fa18de3805a\",\"user_id\":32,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 487, '2022-06-11 07:30:29', '2022-06-11 07:30:29'),
(502, 'App\\Models\\Upload', 269, 'image', 'scaled_image_picker387821838389295454', 'scaled_image_picker387821838389295454.jpg', 'image/jpeg', 'public', 183702, '[]', '{\"uuid\":\"3dfb2608-7062-4249-abb7-bf9ce16a5923\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 488, '2022-06-11 07:40:35', '2022-06-11 07:40:36'),
(504, 'App\\Models\\Upload', 270, 'image', 'scaled_image_picker7338007607702283534', 'scaled_image_picker7338007607702283534.jpg', 'image/jpeg', 'public', 183702, '[]', '{\"uuid\":\"5a62930f-c986-453e-bdba-f37a83519c6d\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 490, '2022-06-11 07:41:43', '2022-06-11 07:41:44'),
(505, 'App\\Models\\Option', 111, 'image', 'scaled_image_picker7338007607702283534', 'scaled_image_picker7338007607702283534.jpg', 'image/jpeg', 'public', 183702, '[]', '{\"uuid\":\"5a62930f-c986-453e-bdba-f37a83519c6d\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 491, '2022-06-11 07:42:08', '2022-06-11 07:42:08'),
(506, 'App\\Models\\Upload', 271, 'image', 'scaled_image_picker1486097709903428562', 'scaled_image_picker1486097709903428562.png', 'image/png', 'public', 86978, '[]', '{\"uuid\":\"192f28e4-b375-4a27-9903-d1af9d900fcb\",\"user_id\":16,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 492, '2022-06-16 08:18:39', '2022-06-16 08:18:39'),
(508, 'App\\Models\\Upload', 272, 'image', 'scaled_image_picker8359223321255398390', 'scaled_image_picker8359223321255398390.png', 'image/png', 'public', 86978, '[]', '{\"uuid\":\"1784beff-8981-4e0c-b238-d11077184c65\",\"user_id\":16,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 494, '2022-06-16 08:20:49', '2022-06-16 08:20:50'),
(509, 'App\\Models\\Option', 112, 'image', 'scaled_image_picker8359223321255398390', 'scaled_image_picker8359223321255398390.png', 'image/png', 'public', 86978, '[]', '{\"uuid\":\"1784beff-8981-4e0c-b238-d11077184c65\",\"user_id\":16,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 495, '2022-06-16 08:21:18', '2022-06-16 08:21:18'),
(510, 'App\\Models\\Upload', 273, 'image', 'scaled_image_picker9075805259036370350', 'scaled_image_picker9075805259036370350.jpg', 'image/jpeg', 'public', 138857, '[]', '{\"uuid\":\"a3bff83f-545d-4be8-9129-c5d060fdef23\",\"user_id\":16,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 496, '2022-06-16 09:11:06', '2022-06-16 09:11:07'),
(513, 'App\\Models\\Upload', 274, 'image', 'scaled_image_picker4041029075538701436', 'scaled_image_picker4041029075538701436.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"c6d6870d-fd11-4f34-8427-2192aa13b879\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 499, '2022-06-16 10:25:40', '2022-06-16 10:25:40'),
(514, 'App\\Models\\Upload', 275, 'image', 'scaled_image_picker3639935798813096557', 'scaled_image_picker3639935798813096557.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"94b65424-124a-43c4-8b0f-a10220710837\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 500, '2022-06-16 10:26:11', '2022-06-16 10:26:11'),
(515, 'App\\Models\\Upload', 276, 'image', 'scaled_image_picker5856091735202432105', 'scaled_image_picker5856091735202432105.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"ad0351bc-b951-4687-903d-f375619d9e0b\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 501, '2022-06-16 10:26:24', '2022-06-16 10:26:25'),
(517, 'App\\Models\\Upload', 277, 'image', 'scaled_image_picker4615242104091842782', 'scaled_image_picker4615242104091842782.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"67090051-7dce-41d7-86d5-46eb2c327bd8\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 503, '2022-06-16 10:29:18', '2022-06-16 10:29:18'),
(518, 'App\\Models\\Option', 113, 'image', 'scaled_image_picker4615242104091842782', 'scaled_image_picker4615242104091842782.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"67090051-7dce-41d7-86d5-46eb2c327bd8\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 504, '2022-06-16 10:29:48', '2022-06-16 10:29:48'),
(519, 'App\\Models\\Option', 114, 'image', 'scaled_image_picker4615242104091842782', 'scaled_image_picker4615242104091842782.jpg', 'image/jpeg', 'public', 171524, '[]', '{\"uuid\":\"67090051-7dce-41d7-86d5-46eb2c327bd8\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 505, '2022-06-16 10:29:49', '2022-06-16 10:29:49'),
(520, 'App\\Models\\Upload', 278, 'image', 'scaled_image_picker2626514025358456326', 'scaled_image_picker2626514025358456326.jpg', 'image/jpeg', 'public', 138857, '[]', '{\"uuid\":\"a47a618f-50fd-4022-8b4f-b80ca5a256cc\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 506, '2022-06-17 02:57:30', '2022-06-17 02:57:31'),
(521, 'App\\Models\\Upload', 279, 'image', 'scaled_image_picker4223669634920146678', 'scaled_image_picker4223669634920146678.jpg', 'image/jpeg', 'public', 138857, '[]', '{\"uuid\":\"ecf2ea4a-b540-4109-b130-efeb9c273925\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 507, '2022-06-17 03:16:04', '2022-06-17 03:16:05'),
(524, 'App\\Models\\Upload', 280, 'image', 'scaled_image_picker1116906876180669034', 'scaled_image_picker1116906876180669034.jpg', 'image/jpeg', 'public', 156647, '[]', '{\"uuid\":\"021b11cd-2f97-4a62-8349-f3061dba98c0\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 510, '2022-06-18 07:23:09', '2022-06-18 07:23:10'),
(527, 'App\\Models\\Upload', 281, 'image', 'scaled_image_picker3660358775724804851', 'scaled_image_picker3660358775724804851.jpg', 'image/jpeg', 'public', 156647, '[]', '{\"uuid\":\"7aaeffa9-2caa-48a3-9ebb-43b5a0909e5a\",\"user_id\":31,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 513, '2022-06-18 07:26:06', '2022-06-18 07:26:06'),
(528, 'App\\Models\\Upload', 282, 'avatar', 'scaled_image_picker8661888712725229033', 'scaled_image_picker8661888712725229033.jpg', 'image/jpeg', 'public', 1722129, '[]', '{\"uuid\":\"040daa51-85ee-4168-a277-933473787d95\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 514, '2022-07-08 07:28:09', '2022-07-08 07:28:13'),
(530, 'App\\Models\\Upload', 283, 'avatar', 'scaled_image_picker8330483742921197590', 'scaled_image_picker8330483742921197590.jpg', 'image/jpeg', 'public', 1321986, '[]', '{\"uuid\":\"e8349c47-8e44-467c-8719-ec522ccf120b\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 516, '2022-07-08 08:07:31', '2022-07-08 08:07:36'),
(531, 'App\\Models\\Upload', 284, 'avatar', 'scaled_image_picker3191039396725736539', 'scaled_image_picker3191039396725736539.jpg', 'image/jpeg', 'public', 1321986, '[]', '{\"uuid\":\"348b7ca4-fbd8-46be-a89d-a4f50bb3816f\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 517, '2022-07-08 08:08:08', '2022-07-08 08:08:12'),
(532, 'App\\Models\\Upload', 285, 'image', 'scaled_image_picker821519799910689062', 'scaled_image_picker821519799910689062.jpg', 'image/jpeg', 'public', 1321986, '[]', '{\"uuid\":\"11fc4190-75d8-48b5-a1ac-447a4f31e5ba\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 518, '2022-08-08 10:05:23', '2022-08-08 10:05:28'),
(536, 'App\\Models\\Upload', 286, 'image', 'scaled_image_picker2568616191260722220', 'scaled_image_picker2568616191260722220.jpg', 'image/jpeg', 'public', 1321986, '[]', '{\"uuid\":\"97e1eada-31b6-4919-a4c9-fa740308d65d\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 522, '2022-08-08 10:06:44', '2022-08-08 10:06:49'),
(537, 'App\\Models\\Option', 115, 'image', 'scaled_image_picker2568616191260722220', 'scaled_image_picker2568616191260722220.jpg', 'image/jpeg', 'public', 1321986, '[]', '{\"uuid\":\"97e1eada-31b6-4919-a4c9-fa740308d65d\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 523, '2022-08-08 10:07:06', '2022-08-08 10:07:06'),
(538, 'App\\Models\\Upload', 287, 'avatar', 'scaled_image_picker8788955287959330736', 'scaled_image_picker8788955287959330736.gif', 'image/jpeg', 'public', 30228, '[]', '{\"uuid\":\"fddae051-f0c7-4b28-8f97-8d4f5d0354b8\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 524, '2022-09-12 04:38:00', '2022-09-12 04:38:01'),
(539, 'App\\Models\\Upload', 288, 'avatar', 'scaled_image_picker369345102003903283', 'scaled_image_picker369345102003903283.jpg', 'image/jpeg', 'public', 140886, '[]', '{\"uuid\":\"586e9177-af88-423c-b6a0-a154e7e49066\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 525, '2022-09-12 10:27:28', '2022-09-12 10:27:29'),
(540, 'App\\Models\\Upload', 289, 'avatar', 'scaled_image_picker6110169367092279797', 'scaled_image_picker6110169367092279797.jpg', 'image/jpeg', 'public', 394507, '[]', '{\"uuid\":\"1d2f113b-dfb6-4536-97b1-d7186f695697\",\"user_id\":55,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 526, '2022-09-13 10:50:04', '2022-09-13 10:50:08'),
(541, 'App\\Models\\Upload', 290, 'avatar', 'scaled_image_picker5657942225620766093', 'scaled_image_picker5657942225620766093.jpg', 'image/jpeg', 'public', 394507, '[]', '{\"uuid\":\"8081e84b-4b13-49c6-b737-df0206300b50\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 527, '2022-09-13 10:56:04', '2022-09-13 10:56:05'),
(543, 'App\\Models\\Upload', 291, 'avatar', 'scaled_image_picker7138191704522057489', 'scaled_image_picker7138191704522057489.jpg', 'image/jpeg', 'public', 41242, '[]', '{\"uuid\":\"478cbb21-4215-4111-b4a6-3a55fe234b25\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 529, '2022-09-16 05:22:51', '2022-09-16 05:22:51'),
(544, 'App\\Models\\Upload', 292, 'avatar', 'scaled_image_picker7980193149728704717', 'scaled_image_picker7980193149728704717.jpg', 'image/jpeg', 'public', 41242, '[]', '{\"uuid\":\"8e0f28ad-2dcf-42b8-8398-1c10cee5685a\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 530, '2022-09-16 10:03:36', '2022-09-16 10:03:37'),
(546, 'App\\Models\\Upload', 294, 'avatar', 'scaled_image_picker6701026129097490124', 'scaled_image_picker6701026129097490124.jpg', 'image/jpeg', 'public', 11297, '[]', '{\"uuid\":\"e111a931-a450-46d8-9230-87c6df89da2c\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 531, '2022-09-17 02:38:27', '2022-09-17 02:38:27'),
(547, 'App\\Models\\Upload', 295, 'avatar', 'scaled_image_picker3249044278077554094', 'scaled_image_picker3249044278077554094.jpg', 'image/jpeg', 'public', 34261, '[]', '{\"uuid\":\"7ef81f60-0152-41ba-ac16-f77e69544fb1\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 532, '2022-09-17 02:39:33', '2022-09-17 02:39:33'),
(548, 'App\\Models\\User', 50, 'avatar', 'scaled_image_picker3249044278077554094', 'scaled_image_picker3249044278077554094.jpg', 'image/jpeg', 'public', 34261, '[]', '{\"uuid\":\"7ef81f60-0152-41ba-ac16-f77e69544fb1\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 533, '2022-09-17 02:39:59', '2022-09-17 02:39:59'),
(549, 'App\\Models\\Upload', 296, 'image', 'th', 'th.jpg', 'image/jpeg', 'public', 23828, '[]', '{\"uuid\":\"1e990310-c369-4baa-bb49-8f8c0b14472b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 534, '2022-09-17 05:13:28', '2022-09-17 05:13:29'),
(551, 'App\\Models\\Upload', 297, 'image', 'th', 'th.jpg', 'image/jpeg', 'public', 23828, '[]', '{\"uuid\":\"3d8f4340-576e-40ab-a8da-f6cdaed29a2a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 536, '2022-09-17 05:14:48', '2022-09-17 05:14:49'),
(552, 'App\\Models\\EService', 28, 'image', 'th', 'th.jpg', 'image/jpeg', 'public', 23828, '[]', '{\"uuid\":\"3d8f4340-576e-40ab-a8da-f6cdaed29a2a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 537, '2022-09-17 05:14:53', '2022-09-17 05:14:53'),
(553, 'App\\Models\\Upload', 298, 'image', 'iStock-508106088-scaled', 'iStock-508106088-scaled.jpg', 'image/jpeg', 'public', 486555, '[]', '{\"uuid\":\"cb4b8600-8f7f-4df5-95d5-a0e49f416c71\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 538, '2022-09-17 05:16:37', '2022-09-17 05:16:38'),
(554, 'App\\Models\\EService', 30, 'image', 'iStock-508106088-scaled', 'iStock-508106088-scaled.jpg', 'image/jpeg', 'public', 486555, '[]', '{\"uuid\":\"cb4b8600-8f7f-4df5-95d5-a0e49f416c71\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 539, '2022-09-17 05:16:51', '2022-09-17 05:16:51'),
(555, 'App\\Models\\Upload', 299, 'image', 'th', 'th.jpg', 'image/jpeg', 'public', 23828, '[]', '{\"uuid\":\"88b8c729-ff93-4d6b-8500-245492838482\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 540, '2022-09-17 05:19:09', '2022-09-17 05:19:09'),
(556, 'App\\Models\\EService', 47, 'image', 'th', 'th.jpg', 'image/jpeg', 'public', 23828, '[]', '{\"uuid\":\"88b8c729-ff93-4d6b-8500-245492838482\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 541, '2022-09-17 05:19:20', '2022-09-17 05:19:20'),
(557, 'App\\Models\\Upload', 300, 'image', 'sonography-career-3734167-0022-hero-tablet', 'sonography-career-3734167-0022-hero-tablet.jpg', 'image/jpeg', 'public', 92726, '[]', '{\"uuid\":\"47e7c7e0-2978-4abf-83a6-dbba2eb8cb2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 542, '2022-09-17 05:23:56', '2022-09-17 05:23:56'),
(558, 'App\\Models\\EService', 57, 'image', 'sonography-career-3734167-0022-hero-tablet', 'sonography-career-3734167-0022-hero-tablet.jpg', 'image/jpeg', 'public', 92726, '[]', '{\"uuid\":\"47e7c7e0-2978-4abf-83a6-dbba2eb8cb2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 543, '2022-09-17 05:24:40', '2022-09-17 05:24:40'),
(559, 'App\\Models\\Upload', 301, 'image', 'th (1)', 'th-(1).jpg', 'image/jpeg', 'public', 19491, '[]', '{\"uuid\":\"a8847200-034b-4405-9140-1855ed1c8e29\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 544, '2022-09-17 05:26:34', '2022-09-17 05:26:34'),
(560, 'App\\Models\\EService', 16, 'image', 'th (1)', 'th-(1).jpg', 'image/jpeg', 'public', 19491, '[]', '{\"uuid\":\"a8847200-034b-4405-9140-1855ed1c8e29\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 545, '2022-09-17 05:26:38', '2022-09-17 05:26:38'),
(561, 'App\\Models\\Upload', 302, 'image', 'iStock-508106088-scaled', 'iStock-508106088-scaled.jpg', 'image/jpeg', 'public', 486555, '[]', '{\"uuid\":\"1036ff11-a00c-464d-b280-5c5d9246d231\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 546, '2022-09-17 05:28:25', '2022-09-17 05:28:26'),
(562, 'App\\Models\\Upload', 303, 'image', 'iStock-508106088-scaled', 'iStock-508106088-scaled.jpg', 'image/jpeg', 'public', 486555, '[]', '{\"uuid\":\"e9bb1382-6530-4ca4-a0e1-1e116671d585\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 547, '2022-09-17 05:30:11', '2022-09-17 05:30:12'),
(564, 'App\\Models\\Upload', 304, 'image', 'th (2)', 'th-(2).jpg', 'image/jpeg', 'public', 21495, '[]', '{\"uuid\":\"876bfdee-0727-440c-9244-b4b50d0bef58\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 548, '2022-09-17 05:31:48', '2022-09-17 05:31:48'),
(566, 'App\\Models\\Upload', 305, 'image', 'th (2)', 'th-(2).jpg', 'image/jpeg', 'public', 21495, '[]', '{\"uuid\":\"b61bc63d-3669-474d-bf04-b8dba05c1084\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 550, '2022-09-17 05:32:49', '2022-09-17 05:32:49'),
(568, 'App\\Models\\Upload', 306, 'image', 'th (4)', 'th-(4).jpg', 'image/jpeg', 'public', 13335, '[]', '{\"uuid\":\"a31d78cd-3b3e-4bc3-a939-2236fa2f074b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 552, '2022-09-17 05:33:23', '2022-09-17 05:33:23'),
(569, 'App\\Models\\EProvider', 41, 'image', 'th (4)', 'th-(4).jpg', 'image/jpeg', 'public', 13335, '[]', '{\"uuid\":\"a31d78cd-3b3e-4bc3-a939-2236fa2f074b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 553, '2022-09-17 05:33:45', '2022-09-17 05:33:45'),
(570, 'App\\Models\\Upload', 307, 'image', 'th (5)', 'th-(5).jpg', 'image/jpeg', 'public', 13319, '[]', '{\"uuid\":\"3873c77c-23c8-4753-9f08-215084e24520\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 554, '2022-09-17 05:36:38', '2022-09-17 05:36:38'),
(571, 'App\\Models\\EProvider', 37, 'image', 'th (5)', 'th-(5).jpg', 'image/jpeg', 'public', 13319, '[]', '{\"uuid\":\"3873c77c-23c8-4753-9f08-215084e24520\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 555, '2022-09-17 05:36:41', '2022-09-17 05:36:41'),
(572, 'App\\Models\\Upload', 308, 'avatar', 'scaled_image_picker183590589361579971', 'scaled_image_picker183590589361579971.webp', 'image/jpeg', 'public', 216606, '[]', '{\"uuid\":\"555ea030-c31e-46e4-a75e-f87284bc4032\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 556, '2022-09-19 11:11:20', '2022-09-19 11:11:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(573, 'App\\Models\\Upload', 309, 'avatar', 'scaled_image_picker9199748577808073252', 'scaled_image_picker9199748577808073252.jpg', 'image/jpeg', 'public', 136451, '[]', '{\"uuid\":\"896b65a4-a6d4-40d0-a90a-2752cc6c81af\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 557, '2022-09-28 04:28:50', '2022-09-28 04:28:51'),
(575, 'App\\Models\\Upload', 310, 'avatar', 'scaled_image_picker447568060857935937', 'scaled_image_picker447568060857935937.jpg', 'image/jpeg', 'public', 169660, '[]', '{\"uuid\":\"02878d4f-c374-4d13-b52e-8f514fc4976c\",\"user_id\":67,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 559, '2022-09-29 04:56:11', '2022-09-29 04:56:12'),
(577, 'App\\Models\\Upload', 311, 'avatar', 'scaled_image_picker2394042512503409834', 'scaled_image_picker2394042512503409834.jpg', 'image/jpeg', 'public', 119606, '[]', '{\"uuid\":\"d74ed69a-3a71-48b2-a2e1-e5688449261e\",\"user_id\":68,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 561, '2022-09-29 07:19:17', '2022-09-29 07:19:17'),
(578, 'App\\Models\\User', 68, 'avatar', 'scaled_image_picker2394042512503409834', 'scaled_image_picker2394042512503409834.jpg', 'image/jpeg', 'public', 119606, '[]', '{\"uuid\":\"d74ed69a-3a71-48b2-a2e1-e5688449261e\",\"user_id\":68,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 562, '2022-09-29 07:20:26', '2022-09-29 07:20:26'),
(581, 'App\\Models\\Upload', 314, 'avatar', 'scaled_image_picker642128779295211760', 'scaled_image_picker642128779295211760.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"40802f4d-a531-4d03-8cfc-469cf05aea8d\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 563, '2022-10-19 06:57:21', '2022-10-19 06:57:22'),
(582, 'App\\Models\\Upload', 315, 'avatar', 'scaled_image_picker6746941058910584085', 'scaled_image_picker6746941058910584085.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"393917ca-1cc7-4c53-948c-eae2f53b0175\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 564, '2022-10-19 09:14:25', '2022-10-19 09:14:26'),
(584, 'App\\Models\\Upload', 317, 'avatar', 'scaled_image_picker5416096368830170937', 'scaled_image_picker5416096368830170937.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"2652335f-7d82-414e-b8b9-c77f44a9a278\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 565, '2022-10-20 02:33:25', '2022-10-20 02:33:26'),
(585, 'App\\Models\\Upload', 318, 'avatar', 'scaled_image_picker8835250037593854690', 'scaled_image_picker8835250037593854690.jpg', 'image/jpeg', 'public', 179939, '[]', '{\"uuid\":\"05871b54-ccf9-4d40-b998-deb589106569\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 566, '2022-10-20 03:19:41', '2022-10-20 03:19:41'),
(586, 'App\\Models\\Upload', 319, 'avatar', 'scaled_image_picker7969546203462141992', 'scaled_image_picker7969546203462141992.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"0f7fe210-4b9d-477d-b265-9b3800dc3ca7\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 567, '2022-10-20 06:19:40', '2022-10-20 06:19:41'),
(587, 'App\\Models\\Upload', 320, 'avatar', 'scaled_image_picker1711764304922137405', 'scaled_image_picker1711764304922137405.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"d2ced18f-df8d-4b3c-94fa-dc202b370600\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 568, '2022-10-20 10:58:10', '2022-10-20 10:58:10'),
(589, 'App\\Models\\Upload', 321, 'avatar', 'scaled_image_picker3225811044599010813', 'scaled_image_picker3225811044599010813.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"30945b60-6dac-4802-84b8-0876ed395ec9\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 570, '2022-10-20 11:02:33', '2022-10-20 11:02:33'),
(591, 'App\\Models\\Upload', 322, 'avatar', 'scaled_image_picker1320413737267146232', 'scaled_image_picker1320413737267146232.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"c12b12de-e540-4a89-b573-20f8834c9001\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 572, '2022-10-20 11:07:35', '2022-10-20 11:07:36'),
(593, 'App\\Models\\Upload', 323, 'avatar', 'scaled_image_picker4626047756439254326', 'scaled_image_picker4626047756439254326.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"1e37e080-294c-46d1-9cce-223d9a69e891\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 574, '2022-10-20 11:15:25', '2022-10-20 11:15:25'),
(595, 'App\\Models\\Upload', 324, 'avatar', 'scaled_image_picker3717928867210291369', 'scaled_image_picker3717928867210291369.webp', 'image/jpeg', 'public', 194179, '[]', '{\"uuid\":\"712832fe-fa4f-498b-a294-28787870158e\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 576, '2022-10-20 12:13:28', '2022-10-20 12:13:29'),
(597, 'App\\Models\\Upload', 325, 'avatar', 'scaled_image_picker6806576340307294266', 'scaled_image_picker6806576340307294266.jpg', 'image/jpeg', 'public', 183947, '[]', '{\"uuid\":\"b8a20b1d-94f7-44a6-a1cc-6cebbd88edbc\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 578, '2022-10-20 13:04:48', '2022-10-20 13:04:49'),
(598, 'App\\Models\\Upload', 326, 'avatar', 'scaled_image_picker6760922441887251366', 'scaled_image_picker6760922441887251366.jpg', 'image/jpeg', 'public', 20281, '[]', '{\"uuid\":\"30b11382-467e-4b82-b4a7-30b7703f3cd8\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 579, '2022-10-20 13:05:08', '2022-10-20 13:05:09'),
(599, 'App\\Models\\Upload', 327, 'avatar', 'scaled_image_picker936860066575756222', 'scaled_image_picker936860066575756222.jpg', 'image/jpeg', 'public', 37485, '[]', '{\"uuid\":\"a49d6868-a9ee-4e23-833b-e06ec128fe8c\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 580, '2022-10-20 13:05:25', '2022-10-20 13:05:26'),
(601, 'App\\Models\\Upload', 328, 'avatar', 'scaled_image_picker7050568304584794701', 'scaled_image_picker7050568304584794701.jpg', 'image/jpeg', 'public', 487143, '[]', '{\"uuid\":\"fa942c96-8446-469a-994b-e0086e8bffa6\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 582, '2022-10-20 13:05:49', '2022-10-20 13:05:51'),
(602, 'App\\Models\\Upload', 329, 'avatar', 'scaled_image_picker4957612462621837469', 'scaled_image_picker4957612462621837469.jpg', 'image/jpeg', 'public', 15151, '[]', '{\"uuid\":\"3cf459b3-8af3-4b75-8da7-2b2c0017b1cc\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 583, '2022-10-20 13:05:57', '2022-10-20 13:05:57'),
(604, 'App\\Models\\Upload', 330, 'avatar', 'scaled_image_picker4957427467290199216', 'scaled_image_picker4957427467290199216.jpg', 'image/jpeg', 'public', 169660, '[]', '{\"uuid\":\"4dd57ee9-a8af-4ad1-8f11-261de7d388e4\",\"user_id\":67,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 585, '2022-10-21 04:15:54', '2022-10-21 04:15:55'),
(606, 'App\\Models\\Upload', 331, 'avatar', 'scaled_image_picker4690059154184531545', 'scaled_image_picker4690059154184531545.jpg', 'image/jpeg', 'public', 3389593, '[]', '{\"uuid\":\"c5238b91-0bbc-4046-86db-d269d12c776a\",\"user_id\":67,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 587, '2022-10-21 04:45:36', '2022-10-21 04:45:39'),
(608, 'App\\Models\\Upload', 332, 'avatar', 'scaled_image_picker2689359635653748838', 'scaled_image_picker2689359635653748838.jpg', 'image/jpeg', 'public', 169660, '[]', '{\"uuid\":\"82bf730f-d9dd-4875-b4c1-dbb5e58f9b93\",\"user_id\":67,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 589, '2022-10-21 04:46:32', '2022-10-21 04:46:33'),
(609, 'App\\Models\\User', 67, 'avatar', 'scaled_image_picker2689359635653748838', 'scaled_image_picker2689359635653748838.jpg', 'image/jpeg', 'public', 169660, '[]', '{\"uuid\":\"82bf730f-d9dd-4875-b4c1-dbb5e58f9b93\",\"user_id\":67,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 590, '2022-10-21 04:46:39', '2022-10-21 04:46:39'),
(610, 'App\\Models\\Upload', 333, 'avatar', 'scaled_image_picker6413954368852955663', 'scaled_image_picker6413954368852955663.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"76c4bcf8-323b-4a67-af28-4c2194240ce2\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 591, '2022-10-21 10:55:28', '2022-10-21 10:55:28'),
(611, 'App\\Models\\Upload', 334, 'avatar', 'scaled_image_picker4005514800535976784', 'scaled_image_picker4005514800535976784.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"56d39157-7d37-49e5-b08d-b2bacb1b810f\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 592, '2022-10-21 11:24:55', '2022-10-21 11:24:55'),
(613, 'App\\Models\\User', 38, 'avatar', 'scaled_image_picker4005514800535976784', 'scaled_image_picker4005514800535976784.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"56d39157-7d37-49e5-b08d-b2bacb1b810f\",\"user_id\":38,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 593, '2022-10-21 11:27:34', '2022-10-21 11:27:34'),
(614, 'App\\Models\\Upload', 335, 'avatar', 'scaled_image_picker7379131262179217088', 'scaled_image_picker7379131262179217088.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"a04f93d7-a190-437f-959e-3e025ee528cb\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 594, '2022-11-03 04:54:12', '2022-11-03 04:54:13'),
(616, 'App\\Models\\Upload', 336, 'avatar', 'scaled_image_picker4038869362466297404', 'scaled_image_picker4038869362466297404.jpg', 'image/jpeg', 'public', 11059, '[]', '{\"uuid\":\"99a98116-3678-4f13-89d4-9bec41cb432a\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 596, '2022-11-07 02:55:18', '2022-11-07 02:55:18'),
(617, 'App\\Models\\Upload', 337, 'avatar', 'scaled_image_picker1515939294333464921', 'scaled_image_picker1515939294333464921.jpg', 'image/jpeg', 'public', 11059, '[]', '{\"uuid\":\"c59d3fc1-2e52-4fe2-bf09-c73e374f0224\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 597, '2022-11-07 02:55:36', '2022-11-07 02:55:36'),
(618, 'App\\Models\\Upload', 338, 'avatar', 'scaled_image_picker8122047014179177414', 'scaled_image_picker8122047014179177414.jpg', 'image/jpeg', 'public', 140488, '[]', '{\"uuid\":\"c251c6d2-e0d2-4467-97c9-cb839f88fa24\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 598, '2022-11-07 02:59:18', '2022-11-07 02:59:18'),
(619, 'App\\Models\\Upload', 339, 'image', '3', '3.jpeg', 'image/jpeg', 'public', 4601, '[]', '{\"uuid\":\"1aa6b251-cbb0-455f-aace-78dd0cce08cf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 599, '2022-11-16 04:10:10', '2022-11-16 04:10:12'),
(620, 'App\\Models\\Upload', 340, 'avatar', 'scaled_image_picker1923978470189651135', 'scaled_image_picker1923978470189651135.jpg', 'image/jpeg', 'public', 15151, '[]', '{\"uuid\":\"0f8e8f60-10e4-48f1-9044-a195b4cf4c8a\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 600, '2022-11-18 02:27:15', '2022-11-18 02:27:15'),
(621, 'App\\Models\\Upload', 341, 'image', 'WhatsApp Image 2022-11-15 at 7.31.46 PM', 'WhatsApp-Image-2022-11-15-at-7.31.46-PM.jpeg', 'image/jpeg', 'public', 61772, '[]', '{\"uuid\":\"6ab08318-2f91-4010-bfad-2a7d82914db6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 601, '2022-11-23 09:04:17', '2022-11-23 09:04:17'),
(623, 'App\\Models\\Upload', 343, 'avatar', 'scaled_image_picker4200636430778676109', 'scaled_image_picker4200636430778676109.png', 'image/png', 'public', 46398, '[]', '{\"uuid\":\"34b27cb7-388c-4bbf-a4ce-7746fd1a7e5f\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 602, '2022-11-23 11:49:20', '2022-11-23 11:49:21'),
(624, 'App\\Models\\Upload', 344, 'avatar', 'scaled_image_picker7962263324659074913', 'scaled_image_picker7962263324659074913.png', 'image/png', 'public', 46398, '[]', '{\"uuid\":\"6a64090d-cfb0-47d2-8fd3-4ef3d524b91b\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 603, '2022-11-23 12:02:31', '2022-11-23 12:02:32'),
(625, 'App\\Models\\Upload', 345, 'avatar', 'scaled_image_picker2061297490980585474', 'scaled_image_picker2061297490980585474.jpg', 'image/jpeg', 'public', 11059, '[]', '{\"uuid\":\"d3135a27-20ce-4a9d-9271-25943590f428\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 604, '2022-11-24 03:08:55', '2022-11-24 03:08:55'),
(626, 'App\\Models\\Upload', 346, 'avatar', 'scaled_image_picker6257749024840959543', 'scaled_image_picker6257749024840959543.jpg', 'image/jpeg', 'public', 11059, '[]', '{\"uuid\":\"c1ab2b5f-1511-4f66-88a0-0f6f7a2e7a3c\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 605, '2022-11-24 03:09:15', '2022-11-24 03:09:16'),
(627, 'App\\Models\\Upload', 347, 'avatar', 'scaled_image_picker4320744270656337040', 'scaled_image_picker4320744270656337040.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"b91a86d0-ed16-4e9c-bf5b-83fbe864b953\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 606, '2022-11-24 03:09:30', '2022-11-24 03:09:30'),
(628, 'App\\Models\\Upload', 348, 'avatar', 'scaled_image_picker2954354645113557923', 'scaled_image_picker2954354645113557923.jpg', 'image/jpeg', 'public', 37485, '[]', '{\"uuid\":\"36e97e52-c5fe-448a-bef0-517eb7748b4b\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 607, '2022-11-24 03:09:36', '2022-11-24 03:09:37'),
(630, 'App\\Models\\Upload', 349, 'avatar', 'scaled_image_picker8902670915209448183', 'scaled_image_picker8902670915209448183.jpg', 'image/jpeg', 'public', 11059, '[]', '{\"uuid\":\"42a4a63a-85d4-4e63-9a85-c079b0e075ce\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 609, '2022-11-24 03:09:49', '2022-11-24 03:09:49'),
(632, 'App\\Models\\Upload', 350, 'avatar', 'scaled_image_picker5222031269804802697', 'scaled_image_picker5222031269804802697.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"5e62a818-5dcc-4f27-92d6-0a6be3a3ff50\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 611, '2022-11-25 10:07:01', '2022-11-25 10:07:02'),
(634, 'App\\Models\\Upload', 351, 'avatar', 'scaled_image_picker5667473314266507015', 'scaled_image_picker5667473314266507015.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"b8f205ca-daea-468f-9305-9b19209bd9b3\",\"user_id\":55,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 613, '2022-12-21 07:48:48', '2022-12-21 07:48:49'),
(635, 'App\\Models\\Upload', 352, 'avatar', 'scaled_image_picker5450833050585980515', 'scaled_image_picker5450833050585980515.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"f8ed76c2-22d4-40d3-be70-fef7f2fadc37\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 614, '2022-12-21 07:59:09', '2022-12-21 07:59:09'),
(636, 'App\\Models\\User', 66, 'avatar', 'scaled_image_picker5450833050585980515', 'scaled_image_picker5450833050585980515.jpg', 'image/jpeg', 'public', 9198, '[]', '{\"uuid\":\"f8ed76c2-22d4-40d3-be70-fef7f2fadc37\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 615, '2022-12-21 07:59:14', '2022-12-21 07:59:14'),
(637, 'App\\Models\\Upload', 353, 'avatar', 'scaled_image_picker3363738837016873897', 'scaled_image_picker3363738837016873897.jpg', 'image/jpeg', 'public', 12758, '[]', '{\"uuid\":\"3dd156fe-5bfa-4ed9-9704-b6b27360251c\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 616, '2022-12-22 06:27:21', '2022-12-22 06:27:21'),
(638, 'App\\Models\\Upload', 354, 'avatar', 'scaled_image_picker2735176279522606114', 'scaled_image_picker2735176279522606114.jpg', 'image/jpeg', 'public', 77560, '[]', '{\"uuid\":\"92687fff-20a0-4fde-9eb8-2de1013e4f36\",\"user_id\":66,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 617, '2023-04-19 05:37:59', '2023-04-19 05:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_08_29_213829_create_faq_categories_table', 1),
(11, '2019_08_29_213926_create_faqs_table', 1),
(12, '2019_10_22_144652_create_currencies_table', 1),
(13, '2021_01_07_162658_create_payment_methods_table', 1),
(14, '2021_01_07_164755_create_payment_statuses_table', 1),
(15, '2021_01_07_165422_create_payments_table', 1),
(16, '2021_01_13_105605_create_e_provider_types_table', 1),
(17, '2021_01_13_111155_create_e_providers_table', 1),
(18, '2021_01_13_111622_create_experiences_table', 1),
(19, '2021_01_13_111730_create_awards_table', 1),
(20, '2021_01_13_114302_create_taxes_table', 1),
(21, '2021_01_13_200249_create_addresses_table', 1),
(22, '2021_01_15_115239_create_e_provider_addresses_table', 1),
(23, '2021_01_15_115747_create_e_provider_users_table', 1),
(24, '2021_01_15_115850_create_e_provider_taxes_table', 1),
(25, '2021_01_16_160838_create_availability_hours_table', 1),
(26, '2021_01_19_135951_create_e_services_table', 1),
(27, '2021_01_19_140427_create_categories_table', 1),
(28, '2021_01_19_171553_create_e_service_categories_table', 1),
(29, '2021_01_22_194514_create_option_groups_table', 1),
(30, '2021_01_22_200807_create_options_table', 1),
(31, '2021_01_22_205819_create_favorites_table', 1),
(32, '2021_01_22_205944_create_favorite_options_table', 1),
(33, '2021_01_23_125641_create_e_service_reviews_table', 1),
(34, '2021_01_23_201533_create_galleries_table', 1),
(35, '2021_01_25_105421_create_slides_table', 1),
(36, '2021_01_25_162055_create_notifications_table', 1),
(37, '2021_01_25_170522_create_coupons_table', 1),
(38, '2021_01_25_170529_create_discountables_table', 1),
(39, '2021_01_25_191833_create_booking_statuses_table', 1),
(40, '2021_01_25_212252_create_bookings_table', 1),
(41, '2021_01_30_111717_create_e_provider_payouts_table', 1),
(42, '2021_01_30_135356_create_earnings_table', 1),
(43, '2021_02_24_102838_create_custom_pages_table', 1),
(44, '2021_06_26_110636_create_json_extract_function', 1),
(45, '2021_08_08_134136_create_wallets_table', 1),
(46, '2021_08_08_155732_create_wallet_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('000f6057-1ed0-4b6b-83e5-ce5dfde91c7c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":18}', NULL, '2022-06-18 07:35:26', '2022-06-18 07:35:26'),
('0547c25c-d21e-4263-be1f-b33fee71b346', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":15}', NULL, '2022-06-11 05:24:04', '2022-06-11 05:24:04'),
('067bc8fc-b64a-40bc-81ef-3610291fa266', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":19}', '2022-06-18 07:42:22', '2022-06-18 07:41:24', '2022-06-18 07:42:22'),
('089f2ca5-8cbf-4f21-9921-bc8bb8832213', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":10}', NULL, '2022-05-28 09:18:46', '2022-05-28 09:18:46'),
('0ba7103c-0ace-402a-a5e4-19ee5e1f5ed6', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":14}', NULL, '2022-06-11 05:07:02', '2022-06-11 05:07:02'),
('10510d8f-9ecf-434d-92bf-277d478daad2', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":7}', NULL, '2022-05-27 11:22:16', '2022-05-27 11:22:16'),
('106612bb-4a73-4d73-bc73-083e30fb492d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":38}', NULL, '2022-09-14 05:47:34', '2022-09-14 05:47:34'),
('122044b5-aec9-475f-8c08-45a745b11a43', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":19}', NULL, '2022-06-18 07:41:09', '2022-06-18 07:41:09'),
('16393dbd-4e79-4524-93c4-627f2b21f12b', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":14}', NULL, '2022-06-11 05:07:56', '2022-06-11 05:07:56'),
('1c291ed8-9bc0-4dd0-82c7-3767b4822239', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2022-05-27 15:05:43', '2022-05-27 15:05:43'),
('1ed88d43-b7e7-43d3-a97b-15d8e4f7b9b9', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 32, '{\"booking_id\":16}', NULL, '2022-06-11 07:33:50', '2022-06-11 07:33:50'),
('1f457c02-c81d-4a79-b029-5903ff61f7f3', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":2}', NULL, '2022-05-27 09:23:27', '2022-05-27 09:23:27'),
('21767e96-4cd1-435b-aae1-d651110624ee', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:26:54', '2022-06-11 05:26:54'),
('2356df72-042a-443e-9450-b1d740e7de5a', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":10}', NULL, '2022-05-28 09:18:18', '2022-05-28 09:18:18'),
('23add321-a204-49dd-8a1a-f791691304da', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":6}', NULL, '2022-05-27 09:59:53', '2022-05-27 09:59:53'),
('23e09e6b-bd97-4c0d-a461-4870b5814bbb', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 11, '{\"from\":\"Ritu jadhav\",\"message_id\":\"[#5cf9f]\"}', NULL, '2022-05-27 11:33:40', '2022-05-27 11:33:40'),
('254aa212-29b7-41a7-9ca2-408dcdf1f648', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 16, '{\"from\":\"Kavita Jagtap\",\"message_id\":\"[#5cf9f]\"}', NULL, '2022-05-27 11:22:37', '2022-05-27 11:22:37'),
('2a6c5e68-3605-4027-8105-b81724a15cfc', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":17}', NULL, '2022-06-11 07:44:30', '2022-06-11 07:44:30'),
('2db1b217-242a-4e56-b1ab-3c89a4766318', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":9}', NULL, '2022-05-28 08:19:08', '2022-05-28 08:19:08'),
('3117f129-4ec6-4185-ab41-6403cc88b053', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 33, '{\"booking_id\":16}', NULL, '2022-06-11 07:34:19', '2022-06-11 07:34:19'),
('379f03df-4be8-4b0d-a224-bbfe47d70fa1', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:26:56', '2022-06-11 05:26:56'),
('39ab9af7-a1b0-4c40-9229-60683313dfd9', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":7}', NULL, '2022-05-27 11:22:42', '2022-05-27 11:22:42'),
('39e68762-aff0-4c7b-8164-d89651a0c4af', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2022-05-27 10:05:07', '2022-05-27 10:05:07'),
('3d5e097c-4069-4358-ac5b-2bac469eae88', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":11}', NULL, '2022-06-10 15:08:15', '2022-06-10 15:08:15'),
('3d965842-8dd2-41da-be0c-94ec925c2db2', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 19, '{\"booking_id\":8}', '2022-07-08 08:22:05', '2022-05-27 15:05:43', '2022-07-08 08:22:05'),
('3f5040f5-4400-4533-908b-77babe4b0783', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":18}', '2022-08-09 06:26:54', '2022-06-18 07:35:32', '2022-08-09 06:26:54'),
('3f636eb4-977a-4b8d-b887-7e7c02e96c94', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":7}', NULL, '2022-05-27 11:21:47', '2022-05-27 11:21:47'),
('404ab328-de4b-4ef4-9a1d-b6216af150c3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":12}', NULL, '2022-06-11 04:04:02', '2022-06-11 04:04:02'),
('445e6589-148d-4b1d-96f7-b1862c128307', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 31, '{\"booking_id\":18}', '2022-08-09 06:26:19', '2022-06-18 07:36:04', '2022-08-09 06:26:19'),
('4847fbb9-5c93-40fd-aec6-d755985a87d4', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 16, '{\"booking_id\":19}', '2022-06-18 07:45:07', '2022-06-18 07:44:58', '2022-06-18 07:45:07'),
('48ceae28-a9ab-43bb-a48a-42761559d138', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 32, '{\"booking_id\":16}', NULL, '2022-06-11 07:33:36', '2022-06-11 07:33:36'),
('4a151046-6f2e-4068-a25d-d4c413622767', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":12}', NULL, '2022-06-11 04:04:06', '2022-06-11 04:04:06'),
('4a352364-0f2b-4bb3-9ba1-4accfc68d07a', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:25:41', '2022-06-11 05:25:41'),
('4c946d06-3848-4744-beaf-87fa2a596da8', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 19, '{\"booking_id\":6}', '2022-05-27 10:08:07', '2022-05-27 10:05:07', '2022-05-27 10:08:08'),
('4dce9503-496c-4078-b6c1-ce6966bb1547', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 31, '{\"booking_id\":19}', '2022-08-09 06:20:20', '2022-06-18 07:43:36', '2022-08-09 06:20:20'),
('4fdcf83c-e25b-404f-b38a-556e75eda1c2', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 11, '{\"booking_id\":10}', NULL, '2022-05-28 08:22:57', '2022-05-28 08:22:57'),
('50089f14-6d71-4a25-b431-3966a905d48b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":14}', '2022-08-09 06:21:50', '2022-06-11 05:06:41', '2022-08-09 06:21:50'),
('5050f6c2-126f-4b64-91d2-100aa57b763e', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 9, '{\"from\":\"Himanshu\",\"message_id\":\"[#e2cf6]\"}', NULL, '2022-03-22 04:39:31', '2022-03-22 04:39:31'),
('5184d17f-9ace-49c7-803f-581e3e5dbd75', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":26}', NULL, '2022-09-12 14:55:27', '2022-09-12 14:55:27'),
('54655c34-36d9-4bd2-bec0-79f629ae72d9', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":1}', NULL, '2022-05-27 09:00:18', '2022-05-27 09:00:18'),
('5521e2a0-6b79-4a81-9d19-e3efbae8bf0d', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 32, '{\"booking_id\":16}', NULL, '2022-06-11 07:33:39', '2022-06-11 07:33:39'),
('566bd27f-01ce-4994-8dbe-167f1c733c9c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":18}', NULL, '2022-06-18 07:34:38', '2022-06-18 07:34:38'),
('57adfe07-bdc9-4b78-919f-e7ea9954dc1c', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 16, '{\"from\":\"Avadh\",\"message_id\":\"[#3369b]\"}', NULL, '2022-05-27 10:00:39', '2022-05-27 10:00:39'),
('59896ad0-82d2-49f5-aeab-4eff7157a2ad', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":36}', NULL, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
('59db7165-e524-4d16-8118-015423886b18', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 19, '{\"booking_id\":6}', '2022-05-27 10:08:04', '2022-05-27 10:05:13', '2022-05-27 10:08:04'),
('5f51f47d-eac3-426d-befb-6ac1f375a076', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":30}', NULL, '2022-09-14 05:47:31', '2022-09-14 05:47:31'),
('65e0cc2a-a9a3-4314-b10b-febc8fd99a4e', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":16}', NULL, '2022-06-11 07:31:53', '2022-06-11 07:31:53'),
('6739f164-897e-4605-84ab-d5b57a3569ac', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":37}', NULL, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
('6751c978-98de-4840-b7d1-6df4efe7d701', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"shubham\",\"message_id\":\"[#e16b4]\"}', NULL, '2022-03-03 09:29:07', '2022-03-03 09:29:07'),
('67592462-af41-4c27-8e11-0e661f34670b', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":19}', '2022-08-09 06:21:55', '2022-06-18 07:42:52', '2022-08-09 06:21:55'),
('67c0d0c9-b4aa-4964-87c8-fd9192894daf', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":15}', NULL, '2022-06-11 05:27:35', '2022-06-11 05:27:35'),
('6ce747c5-7cb5-4c09-ac84-2d30b28d1ba9', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":39}', NULL, '2022-09-14 05:47:35', '2022-09-14 05:47:35'),
('6ec5be4c-61ec-48ab-bcc5-7d0db0c304a4', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:28:28', '2022-06-11 05:28:28'),
('7145edc1-7dd1-451f-90af-3c13cefa8c23', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":13}', '2022-08-09 06:21:43', '2022-06-11 04:42:36', '2022-08-09 06:21:43'),
('71a83804-5354-4c26-b8b6-37927fafaa34', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":11}', NULL, '2022-06-10 15:08:20', '2022-06-10 15:08:20'),
('72da11c2-0320-4155-82b8-168208554ba1', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":15}', '2022-06-11 05:28:18', '2022-06-11 05:27:37', '2022-06-11 05:28:18'),
('74611ad7-b7fe-4599-a76d-173189dc41eb', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', '2022-06-11 05:26:07', '2022-06-11 05:25:44', '2022-06-11 05:26:07'),
('769c7963-35ee-4bf6-bfd2-1a55b534631c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":12}', NULL, '2022-06-11 04:03:35', '2022-06-11 04:03:35'),
('76c2c86f-7602-4e56-8f2c-40c01ec74579', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":17}', '2022-08-09 06:27:08', '2022-06-11 07:44:02', '2022-08-09 06:27:08'),
('7711a337-1cb4-45da-aa92-ca6c5a90e7bc', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 11, '{\"booking_id\":7}', NULL, '2022-05-27 11:21:17', '2022-05-27 11:21:17'),
('7a433a62-12c7-4c8e-8cbe-46a2ba934968', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":14}', '2022-06-11 05:07:44', '2022-06-11 05:07:04', '2022-06-11 05:07:44'),
('7f4fbcf3-4220-498f-b82a-f52855643f6a', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 31, '{\"booking_id\":14}', '2022-06-11 05:10:42', '2022-06-11 05:09:07', '2022-06-11 05:10:42'),
('7fd0da83-de6f-446d-8a97-8ed5901ff341', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":16}', NULL, '2022-06-11 07:31:50', '2022-06-11 07:31:50'),
('80be21fc-f407-4e00-bb61-e46afa2ef0f0', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2022-05-27 10:05:04', '2022-05-27 10:05:04'),
('865ab60c-fba4-4838-81ce-5102ba37a230', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 16, '{\"from\":\"Avadh\",\"message_id\":\"[#3369b]\"}', NULL, '2022-05-27 10:00:45', '2022-05-27 10:00:45'),
('86a307f4-5a42-4e99-9e94-55fbf2f1fb7c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":18}', NULL, '2022-06-18 07:31:35', '2022-06-18 07:31:35'),
('8ac43744-eec9-40b1-8d1b-3360a1fb228f', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":10}', NULL, '2022-05-28 09:18:43', '2022-05-28 09:18:43'),
('8b80bf94-0cc6-4a3c-9c7b-ded1c3aa600d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":33}', NULL, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
('8b9964d8-9d61-42e3-9c1a-f1fdd2dc300b', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 31, '{\"booking_id\":15}', '2022-06-11 05:26:38', '2022-06-11 05:26:25', '2022-06-11 05:26:38'),
('8de2af70-79c9-4f0b-9401-d1187c893176', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":14}', NULL, '2022-06-11 05:08:45', '2022-06-11 05:08:45'),
('8df1140c-93bb-4d45-839d-228e58237853', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":18}', NULL, '2022-06-18 07:34:46', '2022-06-18 07:34:46'),
('93cd5189-79cd-4db3-bd60-22fa55e59a15', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":4}', NULL, '2022-05-27 09:30:45', '2022-05-27 09:30:45'),
('947cb038-2e18-44a0-a406-b9468779c6a9', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 11, '{\"from\":\"Ritu jadhav\",\"message_id\":\"[#5cf9f]\"}', NULL, '2022-05-27 11:33:14', '2022-05-27 11:33:14'),
('94afb881-8bf3-4740-a1da-fc8e0a1fc68b', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":16}', NULL, '2022-06-11 07:31:47', '2022-06-11 07:31:47'),
('96b7c34b-00f4-42df-94d0-89716d207022', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 4, '{\"from\":\"Avadh\",\"message_id\":\"[#7b87d]\"}', NULL, '2022-09-12 06:22:29', '2022-09-12 06:22:29'),
('97dbfecc-c6ab-400b-97ea-6e7ae1b17627', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 31, '{\"booking_id\":19}', '2022-08-09 06:27:03', '2022-06-18 07:39:43', '2022-08-09 06:27:03'),
('9c96e5b3-a968-483f-974e-21ebb8d4208d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":34}', NULL, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
('9ea3ba90-1501-4037-9301-c72334363467', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2022-06-24 14:45:46', '2022-06-24 14:45:46'),
('a06d4c8f-195d-41ce-8228-cbf4d984beb3', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":31}', NULL, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
('a21634a6-0f25-4158-afb5-7de89f14da33', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 4, '{\"from\":\"shubham\",\"message_id\":\"[#e16b4]\"}', NULL, '2022-03-03 09:29:07', '2022-03-03 09:29:07'),
('a3f3de0f-ddb1-4e54-adbc-e08f5a4a6627', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":15}', '2022-08-09 06:21:35', '2022-06-11 05:26:13', '2022-08-09 06:21:35'),
('a562cf06-99d8-4fe0-b294-ce8523145aae', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":17}', '2022-06-11 07:45:08', '2022-06-11 07:44:32', '2022-06-11 07:45:08'),
('a6b9d32f-9989-405b-9133-ccacad8e0f5e', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:28:30', '2022-06-11 05:28:30'),
('aa691e3a-7579-4de3-a68c-a99aa0fe8ccb', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":28}', NULL, '2022-09-14 05:47:26', '2022-09-14 05:47:26'),
('ab51d65d-d543-4fee-94d5-9fd83e3cf413', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":17}', NULL, '2022-06-18 07:32:53', '2022-06-18 07:32:53'),
('ad9a3b2a-7417-4d56-af24-4e792c061ea0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":3}', NULL, '2022-05-27 09:27:53', '2022-05-27 09:27:53'),
('b0f21466-bf05-44a3-92e8-ae56aecfa4b0', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":19}', '2022-08-09 06:22:05', '2022-06-18 07:42:43', '2022-08-09 06:22:05'),
('b1315d2a-7909-4dd1-b925-4437becf0520', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":29}', NULL, '2022-09-14 05:47:31', '2022-09-14 05:47:31'),
('b602dfb3-c6e0-41fd-b5e9-569c4cbde141', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:28:25', '2022-06-11 05:28:25'),
('ba896e54-f23a-4e88-88ec-c057158eba01', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":6}', '2022-05-27 10:04:48', '2022-05-27 09:56:16', '2022-05-27 10:04:48'),
('be3de4e0-0d3d-4875-a6ce-56537409a05c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":17}', NULL, '2022-06-11 07:45:13', '2022-06-11 07:45:13'),
('c1b7aa57-bc4a-4c45-aefd-6f977f920ee0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 19, '{\"booking_id\":6}', '2022-05-27 10:08:37', '2022-05-27 09:55:15', '2022-05-27 10:08:37'),
('c1f036a0-8063-46ba-918e-3dd2c8b808b2', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":12}', NULL, '2022-06-11 04:04:04', '2022-06-11 04:04:04'),
('c2432b78-7281-4a75-94f0-04cdcbbbe93b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 11, '{\"booking_id\":9}', NULL, '2022-05-28 08:12:24', '2022-05-28 08:12:24'),
('c4a91d69-1993-41a3-bf46-06e2dc36fb65', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', '2022-06-11 05:27:30', '2022-06-11 05:26:57', '2022-06-11 05:27:30'),
('c5c7938b-4109-4833-b8fd-f7953e6a82cf', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 16, '{\"booking_id\":18}', NULL, '2022-06-18 07:46:00', '2022-06-18 07:46:00'),
('c74400c3-50aa-43bd-8e78-107b92961c67', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":19}', NULL, '2022-06-18 07:41:21', '2022-06-18 07:41:21'),
('ca64a4ff-32a5-4dce-9ef7-b7e4b32216d5', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":20}', NULL, '2022-09-12 03:58:20', '2022-09-12 03:58:20'),
('cd1093cf-b994-41d8-82d2-c09a26bbd79c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":15}', NULL, '2022-06-11 05:25:39', '2022-06-11 05:25:39'),
('cf8c4511-7464-4df8-8a0b-7c258064f23d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":35}', NULL, '2022-09-14 05:47:33', '2022-09-14 05:47:33'),
('cfb6f359-cf08-4ef9-a0a7-0913089060b3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":18}', '2022-06-18 07:35:17', '2022-06-18 07:34:51', '2022-06-18 07:35:17'),
('d0d9babf-664d-4352-b939-54e824752286', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":9}', NULL, '2022-05-28 09:20:12', '2022-05-28 09:20:12'),
('d23c6623-491f-46b2-9dbe-d70a77ee9468', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Avadh\",\"message_id\":\"[#3369b]\"}', NULL, '2022-05-27 10:00:45', '2022-05-27 10:00:45'),
('d2b08ba8-4c14-4484-b18d-72d33a7ecf2b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 30, '{\"booking_id\":11}', NULL, '2022-06-10 15:06:46', '2022-06-10 15:06:46'),
('d6e99509-c80b-4aff-a7e9-74905e15802f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2022-05-27 09:55:15', '2022-05-27 09:55:15'),
('e2189d7a-2642-4f40-9ff7-a5987a77e9be', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":11}', NULL, '2022-06-10 15:07:15', '2022-06-10 15:07:15'),
('e22c684b-7035-4820-af4e-a0c2c1ecfd67', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":6}', NULL, '2022-05-27 09:57:22', '2022-05-27 09:57:22'),
('e5553efb-3365-46d4-9a47-931b82b04939', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":5}', NULL, '2022-05-27 09:45:31', '2022-05-27 09:45:31'),
('e64e9e17-6bc3-4452-ab86-59fce5bd8eb2', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":21}', NULL, '2022-09-12 04:13:20', '2022-09-12 04:13:20'),
('e785da1e-00e8-45fa-9ce8-f98371adc190', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 19, '{\"booking_id\":6}', '2022-05-27 10:08:28', '2022-05-27 10:05:05', '2022-05-27 10:08:28'),
('e9ecd26c-9e1a-479c-84c8-d22fe88806df', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 17, '{\"booking_id\":8}', NULL, '2022-06-24 14:45:46', '2022-06-24 14:45:46'),
('eb5986f4-ffe4-4208-a15c-999da842cd01', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 31, '{\"booking_id\":15}', NULL, '2022-06-11 05:26:19', '2022-06-11 05:26:19'),
('edb872f1-d194-4a62-a46e-fd8d48bed193', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":27}', NULL, '2022-09-12 14:57:23', '2022-09-12 14:57:23'),
('efac2716-04b7-44d2-8031-34814a2d3d50', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Avadh\",\"message_id\":\"[#3369b]\"}', NULL, '2022-05-27 10:00:39', '2022-05-27 10:00:39'),
('f0112434-a540-4bc6-9df5-01ca1d43b514', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2022-05-27 10:05:13', '2022-05-27 10:05:13'),
('f3c6b43e-2b00-436c-8784-dc685eabac19', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 16, '{\"booking_id\":14}', '2022-06-11 05:11:31', '2022-06-11 05:11:07', '2022-06-11 05:11:31'),
('f3e4b292-2f4c-4b91-b0ba-8183fec5d209', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 19, '{\"booking_id\":8}', '2022-07-08 08:08:22', '2022-06-24 14:45:46', '2022-07-08 08:08:22'),
('f51653d4-9583-41a2-94cd-457c6f77a1d0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":32}', NULL, '2022-09-14 05:47:32', '2022-09-14 05:47:32'),
('f680045b-a5f8-410b-b6c3-29b25a0e18a1', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":14}', NULL, '2022-06-11 05:06:59', '2022-06-11 05:06:59'),
('fcb09871-311e-4b39-a0fd-cace3fb8945f', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 16, '{\"booking_id\":17}', NULL, '2022-06-11 07:44:27', '2022-06-11 07:44:27'),
('fd09700d-0be9-4b8f-ada2-16793243e362', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 32, '{\"booking_id\":16}', NULL, '2022-06-11 07:31:33', '2022-06-11 07:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `e_service_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"40m\"}', '{\"en\":\"<p><span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span><br><\\/p>\"}', 32.69, 8, 3, '2022-03-02 08:52:41', '2022-04-07 10:31:56'),
(3, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Services a community health nurse is able to provide include: care after a hospital stay. general nursing care, including assistance with chronic conditions.<\\/span>\"}', 15.91, 6, 3, '2022-03-02 08:52:41', '2022-04-07 10:30:24'),
(4, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 45.75, 9, 1, '2022-03-02 08:52:41', '2022-04-07 10:37:42'),
(5, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span>\"}', 16.82, 8, 3, '2022-03-02 08:52:41', '2022-04-07 10:32:15'),
(6, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 38.29, 4, 2, '2022-03-02 08:52:41', '2022-04-07 10:34:52'),
(10, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 10.93, 4, 3, '2022-03-02 08:52:41', '2022-04-07 10:35:45'),
(14, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span>\"}', 46.96, 5, 2, '2022-03-02 08:52:41', '2022-04-07 10:41:30'),
(18, '{\"en\":\"20m\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 44.87, 4, 1, '2022-03-02 08:52:41', '2022-04-07 10:35:15'),
(24, '{\"en\":\"20m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 32.05, 9, 2, '2022-03-02 08:52:41', '2022-04-07 10:38:23'),
(25, '{\"en\":\"10m²\"}', '{\"en\":\"hospital \"}', 14.94, 1, 1, '2022-03-02 08:52:41', '2022-04-07 10:10:39'),
(26, '{\"en\":\"20m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;Common responsibilities include bone setting, blood transfusions, wound care, medication administration, and much more.<\\/span>\"}', 13.76, 10, 1, '2022-03-02 08:52:41', '2022-04-07 10:46:13'),
(33, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Services a community health nurse is able to provide include: care after a hospital stay. general nursing care, including assistance with chronic conditions.<\\/span>\"}', 11.63, 6, 3, '2022-03-02 08:52:41', '2022-04-07 10:30:48'),
(34, '{\"en\":\"10m²\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 30.62, 4, 2, '2022-03-02 08:52:41', '2022-04-07 10:34:27'),
(36, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 19.42, 9, 3, '2022-03-02 08:52:41', '2022-04-07 10:37:19'),
(46, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">&nbsp;Common responsibilities include bone setting, blood transfusions, wound care, medication administration, and much more.<\\/span>\"}', 32.29, 10, 3, '2022-03-02 08:52:41', '2022-04-07 10:45:53'),
(49, '{\"en\":\"20m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span>\"}', 22.51, 8, 1, '2022-03-02 08:52:41', '2022-04-07 10:32:48'),
(52, '{\"en\":\"20m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Services a community health nurse is able to provide include: care after a hospital stay. general nursing care, including assistance with chronic conditions.<\\/span>\"}', 28.95, 6, 3, '2022-03-02 08:52:41', '2022-04-07 10:29:50'),
(55, '{\"en\":\"10m²\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Cardiac care nurses treat and care for patients with a variety of heart diseases or conditions. If you are curious about what it’s like to be a cardiac nurse, then keep reading.<\\/span>\"}', 26.83, 8, 1, '2022-03-02 08:52:41', '2022-04-07 10:33:12'),
(69, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 35.63, 9, 2, '2022-03-02 08:52:41', '2022-04-07 10:38:57'),
(72, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif;\\\">Educational Dividends also knows that creating a facilitative learning environment brings challenges for teachers.<\\/span>\"}', 46.74, 9, 1, '2022-03-02 08:52:41', '2022-04-07 10:36:56'),
(74, '{\"en\":\"10m²\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">It is a demanding but challenging job, that involves a wide variety of tasks and responsibilities.<\\/span>\"}', 32.27, 4, 2, '2022-03-02 08:52:41', '2022-04-07 10:34:07'),
(87, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">cosmetic<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">&nbsp;<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">nurses<\\/span><span style=\\\"color: rgb(0, 0, 0); font-family: Roboto, &quot;helvetica neue&quot;, helvetica, arial, sans-serif;\\\">&nbsp;are registered nurses who provide a variety of services.<\\/span>\"}', 40.01, 7, 3, '2022-03-02 08:52:41', '2022-04-07 10:50:53'),
(88, '{\"en\":\"40m\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">A certified&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">, sometimes referred to as a CNM or simply a&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span>\"}', 39.28, 2, 2, '2022-03-02 08:52:41', '2022-04-07 10:43:34'),
(95, '{\"en\":\"30m²\"}', '{\"en\":\"<span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">A certified&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">, sometimes referred to as a CNM or simply a&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">nurse<\\/span><span style=\\\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span><span style=\\\"font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;\\\">midwife<\\/span>\"}', 18.15, 2, 1, '2022-03-02 08:52:41', '2022-04-07 10:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `allow_multiple`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2021-01-22 19:49:15', '2021-02-07 20:30:19'),
(2, 'Area', 1, '2021-01-22 20:46:28', '2021-01-22 20:46:28'),
(3, 'Surface', 0, '2021-01-22 20:46:47', '2021-01-22 20:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('meet60app@gmail.com', '$2y$10$bDLdO9oIwK3tU4XTRUEaDuwgnPjhHR3zper/kk777GAJgVQKMtHe2', '2022-05-16 07:52:28'),
('kavitagraphic@gmail.com', '$2y$10$ljzJix5yvZFDy2vc80pK2eyyqsG.oI4BzpneVAzU79mhtGaEpLC56', '2022-05-19 06:37:55'),
('er@hh.com', '$2y$10$MeFbfYZRTBwAXDpgBG/S/.v0X6bSfHnuXyzJhd0eFEtdsUdEyd9Ue', '2022-09-12 04:41:32'),
('rohit.maxus@gmail.com', '$2y$10$IJGoEsBIs.eBrOqCplCBvu8wEw71ho9csAduVwKSFgVvHD78TqpsW', '2022-09-13 10:53:20'),
('rohitzadane7888@gmail.com', '$2y$10$zCH3vTw72cbnGrsioERYX.iNmtMS2bK5wxLGv2aqVMDloYjNrN.lq', '2022-09-14 03:32:09'),
('zadanerohit143@gmail.com', '$2y$10$m0e/spL5eNvyGQJXOIu8kebz9qQyE0i8BBjQGQI89rYso59ypBGDa', '2022-09-21 09:53:56'),
('team@solicitousbusiness.com', '$2y$10$CmW7y2AAnr3QfgA0QF6QM.NI.hC77sJg1T0.cZHmmQ.Zr5kWVUeqq', '2023-03-30 08:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `description`, `user_id`, `payment_method_id`, `payment_status_id`, `created_at`, `updated_at`) VALUES
(1, 48.00, 'Transaction for Booking #6', 16, 6, 1, '2022-05-27 10:05:13', '2022-05-27 10:05:13'),
(2, 82.50, 'Transaction for Booking #14', 16, 6, 2, '2022-06-11 05:09:07', '2022-06-11 05:11:07'),
(3, 495.00, 'Transaction for Booking #15', 16, 6, 1, '2022-06-11 05:26:25', '2022-06-11 05:26:25'),
(4, 45.00, 'Transaction for Booking #16', 33, 6, 2, '2022-06-11 07:33:49', '2022-06-11 07:34:19'),
(5, 0.00, 'Transaction for Booking #18', 16, 6, 2, '2022-06-18 07:36:04', '2022-06-18 07:46:00'),
(6, 605.00, 'Transaction for Booking #19', 16, 6, 2, '2022-06-18 07:43:36', '2022-06-18 07:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `route` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `route`, `order`, `default`, `enabled`, `created_at`, `updated_at`) VALUES
(2, 'RazorPay', 'Click to pay with RazorPay gateway', '/RazorPay', 2, 0, 1, '2021-01-17 14:33:49', '2021-02-17 22:37:30'),
(5, 'PayPal', 'Click to pay with your PayPal account', '/PayPal', 1, 0, 1, '2021-01-17 15:46:06', '2021-02-17 22:38:47'),
(6, 'Cash', 'Click to pay cash when finish', '/Cash', 3, 1, 1, '2021-02-17 22:38:42', '2021-02-17 22:38:42'),
(7, 'Credit Card (Stripe)', 'Click to pay with your Credit Card', '/Stripe', 3, 0, 1, '2021-02-17 22:38:42', '2021-02-17 22:38:42'),
(8, 'PayStack', 'Click to pay with PayStack gateway', '/PayStack', 5, 0, 1, '2021-07-23 22:38:42', '2021-07-23 22:38:42'),
(9, 'FlutterWave', 'Click to pay with FlutterWave gateway', '/FlutterWave', 6, 0, 1, '2021-07-23 22:38:42', '2021-07-23 22:38:42'),
(10, 'Malaysian Stripe FPX	', 'Click to pay with Stripe FPX gateway', '/StripeFPX', 7, 0, 1, '2021-07-24 22:38:42', '2021-07-24 22:38:42'),
(11, 'Wallet', 'Click to pay with Wallet', '/Wallet', 8, 0, 1, '2021-08-08 22:38:42', '2021-08-08 22:38:42'),
(12, 'PayMongo', 'Click to pay with PayMongo', '/PayMongo', 12, 0, 1, '2021-10-08 22:38:42', '2021-10-08 22:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2021-01-17 15:28:28', '2021-02-17 21:55:15'),
(2, 'Paid', 10, '2021-01-11 23:19:49', '2021-02-17 21:55:53'),
(3, 'Failed', 20, '2021-01-17 14:05:04', '2021-02-17 21:56:32'),
(4, 'Refunded', 40, '2021-02-17 21:58:14', '2021-02-17 21:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2021-01-07 13:17:34', '2021-01-07 13:17:34'),
(2, 'medias.create', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(3, 'users.profile', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(4, 'users.index', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(5, 'users.create', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(6, 'users.store', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(7, 'users.show', 'web', '2021-01-07 13:17:35', '2021-01-07 13:17:35'),
(8, 'users.edit', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(9, 'users.update', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(10, 'users.destroy', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(11, 'medias.delete', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(12, 'medias', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(13, 'permissions.index', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(14, 'permissions.create', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(15, 'permissions.store', 'web', '2021-01-07 13:17:36', '2021-01-07 13:17:36'),
(16, 'permissions.show', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(17, 'permissions.edit', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(18, 'permissions.update', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(19, 'permissions.destroy', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(20, 'roles.index', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(21, 'roles.create', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(22, 'roles.store', 'web', '2021-01-07 13:17:37', '2021-01-07 13:17:37'),
(23, 'roles.show', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(24, 'roles.edit', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(25, 'roles.update', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(26, 'roles.destroy', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(27, 'customFields.index', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(28, 'customFields.create', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(29, 'customFields.store', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(30, 'customFields.show', 'web', '2021-01-07 13:17:38', '2021-01-07 13:17:38'),
(31, 'customFields.edit', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(32, 'customFields.update', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(33, 'customFields.destroy', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(34, 'currencies.index', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(35, 'currencies.create', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(36, 'currencies.store', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(37, 'currencies.edit', 'web', '2021-01-07 13:17:39', '2021-01-07 13:17:39'),
(38, 'currencies.update', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(39, 'currencies.destroy', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(40, 'users.login-as-user', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(41, 'app-settings', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(42, 'faqCategories.index', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(43, 'faqCategories.create', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(44, 'faqCategories.store', 'web', '2021-01-07 13:17:40', '2021-01-07 13:17:40'),
(45, 'faqCategories.edit', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(46, 'faqCategories.update', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(47, 'faqCategories.destroy', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(48, 'faqs.index', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(49, 'faqs.create', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(50, 'faqs.store', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(51, 'faqs.edit', 'web', '2021-01-07 13:17:41', '2021-01-07 13:17:41'),
(52, 'faqs.update', 'web', '2021-01-07 13:17:42', '2021-01-07 13:17:42'),
(53, 'faqs.destroy', 'web', '2021-01-07 13:17:42', '2021-01-07 13:17:42'),
(54, 'payments.index', 'web', '2021-01-11 00:04:33', '2021-01-11 00:04:33'),
(55, 'payments.show', 'web', '2021-01-11 00:04:33', '2021-01-11 00:04:33'),
(56, 'payments.update', 'web', '2021-01-11 00:04:33', '2021-01-11 00:04:33'),
(57, 'paymentMethods.index', 'web', '2021-01-11 00:04:33', '2021-01-11 00:04:33'),
(58, 'paymentMethods.create', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(59, 'paymentMethods.store', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(60, 'paymentMethods.edit', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(61, 'paymentMethods.update', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(62, 'paymentMethods.destroy', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(63, 'paymentStatuses.index', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(64, 'paymentStatuses.create', 'web', '2021-01-11 00:04:34', '2021-01-11 00:04:34'),
(65, 'paymentStatuses.store', 'web', '2021-01-11 00:04:35', '2021-01-11 00:04:35'),
(66, 'paymentStatuses.edit', 'web', '2021-01-11 00:04:35', '2021-01-11 00:04:35'),
(67, 'paymentStatuses.update', 'web', '2021-01-11 00:04:35', '2021-01-11 00:04:35'),
(68, 'paymentStatuses.destroy', 'web', '2021-01-11 00:04:35', '2021-01-11 00:04:35'),
(69, 'verification.notice', 'web', '2021-01-12 10:19:50', '2021-01-12 10:19:50'),
(70, 'verification.verify', 'web', '2021-01-12 10:19:50', '2021-01-12 10:19:50'),
(71, 'verification.resend', 'web', '2021-01-12 10:19:51', '2021-01-12 10:19:51'),
(72, 'awards.index', 'web', '2021-01-12 10:19:51', '2021-01-12 10:19:51'),
(73, 'awards.create', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(74, 'awards.store', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(75, 'awards.show', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(76, 'awards.edit', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(77, 'awards.update', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(78, 'awards.destroy', 'web', '2021-01-12 10:19:52', '2021-01-12 10:19:52'),
(79, 'experiences.index', 'web', '2021-01-12 11:20:29', '2021-01-12 11:20:29'),
(80, 'experiences.create', 'web', '2021-01-12 11:20:29', '2021-01-12 11:20:29'),
(81, 'experiences.store', 'web', '2021-01-12 11:20:30', '2021-01-12 11:20:30'),
(82, 'experiences.show', 'web', '2021-01-12 11:20:30', '2021-01-12 11:20:30'),
(83, 'experiences.edit', 'web', '2021-01-12 11:20:30', '2021-01-12 11:20:30'),
(84, 'experiences.update', 'web', '2021-01-12 11:20:30', '2021-01-12 11:20:30'),
(85, 'experiences.destroy', 'web', '2021-01-12 11:20:30', '2021-01-12 11:20:30'),
(92, 'eProviderTypes.index', 'web', '2021-01-13 11:31:08', '2021-01-13 11:31:08'),
(93, 'eProviderTypes.create', 'web', '2021-01-13 11:31:09', '2021-01-13 11:31:09'),
(94, 'eProviderTypes.store', 'web', '2021-01-13 11:31:09', '2021-01-13 11:31:09'),
(95, 'eProviderTypes.edit', 'web', '2021-01-13 11:31:09', '2021-01-13 11:31:09'),
(96, 'eProviderTypes.update', 'web', '2021-01-13 11:31:09', '2021-01-13 11:31:09'),
(97, 'eProviderTypes.destroy', 'web', '2021-01-13 11:31:09', '2021-01-13 11:31:09'),
(98, 'eProviders.index', 'web', '2021-01-13 11:48:55', '2021-01-13 11:48:55'),
(99, 'eProviders.create', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(100, 'eProviders.store', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(101, 'eProviders.edit', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(102, 'eProviders.update', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(103, 'eProviders.destroy', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(104, 'addresses.index', 'web', '2021-01-13 11:48:56', '2021-01-13 11:48:56'),
(105, 'addresses.create', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(106, 'addresses.store', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(107, 'addresses.edit', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(108, 'addresses.update', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(109, 'addresses.destroy', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(110, 'taxes.index', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(111, 'taxes.create', 'web', '2021-01-13 11:48:57', '2021-01-13 11:48:57'),
(112, 'taxes.store', 'web', '2021-01-13 11:48:58', '2021-01-13 11:48:58'),
(113, 'taxes.edit', 'web', '2021-01-13 11:48:58', '2021-01-13 11:48:58'),
(114, 'taxes.update', 'web', '2021-01-13 11:48:58', '2021-01-13 11:48:58'),
(115, 'taxes.destroy', 'web', '2021-01-13 11:48:58', '2021-01-13 11:48:58'),
(116, 'availabilityHours.index', 'web', '2021-01-16 16:14:21', '2021-01-16 16:14:21'),
(117, 'availabilityHours.create', 'web', '2021-01-16 16:14:21', '2021-01-16 16:14:21'),
(118, 'availabilityHours.store', 'web', '2021-01-16 16:14:21', '2021-01-16 16:14:21'),
(119, 'availabilityHours.edit', 'web', '2021-01-16 16:14:21', '2021-01-16 16:14:21'),
(120, 'availabilityHours.update', 'web', '2021-01-16 16:14:22', '2021-01-16 16:14:22'),
(121, 'availabilityHours.destroy', 'web', '2021-01-16 16:14:22', '2021-01-16 16:14:22'),
(122, 'eServices.index', 'web', '2021-01-19 14:03:00', '2021-01-19 14:03:00'),
(123, 'eServices.create', 'web', '2021-01-19 14:03:00', '2021-01-19 14:03:00'),
(124, 'eServices.store', 'web', '2021-01-19 14:03:00', '2021-01-19 14:03:00'),
(126, 'eServices.edit', 'web', '2021-01-19 14:03:01', '2021-01-19 14:03:01'),
(127, 'eServices.update', 'web', '2021-01-19 14:03:01', '2021-01-19 14:03:01'),
(128, 'eServices.destroy', 'web', '2021-01-19 14:03:01', '2021-01-19 14:03:01'),
(129, 'categories.index', 'web', '2021-01-19 14:08:55', '2021-01-19 14:08:55'),
(130, 'categories.create', 'web', '2021-01-19 14:08:55', '2021-01-19 14:08:55'),
(131, 'categories.store', 'web', '2021-01-19 14:08:55', '2021-01-19 14:08:55'),
(132, 'categories.edit', 'web', '2021-01-19 14:08:55', '2021-01-19 14:08:55'),
(133, 'categories.update', 'web', '2021-01-19 14:08:56', '2021-01-19 14:08:56'),
(134, 'categories.destroy', 'web', '2021-01-19 14:08:56', '2021-01-19 14:08:56'),
(135, 'optionGroups.index', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(136, 'optionGroups.create', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(137, 'optionGroups.store', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(138, 'optionGroups.edit', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(139, 'optionGroups.update', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(140, 'optionGroups.destroy', 'web', '2021-01-22 19:48:32', '2021-01-22 19:48:32'),
(141, 'options.index', 'web', '2021-01-22 20:10:51', '2021-01-22 20:10:51'),
(142, 'options.create', 'web', '2021-01-22 20:10:51', '2021-01-22 20:10:51'),
(143, 'options.store', 'web', '2021-01-22 20:10:52', '2021-01-22 20:10:52'),
(144, 'options.edit', 'web', '2021-01-22 20:10:52', '2021-01-22 20:10:52'),
(145, 'options.update', 'web', '2021-01-22 20:10:52', '2021-01-22 20:10:52'),
(146, 'options.destroy', 'web', '2021-01-22 20:10:52', '2021-01-22 20:10:52'),
(147, 'favorites.index', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(148, 'favorites.create', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(149, 'favorites.store', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(150, 'favorites.edit', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(151, 'favorites.update', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(152, 'favorites.destroy', 'web', '2021-01-22 21:01:13', '2021-01-22 21:01:13'),
(153, 'eServiceReviews.index', 'web', '2021-01-23 19:42:57', '2021-01-23 19:42:57'),
(154, 'eServiceReviews.create', 'web', '2021-01-23 19:42:58', '2021-01-23 19:42:58'),
(155, 'eServiceReviews.store', 'web', '2021-01-23 19:42:58', '2021-01-23 19:42:58'),
(156, 'eServiceReviews.edit', 'web', '2021-01-23 19:42:58', '2021-01-23 19:42:58'),
(157, 'eServiceReviews.update', 'web', '2021-01-23 19:42:58', '2021-01-23 19:42:58'),
(158, 'eServiceReviews.destroy', 'web', '2021-01-23 19:42:58', '2021-01-23 19:42:58'),
(160, 'galleries.index', 'web', '2021-01-23 20:17:46', '2021-01-23 20:17:46'),
(161, 'galleries.create', 'web', '2021-01-23 20:17:47', '2021-01-23 20:17:47'),
(162, 'galleries.store', 'web', '2021-01-23 20:17:47', '2021-01-23 20:17:47'),
(163, 'galleries.edit', 'web', '2021-01-23 20:17:47', '2021-01-23 20:17:47'),
(164, 'galleries.update', 'web', '2021-01-23 20:17:47', '2021-01-23 20:17:47'),
(165, 'galleries.destroy', 'web', '2021-01-23 20:17:47', '2021-01-23 20:17:47'),
(166, 'requestedEProviders.index', 'web', '2021-01-25 09:53:17', '2021-01-25 09:53:17'),
(167, 'slides.index', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(168, 'slides.create', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(169, 'slides.store', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(170, 'slides.edit', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(171, 'slides.update', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(172, 'slides.destroy', 'web', '2021-01-25 11:01:20', '2021-01-25 11:01:20'),
(173, 'notifications.index', 'web', '2021-01-25 15:42:33', '2021-01-25 15:42:33'),
(174, 'notifications.show', 'web', '2021-01-25 15:42:34', '2021-01-25 15:42:34'),
(175, 'notifications.destroy', 'web', '2021-01-25 15:42:34', '2021-01-25 15:42:34'),
(176, 'coupons.index', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(177, 'coupons.create', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(178, 'coupons.store', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(179, 'coupons.edit', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(180, 'coupons.update', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(181, 'coupons.destroy', 'web', '2021-01-25 16:11:55', '2021-01-25 16:11:55'),
(182, 'bookingStatuses.index', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(183, 'bookingStatuses.create', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(184, 'bookingStatuses.store', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(185, 'bookingStatuses.edit', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(186, 'bookingStatuses.update', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(187, 'bookingStatuses.destroy', 'web', '2021-01-25 19:21:01', '2021-01-25 19:21:01'),
(188, 'bookings.index', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(189, 'bookings.create', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(190, 'bookings.store', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(191, 'bookings.show', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(192, 'bookings.edit', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(193, 'bookings.update', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(194, 'bookings.destroy', 'web', '2021-01-25 21:27:09', '2021-01-25 21:27:09'),
(195, 'eProviderPayouts.index', 'web', '2021-01-30 11:23:08', '2021-01-30 11:23:08'),
(196, 'eProviderPayouts.create', 'web', '2021-01-30 11:23:08', '2021-01-30 11:23:08'),
(197, 'eProviderPayouts.store', 'web', '2021-01-30 11:23:08', '2021-01-30 11:23:08'),
(198, 'eProviderPayouts.destroy', 'web', '2021-01-30 11:23:09', '2021-01-30 11:23:09'),
(199, 'earnings.index', 'web', '2021-01-30 13:57:57', '2021-01-30 13:57:57'),
(200, 'earnings.create', 'web', '2021-01-30 13:57:57', '2021-01-30 13:57:57'),
(201, 'earnings.store', 'web', '2021-01-30 13:57:57', '2021-01-30 13:57:57'),
(202, 'earnings.destroy', 'web', '2021-01-30 13:57:57', '2021-01-30 13:57:57'),
(203, 'customPages.index', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(204, 'customPages.create', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(205, 'customPages.store', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(206, 'customPages.show', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(207, 'customPages.edit', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(208, 'customPages.update', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(209, 'customPages.destroy', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(210, 'wallets.index', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(211, 'wallets.create', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(212, 'wallets.store', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(213, 'wallets.update', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(214, 'wallets.edit', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(215, 'wallets.destroy', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(216, 'walletTransactions.index', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(217, 'walletTransactions.create', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(218, 'walletTransactions.store', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `provider_document`
--

CREATE TABLE `provider_document` (
  `provider_document_id` int(10) NOT NULL,
  `provider_id` int(10) NOT NULL,
  `aadhar` text,
  `pan` text,
  `degree` text,
  `passport` text,
  `medical` text,
  `experience` text,
  `added_on` varchar(30) NOT NULL,
  `verifed` varchar(255) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_document`
--

INSERT INTO `provider_document` (`provider_document_id`, `provider_id`, `aadhar`, `pan`, `degree`, `passport`, `medical`, `experience`, `added_on`, `verifed`) VALUES
(7, 41, 'upload/documents/1792297035.jpg', 'upload/documents/248410113.jpg', '[\"upload\\/documents\\/636616613.jpg\"]', '', '[\"upload\\/documents\\/1099213206.jpg\",\"upload\\/documents\\/602886348.png\"]', '[\"upload\\/documents\\/1719402367.jpg\",\"upload\\/documents\\/1963282257.png\"]', '', 'false'),
(8, 37, 'upload/documents/467152560.jpg', 'upload/documents/326157268.jpg', 'upload/documents/106530698.jpg', '', '', '', '', 'false'),
(9, 34, 'upload/documents/1580848364.jpg', 'upload/documents/1934705298.jpg', 'upload/documents/95266847.jpg', '', '', '', '', 'false'),
(10, 18, 'upload/documents/1956689857.jpg', 'upload/documents/787489994.jpg', 'upload/documents/1683281717.jpg', '', '', '', '', 'false'),
(11, 19, 'upload/documents/1956689857.jpg', 'upload/documents/787489994.jpg', 'upload/documents/1683281717.jpg', '', '', '', '', 'false'),
(12, 5, 'upload/documents/1771754632.jpg', 'upload/documents/1416643993.jpg', 'upload/documents/945580558.jpg', '', '', '', '', 'false'),
(14, 0, 'upload/documents/1869037717.png', 'upload/documents/749102030.jpg', 'upload/documents/26476658.png', 'upload/documents/387244236.jpg', 'upload/documents/2019905492.jpg', 'upload/documents/1142152661.jpg', '', 'false'),
(15, 66, 'upload/documents/134567698.jpg', 'upload/documents/1521371518.jpg', '[\"upload\\/documents\\/1836174181.jpg\",\"upload\\/documents\\/365491178.jpg\",\"upload\\/documents\\/1893283062.jpg\",\"upload\\/documents\\/1400183224.jpg\"]', 'upload/documents/194248743.jpg', '[\"upload\\/documents\\/2049462938.jpg\",\"upload\\/documents\\/1102329431.jpg\",\"upload\\/documents\\/1276046444.jpg\",\"upload\\/documents\\/2138866959.jpg\"]', '[\"upload\\/documents\\/1922349799.jpg\"]', '', 'false'),
(16, 50, 'upload/documents/842130102.jpeg', 'upload/documents/1091636203.jpg', NULL, NULL, NULL, NULL, '', 'false'),
(17, 76, NULL, NULL, 'upload/documents/491523862.jpg', NULL, NULL, 'upload/documents/770833438.jpg', '', 'false'),
(18, 42, 'upload/documents/834915420.PNG', NULL, NULL, NULL, NULL, NULL, '', 'false'),
(19, 81, 'upload/documents/2001445464.jpg', 'upload/documents/1863175323.jpg', '[\"upload\\/documents\\/1729262185.jpg\"]', 'upload/documents/862161689.jpg', '[\"upload\\/documents\\/1126655703.jpg\"]', '[\"upload\\/documents\\/1023167193.jpg\"]', '', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `provider_feedbacks`
--

CREATE TABLE `provider_feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_apply_id` int(11) DEFAULT NULL,
  `hospital_facility_rating` varchar(11) DEFAULT NULL,
  `safety_meansurement_rating` varchar(11) DEFAULT NULL,
  `job_seeker_rating` varchar(11) DEFAULT NULL,
  `overall_experience_rating` varchar(11) DEFAULT NULL,
  `technical_support_rating` varchar(11) DEFAULT NULL,
  `hospitality_rating` varchar(11) DEFAULT NULL,
  `feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_feedbacks`
--

INSERT INTO `provider_feedbacks` (`id`, `user_id`, `employer_id`, `job_id`, `job_apply_id`, `hospital_facility_rating`, `safety_meansurement_rating`, `job_seeker_rating`, `overall_experience_rating`, `technical_support_rating`, `hospitality_rating`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 66, 38, 46, 46, '0', '0', NULL, '0', '0', '0', NULL, '2023-03-29 13:57:23', '2023-03-29 13:57:23'),
(2, 66, 38, 43, 44, '1', '2', NULL, '5', '4', '4', NULL, '2023-03-29 13:59:32', '2023-03-29 13:59:32'),
(3, 66, 50, 83, 102, '4', '3', NULL, '3', '3', '4', NULL, '2023-04-21 17:58:39', '2023-04-21 17:58:39'),
(4, 66, 50, 77, 89, '3', '2', NULL, '4', '3', '3', NULL, '2023-04-25 06:46:57', '2023-04-25 06:46:57'),
(5, 66, 50, 93, 117, '4', '2', NULL, '5', '4', '5', NULL, '2023-05-11 05:05:13', '2023-05-11 05:05:13'),
(6, 66, 50, 96, 119, '5', '4', NULL, '4', '4', '5', NULL, '2023-05-11 06:07:03', '2023-05-11 06:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `provider_verified`
--

CREATE TABLE `provider_verified` (
  `id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `verify_by` int(11) NOT NULL,
  `create_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_verified`
--

INSERT INTO `provider_verified` (`id`, `provider_id`, `verify_by`, `create_on`) VALUES
(1, 18, 16, '2022-06-15 15:06:28'),
(2, 42, 16, '2022-06-16 13:11:16'),
(3, 42, 31, '2022-06-16 14:23:10'),
(4, 37, 31, '2022-06-16 14:45:32'),
(5, 37, 31, '2022-06-16 14:45:34'),
(6, 42, 34, '2022-06-16 16:20:26'),
(7, 42, 35, '2022-06-16 16:23:45'),
(8, 37, 35, '2022-06-16 16:29:39'),
(9, 18, 19, '2022-09-14 12:43:55'),
(10, 18, 19, '2022-09-14 12:43:55'),
(12, 18, 38, '2022-09-15 09:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', 0, NULL, NULL),
(3, 'provider', 'web', 1, NULL, NULL),
(4, 'customer', 'web', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(16, 2),
(19, 2),
(20, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(66, 2),
(67, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(156, 2),
(157, 2),
(158, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(185, 2),
(186, 2),
(188, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(199, 2),
(200, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(2, 3),
(3, 3),
(9, 3),
(11, 3),
(12, 3),
(42, 3),
(48, 3),
(54, 3),
(57, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(92, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(135, 3),
(136, 3),
(137, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(149, 3),
(151, 3),
(153, 3),
(156, 3),
(157, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(173, 3),
(175, 3),
(176, 3),
(179, 3),
(180, 3),
(182, 3),
(188, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(199, 3),
(200, 3),
(203, 3),
(210, 3),
(216, 3),
(2, 4),
(3, 4),
(9, 4),
(11, 4),
(42, 4),
(48, 4),
(54, 4),
(98, 4),
(99, 4),
(100, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(122, 4),
(129, 4),
(147, 4),
(153, 4),
(156, 4),
(157, 4),
(166, 4),
(173, 4),
(175, 4),
(188, 4),
(191, 4),
(203, 4),
(210, 4),
(216, 4);

-- --------------------------------------------------------

--
-- Table structure for table `save_payment_records`
--

CREATE TABLE `save_payment_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `provider_id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `job_apply_id` int(11) UNSIGNED NOT NULL,
  `payment_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `save_payment_records`
--

INSERT INTO `save_payment_records` (`id`, `user_id`, `provider_id`, `job_id`, `job_apply_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 50, 66, 78, 90, 0, '2023-03-24 06:21:00', '2023-03-24 06:21:00'),
(2, 50, 66, 78, 90, 0, '2023-03-24 06:25:36', '2023-03-24 06:25:36'),
(3, 50, 66, 79, 91, 0, '2023-03-24 12:27:44', '2023-03-24 12:27:44'),
(4, 50, 66, 81, 94, 0, '2023-03-28 07:31:30', '2023-03-28 07:31:30'),
(5, 50, 66, 82, 95, 0, '2023-03-29 07:03:52', '2023-03-29 07:03:52'),
(6, 50, 66, 82, 98, 0, '2023-03-30 07:14:02', '2023-03-30 07:14:02'),
(7, 50, 66, 83, 102, 0, '2023-04-21 17:57:14', '2023-04-21 17:57:14'),
(8, 50, 66, 80, 93, 0, '2023-04-25 10:44:01', '2023-04-25 10:44:01'),
(9, 50, 66, 87, 110, 0, '2023-04-28 13:20:09', '2023-04-28 13:20:09'),
(10, 50, 66, 91, 115, 0, '2023-05-08 09:50:54', '2023-05-08 09:50:54'),
(11, 50, 66, 90, 112, 0, '2023-05-08 09:56:20', '2023-05-08 09:56:20'),
(12, 50, 66, 92, 116, 0, '2023-05-08 10:40:12', '2023-05-08 10:40:12'),
(13, 50, 66, 93, 117, 0, '2023-05-11 05:02:42', '2023-05-11 05:02:42'),
(14, 50, 66, 95, 118, 0, '2023-05-11 05:54:08', '2023-05-11 05:54:08'),
(15, 50, 66, 96, 119, 0, '2023-05-11 06:03:50', '2023-05-11 06:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT '0',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `button` longtext COLLATE utf8mb4_unicode_ci,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `e_service_id` int(10) UNSIGNED DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `e_service_id`, `e_provider_id`, `enabled`, `created_at`, `updated_at`) VALUES
(7, 2, '{\"en\":\"Medical services\"}', '{\"en\":\"Hire\"}', 'top_start', '#A40404', '#FFFDFD', '#F57575', '#A40404', 'scale_down', 1, NULL, 1, '2022-03-10 03:40:47', '2022-04-06 03:50:36'),
(13, 1, '{\"en\":null}', '{\"en\":\"Hire\"}', 'top_start', '#DDADAD', '#351C1C', '#B20000', '#9A4949', 'fit_height', 1, NULL, 1, '2022-03-10 11:20:10', '2022-04-06 03:51:54'),
(14, 5, '{\"en\":\"Medical Jobs\"}', '{\"en\":\"Skills\"}', 'top_start', '#670101', '#670101', '#670101', '#670101', 'cover', 1, NULL, 1, '2022-03-10 11:32:11', '2022-03-10 12:25:11'),
(15, 6, '{\"en\":\"Medical Jobs\"}', '{\"en\":null}', 'top_start', '#5936D0', '#5C6CC8', '#284791', '#394B95', 'cover', 1, 9, 1, '2022-03-10 12:35:40', '2022-03-10 12:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `value` double(10,2) NOT NULL DEFAULT '0.00',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tax 20', 20.00, 'percent', '2021-01-15 11:12:13', '2021-02-01 21:23:01'),
(2, 'Tax 10', 10.00, 'percent', '2021-01-15 11:19:30', '2021-01-15 11:19:30'),
(3, 'Maintenance', 2.00, 'fixed', '2021-01-18 20:48:29', '2021-02-01 21:25:13'),
(4, 'Tools Fee', 5.00, 'fixed', '2021-02-01 21:24:12', '2021-02-01 21:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '5ceaea67-bbbd-4044-a729-ba862db50341', '2022-03-02 08:24:15', '2022-03-02 08:24:15'),
(2, '89cf9695-de71-4e46-82bf-97306fa1c800', '2022-03-02 14:02:21', '2022-03-02 14:02:21'),
(3, '59c66693-1cf8-418a-8ea0-32c5aba6126f', '2022-03-02 14:39:29', '2022-03-02 14:39:29'),
(4, '893970b5-872a-48d3-b195-3a5f1a9ffd94', '2022-03-03 02:51:22', '2022-03-03 02:51:22'),
(5, '6e04d8af-6389-4402-a738-1de1d993b9cb', '2022-03-03 02:51:57', '2022-03-03 02:51:57'),
(6, '8b1b5a41-ffe8-4263-b7e2-66cf3c770531', '2022-03-03 04:18:23', '2022-03-03 04:18:23'),
(7, '2b2c1cd3-1a16-48b2-9a63-79d131863078', '2022-03-03 05:30:25', '2022-03-03 05:30:25'),
(8, '20ce9d54-0c6e-4bcd-bd44-a4bb46b9c8a8', '2022-03-03 05:32:58', '2022-03-03 05:32:58'),
(9, '1fb3c3ca-16ee-4605-adfc-21df57eb8399', '2022-03-03 06:09:32', '2022-03-03 06:09:32'),
(10, '3cc247b0-6b8d-4376-a73d-8f03bfdff736', '2022-03-03 06:12:48', '2022-03-03 06:12:48'),
(11, 'fd84ec76-2e7f-45c6-b361-0e8042b702a3', '2022-03-03 06:15:39', '2022-03-03 06:15:39'),
(12, 'e08f68af-691c-4efa-a964-1eb297b44200', '2022-03-03 06:16:12', '2022-03-03 06:16:12'),
(13, '86be1c5d-3c8d-494d-adf1-dc13ffecd0b2', '2022-03-03 06:19:33', '2022-03-03 06:19:33'),
(14, '38a371d1-352a-4271-a81e-bf41e3cb8bf0', '2022-03-03 06:22:47', '2022-03-03 06:22:47'),
(15, '0ac07d4d-e294-443b-8745-a83d34db92a0', '2022-03-03 06:25:43', '2022-03-03 06:25:43'),
(16, 'd65e6c07-6a0f-4d63-9e77-e678aa1bc97d', '2022-03-03 06:26:05', '2022-03-03 06:26:05'),
(17, 'f44c5c79-19b4-4638-814f-33d80b653d88', '2022-03-03 06:30:26', '2022-03-03 06:30:26'),
(18, '4f819303-1ad2-4356-9674-ab9eba777fea', '2022-03-03 06:35:27', '2022-03-03 06:35:27'),
(19, '3f2f200d-8ce9-4bde-bb71-271955324544', '2022-03-03 06:43:03', '2022-03-03 06:43:03'),
(20, '37c7a4f5-790f-40ca-acac-c9e2b090e959', '2022-03-03 06:47:32', '2022-03-03 06:47:32'),
(21, 'dc4c952c-b377-402e-b5c6-14487353cc07', '2022-03-03 06:55:05', '2022-03-03 06:55:05'),
(22, 'a17f8bea-062b-4945-804f-cf19de2156b4', '2022-03-03 06:58:10', '2022-03-03 06:58:10'),
(23, '6a56e06b-2085-4db7-a51a-1ca67b0cee49', '2022-03-03 06:58:33', '2022-03-03 06:58:33'),
(24, '16aa6bd0-bb47-4244-b862-ac4725071652', '2022-03-03 07:02:33', '2022-03-03 07:02:33'),
(25, '8f202b60-3326-4e3e-9795-7351bf85ca96', '2022-03-03 07:06:37', '2022-03-03 07:06:37'),
(26, 'da76b8b8-3043-4417-9e3b-a221ced90f13', '2022-03-03 07:17:55', '2022-03-03 07:17:55'),
(27, '4bdda6cf-2bf9-4ada-8c79-ec03ba52078b', '2022-03-03 07:28:24', '2022-03-03 07:28:24'),
(28, 'e78d3efb-7572-4910-a91b-95c8075a99cc', '2022-03-03 07:32:19', '2022-03-03 07:32:19'),
(29, 'a7311d52-2a7f-4736-a2eb-705a3343bfab', '2022-03-03 07:35:18', '2022-03-03 07:35:18'),
(30, '060a3071-cf7c-4c39-ba70-124b8b18eeec', '2022-03-03 07:39:45', '2022-03-03 07:39:45'),
(31, '18edf65e-7055-4826-8cda-0ebdb55795b4', '2022-03-03 07:43:27', '2022-03-03 07:43:27'),
(32, '917888ab-38c4-40f8-8b3c-7b742d67a6b4', '2022-03-03 07:43:57', '2022-03-03 07:43:57'),
(33, 'fbf7294d-39e2-44cf-82c9-0bd1c969118b', '2022-03-03 07:46:41', '2022-03-03 07:46:41'),
(34, '19576dc5-943b-4a9b-9a17-6047705c92e1', '2022-03-03 07:50:24', '2022-03-03 07:50:24'),
(35, '672b314a-5d70-4d2f-82c6-3b84f1dfdfba', '2022-03-03 07:55:08', '2022-03-03 07:55:08'),
(36, 'd6f507c2-3ceb-463a-9265-3b2cacfff8ab', '2022-03-03 07:55:31', '2022-03-03 07:55:31'),
(37, '2953bbfa-2e74-4eec-bf61-266ccb998261', '2022-03-03 07:56:01', '2022-03-03 07:56:01'),
(38, 'fae95ac9-cc9c-48c7-9edb-c134458f65fe', '2022-03-03 08:02:15', '2022-03-03 08:02:15'),
(39, '86368d39-fef2-4253-929e-7f98d2c54bf2', '2022-03-03 08:06:40', '2022-03-03 08:06:40'),
(40, 'b83ad11b-46d6-40ed-a310-fc8346f570b0', '2022-03-03 08:07:16', '2022-03-03 08:07:16'),
(41, '9a44396e-5205-43a4-832d-fd612c79d27b', '2022-03-03 08:09:34', '2022-03-03 08:09:34'),
(42, '165a4c4f-c97a-444b-b5fe-f0ca55985f5b', '2022-03-03 08:09:57', '2022-03-03 08:09:57'),
(43, '46fef04b-35c3-4a61-9b12-042b3a343332', '2022-03-03 08:11:56', '2022-03-03 08:11:56'),
(44, 'ad06fe3a-0a80-45c1-9ac3-40517a6c9b01', '2022-03-03 08:12:19', '2022-03-03 08:12:19'),
(45, 'e5b27ad0-506a-4bcd-8812-cc671f5f7d54', '2022-03-03 08:15:10', '2022-03-03 08:15:10'),
(46, '680aad82-fc31-45a0-8ec9-44a01b03dba1', '2022-03-04 09:30:59', '2022-03-04 09:30:59'),
(47, '11aa291b-7d07-4c1e-93db-28b27edd3a60', '2022-03-04 09:33:57', '2022-03-04 09:33:57'),
(48, '48dd73d6-39f0-4298-9117-560a77f1fc3b', '2022-03-04 09:35:46', '2022-03-04 09:35:46'),
(49, 'd441ea1f-5aba-4479-b9ab-5e02457a3647', '2022-03-04 09:36:35', '2022-03-04 09:36:35'),
(50, '605505c7-fb43-4ffb-b6e1-cc0ddf3884c1', '2022-03-04 09:39:58', '2022-03-04 09:39:58'),
(51, '88de1e9a-b4bd-4a83-a9fc-11237e56408b', '2022-03-04 09:59:18', '2022-03-04 09:59:18'),
(52, '8bd35b81-d115-4a23-9211-bcfb6a2f97f6', '2022-03-04 10:02:30', '2022-03-04 10:02:30'),
(53, 'edf7c5d4-ed9b-451d-964b-06adfb7c007a', '2022-03-04 10:04:15', '2022-03-04 10:04:15'),
(54, '47eff0be-6d0d-47ee-aa41-4db334f107e3', '2022-03-05 07:03:21', '2022-03-05 07:03:21'),
(55, 'a16ebd1c-7f04-413b-b678-7f19747dab35', '2022-03-05 07:23:42', '2022-03-05 07:23:42'),
(56, '3c9cb8ac-2600-4597-b644-c75db4af5580', '2022-03-10 03:26:59', '2022-03-10 03:26:59'),
(57, '0715209e-2c97-4b36-8bbf-76914613a046', '2022-03-10 03:35:52', '2022-03-10 03:35:52'),
(58, '60faf96e-2e90-4511-84a8-f2ca5db19023', '2022-03-10 03:35:55', '2022-03-10 03:35:55'),
(59, '36361f64-85b7-4031-bfdd-bfc8fe6641d5', '2022-03-10 03:35:57', '2022-03-10 03:35:57'),
(60, '9ff3d620-4bb5-44e6-b0fb-e40589e1f5f4', '2022-03-10 10:49:36', '2022-03-10 10:49:36'),
(61, 'cbaf551a-34e5-4b1d-8857-b526f4b4a753', '2022-03-10 10:56:54', '2022-03-10 10:56:54'),
(62, 'ff07391a-88f7-4f58-aa9f-f738057c46db', '2022-03-10 11:09:27', '2022-03-10 11:09:27'),
(63, '5016fc14-cdf7-41ac-80cc-ec5e21ebf7b4', '2022-03-10 11:18:01', '2022-03-10 11:18:01'),
(64, 'fe91adaa-ac16-4485-a671-0514a1d1238a', '2022-03-10 11:19:01', '2022-03-10 11:19:01'),
(65, '45068199-c432-496d-8610-860320a44010', '2022-03-10 11:20:00', '2022-03-10 11:20:00'),
(66, '4c922251-976e-4cf9-9fa6-b99ad28283ae', '2022-03-10 11:32:06', '2022-03-10 11:32:06'),
(67, '2a57a35b-fcd5-46ff-8262-61528bf54d0e', '2022-03-10 11:32:39', '2022-03-10 11:32:39'),
(68, '6fc8aa99-d9e1-4664-b510-8735d97a515a', '2022-03-10 12:25:06', '2022-03-10 12:25:06'),
(69, '7424f5c6-d022-45f6-9649-69ab42dfbcfc', '2022-03-10 12:25:31', '2022-03-10 12:25:31'),
(70, 'fc1ff7ba-3553-427b-be98-cffc82e6e01d', '2022-03-10 12:25:40', '2022-03-10 12:25:40'),
(71, '19e38348-aae2-4eb2-8af4-bded06b6fa70', '2022-03-10 12:30:54', '2022-03-10 12:30:54'),
(72, 'b407da73-440b-40ff-9f31-978d2fd5f528', '2022-03-10 12:33:46', '2022-03-10 12:33:46'),
(73, '965b1389-419d-4eda-bf13-e9781a18f053', '2022-03-10 12:35:37', '2022-03-10 12:35:37'),
(74, '94d14102-e8b3-46b5-8d30-5d855eabec59', '2022-03-10 12:49:37', '2022-03-10 12:49:37'),
(75, 'f8b3db22-a9c6-496f-a769-f7c593b3c885', '2022-03-10 13:16:31', '2022-03-10 13:16:31'),
(76, 'ba9f59fc-6590-4bce-9376-4f98432387ed', '2022-03-23 04:26:43', '2022-03-23 04:26:43'),
(77, '3aa5f94a-c92b-4f50-bed8-4ee833c4282f', '2022-03-23 07:35:28', '2022-03-23 07:35:28'),
(78, '0f274c57-71d6-4412-beaf-4a28cd7202d7', '2022-03-23 07:36:46', '2022-03-23 07:36:46'),
(79, 'cc5c74b5-ae2d-4a64-bbd8-c73d9be113bc', '2022-03-23 07:37:51', '2022-03-23 07:37:51'),
(80, '3deb5318-302e-4887-afb1-7946978cd021', '2022-03-23 07:39:53', '2022-03-23 07:39:53'),
(81, '6dd59d2f-18f6-43c6-8cf2-c87d3fd0a84a', '2022-03-23 07:40:17', '2022-03-23 07:40:17'),
(82, '8c975db4-c265-4e2d-901b-9d9526b640da', '2022-03-23 07:44:12', '2022-03-23 07:44:12'),
(83, 'ae04dcb4-147b-4f01-a213-7e58dabc8e0c', '2022-03-23 07:46:27', '2022-03-23 07:46:27'),
(84, '344333a5-d2b9-44ed-85bc-8eed64e635c7', '2022-03-23 07:46:55', '2022-03-23 07:46:55'),
(85, '55cf51b6-3341-4af1-afc4-b9fa9948d033', '2022-03-23 07:47:52', '2022-03-23 07:47:52'),
(86, '91f7402f-e248-42de-8a7a-5c0df1ff2fc3', '2022-03-23 07:49:50', '2022-03-23 07:49:50'),
(87, 'e38b0b94-310c-488f-822d-7b0e6db98b72', '2022-03-23 07:50:51', '2022-03-23 07:50:51'),
(88, '5471b6c6-3534-4f36-bce7-af68a5d8106b', '2022-03-23 07:51:51', '2022-03-23 07:51:51'),
(89, '10d2c2af-9e00-4b31-ab84-68ca02621985', '2022-03-23 08:04:25', '2022-03-23 08:04:25'),
(90, 'd91339f0-d8c3-4336-928e-a287919ce901', '2022-03-23 08:04:50', '2022-03-23 08:04:50'),
(91, '44a358c3-7108-42f7-81d1-992cc5b786d6', '2022-03-23 08:05:31', '2022-03-23 08:05:31'),
(92, 'a95a402c-34dc-4de9-b696-1d0d9a613e25', '2022-03-23 08:05:46', '2022-03-23 08:05:46'),
(93, '0f7d56be-23db-49a6-ae12-93cdb4b44210', '2022-03-23 08:06:43', '2022-03-23 08:06:43'),
(94, 'ff6cb20d-f452-4451-a232-d0e6fcd17fca', '2022-03-23 08:07:18', '2022-03-23 08:07:18'),
(95, 'a0b99c2e-9658-4d52-8608-d9778263d501', '2022-03-23 08:15:26', '2022-03-23 08:15:26'),
(96, 'cd73b4dd-32c9-4627-a37f-fb136156c727', '2022-03-23 08:16:10', '2022-03-23 08:16:10'),
(97, '4081f68e-724c-466f-8959-3763b5d9971b', '2022-03-23 09:45:51', '2022-03-23 09:45:51'),
(98, '0182a590-7894-420d-b614-1e8917b59dce', '2022-03-23 09:46:04', '2022-03-23 09:46:04'),
(99, 'bf24e94c-e427-4d8b-bd9f-05f909a32a0e', '2022-03-23 09:52:50', '2022-03-23 09:52:50'),
(100, '873ad861-cb90-4cd3-a7ab-04da082ea1e9', '2022-03-23 09:59:25', '2022-03-23 09:59:25'),
(101, '51d66bb2-1c7b-4617-bee6-5ccf66fd0957', '2022-03-23 10:00:35', '2022-03-23 10:00:35'),
(102, 'ee71437c-3b03-4f6a-b3cf-866cb827cc7b', '2022-03-23 10:45:53', '2022-03-23 10:45:53'),
(103, 'bb3b4708-f992-4fe0-b027-0a862d72c1cb', '2022-03-23 10:54:45', '2022-03-23 10:54:45'),
(104, 'f2e3f6a1-426d-4ec4-aaa8-735de0bdf1b0', '2022-03-23 10:55:31', '2022-03-23 10:55:31'),
(105, '049de71e-abc7-4c2a-a997-23ca43d51e55', '2022-03-23 10:58:01', '2022-03-23 10:58:01'),
(106, 'c5094bcf-9f5d-4dd5-9d56-466a49f5e709', '2022-03-23 11:12:34', '2022-03-23 11:12:34'),
(107, 'd362f60d-f2dc-4aba-b0ab-b338da9686ca', '2022-04-05 01:52:29', '2022-04-05 01:52:29'),
(108, '2f12b348-6d85-4cd9-8395-c5cdb702b022', '2022-04-05 04:02:45', '2022-04-05 04:02:45'),
(109, '78aaa19c-ec1c-421b-a2c5-b25d318cbc65', '2022-04-05 04:47:46', '2022-04-05 04:47:46'),
(110, '114ced56-1bf6-493d-82a7-3521a46be0f1', '2022-04-05 04:50:51', '2022-04-05 04:50:51'),
(111, '4b2b4894-7bad-4b94-ad4f-21b4d62071f2', '2022-04-05 04:57:01', '2022-04-05 04:57:01'),
(112, '10157b48-418e-4318-8906-c9b5418df2b6', '2022-04-05 05:06:40', '2022-04-05 05:06:40'),
(113, '0fdb52ad-709d-4a1f-8278-9e08d3aa7ac5', '2022-04-05 05:09:13', '2022-04-05 05:09:13'),
(114, '46f78519-6b61-437a-a083-6882921fe499', '2022-04-05 05:46:11', '2022-04-05 05:46:11'),
(115, '6d353b17-28d1-4e2e-9a50-0764ca60c2fa', '2022-04-05 05:47:24', '2022-04-05 05:47:24'),
(116, '642b8602-dec7-4355-9a08-f0613f8d7953', '2022-04-05 07:09:22', '2022-04-05 07:09:22'),
(117, '2813e36f-bcf3-46ef-b12c-bd3d7824a103', '2022-04-05 07:18:53', '2022-04-05 07:18:53'),
(118, '5dd46102-a7e2-459c-9841-cecf124c0c46', '2022-04-05 07:36:04', '2022-04-05 07:36:04'),
(119, '1f5e1d86-39fc-4de5-b809-fd3c53bf2c4c', '2022-04-05 07:42:56', '2022-04-05 07:42:56'),
(120, 'cc042390-ac66-45f9-bcdd-6551e6ff6f46', '2022-04-05 07:51:57', '2022-04-05 07:51:57'),
(121, '44ccda66-4269-4bf0-b747-10d12de83bb8', '2022-04-05 07:53:45', '2022-04-05 07:53:45'),
(122, '01dfbd51-eaf4-464b-b44e-4a2989fba84e', '2022-04-05 08:13:21', '2022-04-05 08:13:21'),
(123, '7765c5a3-a381-4027-8dad-47d68dfbb5c9', '2022-04-05 08:15:26', '2022-04-05 08:15:26'),
(124, '57b0adf3-3dec-4593-8f46-e80ef5f8a941', '2022-04-05 08:15:46', '2022-04-05 08:15:46'),
(125, '6a31824c-15b4-46d6-af56-27b9b8633353', '2022-04-05 10:13:11', '2022-04-05 10:13:11'),
(126, '9c58c0ee-5497-4279-b38a-653d5d3c4adb', '2022-04-05 10:38:15', '2022-04-05 10:38:15'),
(127, 'fd76696b-89d0-403e-b052-d2311762c05d', '2022-04-05 10:39:18', '2022-04-05 10:39:18'),
(128, 'cf02f3b9-0e28-4cc9-8c5e-143ea8132bbc', '2022-04-05 10:42:21', '2022-04-05 10:42:21'),
(129, '8f1846be-1b87-4425-8d5f-8aed420f9c8a', '2022-04-05 10:46:11', '2022-04-05 10:46:11'),
(130, 'f5a8f31a-7897-4308-8d71-b84ef1bceff2', '2022-04-05 10:50:08', '2022-04-05 10:50:08'),
(131, '7c46a9a0-a5f1-47cc-b999-130a5147fd80', '2022-04-05 11:02:38', '2022-04-05 11:02:38'),
(132, '9d5f82ec-11d7-4ab3-95b6-691747d97c28', '2022-04-05 11:19:13', '2022-04-05 11:19:13'),
(133, '9b7372bc-9db3-42f2-afe1-5648ea261747', '2022-04-06 03:29:54', '2022-04-06 03:29:54'),
(134, '2e6d7cc3-0068-4208-a568-75a649577722', '2022-04-06 03:30:18', '2022-04-06 03:30:18'),
(135, '12479900-7c25-4a96-9ad1-25f4000e5f37', '2022-04-06 03:31:22', '2022-04-06 03:31:22'),
(136, '2a573291-b160-48a5-9062-372595980654', '2022-04-06 03:32:25', '2022-04-06 03:32:25'),
(137, '695f7835-d1d4-424d-b15b-a0ff8bdebde3', '2022-04-06 03:32:49', '2022-04-06 03:32:49'),
(138, 'b39db3e9-caa4-4061-8d1a-ff811879f383', '2022-04-06 03:33:51', '2022-04-06 03:33:51'),
(139, '4ed7e78e-58f6-4bbd-8437-46e1e6b764bc', '2022-04-06 03:36:07', '2022-04-06 03:36:07'),
(140, '1104beaf-7422-4fcd-a89f-e23d8edf4ea4', '2022-04-06 03:47:24', '2022-04-06 03:47:24'),
(141, '75fb27fa-b477-4cb3-8ef7-85a5fd49866e', '2022-04-06 03:58:02', '2022-04-06 03:58:02'),
(142, 'f9a689fb-bfbc-41af-837e-45b763160d91', '2022-04-06 04:00:58', '2022-04-06 04:00:58'),
(143, 'f081e3a3-dfe8-4db3-92b7-51e53a8fb32b', '2022-04-06 04:02:50', '2022-04-06 04:02:50'),
(144, '16c2ce2c-7005-4caa-ae77-bbe70f8870d3', '2022-04-06 08:49:02', '2022-04-06 08:49:02'),
(145, '65b1f552-e078-41f9-b270-4358a28f5407', '2022-04-06 08:50:27', '2022-04-06 08:50:27'),
(146, '8aa4ab48-536a-4bd5-baad-220472f12ddb', '2022-04-06 08:58:02', '2022-04-06 08:58:02'),
(147, 'fa77ea06-1a43-43dd-ad5d-81ffe5ceed87', '2022-04-06 09:01:18', '2022-04-06 09:01:18'),
(148, '38a5fdb3-e3c6-4cff-9a9d-007c53e1dd5c', '2022-04-06 09:09:08', '2022-04-06 09:09:08'),
(149, 'ce405eef-50f4-4185-a825-75f3e0a5f3df', '2022-04-06 09:11:13', '2022-04-06 09:11:13'),
(150, 'f7d1c6f0-19f6-40db-b6c5-d4d8e4d519d4', '2022-04-06 09:15:14', '2022-04-06 09:15:14'),
(151, 'de8f6feb-ace7-40e1-b98b-02166c62f197', '2022-04-06 09:20:31', '2022-04-06 09:20:31'),
(152, '252ba977-8aa3-4f99-bd18-020fa59a907c', '2022-04-06 09:24:31', '2022-04-06 09:24:31'),
(153, '3a98dcd3-c2a8-4289-95f2-96626440716f', '2022-04-06 09:42:49', '2022-04-06 09:42:49'),
(154, 'e7e30469-b0a1-447a-984a-8c2640680397', '2022-04-06 09:53:02', '2022-04-06 09:53:02'),
(155, '9592be3b-f1fe-48f7-acb5-18c72702c855', '2022-04-06 09:53:35', '2022-04-06 09:53:35'),
(156, 'a3a9178c-702a-41f2-9a63-ac9a20214a31', '2022-04-06 09:56:30', '2022-04-06 09:56:30'),
(157, 'c554f27c-0593-437c-a958-f42585978412', '2022-04-06 09:58:07', '2022-04-06 09:58:07'),
(158, '716ac807-113f-485f-90f2-4240ab65c7a1', '2022-04-06 10:26:13', '2022-04-06 10:26:13'),
(159, '62acfc0a-1e23-4435-bc74-31c2d4023560', '2022-04-06 10:32:32', '2022-04-06 10:32:32'),
(160, '6d8ac7e4-a1b6-4b27-848e-5a27a43528d7', '2022-04-06 10:52:45', '2022-04-06 10:52:45'),
(161, 'df043d85-58f1-4ad1-9bf3-9a71db766ecc', '2022-04-07 02:45:16', '2022-04-07 02:45:16'),
(162, '6197f1da-5bc2-4c27-a537-365c9dcd4aa5', '2022-04-07 02:46:53', '2022-04-07 02:46:53'),
(163, 'c50a750a-83b6-483c-b550-cc883ddc8806', '2022-04-07 02:49:14', '2022-04-07 02:49:14'),
(164, '03d66d41-1e47-49c0-bf9e-1013393ace6a', '2022-04-07 02:55:35', '2022-04-07 02:55:35'),
(165, '63c13875-057f-4ac4-87b8-d5e3a10e40b7', '2022-04-07 03:00:29', '2022-04-07 03:00:29'),
(166, 'fd61cd8f-0170-49db-aa1b-530d76a8aa64', '2022-04-07 03:03:13', '2022-04-07 03:03:13'),
(167, 'a83c5b74-a4de-4117-a80c-0f07482193ff', '2022-04-07 03:36:18', '2022-04-07 03:36:18'),
(168, '3e56135a-fd48-432f-95ad-f3977cc4a246', '2022-04-07 04:04:11', '2022-04-07 04:04:11'),
(169, '3da6952f-d68c-45cc-9ec6-e94961706f76', '2022-04-07 04:04:49', '2022-04-07 04:04:49'),
(170, '8c794cfa-eb5f-4c79-8d33-92e441535935', '2022-04-07 04:05:28', '2022-04-07 04:05:28'),
(171, '6881f1c4-33d0-4656-b73f-d365ed69816e', '2022-04-07 04:08:12', '2022-04-07 04:08:12'),
(172, '57b49645-d6ca-4c35-9b4f-0f09490e2638', '2022-04-07 04:09:41', '2022-04-07 04:09:41'),
(173, '68d6dbc7-b192-4258-9c70-94d0b85c8892', '2022-04-07 04:44:47', '2022-04-07 04:44:47'),
(174, '102ea2d5-7c97-4749-9261-4f334c6a334b', '2022-04-07 04:46:48', '2022-04-07 04:46:48'),
(175, '284e3049-c209-4b60-b78d-97ba0f9f9e99', '2022-04-07 04:48:58', '2022-04-07 04:48:58'),
(176, 'a0118148-f487-4ee2-97f0-c26ca2b9a5a4', '2022-04-07 04:52:01', '2022-04-07 04:52:01'),
(177, '41c1a6e9-efbd-4ef8-823d-e74d45e5a5c2', '2022-04-07 04:52:39', '2022-04-07 04:52:39'),
(178, 'c4bfb341-17fa-4ca1-b129-ed547e567232', '2022-04-07 04:53:19', '2022-04-07 04:53:19'),
(179, '8c5cf9d0-e56a-4b1f-900c-f69029746629', '2022-04-07 05:45:53', '2022-04-07 05:45:53'),
(180, '8647228c-e61c-4b08-8e21-bdc7d2d44c90', '2022-04-07 10:10:36', '2022-04-07 10:10:36'),
(181, '6ac9e790-ec2e-4e5b-952f-c6ae2085d773', '2022-04-07 10:11:16', '2022-04-07 10:11:16'),
(182, '2fd5f59d-37ec-471c-bdd0-e40d0dd3417b', '2022-04-07 10:12:11', '2022-04-07 10:12:11'),
(183, '35e29379-444a-450e-9806-1acba0ee9aa5', '2022-04-07 10:12:45', '2022-04-07 10:12:45'),
(184, '5a0c66ba-3928-4608-88bf-59603ab4d6bf', '2022-04-07 10:14:05', '2022-04-07 10:14:05'),
(185, 'a5e47633-eb23-4e79-828b-e20a8f37a068', '2022-04-07 10:14:31', '2022-04-07 10:14:31'),
(186, '318314ac-3b82-48dc-8b40-de534ec16792', '2022-04-07 10:15:01', '2022-04-07 10:15:01'),
(187, 'c781cd9c-b79f-4ca7-99bf-e5801add22b7', '2022-04-07 10:15:32', '2022-04-07 10:15:32'),
(188, '25d074b3-08c5-45b4-81c3-dbc326f9444c', '2022-04-07 10:16:22', '2022-04-07 10:16:22'),
(189, 'e0c93e92-0f7c-4de6-9e55-9db22bd16411', '2022-04-07 10:16:50', '2022-04-07 10:16:50'),
(190, '304e93bd-a962-47e3-adf3-7597ec5f02a5', '2022-04-07 10:17:14', '2022-04-07 10:17:14'),
(191, '8e736356-78e2-4acb-a940-2375b7e9b808', '2022-04-07 10:17:50', '2022-04-07 10:17:50'),
(192, 'cffee14d-eb79-4479-a167-5b8f364e8352', '2022-04-07 10:18:36', '2022-04-07 10:18:36'),
(193, 'a96fd235-4c31-4d24-87d2-89c0da7d2a70', '2022-04-07 10:19:10', '2022-04-07 10:19:10'),
(194, 'de8876f2-5dca-4fde-a2c8-768a8da605f0', '2022-04-07 10:19:33', '2022-04-07 10:19:33'),
(195, 'b954437c-fd3c-4794-98b5-2a7837abd8ab', '2022-04-07 10:20:27', '2022-04-07 10:20:27'),
(196, '1fc96209-15f9-4349-9dc3-4b161042d14f', '2022-04-07 10:21:24', '2022-04-07 10:21:24'),
(197, 'e1c9e1f8-c979-4cea-b441-294e430dffdb', '2022-04-07 10:21:57', '2022-04-07 10:21:57'),
(198, '25ddf5f8-23fe-4f84-9c62-f345b175b220', '2022-04-07 10:22:26', '2022-04-07 10:22:26'),
(199, 'e3d2f355-08c7-4d5b-b3be-961f4fbb7fab', '2022-04-07 10:22:48', '2022-04-07 10:22:48'),
(200, '8e34cd6f-552b-4c02-af03-9e05c8e9dee6', '2022-04-07 10:23:27', '2022-04-07 10:23:27'),
(201, '7110b345-0491-4e8f-b1da-980a6fdc3d97', '2022-04-07 10:24:18', '2022-04-07 10:24:18'),
(202, '4c96f9d2-ac37-4ea5-9faf-997f57e5d8a9', '2022-04-07 10:26:24', '2022-04-07 10:26:24'),
(203, '62500818-0572-499b-8900-21d5665be949', '2022-04-07 10:26:47', '2022-04-07 10:26:47'),
(204, 'f611ff00-35c5-43c6-aa14-3b97f2aff9ce', '2022-04-07 10:27:22', '2022-04-07 10:27:22'),
(205, '2bee2e65-4d32-4878-90ab-a80748b51316', '2022-04-08 03:59:38', '2022-04-08 03:59:38'),
(206, 'd6185577-2cf0-4cf6-b654-78d0acc893ec', '2022-04-08 04:01:10', '2022-04-08 04:01:10'),
(207, '81d8d7f6-f051-4cae-8ed0-c2b0cdebfcc7', '2022-04-08 04:02:59', '2022-04-08 04:02:59'),
(208, 'cdd111cd-5b5f-4aef-b984-c3734032772c', '2022-04-08 04:04:43', '2022-04-08 04:04:43'),
(209, 'd7066b73-05f4-436b-b843-5efb15bb1212', '2022-04-08 04:06:16', '2022-04-08 04:06:16'),
(210, '5a6a2c5d-619c-4368-91f0-27bc5d03601d', '2022-04-08 04:08:02', '2022-04-08 04:08:02'),
(211, '990b8d1a-b082-4d6c-afa1-ae4985231714', '2022-04-08 04:09:19', '2022-04-08 04:09:19'),
(212, 'c334beaa-c158-486c-a324-0eba0e8ffc35', '2022-04-08 04:10:21', '2022-04-08 04:10:21'),
(213, 'f2c07c27-cabe-4ef6-8247-6b35f1ed1e86', '2022-04-08 04:12:47', '2022-04-08 04:12:47'),
(214, '0ed68c9c-b0d6-4bcf-ba12-503463150a0a', '2022-04-08 04:14:27', '2022-04-08 04:14:27'),
(215, 'd243d752-efc4-4150-9e77-bf9da96e87de', '2022-04-08 04:16:04', '2022-04-08 04:16:04'),
(216, 'a84e8cf5-25e4-43cc-93ca-c55bccc652c7', '2022-04-08 04:17:43', '2022-04-08 04:17:43'),
(217, '80ff50ab-f28e-4e4a-b485-8572130da66c', '2022-04-08 08:20:22', '2022-04-08 08:20:22'),
(218, 'd263779d-41ea-44ae-85ce-a90ae28562f4', '2022-04-08 08:21:51', '2022-04-08 08:21:51'),
(219, '22a148b8-bebd-4bcd-ab50-321e463461c8', '2022-04-08 08:35:17', '2022-04-08 08:35:17'),
(220, '5e5ab10e-db42-425a-8e24-f218cf63fe6d', '2022-04-08 08:36:40', '2022-04-08 08:36:40'),
(221, '679fe8fe-9d1f-4590-9100-d7fd01b2809b', '2022-04-08 08:37:14', '2022-04-08 08:37:14'),
(222, '6d730989-f601-4031-a343-d2e16f5128ff', '2022-04-08 08:39:57', '2022-04-08 08:39:57'),
(223, 'bd942153-89cc-4431-a923-b6bb7d80675c', '2022-05-19 07:13:36', '2022-05-19 07:13:36'),
(224, 'e4cbfd33-655f-4b7a-bcc6-05b4cd46dbce', '2022-05-19 08:22:31', '2022-05-19 08:22:31'),
(225, '8802cb07-8fee-4f4e-9498-8b970bb8366d', '2022-05-19 09:10:20', '2022-05-19 09:10:20'),
(226, '9342a2d7-571b-474b-846d-5c2e76d13d47', '2022-05-27 09:20:48', '2022-05-27 09:20:48'),
(227, 'c9c3c280-728b-44f2-90d9-5303ae9b759f', '2022-05-27 09:24:06', '2022-05-27 09:24:06'),
(228, '7849b657-91b1-484b-8d01-47721b7a8ddb', '2022-05-27 09:24:56', '2022-05-27 09:24:56'),
(229, 'a0cf88aa-143a-461b-b549-393ffc4658d0', '2022-05-27 09:48:41', '2022-05-27 09:48:41'),
(230, 'ae92b9a5-7d57-423f-a576-3d8ba3c9f24b', '2022-05-27 10:37:09', '2022-05-27 10:37:09'),
(231, '9acecb65-a01e-45ca-a9d5-99a391613e03', '2022-05-27 11:12:14', '2022-05-27 11:12:14'),
(232, '92a8a755-3d50-44b6-b0f9-26c46fd23b9f', '2022-05-27 11:13:29', '2022-05-27 11:13:29'),
(233, '74e4520e-603d-48dd-b38a-07f7be9a4c2a', '2022-05-27 11:16:35', '2022-05-27 11:16:35'),
(234, 'e3d96b1f-d3d9-4711-b509-5362462e0992', '2022-05-28 09:14:28', '2022-05-28 09:14:28'),
(235, 'af64ca13-5517-4b1a-9fcc-3e63ee6ffa76', '2022-05-28 09:14:40', '2022-05-28 09:14:40'),
(236, 'd72e5474-7a15-4d19-9b27-afc7f25a20de', '2022-05-28 09:21:52', '2022-05-28 09:21:52'),
(237, 'b941c0d3-7425-45cb-96db-cc6a32ac776e', '2022-05-28 09:23:49', '2022-05-28 09:23:49'),
(238, '735c7767-5162-4d93-b158-5dcd532d2e91', '2022-06-09 05:07:13', '2022-06-09 05:07:13'),
(239, '229c8d7d-11f7-47c1-8119-171c5d39d890', '2022-06-09 05:15:08', '2022-06-09 05:15:08'),
(240, '11644e95-7f1d-437d-a946-ca12f4058f4b', '2022-06-10 08:37:33', '2022-06-10 08:37:33'),
(241, '51b6e716-8035-4c51-9b0b-85b622753187', '2022-06-10 09:34:20', '2022-06-10 09:34:20'),
(242, 'bbb29464-1967-4e6a-a7ed-15219e996c4b', '2022-06-10 09:38:37', '2022-06-10 09:38:37'),
(243, '7e47d9ba-439f-46e8-b425-d4dde5e5d42b', '2022-06-10 09:38:49', '2022-06-10 09:38:49'),
(244, '1e2530bf-3234-4ccd-a148-17c5adfe2cf8', '2022-06-10 13:19:03', '2022-06-10 13:19:03'),
(246, '0427a2ed-7bdb-4e26-a059-d22cfc32d34a', '2022-06-10 13:21:10', '2022-06-10 13:21:10'),
(247, '7033047c-ad57-4412-8dd3-8dbbf123a9ed', '2022-06-10 13:21:31', '2022-06-10 13:21:31'),
(248, 'eff40e92-c7dd-4452-9ee6-66261517f7c8', '2022-06-10 13:22:15', '2022-06-10 13:22:15'),
(249, 'ff8bf8a4-bc62-4b0d-b2d7-53b46db6c5ab', '2022-06-10 13:24:46', '2022-06-10 13:24:46'),
(250, 'd6755004-84e8-48ba-9c02-82083f830157', '2022-06-10 13:25:41', '2022-06-10 13:25:41'),
(251, '08aec09a-0e7b-4888-84c4-6430a6c630d3', '2022-06-10 13:26:29', '2022-06-10 13:26:29'),
(252, '19ab261a-9e7f-4c2c-b2c4-070911f1fbf1', '2022-06-10 14:39:03', '2022-06-10 14:39:03'),
(253, '4e200135-d3c2-44a3-820e-b51edf6fc7b6', '2022-06-10 14:42:34', '2022-06-10 14:42:34'),
(254, 'e8f5918d-fbe8-4f49-bc68-f85e58a34f91', '2022-06-11 03:08:25', '2022-06-11 03:08:25'),
(255, 'c57a21c6-1306-4b94-b12f-917b9be3e261', '2022-06-11 03:10:34', '2022-06-11 03:10:34'),
(256, 'a1cbb454-639f-43f1-b442-40bb84726bdc', '2022-06-11 04:56:41', '2022-06-11 04:56:41'),
(257, '9d40a283-b21d-4f82-b5dc-29e5b2598210', '2022-06-11 04:57:52', '2022-06-11 04:57:52'),
(258, 'adf90e70-83cd-4e5d-8b96-dcc4f4fc3b15', '2022-06-11 05:03:31', '2022-06-11 05:03:31'),
(259, '0191634c-56b2-40a3-bd33-1a6dcfe6a314', '2022-06-11 05:04:16', '2022-06-11 05:04:16'),
(260, 'a58dd502-ea38-4056-bf56-b9ea156bdade', '2022-06-11 05:20:30', '2022-06-11 05:20:30'),
(261, '3a45f9f8-fbe5-4c00-b31a-93825e37f7c2', '2022-06-11 05:22:42', '2022-06-11 05:22:42'),
(262, '812df78d-3849-4efd-ae04-24dd645efd86', '2022-06-11 06:14:42', '2022-06-11 06:14:42'),
(263, 'b6ae7135-b0d6-4982-b389-8ce9522ab838', '2022-06-11 06:19:41', '2022-06-11 06:19:41'),
(264, '06e42c94-e972-40f7-bba2-0f176ab4c42b', '2022-06-11 06:26:08', '2022-06-11 06:26:08'),
(265, '85cabb54-e440-42f3-bd3b-1dc801ebeaf4', '2022-06-11 06:28:09', '2022-06-11 06:28:09'),
(266, '275e0452-f4ae-48c7-a55e-38a953512749', '2022-06-11 07:22:50', '2022-06-11 07:22:50'),
(267, '35d497de-bf3d-4aaa-aca9-07b01d59cde7', '2022-06-11 07:28:22', '2022-06-11 07:28:22'),
(268, '6a4b107e-db3f-4c66-b6cf-8fa18de3805a', '2022-06-11 07:30:08', '2022-06-11 07:30:08'),
(269, '3dfb2608-7062-4249-abb7-bf9ce16a5923', '2022-06-11 07:40:35', '2022-06-11 07:40:35'),
(270, '5a62930f-c986-453e-bdba-f37a83519c6d', '2022-06-11 07:41:43', '2022-06-11 07:41:43'),
(271, '192f28e4-b375-4a27-9903-d1af9d900fcb', '2022-06-16 08:18:39', '2022-06-16 08:18:39'),
(272, '1784beff-8981-4e0c-b238-d11077184c65', '2022-06-16 08:20:49', '2022-06-16 08:20:49'),
(273, 'a3bff83f-545d-4be8-9129-c5d060fdef23', '2022-06-16 09:11:06', '2022-06-16 09:11:06'),
(274, 'c6d6870d-fd11-4f34-8427-2192aa13b879', '2022-06-16 10:25:40', '2022-06-16 10:25:40'),
(275, '94b65424-124a-43c4-8b0f-a10220710837', '2022-06-16 10:26:11', '2022-06-16 10:26:11'),
(276, 'ad0351bc-b951-4687-903d-f375619d9e0b', '2022-06-16 10:26:24', '2022-06-16 10:26:24'),
(277, '67090051-7dce-41d7-86d5-46eb2c327bd8', '2022-06-16 10:29:18', '2022-06-16 10:29:18'),
(278, 'a47a618f-50fd-4022-8b4f-b80ca5a256cc', '2022-06-17 02:57:30', '2022-06-17 02:57:30'),
(279, 'ecf2ea4a-b540-4109-b130-efeb9c273925', '2022-06-17 03:16:04', '2022-06-17 03:16:04'),
(280, '021b11cd-2f97-4a62-8349-f3061dba98c0', '2022-06-18 07:23:09', '2022-06-18 07:23:09'),
(281, '7aaeffa9-2caa-48a3-9ebb-43b5a0909e5a', '2022-06-18 07:26:06', '2022-06-18 07:26:06'),
(282, '040daa51-85ee-4168-a277-933473787d95', '2022-07-08 07:28:08', '2022-07-08 07:28:08'),
(283, 'e8349c47-8e44-467c-8719-ec522ccf120b', '2022-07-08 08:07:31', '2022-07-08 08:07:31'),
(284, '348b7ca4-fbd8-46be-a89d-a4f50bb3816f', '2022-07-08 08:08:08', '2022-07-08 08:08:08'),
(285, '11fc4190-75d8-48b5-a1ac-447a4f31e5ba', '2022-08-08 10:05:23', '2022-08-08 10:05:23'),
(286, '97e1eada-31b6-4919-a4c9-fa740308d65d', '2022-08-08 10:06:44', '2022-08-08 10:06:44'),
(287, 'fddae051-f0c7-4b28-8f97-8d4f5d0354b8', '2022-09-12 04:38:00', '2022-09-12 04:38:00'),
(288, '586e9177-af88-423c-b6a0-a154e7e49066', '2022-09-12 10:27:28', '2022-09-12 10:27:28'),
(289, '1d2f113b-dfb6-4536-97b1-d7186f695697', '2022-09-13 10:50:04', '2022-09-13 10:50:04'),
(290, '8081e84b-4b13-49c6-b737-df0206300b50', '2022-09-13 10:56:04', '2022-09-13 10:56:04'),
(291, '478cbb21-4215-4111-b4a6-3a55fe234b25', '2022-09-16 05:22:50', '2022-09-16 05:22:50'),
(292, '8e0f28ad-2dcf-42b8-8398-1c10cee5685a', '2022-09-16 10:03:36', '2022-09-16 10:03:36'),
(294, 'e111a931-a450-46d8-9230-87c6df89da2c', '2022-09-17 02:38:27', '2022-09-17 02:38:27'),
(295, '7ef81f60-0152-41ba-ac16-f77e69544fb1', '2022-09-17 02:39:33', '2022-09-17 02:39:33'),
(296, '1e990310-c369-4baa-bb49-8f8c0b14472b', '2022-09-17 05:13:28', '2022-09-17 05:13:28'),
(297, '3d8f4340-576e-40ab-a8da-f6cdaed29a2a', '2022-09-17 05:14:48', '2022-09-17 05:14:48'),
(298, 'cb4b8600-8f7f-4df5-95d5-a0e49f416c71', '2022-09-17 05:16:37', '2022-09-17 05:16:37'),
(299, '88b8c729-ff93-4d6b-8500-245492838482', '2022-09-17 05:19:08', '2022-09-17 05:19:08'),
(300, '47e7c7e0-2978-4abf-83a6-dbba2eb8cb2f', '2022-09-17 05:23:55', '2022-09-17 05:23:55'),
(301, 'a8847200-034b-4405-9140-1855ed1c8e29', '2022-09-17 05:26:34', '2022-09-17 05:26:34'),
(302, '1036ff11-a00c-464d-b280-5c5d9246d231', '2022-09-17 05:28:25', '2022-09-17 05:28:25'),
(303, 'e9bb1382-6530-4ca4-a0e1-1e116671d585', '2022-09-17 05:30:10', '2022-09-17 05:30:10'),
(304, '876bfdee-0727-440c-9244-b4b50d0bef58', '2022-09-17 05:31:48', '2022-09-17 05:31:48'),
(305, 'b61bc63d-3669-474d-bf04-b8dba05c1084', '2022-09-17 05:32:49', '2022-09-17 05:32:49'),
(306, 'a31d78cd-3b3e-4bc3-a939-2236fa2f074b', '2022-09-17 05:33:23', '2022-09-17 05:33:23'),
(307, '3873c77c-23c8-4753-9f08-215084e24520', '2022-09-17 05:36:38', '2022-09-17 05:36:38'),
(308, '555ea030-c31e-46e4-a75e-f87284bc4032', '2022-09-19 11:11:20', '2022-09-19 11:11:20'),
(309, '896b65a4-a6d4-40d0-a90a-2752cc6c81af', '2022-09-28 04:28:50', '2022-09-28 04:28:50'),
(310, '02878d4f-c374-4d13-b52e-8f514fc4976c', '2022-09-29 04:56:11', '2022-09-29 04:56:11'),
(311, 'd74ed69a-3a71-48b2-a2e1-e5688449261e', '2022-09-29 07:19:17', '2022-09-29 07:19:17'),
(314, '40802f4d-a531-4d03-8cfc-469cf05aea8d', '2022-10-19 06:57:21', '2022-10-19 06:57:21'),
(315, '393917ca-1cc7-4c53-948c-eae2f53b0175', '2022-10-19 09:14:25', '2022-10-19 09:14:25'),
(317, '2652335f-7d82-414e-b8b9-c77f44a9a278', '2022-10-20 02:33:25', '2022-10-20 02:33:25'),
(318, '05871b54-ccf9-4d40-b998-deb589106569', '2022-10-20 03:19:41', '2022-10-20 03:19:41'),
(319, '0f7fe210-4b9d-477d-b265-9b3800dc3ca7', '2022-10-20 06:19:40', '2022-10-20 06:19:40'),
(320, 'd2ced18f-df8d-4b3c-94fa-dc202b370600', '2022-10-20 10:58:10', '2022-10-20 10:58:10'),
(321, '30945b60-6dac-4802-84b8-0876ed395ec9', '2022-10-20 11:02:33', '2022-10-20 11:02:33'),
(322, 'c12b12de-e540-4a89-b573-20f8834c9001', '2022-10-20 11:07:35', '2022-10-20 11:07:35'),
(323, '1e37e080-294c-46d1-9cce-223d9a69e891', '2022-10-20 11:15:25', '2022-10-20 11:15:25'),
(324, '712832fe-fa4f-498b-a294-28787870158e', '2022-10-20 12:13:28', '2022-10-20 12:13:28'),
(325, 'b8a20b1d-94f7-44a6-a1cc-6cebbd88edbc', '2022-10-20 13:04:48', '2022-10-20 13:04:48'),
(326, '30b11382-467e-4b82-b4a7-30b7703f3cd8', '2022-10-20 13:05:08', '2022-10-20 13:05:08'),
(327, 'a49d6868-a9ee-4e23-833b-e06ec128fe8c', '2022-10-20 13:05:25', '2022-10-20 13:05:25'),
(328, 'fa942c96-8446-469a-994b-e0086e8bffa6', '2022-10-20 13:05:49', '2022-10-20 13:05:49'),
(329, '3cf459b3-8af3-4b75-8da7-2b2c0017b1cc', '2022-10-20 13:05:57', '2022-10-20 13:05:57'),
(330, '4dd57ee9-a8af-4ad1-8f11-261de7d388e4', '2022-10-21 04:15:53', '2022-10-21 04:15:53'),
(331, 'c5238b91-0bbc-4046-86db-d269d12c776a', '2022-10-21 04:45:36', '2022-10-21 04:45:36'),
(332, '82bf730f-d9dd-4875-b4c1-dbb5e58f9b93', '2022-10-21 04:46:32', '2022-10-21 04:46:32'),
(333, '76c4bcf8-323b-4a67-af28-4c2194240ce2', '2022-10-21 10:55:28', '2022-10-21 10:55:28'),
(334, '56d39157-7d37-49e5-b08d-b2bacb1b810f', '2022-10-21 11:24:55', '2022-10-21 11:24:55'),
(335, 'a04f93d7-a190-437f-959e-3e025ee528cb', '2022-11-03 04:54:12', '2022-11-03 04:54:12'),
(336, '99a98116-3678-4f13-89d4-9bec41cb432a', '2022-11-07 02:55:18', '2022-11-07 02:55:18'),
(337, 'c59d3fc1-2e52-4fe2-bf09-c73e374f0224', '2022-11-07 02:55:36', '2022-11-07 02:55:36'),
(338, 'c251c6d2-e0d2-4467-97c9-cb839f88fa24', '2022-11-07 02:59:18', '2022-11-07 02:59:18'),
(339, '1aa6b251-cbb0-455f-aace-78dd0cce08cf', '2022-11-16 04:10:10', '2022-11-16 04:10:10'),
(340, '0f8e8f60-10e4-48f1-9044-a195b4cf4c8a', '2022-11-18 02:27:15', '2022-11-18 02:27:15'),
(341, '6ab08318-2f91-4010-bfad-2a7d82914db6', '2022-11-23 09:04:17', '2022-11-23 09:04:17'),
(343, '34b27cb7-388c-4bbf-a4ce-7746fd1a7e5f', '2022-11-23 11:49:20', '2022-11-23 11:49:20'),
(344, '6a64090d-cfb0-47d2-8fd3-4ef3d524b91b', '2022-11-23 12:02:31', '2022-11-23 12:02:31'),
(345, 'd3135a27-20ce-4a9d-9271-25943590f428', '2022-11-24 03:08:55', '2022-11-24 03:08:55'),
(346, 'c1ab2b5f-1511-4f66-88a0-0f6f7a2e7a3c', '2022-11-24 03:09:15', '2022-11-24 03:09:15'),
(347, 'b91a86d0-ed16-4e9c-bf5b-83fbe864b953', '2022-11-24 03:09:30', '2022-11-24 03:09:30'),
(348, '36e97e52-c5fe-448a-bef0-517eb7748b4b', '2022-11-24 03:09:36', '2022-11-24 03:09:36'),
(349, '42a4a63a-85d4-4e63-9a85-c079b0e075ce', '2022-11-24 03:09:49', '2022-11-24 03:09:49'),
(350, '5e62a818-5dcc-4f27-92d6-0a6be3a3ff50', '2022-11-25 10:07:01', '2022-11-25 10:07:01'),
(351, 'b8f205ca-daea-468f-9305-9b19209bd9b3', '2022-12-21 07:48:48', '2022-12-21 07:48:48'),
(352, 'f8ed76c2-22d4-40d3-be70-fef7f2fadc37', '2022-12-21 07:59:09', '2022-12-21 07:59:09'),
(353, '3dd156fe-5bfa-4ed9-9704-b6b27360251c', '2022-12-22 06:27:21', '2022-12-22 06:27:21'),
(354, '92687fff-20a0-4fde-9eb8-2de1013e4f36', '2023-04-19 05:37:59', '2023-04-19 05:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `phone_verified_at`, `email_verified_at`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `paypal_email`, `remember_token`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Kavita Jagtap', 'admin@demo.com', '+1 234 8996 321', '2021-01-10 17:22:10', '2021-01-10 17:22:10', '$2y$10$8pu/7PXxywvxpSkAPer3NOEssydLfmhDVWTBHzuVRM.vSPlDfSnJi', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', '', NULL, NULL, NULL, NULL, NULL, 'ZOSYEgGaqJsFki3s4hH8rDEnGqOA39jpzjjdIPKky2xdad80pYFe5ZVLT22S', NULL, '2022-05-19 07:13:38', NULL),
(2, 'Aachal Devi', 'provider@demo.com', '+1 234 8996 322', '2021-01-10 17:22:10', '2021-01-10 17:22:10', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', '', NULL, NULL, NULL, NULL, NULL, 'TwyKlf5NJ0oG6l5FfFhbCKsdRWrjF6HCunV8nZn2U9OXhJJTZ2Jxx4EqAJPA', NULL, '2022-04-06 04:01:21', NULL),
(3, 'Diya Singh', 'customer@demo.com', '+1 234 8996 323', '2021-01-10 17:22:10', '2021-01-10 17:22:10', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', '', NULL, NULL, NULL, NULL, NULL, 'SPz6luq3aoxCbgIS1gqmFDgM1qzGlIDtF0HgmDbtWcx2reaeFcogcFQzdP2F', NULL, '2022-04-05 04:02:48', NULL),
(4, 'Amar Singh', 'provider1@demo.com', '9876678543', NULL, '2021-01-10 17:22:10', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', '', NULL, NULL, NULL, NULL, NULL, 'yCzPqDP1oczySU57q6G71SxTIJSiZUBE4vYdXbXCqzpzC2iN09igcs3jzSQK', NULL, '2022-04-07 02:54:07', NULL),
(5, 'Priti Kale', 'customer3@demo.com', '2456425422', NULL, NULL, '$2y$10$n/06hZG121ZGp3tSwDQS3uhsQKxEYspjKrn7kGlLxRinUZKiulrEm', 'gkEWScQHIol9EIRhP3m5m7JqnK5UvcGdEsKQJo7YeBcQawYFq3JAJ6SX9UKy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 10:55:52', '2022-04-07 02:38:56', NULL),
(6, 'Akash More', 'provider2@demo.com', '3224564253', NULL, '2021-01-11 00:00:00', '$2y$04$WRpHC9iMxZ3f.gctQ4igsuZjsYfGjX7igVM8GsC2AMME3.4au3dYu', 'TKArYDDFHNiEI33sfExaBEhxHCs5kFaWP7EO6aNlUZfnqHrvsMCwsYeAk9s2', NULL, NULL, NULL, NULL, NULL, NULL, 'JbiYaHlRWGKkfITxH9qI87GzTMPf0zJ2Iw6NIdlS5dDvWuT5PC2sP5ELGwKx', '2021-01-11 11:33:59', '2022-04-07 02:51:14', NULL),
(7, 'Rani Deshmukh', 'customer2@demo.com', '3224564254', NULL, NULL, '$2y$10$3GhoIShzRdSXevYAh1NF/.67J3OshX9D2.sqY50o8kxh7EXPw7tuC', 'w6QJYqZyllY24AIR3nSsKqgj5eMSZevmgpSywwxJxUS9nwULcuriRLBxEXZC', '', NULL, NULL, NULL, NULL, NULL, 'WxYP9zjTBy9SYF5OWjcFbMt2Ob9r0bahBKzPDOtw9OrAJ89JqaMxkN5aqu8J', '2021-01-17 16:13:24', '2022-04-07 03:00:32', NULL),
(8, 'Raghav Kore', 'raghavkore@gmail.com', '+12645595482', NULL, NULL, '$2y$10$MqPMTfg6RUNxxEH6aLdqnOYZUBsT7xtxkglD74pDgThV52.HJrLba', 'WivbG2oAEbEGl51EBeBuHaZeCqyfBnCVGo18nSaj2FwwiDjux2ZOAZWUoddK', '', NULL, NULL, NULL, NULL, NULL, 'SdstZCaeYW0pjqZn832HMzBD7WPGJ5m9hwWG28nhbIrzSS0etj33rbTRJ6kD', '2021-02-10 11:31:12', '2022-04-07 03:03:32', NULL),
(9, 'shubham nivangune', 'nivangune@gmail.com', '+917083420331', '2022-03-02 18:57:17', NULL, '$2y$10$lVKW2PWqBWYCg7vemJXamufABEsm2J1zwr.riQYeGHJha9/MifYAa', '9RxpcpiryAM7MunkOdOQX2NSoD73ZmpWblTNSoXZLqTyBHnvY4Me6M840xl6', 'ePjslOMnSrmBNKMPl_AMeB:APA91bHrOZmuIcepI2Yb4QYy_mrmdiBir7YXdt2OPydcToxtFWO_-EPdad43Sh2tffAcSf8_Agj6ej-Q_gpFFCT-9QL3VudgLMHA-IC5aHIc8uGeYwnDmIaxP9zQiOQlCEKQ3Gjc5j1E', NULL, NULL, NULL, NULL, NULL, 'bJo3uZZxx8r7b9PSeA0a3Ewry8FtNfzS457ghFxzOBJ5UuBMrZSsNbyOEE7k', '2022-03-02 09:15:32', '2022-03-02 09:27:19', NULL),
(12, 'Himanshu', 'meet60app@gmail.com', '+918999226133', '2022-03-10 17:17:07', NULL, '$2y$10$DTpobydcAoxUqnyUHPWVZObYQ4t7yzPS.Dsw2A9HBiiCgJBEvQrTq', 'Ghx92Z3z58oa2qgJ5Ml8c2bC1yBxBrjqRBC4aHwlhMJPv9Gr03ugaFVdg85T', 'fdLkKh4uTPaRfafoyRZhxR:APA91bFpD9m_GMkiPyY6MCFI3mmN3ALrn_Za1dyJPYNxeDo1edUvrda8No9oeFRCOvZgzM9JpYIO8zMmVY1Kcvrrbx8bhEOT9ae_WQbCPyZBru97HLxfnf9_aV5zxwVipLw0TJ3gAZnW', NULL, NULL, NULL, NULL, NULL, 'kcojSljKoP9DuGwD00DKQHJIZvm6xB3JBXF59dLh2pYSOOKHGeRUX5Jz7Yuk', '2022-03-10 14:47:10', '2022-03-10 15:01:46', NULL),
(13, 'Trupti Maskar', 'truptimhaskar11nov@gmail.com', '+919075283122', '2022-03-23 05:47:10', NULL, '$2y$10$sVNUiKgHbWfWwYUm2NhbwOBG/RJn1Ts.ROiS91yss8P3sQwRc9tbC', 'JdGl0t5iE6O1I5BdVDkSbAyoJihvUmxEZqcT3of0wrqwHSLpMG4yoa9h8AI1', 'eZzvhEY3TACakJt2njt8e8:APA91bH074sa8PWisoPqBfAk4s6pVDZdNoNGYlBDGTxbzZ44Fl8aDF3rsGzOfKj_8-kFRKrAiRJDtP0ML_yWDGFVvJnRaqUDeNS_PhCNiuVg-9SFsENd0Wi_oa3Okz_TCpO2Lsk8w7ak', NULL, NULL, NULL, NULL, NULL, 'ZrQDxu3FUnMsGUfELB7PDhIwo12jdIvOayy6VRhLTlgRHA7ledKVxOJplZIG', '2022-03-23 03:17:12', '2022-03-23 03:17:12', NULL),
(14, 'Trupti Mane', 'truptiMane11nov@gmail.com', '+917057170583', '2022-04-05 10:09:10', NULL, '$2y$10$wtwSS0QVARAm5izWbRcQkumUZ0dW.F1Kb3YKuj/nmHdeqhoux7TEm', 'ebIGPN6DholReRhQMoSE7uf4mcAmWjEkryCj7SYGYQMU49JtPERTNw6kVN3P', 'dW11EN8jROqVlUEQ1ZUiwE:APA91bGkzUgR8nVciNAbJfOaRJWiV4VPgb2kZQ4-u9LlsYUp5pgfSNWYsJX30YxSZSRilXhB7rQyZnbIDR_EDUA18IqKWhZBvILUVpUhbHb9KJCwuUrD1RuZXKx2UrnHxUz7YPwMlxSd', NULL, NULL, NULL, NULL, NULL, '7ADgHeVhTZM918GpRYk3Hu5H4CIjLY2LRhekNPKzVDyGZ6dfT6Ma5fyU2vjy', '2022-04-05 07:39:12', '2022-04-07 02:47:08', NULL),
(16, 'Ritu jadhav', 'Meded.testing@gmail.com', '+919763640074', '2022-05-19 09:52:29', NULL, '$2y$10$xi8zc03ErkIhi28zaH/vaOAH.EQimSw9qZDrg7ix81dtOjj/Ujqf2', 'GRJy2fJAZESJvqLoSlbI7DLI3G4FXUfbFyKnOwrHrhrdQuqILrbkgmRrDTiG', 'dlpgDDsDR3u2xXuBH8M55a:APA91bF2GBBPdhIYNa-_wrNKTHHRmrG4NlyocNlKRd9aR9qR5FoXxg4hxkNryKuSqfm9UHGf2xd-VGLug0KJUMw9gwGpHrIZMab4dmbvpGvB1NniB9-2TWcVmNIH4tmOKNabpGBkK13W', NULL, NULL, NULL, NULL, NULL, '1vCuuhfRnnrl1FGAClpGiMqqk5GgaJzeiq20dZVXXb85i73b8qieqg6OEOmm', '2022-05-19 07:22:31', '2022-06-16 10:23:38', NULL),
(19, 'Avadh', 'er@hh.com', '+919527073968', '2022-05-27 11:34:13', NULL, '$2y$10$0d6tNVMTlAUPT.A0MeNis.dFJJP0IbGSw789kyBQycsFR4KgdFKA6', 'eNbcDh8LIrqMbaT51sllzZLOWUpvllpDtA4BuqIxUTF8QktWk0FZUf1SzxtM', 'cqKSGBD5SHWjtuu14phk_O:APA91bFDhBNQi4RueY5Afxyne-IEWkHdy1OaW1OtsIY0xNopE789rgOWREGvn7NNmHXQdQpqTcv_HEFfWBUz1ksc8qs8OkCuE8M2kZ7VjgEQip6ekvty98WZQY_QdP1tONLasseJUPNQ', NULL, NULL, NULL, NULL, NULL, '1M1McyYvy5lczY0fE6sWN9X0ABXNHgiredU6APMGLmpNM3H5hBYdf28K0vhc', '2022-05-27 09:04:15', '2022-09-16 06:31:55', NULL),
(22, 'rohit joshi', 'rohit@gmail.com', '+917888286744', '2022-06-10 07:28:12', NULL, '$2y$10$lQCBJSf2u.R5UWVaCYMnhOEyfTK2aei6rnGoSfru7qfM8.AfdbHOK', 'dKnUosKAlI09QifktAdon230J1u8ajPQJ1kjPNPqbwuvA7S1JDMudRYKWxBJ', 'fYQ5WztPTOKFph3JsP-KzR:APA91bHTtQWe2vN4nFB6d_EtUMU-I3BmB2goVNnGyPy8bGn2YX-zubB66346-sBbcLLYHE73sSY521tfJrVsLdakdkUwLYhkysHG2dvjtovSZzCF88hLiKCovBmbfHAc7k1WCLxwTF2-', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 04:59:02', '2022-06-10 04:59:02', NULL),
(31, 'isha joshi', 'isha@gmail.com', '+918380948134', '2022-06-11 05:36:55', NULL, '$2y$10$t/4exXQrP.23iaVuBXe29.OXIeSQHvCYtbcIHfvrB7nZo7zbKWr/6', 'eLAKZdY5omx2re39g0YWsIdFhYgsVkGvjRndxZeKHSI0TL9qCdPD3UbxgIVL', 'eXMeMMHzS1S874X9VdKmJO:APA91bHIaDEuBPuXe0v_Coxz7N99FxMLIgi8ISpPSCov72AoyDj_za0lhHt_B3nsZ9jaeC4KAmyFXZ8iHY1GVyqTWaS-_Py8pO2V9we6mrUtME14L1_BChb9UwSaTMDLh8YSAzJc3vjT', NULL, NULL, NULL, NULL, NULL, 'SoKEd8ySbcWCVZd4GTqfp8tCE5llPtgVYTH2dIJvlxl6PZZGmexD3ZJcyeNX', '2022-06-11 03:07:46', '2022-09-12 03:34:42', NULL),
(32, 'Rana Sharma', 'kavita.solicitousbackup@gmail.com', '8421435600', NULL, NULL, '$2y$10$Qb1PiZicRTOasH2OgDLAguC/4pthm86DF2VDv7zgfK8yJunYK71D6', 'yDrpUwFq2GN5pJTwQ8SZC8PjRpTBOgv9OGLooIOn7jTz8HYAC21tCOdf21kp', 'c2dVEHL5TZuDa_COHowd1y:APA91bEQWT1qBdsCk7diardGJXavGjrfgVpM3YJPudEpLQL5dlCRGQBOSqM0SAxalDkPARmZjHlSNbjBGDgcPDv943cZUUaprOXlERWu-dYwK5M-FAr1ZASBc_wzPewMnLYia6Ziu1Ox', NULL, NULL, NULL, NULL, NULL, 'MXV4hQKpzGdS8Z7v0dYOLNVjaAQVvTwGjqGXJHO5SoM6dYEY2w0EbtSZnLLb', '2022-06-11 06:10:17', '2022-06-11 06:16:05', NULL),
(33, 'Nitesh Varma', 'h2o.firebase@gmail.com', '8380948134', NULL, NULL, '$2y$10$n9xKgq1Tk1lr1EtYDxbZ.uDm4D/PXwpjkPa0GI.L3nN5vM8klATbi', 'IIKLM9SEkz4wKYymCt9FzEvSaLzbLOVbtnYI4fv2LVoUQ6Ywve0nWaVvYpg3', 'fyzM1rv9TZCvoVKiUmg4Om:APA91bFmyQl8hN-LufxoXav8x45ArP26JrlyCFSJ9O5l2dB6hJ19ag1rLYsdZJn15LquirdE5DkMoEwjmtfyJhU5NWoWv1AZsWgLEZrZo4gQjTyZvDiWyLUsP42IY0aUAe92JNHs5m-Z', NULL, NULL, NULL, NULL, NULL, 'pn4Pu8YvtMZyWt4kJtmqGDwdPD1CCEHbcna1P8s9PdreqKE2Q0mZxmlf6DAy', '2022-06-11 06:19:50', '2022-06-11 06:20:52', NULL),
(34, 'Aditya Joshi', 'adityajoshi@gmail.com', '8177995856', NULL, NULL, '$2y$10$lJx.mAhdaZB/s8/aW8KSb.ocqAqQSp4DhbgvcyBGSkTLWWEEPxuO2', '7GeK8TjtOTp4kUUCm7kb8t5bGzKG5PRW5HEgCS90G3z6oCtnvKWZLX45f6pI', 'dlpgDDsDR3u2xXuBH8M55a:APA91bF2GBBPdhIYNa-_wrNKTHHRmrG4NlyocNlKRd9aR9qR5FoXxg4hxkNryKuSqfm9UHGf2xd-VGLug0KJUMw9gwGpHrIZMab4dmbvpGvB1NniB9-2TWcVmNIH4tmOKNabpGBkK13W', NULL, NULL, NULL, NULL, NULL, 'Vegfe5EL1baYyo0wSsDaJFyHhXrByGCgo2IL3vLU6p6cW5nDqL4FWuTp0KJ2', '2022-06-16 10:49:22', '2022-06-16 10:49:57', NULL),
(35, 'Bhushan Warma', 'bhushanvarma@gmail.com', '7045461516', NULL, NULL, '$2y$10$Y0EIO3755Bjapx6j3FlTR.3ArHHq2Y/Fao4WzJIHBc518W5QlFlOG', 'oRc2u490FgJY9SzuX52A0OcHhWWm66pNA06NQXNUp4zJn3ZHLf6LOTW3P3nE', 'dlpgDDsDR3u2xXuBH8M55a:APA91bF2GBBPdhIYNa-_wrNKTHHRmrG4NlyocNlKRd9aR9qR5FoXxg4hxkNryKuSqfm9UHGf2xd-VGLug0KJUMw9gwGpHrIZMab4dmbvpGvB1NniB9-2TWcVmNIH4tmOKNabpGBkK13W', NULL, NULL, NULL, NULL, NULL, 'sz57Kk2B5JQSOphd3TdeW9t8IfUEgdV332vvfbXpLN3E9OU5DVMX7unzKZ43', '2022-06-16 10:52:53', '2022-06-16 10:53:25', NULL),
(36, 'Monika', 'solicitous.recording@gmail.com', '0976 228 5991', NULL, NULL, '$2y$10$ePOk9HPlqq.19BI0faAy4.Sd5TwmzAnyB268L/uSjb4Qdw0HOJ9qq', 'pVp3B27zPS2eipIhZR5xekUKt40psHmbpZzT2hy8vT6rPqC728MjLsWppqBg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 09:51:53', '2022-06-18 09:51:53', NULL),
(37, 'provider', 'provider@gmail.com', '+917999994252', '2022-06-23 00:51:51', NULL, '$2y$10$WJ6zg16UzB4R5o6vXD10BuP7LQ9qSmKfavfwNhhaxAAN/ukuSpbB2', '6e3wgzOkLI6wHirUABZxuE8oidvob6C4ww8pRH6oEYsiUb6D8Z5wyZ5QsLiQ', 'cyx78mBeRsKQPoVRo89XCx:APA91bFMMSNpKR6_v9-61FsXepJo6SCpOxwpQok_cxNSl1SD0jXlscthVBmNxkiFXk-rupF-Nn-U6UyBUnQt2v4y2UJ52qdi4RKGdoQh4iQkkc20pp8VRtsPEXz1SzjiWFPApasmrfYk', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 11:56:43', '2022-06-23 11:56:43', '4'),
(38, 'Rohit Zadane', 'rohitzadane7888@gmail.com', '+917972530411', '2022-10-21 13:57:33', NULL, '$2y$10$L.FcKRPX6NyrjLfvEjFXbeWP85sMlwUYwrc/me77TUexBA48UW11W', 'yuIkcJ1NRgJKatSwNiKwXFtcQiE3oC5XuzmqIBBJg287YAisnlgKimNOfBdE', 'eYo6wZ6kR0-n4LNBFt_RqM:APA91bFDTquK5WtfPQF1eFLEBv8BfnGZzIdFMxbbiA_opsaND8v5TICoHZPBnFMT1Y0Od262wG0AfrQkg4hB9XuxH5NEBS_lUV2vVIcpnGdyiPaZDLrLE7-JoJgg3P2NTPS5hbBwUEP2', NULL, NULL, NULL, NULL, NULL, 'h8UvPGiBv60mLMAvbsoIqFuqlwmpBsgnZGuV47bW2qWyPQOYs7kqRyTJnz1K', '2022-07-08 07:25:42', '2022-10-21 11:27:34', NULL),
(41, 'Bhushan borse', 'bhushanborse@gmail.com', '245125412412', '0000-00-00 00:00:00', '2022-08-06 05:17:10', '$2y$10$SSJvyKxOKForL.O45sSbM.GIE2JKf1D4vgwofoz1FYKBSvueK.Dw.', 'ig8h9wxpMUDNZ93mC2aQDC86Ce6SYIkdff7pl8bZllrOoKMOa5qFvP9UeDzE', '', NULL, NULL, NULL, NULL, NULL, 'vwBqucvuEqduYlKIkYLRNtwUVAA942kOy69d62LikVy9axDhifdNZzWH6A6n', '2022-08-06 05:17:10', '2022-09-12 06:56:21', NULL),
(50, 'rohit zadane', 'zadanerohit143@gmail.com', '+919075347180', '2022-09-17 05:09:58', NULL, '$2y$10$QOi92bou6Orm8MDGaxyuTeJHKVgAvhvLVmg9wpwWj6LWnjCAvRgr2', '53U5SJqZJMvYbgZRsy1ovnsQmE6qcKo0nuzlHrQS2yUoYAmSwBQCVDlEFScI', 'dY1BbcsmQsuHwiD5xW6sDn:APA91bHcAR9o4XCvSrDqvowyxHh0flswyWwp4jErIfv0b6UFVGW5CukLHxEPh1DEyDmfPsIxuxa4qzKPrYG6K3mXIhoJ4Vaaj-DlMiR1hsoOttWZogXEJvN81a1S1gQwIvWTXw-He2ok', NULL, NULL, NULL, NULL, NULL, 'YDDeOln2fbmZHjz90sZ10z6SGo5oJ7hXPnKYvfctj84BInedaS9nf7kfx98d', '2022-08-08 07:53:19', '2023-05-09 02:40:14', NULL),
(52, 'kailash chadra', 'kclakhera0208@gmail.com', '', '0000-00-00 00:00:00', '2022-08-08 08:38:37', '$2y$10$UNf5PSGA23Dtf7GaeHsAbOh1O1PFAYYZEqQ1Yxr8Igfh4wuqWaffe', 'VGRSMaF15gf7XPrmFO8sHEls8K6pQCLTgyfpolLw5BbBqzgKEbNYStul3yai', '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:38:37', '2022-08-08 08:38:37', NULL),
(53, 'kailash chadra', 'kclakhera110208@gmail.com', NULL, NULL, '2022-08-08 08:40:01', '$2y$10$mJS4yz7HVe7C7P.wMrAh2Onq7a32a5ttKIMIwS1e3b/CuW5dbwzou', 'i3zwC0ngtDEw4QdQnh8a4J6PrRNJKUwnUY1AQJgDWS0uOMZyvW5IdIzrqbb6', '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:40:01', '2022-08-08 08:40:01', NULL),
(54, 'Kailash Chandra', 'kclakhera0206@gmail.com', NULL, NULL, '2022-08-08 08:42:43', '$2y$10$KjOqqc482nxlGj/4z6PTGuHZRMGbNPs29OoWjvDPGg5FL7/IiMltO', '00V8OZ7sUurVa0lVdJBjJZfOPLm53P4sH7VQNqHs6SubeZuyB2UGVO8XYPD4', '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:42:43', '2022-08-08 08:42:43', NULL),
(55, 'Rohit Zadane', 'rohit.maxus@gmail.com', '7888286744', NULL, NULL, '$2y$10$frtlpPJPsqSKQm2lL.5N4eUeplsqc57ULyGL89retunMIlZcQSrqi', 'p4imEJjlv8YVmnFx6vPH4kdZE9RORlnEjCJmeUxOmW2C0cifb5qgKOCWaHEM', 'faWiSdX_S_6NYm8Y1o3Edo:APA91bFthIaF57GTCarU7La-DdgsNJ_WJXEbitdbuG8wysuOJH2snxPi5qabC2pK6bWBiYt9LILCYdHu5PPIiSnccPheOXy7c2g-lhx0ghXmYOI9KUHRtKTNVAeb2hXuee_i4NeqYRZt', NULL, NULL, NULL, NULL, NULL, 'dZZqcYlouSd53HPoSJuwocoBXpiQkfFGA77T7EYKtzpqaW5uHEA2JJVAI2vD', '2022-09-12 06:05:12', '2022-12-21 07:48:08', NULL),
(56, 'avdavd', 'netrar362@gmail.com', '+917798925200', '2022-09-12 09:34:08', NULL, '$2y$10$dDXTzZ/J5Ev8T13HhTgJ..T1v4euc3WeqnJ5IBCknhwkeSrn.hAZa', '7QCUFHpzSGvBoNzFpl7P5yaHRZQZbnRJ9sSxT5VpokrppFF7mqbpyljSr6dK', 'cNj_3KNtTDeOLVFrJbAAb_:APA91bEC53nVfIUozjJW75k-aaWvYOSaYF3kXebzYuH6esrL55uSQSWrN5zmmRKDjQ7ps7XCMJXjgdgkLucUSuOoBCiTKud927Q0QY2lYa3_hgoIYeLSIiGmP2V3okqM6Y3qFPw6T2Er', NULL, NULL, NULL, NULL, NULL, 'NYVKhiBS8vl8pD67W7rQMu8RzsdSLE112pQtLMu7dvtfEV7rbSuleYicAQ1L', '2022-09-12 07:04:10', '2022-09-15 12:22:03', '4'),
(60, 'himanshu cloud', 'himanshu.solicitous@gmail.com', NULL, NULL, '2022-09-12 14:46:24', '$2y$10$r33dU9WfIG7st8q27FtNEu9kMxBLRhp51qq3hOF8xiQcn9k//woNO', 'Q1UQ7zx7Q8vcxvg3MOI7FM9pcVPHoQ8KGdRXUp16Xw0FShDbJRf03ANUjK9g', '', NULL, NULL, NULL, NULL, NULL, 'VNvbxDsVjDj18Cr7wUzq2e58X3jWh3WevwMuywO21CnzCPjj040kf0HAJt8S', '2022-09-12 14:46:24', '2022-09-12 14:46:24', NULL),
(64, 'aaa', 'aaa@e.com', '+919898790987', '2022-09-13 14:58:46', NULL, '$2y$10$Kg1xNZt63M/F4NSY1eId4.UiGzGY8LYFhfKSoH/PN9CELAAghc9Uq', 'hTS10ZQzONPOTXCsH4NK6T13vplQRtpLX5LOCJTwBhLEJtGuADgnY3DIQyaI', 'fDGys0_oQI-9uueDIA21OS:APA91bGxbfBNPaS1fh2NRDqeF4uae9CofRRpx7CHcfPsrERkN9C4fKA3EwVJIaHmpUxXHXL1jsTqtDbriJMX19lTbQqi748ph0kmWHKH4CWXDLgvJG4wt8ESpYs1pIQwBMNAaFISzGJJ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 15:18:34', '2022-09-13 15:18:34', '4'),
(65, 'Avadh Joshi', 'avdjoshi@gmail.com', NULL, NULL, '2022-09-14 05:00:29', '$2y$10$XhllphMLNMNtJaFgv2onUO3NKopGL5rES/XHv8RNRfSPIYuZLh0Ey', '2Z3H1NerP7Sc4o8fqA9jcCyL796mVCGCPFJwJeuVl3vyjhZoChDqjHv3R9SI', '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:00:29', '2022-09-14 05:00:29', '4'),
(66, 'avdh joshi', 'team@solicitousbusiness.com', '+919898507108', '2023-04-20 10:33:08', NULL, '$2y$10$q/lt6KkjJIykNg8uWlCVF.A4pTJqGd406Jf38ULAn55Uk/yba6dHa', 'qLXb6yfNoeBJaqR31yO9IPzveg6z0u7EV4IrEgo7Fno02WLryPhYtn8PTa0a', 'ewqyCpLhQOSr-CUP_RolIJ:APA91bEYCjwnBk2SqHQADfr6Tx1_O7BrThKJF1eG7BqAqZuBsS1s2ZSHPXycRCF2XfEugqm94NGhgG_lRP2vwxi4gKCX0gYQ-62WEKliTTzERopkZCbu3geDT-ki9gUafMVXj12vK3M-', NULL, NULL, NULL, NULL, NULL, 'qSNjhIM1JJBLWuOxpha6xUnJ28sojvAiVKvOQO6Q8nDnJX8YZqowe6ZIFBL9', '2022-09-16 03:05:38', '2023-05-11 02:24:05', '4'),
(67, 'Suman provider', 'gsuman9999@gmail.com', '+919866276655', '2022-10-21 07:16:37', NULL, '$2y$10$KaZQCV/M.zLMaIbeP4IU/uR1ooYMCQ5cICnsC3GwYn7a48wHNojRC', 'Clnd2vVgTXzG5GFq8hAYR5dTMhMDKBHl5vL0T1x1pDqnfVQOsStivr4lN8aa', 'em-wNjocRECZ64JRlf7iiz:APA91bEDfnT4ZK7uCs7fS4O-WIf02m9Collj2YYGAp9jiCLFNQnpSejg8fZUImGQzKAR_IcYPkzAGD-yTPhQ4T-PRJQLSQrRGKgaxUbX7yemKKgQEM7Xjj7lKJpyrTVOyoU3_n1-3M9X', NULL, NULL, NULL, NULL, NULL, 'dMVHmujWzkfI7SMGv2SoCRhJIgbASShuO5IVXyzoIEW0SaNbLkqk2uLXNi5F', '2022-09-28 08:02:16', '2022-10-21 09:35:27', '2'),
(68, 'suman services', 'suman@sims.healthcare', '+918333936655', '2022-09-29 09:50:28', NULL, '$2y$10$4CCRAcYa7SHWRdYt.4fdGOh.jpn/qSDPODMpW1HfuMIROXmCYRrW2', '4em18VDBa4trfPotCoOr3ZgIiF4ADAdPWa8X3oYLupefubCN5mVu6Yx9zx4K', 'eLZ1xYU2QU-lhFhmrG05V3:APA91bGCOHKVTu_6q7cbn74SRc8X85fTwRFU9hWpP52bORBfm3DeOSyTqaWHpYpdKckjhCSolLdleUNI6wK4PT4ZLKxqF6JCQQtKqcc9HzLLFk8buXoSjNUM0FLpwEQM2MVuzYVo4I_g', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 06:36:36', '2022-09-29 07:20:27', NULL),
(69, 'pranali zadane', 'zadanepranali@gmail.com', '+918208220590', '2022-10-21 13:23:22', NULL, '$2y$10$4x6hJh1IB6cg.l3Z4bptgOlf2TlK6O9PAFSR8f9wS33rb6Hd0XDUG', 'KKL5W5LuYumpRZxMxkZtC61TgHu3lUvqiU8nwU24f2ZjYIQcQisQxHpMgT9Y', 'f1zSibJKTaK7-eYK3gQlj4:APA91bFpA8pnohJPplQfn1uAfHCF57ZL4liiwN7cI9_VHCxgNAv2V5h-qbyEOhS1JSAThE6vlrQlof82TVOSM80HAJfV0dIE5KeVUrn_LdIQVzn_ppAYSxsdrU6k7ihH5uLxHMScvZ1Y', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 10:53:24', '2022-10-21 10:53:24', NULL),
(70, 'tester', 'vishalkathiriya93@gmail.com', '+919586490899', '2022-12-22 13:46:07', NULL, '$2y$10$SaKn6oTNS5a4g9i9Wojeje50OKSr/OMt9Ja5xyqxPZS9zHnwGgeAy', 'woY7TxSTmMGEhLGpzPOY2n8t2SlwYwLDjZQDsZmCmso5CKKLTYR1FP28K68f', 'cA8rsJdiROCG2FP6VADz8y:APA91bE48sWl-kc69lYK8U2G2ll4qoVKAMb2nAVRn6TdtXZWteXAdfnd1Mb-GBBkaBM1zPOwWlS9za8oEciAPJXNrYS4SosBfpBQtf8Kor9RdZ6uqBAKRirrSzFpqiVpLDFOe6o2LItz', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 06:21:34', '2022-12-22 12:12:01', '2'),
(71, 'tester', 'vishalkathiriya@gmail.com', '+919499556354', '2022-12-22 08:54:49', NULL, '$2y$10$PV/FrFdprDTZvUCBIe.M1eoa/MXNxkGwfTYAarYz8WLFseZ2KT4fm', 'aeGKfWE0rNMWs2gZtnZZwExajokDaaTAaWfoUqC4j5YtiQuZkTPTQJsOOLxd', 'dRzW7GlATbODfIi2ruj-bi:APA91bH8GwodBFsHMFRd63Xd4qHVGmTp_smnvDcq0P0w0GGL3xrpWG0hnXQxglXRxNIC0xNilqYzTKMiP374EvUoQd_jPEAXEcPYvxCX_nhcPUs73gWbzVQQQMOeV6CaDQGh5_MOV2sP', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 06:24:51', '2022-12-22 06:24:51', NULL),
(72, 'tester', 'test@gmail.com', '+916353946187', '2022-12-22 09:09:36', NULL, '$2y$10$RW940ALlp1gIBIm8vcR/2enrVgBAq/SpkfL.svkMU3v5.J4qMKAQC', 'XUASQd4lsatAccySDtzYrODAAnhOnSHmN5kRGSW3IZvYSN3JqYUoEN4AnA0L', 'dRzW7GlATbODfIi2ruj-bi:APA91bH8GwodBFsHMFRd63Xd4qHVGmTp_smnvDcq0P0w0GGL3xrpWG0hnXQxglXRxNIC0xNilqYzTKMiP374EvUoQd_jPEAXEcPYvxCX_nhcPUs73gWbzVQQQMOeV6CaDQGh5_MOV2sP', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 06:39:38', '2022-12-22 06:39:38', NULL),
(73, 'test', 'test123@gmail.com', '+919737999898', '2022-12-22 10:49:18', NULL, '$2y$10$mqCAEQOGR9urDtowOuot2OiGfFbhyi3qClqI7zQuQrIEjZ/rLmLFy', 'xTUCdaw9Ccf7JRvHQvwZRj1EFRnf5rWE1KfQS2359bAgg9aQZBs8tzRqcdta', 'dRzW7GlATbODfIi2ruj-bi:APA91bH8GwodBFsHMFRd63Xd4qHVGmTp_smnvDcq0P0w0GGL3xrpWG0hnXQxglXRxNIC0xNilqYzTKMiP374EvUoQd_jPEAXEcPYvxCX_nhcPUs73gWbzVQQQMOeV6CaDQGh5_MOV2sP', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 08:19:19', '2022-12-22 08:19:19', '3'),
(74, 'tester', 'tester@gmail.com', '+916356083810', '2022-12-22 12:47:43', NULL, '$2y$10$5XXAMUZM57HVyZnBzceRTO1ys4tCEypCnPTjG3AL8C7z7qx3rYovS', 'qZ4BdP7jmwdsugx2E9tWfrSjB92j2KoUbxGjjliOy17ih0YGnxmzbZWcnaGt', 'cnA8wn0AT6iZgm-_RDs32a:APA91bFjM2oc-sYhQjYere4GkJhXsOODNNPk0VZW_yecmAijrZj5tYG3BGYnIy98-MFKYATdz3gm2vUKYZzsTp3_wPbN-2G43Ip37lldeRlsB6YDN8ijEm4kGpjrCTa26oaSclfNUfTv', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 10:17:44', '2022-12-22 10:17:44', NULL),
(75, 'tester', 'tester123@gmail.com', '+919427147053', '2022-12-22 12:50:22', NULL, '$2y$10$KjYqo.jGKJJzB4d5bvl.revcJMiFQ.f5EwPNR6Lfx9KqUeT4TbqSG', 'Jx3704TfrUit2eBjklCXRPCDTSBzOTwK0wMOCNPzxc8eZxBOf380l9GdMFdP', 'cnA8wn0AT6iZgm-_RDs32a:APA91bFjM2oc-sYhQjYere4GkJhXsOODNNPk0VZW_yecmAijrZj5tYG3BGYnIy98-MFKYATdz3gm2vUKYZzsTp3_wPbN-2G43Ip37lldeRlsB6YDN8ijEm4kGpjrCTa26oaSclfNUfTv', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 10:20:23', '2022-12-22 10:20:23', NULL),
(76, 'Max well', 'maxwellh2o@yopmail.com', '+919925837429', '2023-03-09 09:06:39', NULL, '$2y$10$6smVOLWgRbxy3eGgI5SlXencLuV8Lg0ZMge6LV.zjSctcZs6GcXYG', '46V8kObHvyhKaHC25ziOkBEpfGp8iZGzMDOHfMDpvJfziNCPqjtZIqJlQ13v', 'ftpg3ygwSqG8L5eigkPCEN:APA91bETu8xknskbHvgJ-_exgYiDWUZpUjrLFD2hD06BME9S1egG-KGqu7Ku_l0p_8wiNk5UoqR8Qlh33nzyo3l6wc-8yg6Ng4HGMhl7z-OeaIpEsPkE8jpNPjU_jTNVHPrMW_Xp-ScF', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 06:36:46', '2023-03-22 09:48:11', '2'),
(77, 'test', 'ismatfatima2014@gmail.com', '+97338825180', '2023-03-11 10:16:24', NULL, '$2y$10$.LHTiFKTSckkEBRP84qm1.GEVS6/cPVk6kZ5p6J1HN7UuOTrDN5bi', 'HBp1bq3WKxEseDGA7gRW4DCT0s6oHTSVj3NB0LGUopQfmpBNuloDKh4hz2ds', 'e_-REZTdSgeZ1C81tPMQCZ:APA91bHt5eWjV-lGqPJBc-Tgv11UnWbrmnYILNXhPw34U7tdYqHz8BR4cEthwPB2SaOnR8DSiv3CwSQvBL6EijOwjYag5sxAJT74wEOf_4mD3BRdkA6EKItFYhVqVqVMMnnNF6CPzkAk', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 10:16:24', '2023-03-11 10:16:24', NULL),
(78, 'Flut Dev', 'flutterdeveloper40@gmail.com', '+919588028469', '2023-03-11 12:49:38', NULL, '$2y$10$V0uK9IRvhMRDUznstE/g4.ckGEfNJpCMTce3wt/wBC9QNlhfJ5x2G', 'qVNo43YAHk22lG0QQjBWyVMZOuNzjV4Xo1TxbljZ9FyI3Gg6esNxY281O8Uz', 'eNW1uB74S4qbMuGMEZymoH:APA91bHmkbHlha8IZYbqATlUxYtWVzz9Z21GOPDu2W2VTeS4TLksdp6ReeTlFnFrUxidfqqiYwIPezpVCVPPCNd6gLK32-SpSxXKzehcismUBXn-eb-pTmEdTCap7UDDOfXqH7COyL6i', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 10:19:39', '2023-03-11 10:26:17', NULL),
(79, 'max well', 'maxwell123@gmail.com', '+917600784775', '2023-04-24 08:10:27', NULL, '$2y$10$x5yOTHF/Esi1wIStqqQgKuL8ggTmdDNHow94cSM6E6zZ7O0DDfbhW', '3lK1AFkHgvM4Oi9xQpZ7UXnaW0Yb7JdNvm682NzBw4SA5Sdf4YsFFTxBrPsh', 'fMlgAffXTSKT__2Vbr6Rat:APA91bEQ3sfl9PHl37s5krVlCiYGMylBfs-GSm-Ak7Rfwr8W2LQBHPEKJ3rDYRvg_3ewsXqn6ELzR_9PLX8j1H0S_2iUssm1mmdF3okX87gIeL7aqHu5DZHF3G8DaCbrPh3ngJ6ZUWzX', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-24 05:40:29', '2023-04-24 05:40:29', '4'),
(80, 'max well2', 'maxwell2@gmail.com', '+917990191735', '2023-04-25 07:33:36', NULL, '$2y$10$UtcBRmMykJCGgt3qelbhM.OZ3b1DmYp3.s5lsNSZEbHh3o0O6yIMi', '6OFhi63i0GHgw17uwHkEJ1b7xLCT1707FDvf8r4XcIvi0V21QzM6jZTbreT7', 'fMlgAffXTSKT__2Vbr6Rat:APA91bEQ3sfl9PHl37s5krVlCiYGMylBfs-GSm-Ak7Rfwr8W2LQBHPEKJ3rDYRvg_3ewsXqn6ELzR_9PLX8j1H0S_2iUssm1mmdF3okX87gIeL7aqHu5DZHF3G8DaCbrPh3ngJ6ZUWzX', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 05:03:37', '2023-04-25 05:03:37', '4'),
(81, 'Dipti', 'deepti@sims.healthcare', '+919100777102', '2023-05-11 06:31:34', NULL, '$2y$10$Sp8tbW35tWNgIE5vvvEoNejfPsUFv3yrS0gGcO6ANDSWZvysMBjCi', 'NOjBMrdYLBEUqAW7PKeot0AmvcVn1dB0vKv9TDkJ7mmPQicViLZj64cOT2cS', 'ewqyCpLhQOSr-CUP_RolIJ:APA91bEYCjwnBk2SqHQADfr6Tx1_O7BrThKJF1eG7BqAqZuBsS1s2ZSHPXycRCF2XfEugqm94NGhgG_lRP2vwxi4gKCX0gYQ-62WEKliTTzERopkZCbu3geDT-ki9gUafMVXj12vK3M-', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11 04:01:36', '2023-05-11 04:01:36', '2');

-- --------------------------------------------------------

--
-- Table structure for table `verify_documents`
--

CREATE TABLE `verify_documents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `provider_id` int(11) UNSIGNED DEFAULT NULL,
  `job_id` int(11) UNSIGNED DEFAULT NULL,
  `job_apply_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify_documents`
--

INSERT INTO `verify_documents` (`id`, `user_id`, `provider_id`, `job_id`, `job_apply_id`, `created_at`, `updated_at`) VALUES
(1, 50, 66, 79, 91, '2023-03-28 06:42:22', '2023-03-28 06:42:22'),
(2, 50, 66, 79, 91, '2023-03-28 06:43:03', '2023-03-28 06:43:03'),
(3, 50, 66, 79, 91, '2023-03-28 07:17:15', '2023-03-28 07:17:15'),
(4, 50, 66, 65, 76, '2023-03-29 11:12:23', '2023-03-29 11:12:23'),
(5, 50, 66, 65, 76, '2023-03-29 11:12:36', '2023-03-29 11:12:36'),
(6, 50, 66, 82, 95, '2023-03-30 08:09:53', '2023-03-30 08:09:53'),
(7, 50, 66, 82, 95, '2023-03-30 11:21:31', '2023-03-30 11:21:31'),
(8, 50, 66, 82, 95, '2023-03-30 11:21:46', '2023-03-30 11:21:46'),
(9, 50, 66, 82, 95, '2023-03-30 11:32:41', '2023-03-30 11:32:41'),
(10, 50, 66, 82, 95, '2023-03-30 11:32:59', '2023-03-30 11:32:59'),
(11, 50, 66, 61, 68, '2023-04-20 10:18:17', '2023-04-20 10:18:17'),
(12, 50, 66, 61, 68, '2023-04-20 10:18:38', '2023-04-20 10:18:38'),
(13, 50, 66, 83, 102, '2023-04-21 17:59:18', '2023-04-21 17:59:18'),
(14, 50, 66, 90, 112, '2023-05-08 07:37:32', '2023-05-08 07:37:32'),
(15, 50, 81, 64, 120, '2023-05-11 06:50:51', '2023-05-11 06:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT '0.00',
  `currency` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `balance`, `currency`, `user_id`, `enabled`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 'My USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 1, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 'Home USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 2, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 'Work USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 3, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 'Dummy USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 4, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 'Old USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 5, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 'New USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 6, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 'USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 7, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('2f4f61f5-32ce-4f88-9dce-577fbd158c75', 'rohit', 0.00, '{\"id\":3,\"name\":\"Indian Rupee\",\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"decimal_digits\":2,\"rounding\":0}', 38, 1, '2022-09-12 05:51:33', '2022-09-12 05:51:33'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 'Dollar Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 8, 1, '2021-01-07 13:17:34', '2021-01-07 13:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `amount`, `description`, `action`, `wallet_id`, `user_id`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '01194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '02194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '03194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '04194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '05194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '06194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '07194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '8d194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `app_feedbacks`
--
ALTER TABLE `app_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `job_apply_id` (`job_apply_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `availabilities`
--
ALTER TABLE `availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  ADD KEY `bookings_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `document_feedbacks`
--
ALTER TABLE `document_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `job_apply_id` (`job_apply_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`);

--
-- Indexes for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD PRIMARY KEY (`e_provider_id`,`address_id`),
  ADD KEY `e_provider_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD PRIMARY KEY (`e_provider_id`,`tax_id`),
  ADD KEY `e_provider_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD PRIMARY KEY (`user_id`,`e_provider_id`),
  ADD KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_services`
--
ALTER TABLE `e_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_services_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD PRIMARY KEY (`e_service_id`,`category_id`),
  ADD KEY `e_service_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_e_service_id_foreign` (`e_service_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `h2o_feedbacks`
--
ALTER TABLE `h2o_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`job_apply_id`);

--
-- Indexes for table `job_request`
--
ALTER TABLE `job_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_e_service_id_foreign` (`e_service_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_document`
--
ALTER TABLE `provider_document`
  ADD PRIMARY KEY (`provider_document_id`);

--
-- Indexes for table `provider_feedbacks`
--
ALTER TABLE `provider_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `job_apply_id` (`job_apply_id`);

--
-- Indexes for table `provider_verified`
--
ALTER TABLE `provider_verified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `save_payment_records`
--
ALTER TABLE `save_payment_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `provider_id_2` (`provider_id`),
  ADD KEY `job_apply_id` (`job_apply_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_e_service_id_foreign` (`e_service_id`),
  ADD KEY `slides_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `verify_documents`
--
ALTER TABLE `verify_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `job_apply_id` (`job_apply_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `app_feedbacks`
--
ALTER TABLE `app_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `availabilities`
--
ALTER TABLE `availabilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `availability_hours`
--
ALTER TABLE `availability_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_feedbacks`
--
ALTER TABLE `document_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `e_providers`
--
ALTER TABLE `e_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `e_services`
--
ALTER TABLE `e_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `h2o_feedbacks`
--
ALTER TABLE `h2o_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `job_apply_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `job_request`
--
ALTER TABLE `job_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `provider_document`
--
ALTER TABLE `provider_document`
  MODIFY `provider_document_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `provider_feedbacks`
--
ALTER TABLE `provider_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provider_verified`
--
ALTER TABLE `provider_verified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `save_payment_records`
--
ALTER TABLE `save_payment_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `verify_documents`
--
ALTER TABLE `verify_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD CONSTRAINT `availability_hours_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD CONSTRAINT `e_providers_e_provider_type_id_foreign` FOREIGN KEY (`e_provider_type_id`) REFERENCES `e_provider_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD CONSTRAINT `e_provider_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_addresses_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD CONSTRAINT `e_provider_payouts_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD CONSTRAINT `e_provider_taxes_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD CONSTRAINT `e_provider_users_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_services`
--
ALTER TABLE `e_services`
  ADD CONSTRAINT `e_services_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD CONSTRAINT `e_service_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_categories_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD CONSTRAINT `e_service_reviews_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
