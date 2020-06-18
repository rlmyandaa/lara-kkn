-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2020 at 04:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_plt`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `token`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 3, '2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxISlhLz5DRYuzqaQ', '0.0.0.0', '2020-06-12 01:51:45', '2020-06-12 01:51:45'),
(2, 4, '91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI8KyWpm2uwwowC9', '0.0.0.0', '2020-06-12 01:52:31', '2020-06-12 01:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `app-faculty_dosen`
--

CREATE TABLE `app-faculty_dosen` (
  `id` int(11) NOT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app-faculty_dosen`
--

INSERT INTO `app-faculty_dosen` (`id`, `dosen_id`, `name`, `nip`, `gender`, `faculty`, `major`, `phone`, `email`, `address`) VALUES
(1, 6, 'Yihaaa222', '2341921638', 'Laki-Laki', 'FPTK', 'Elektro', '12364821568', 'Dosen1@upi.edu', 'hagdkjagskdas');

-- --------------------------------------------------------

--
-- Table structure for table `app-faculty_student`
--

CREATE TABLE `app-faculty_student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `year_in` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `group_uid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app-faculty_student`
--

INSERT INTO `app-faculty_student` (`id`, `student_id`, `name`, `nim`, `gender`, `year_in`, `faculty`, `major`, `phone`, `email`, `address`, `group_uid`) VALUES
(2, 5, 'Low Filter Satu', '9350', 'Laki-Laki', '2017', 'FPTK', 'Elektro', '214798219', 'lpf_student921@lpf.com', 'ahjdsjklghahksshgkac', 'RdqAeTE3KczB1Z3AdbAWFNFw4Al7tKwGfTk'),
(4, 7, 'Low Filter Satu12', '23123213', 'Laki-Laki', '2017', 'FPTK', 'Elektro', '283619831', 'lpf_student412312@lpf.com', 'safassadas', 'RdqAeTE3KczB1Z3AdbAWFNFw4Al7tKwGfTk');

-- --------------------------------------------------------

--
-- Table structure for table `app-faculty_student-group`
--

CREATE TABLE `app-faculty_student-group` (
  `id` int(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_location` text DEFAULT NULL,
  `member_count` int(255) DEFAULT NULL,
  `member_registered` int(255) DEFAULT NULL,
  `token_registered` int(1) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `unique_id` varchar(100) DEFAULT NULL,
  `village_name` varchar(255) DEFAULT NULL,
  `village_center_address` text DEFAULT NULL,
  `village_head_name` varchar(255) DEFAULT NULL,
  `village_head_phone` varchar(255) DEFAULT NULL,
  `group_mentor_id` varchar(255) DEFAULT NULL,
  `babinsa_name` varchar(255) DEFAULT NULL,
  `babinsa_phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app-faculty_student-group`
--

INSERT INTO `app-faculty_student-group` (`id`, `group_name`, `group_location`, `member_count`, `member_registered`, `token_registered`, `token`, `unique_id`, `village_name`, `village_center_address`, `village_head_name`, `village_head_phone`, `group_mentor_id`, `babinsa_name`, `babinsa_phone`) VALUES
(20, 'Sayati-2', NULL, 11, 1, 1, '2A513D04', 'zf4QOI02siKOfkAvOC65NcTeyyJ9loChpDq', 'Desa Sayati', NULL, NULL, NULL, '6', NULL, NULL),
(21, 'Sayati-9', NULL, 13, 2, 1, '2A515D87', 'RdqAeTE3KczB1Z3AdbAWFNFw4Al7tKwGfTk', 'Desa Sayati', 'Bandung', 'Pak Hehe', '09864736723', '6', 'Pak Hola', '2893047327');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_token`
--

CREATE TABLE `dosen_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expired` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_log`
--

INSERT INTO `email_log` (`id`, `date`, `from`, `to`, `cc`, `bcc`, `subject`, `body`, `headers`, `attachments`) VALUES
(1, '2020-06-12 08:51:45', '', 'lpf_student4@lpf.com', NULL, NULL, 'Activation required', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n</head>\n<body style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100% !important;\">\n<style>\n@media  only screen and (max-width: 600px) {\n.inner-body {\nwidth: 100% !important;\n}\n\n.footer {\nwidth: 100% !important;\n}\n}\n\n@media  only screen and (max-width: 500px) {\n.button {\nwidth: 100% !important;\n}\n}\n</style>\n\n<table class=\"wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td class=\"header\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; padding: 25px 0; text-align: center;\">\n<a href=\"http://localhost\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; display: inline-block;\">\n<img src=\"https://laravel.com/img/notification-logo.png\" class=\"logo\" alt=\"Laravel Logo\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100%; border: none; height: 75px; width: 75px;\">\n</a>\n</td>\n</tr>\n\n<!-- Email Body -->\n<tr>\n<td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px solid #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 rgba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\n<!-- Body content -->\n<tr>\n<td class=\"content-cell\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Welcome!</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You need to activate your email before you can start using all of our services.</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align: center; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<a href=\"http://127.0.0.1:8000/activate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxISlhLz5DRYuzqaQ\" class=\"button button-blue\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for using our application!</p>\n<!-- Salutation -->\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,<br>Laravel</p>\n<!-- Subcopy -->\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you’re having trouble clicking the \"Activate\" button, copy and paste the URL below\ninto your web browser: <a href=\"http://127.0.0.1:8000/activate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxISlhLz5DRYuzqaQ\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">http://127.0.0.1:8000/activate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxISlhLz5DRYuzqaQ</a></p>\n</td>\n</tr>\n</table>\n\n\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto; padding: 0; text-align: center; width: 570px;\">\n<tr>\n<td class=\"content-cell\" align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">© 2020 Laravel. All rights reserved.</p>\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</body>\n</html>', 'Message-ID: <610cf8ca780f7a5cd27588a072c1f3fa@127.0.0.1>\r\nDate: Fri, 12 Jun 2020 08:51:45 +0000\r\nSubject: Activation required\r\nFrom: \r\nTo: lpf_student4@lpf.com\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n boundary=\"_=_swift_1591951905_b9c614ed6407ab4b06c3108797761d5c_=_\"\r\n', 'Content-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[Laravel](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your =\r\nemail before you can start using all of our services.\r\n\r\nActivate: http:/=\r\n/127.0.0.1:8000/activate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxI=\r\nSlhLz5DRYuzqaQ\r\n\r\nThank you for using our application!\r\n\r\nRegards,Larav=\r\nel\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, co=\r\npy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:8000/=\r\nactivate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZjGaMxISlhLz5DRYuzqaQ](=\r\nhttp://127.0.0.1:8000/activate/2nkTEZwfHtxwn9WIem1IufzzKqAgVFqmuoojM7KW3HzZ=\r\njGaMxISlhLz5DRYuzqaQ)\r\n\r\n=C2=A9 2020 Laravel. All rights reserved.\r\n'),
(2, '2020-06-12 08:52:31', '', 'lpf_student9@lpf.com', NULL, NULL, 'Activation required', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n</head>\n<body style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100% !important;\">\n<style>\n@media  only screen and (max-width: 600px) {\n.inner-body {\nwidth: 100% !important;\n}\n\n.footer {\nwidth: 100% !important;\n}\n}\n\n@media  only screen and (max-width: 500px) {\n.button {\nwidth: 100% !important;\n}\n}\n</style>\n\n<table class=\"wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td class=\"header\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; padding: 25px 0; text-align: center;\">\n<a href=\"http://localhost\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; display: inline-block;\">\n<img src=\"https://laravel.com/img/notification-logo.png\" class=\"logo\" alt=\"Laravel Logo\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100%; border: none; height: 75px; width: 75px;\">\n</a>\n</td>\n</tr>\n\n<!-- Email Body -->\n<tr>\n<td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px solid #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 rgba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\n<!-- Body content -->\n<tr>\n<td class=\"content-cell\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Welcome!</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You need to activate your email before you can start using all of our services.</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align: center; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<a href=\"http://127.0.0.1:8000/activate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI8KyWpm2uwwowC9\" class=\"button button-blue\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for using our application!</p>\n<!-- Salutation -->\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,<br>Laravel</p>\n<!-- Subcopy -->\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you’re having trouble clicking the \"Activate\" button, copy and paste the URL below\ninto your web browser: <a href=\"http://127.0.0.1:8000/activate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI8KyWpm2uwwowC9\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">http://127.0.0.1:8000/activate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI8KyWpm2uwwowC9</a></p>\n</td>\n</tr>\n</table>\n\n\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto; padding: 0; text-align: center; width: 570px;\">\n<tr>\n<td class=\"content-cell\" align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">© 2020 Laravel. All rights reserved.</p>\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</body>\n</html>', 'Message-ID: <3abb19b2ad02dcccbfe67e29be273675@127.0.0.1>\r\nDate: Fri, 12 Jun 2020 08:52:31 +0000\r\nSubject: Activation required\r\nFrom: \r\nTo: lpf_student9@lpf.com\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n boundary=\"_=_swift_1591951951_713d3ef8520968ec59b3245c44dba648_=_\"\r\n', 'Content-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[Laravel](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your =\r\nemail before you can start using all of our services.\r\n\r\nActivate: http:/=\r\n/127.0.0.1:8000/activate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI=\r\n8KyWpm2uwwowC9\r\n\r\nThank you for using our application!\r\n\r\nRegards,Larav=\r\nel\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, co=\r\npy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:8000/=\r\nactivate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOEH58tXI8KyWpm2uwwowC9](=\r\nhttp://127.0.0.1:8000/activate/91gBEarjvBjVvfRIKj1QhYmug88jHOR20iJhfbjSzIOE=\r\nH58tXI8KyWpm2uwwowC9)\r\n\r\n=C2=A9 2020 Laravel. All rights reserved.\r\n'),
(3, '2020-06-12 08:52:54', 'Laravel <larakkn@upi.edu>', 'lpf_student921@lpf.com', NULL, NULL, 'Activation required', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n</head>\n<body style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100% !important;\">\n<style>\n@media  only screen and (max-width: 600px) {\n.inner-body {\nwidth: 100% !important;\n}\n\n.footer {\nwidth: 100% !important;\n}\n}\n\n@media  only screen and (max-width: 500px) {\n.button {\nwidth: 100% !important;\n}\n}\n</style>\n\n<table class=\"wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td class=\"header\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; padding: 25px 0; text-align: center;\">\n<a href=\"http://localhost\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; display: inline-block;\">\n<img src=\"https://laravel.com/img/notification-logo.png\" class=\"logo\" alt=\"Laravel Logo\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100%; border: none; height: 75px; width: 75px;\">\n</a>\n</td>\n</tr>\n\n<!-- Email Body -->\n<tr>\n<td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px solid #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 rgba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\n<!-- Body content -->\n<tr>\n<td class=\"content-cell\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Welcome!</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You need to activate your email before you can start using all of our services.</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align: center; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<a href=\"http://127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow\" class=\"button button-blue\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for using our application!</p>\n<!-- Salutation -->\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,<br>Laravel</p>\n<!-- Subcopy -->\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you’re having trouble clicking the \"Activate\" button, copy and paste the URL below\ninto your web browser: <a href=\"http://127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">http://127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow</a></p>\n</td>\n</tr>\n</table>\n\n\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto; padding: 0; text-align: center; width: 570px;\">\n<tr>\n<td class=\"content-cell\" align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">© 2020 Laravel. All rights reserved.</p>\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</body>\n</html>', 'Message-ID: <96045d98ec4987852b994189c8f8b36f@127.0.0.1>\r\nDate: Fri, 12 Jun 2020 08:52:54 +0000\r\nSubject: Activation required\r\nFrom: Laravel <larakkn@upi.edu>\r\nTo: lpf_student921@lpf.com\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n boundary=\"_=_swift_1591951974_61c219b654e6a232847d71b1a6cdc6f8_=_\"\r\n', 'Content-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[Laravel](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your =\r\nemail before you can start using all of our services.\r\n\r\nActivate: http:/=\r\n/127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFV=\r\nrt3G7MCzz4J5Ow\r\n\r\nThank you for using our application!\r\n\r\nRegards,Larav=\r\nel\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, co=\r\npy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:8000/=\r\nactivate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow](=\r\nhttp://127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps=\r\n7O4lFVrt3G7MCzz4J5Ow)\r\n\r\n=C2=A9 2020 Laravel. All rights reserved.\r\n');
INSERT INTO `email_log` (`id`, `date`, `from`, `to`, `cc`, `bcc`, `subject`, `body`, `headers`, `attachments`) VALUES
(4, '2020-06-12 17:57:30', 'Laravel <larakkn@upi.edu>', 'lpf_student412312@lpf.com', NULL, NULL, 'Activation required', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n</head>\n<body style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100% !important;\">\n<style>\n@media  only screen and (max-width: 600px) {\n.inner-body {\nwidth: 100% !important;\n}\n\n.footer {\nwidth: 100% !important;\n}\n}\n\n@media  only screen and (max-width: 500px) {\n.button {\nwidth: 100% !important;\n}\n}\n</style>\n\n<table class=\"wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: 100%;\">\n<tr>\n<td class=\"header\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; padding: 25px 0; text-align: center;\">\n<a href=\"http://localhost\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 19px; font-weight: bold; text-decoration: none; display: inline-block;\">\n<img src=\"https://laravel.com/img/notification-logo.png\" class=\"logo\" alt=\"Laravel Logo\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100%; border: none; height: 75px; width: 75px;\">\n</a>\n</td>\n</tr>\n\n<!-- Email Body -->\n<tr>\n<td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; background-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px solid #edf2f7; margin: 0; padding: 0; width: 100%;\">\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; box-shadow: 0 2px 0 rgba(0, 0, 150, 0.025), 2px 4px 0 rgba(0, 0, 150, 0.015); margin: 0 auto; padding: 0; width: 570px;\">\n<!-- Body content -->\n<tr>\n<td class=\"content-cell\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">Welcome!</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You need to activate your email before you can start using all of our services.</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 30px auto; padding: 0; text-align: center; width: 100%;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<a href=\"http://127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04\" class=\"button button-blue\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\">Activate</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for using our application!</p>\n<!-- Salutation -->\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,<br>Laravel</p>\n<!-- Subcopy -->\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\">\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you’re having trouble clicking the \"Activate\" button, copy and paste the URL below\ninto your web browser: <a href=\"http://127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; color: #3869d4;\">http://127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04</a></p>\n</td>\n</tr>\n</table>\n\n\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative;\">\n<table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 570px; margin: 0 auto; padding: 0; text-align: center; width: 570px;\">\n<tr>\n<td class=\"content-cell\" align=\"center\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; position: relative; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">© 2020 Laravel. All rights reserved.</p>\n\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</body>\n</html>', 'Message-ID: <948df22ca4335f208e2406ff978a8fa8@127.0.0.1>\r\nDate: Fri, 12 Jun 2020 17:57:30 +0000\r\nSubject: Activation required\r\nFrom: Laravel <larakkn@upi.edu>\r\nTo: lpf_student412312@lpf.com\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n boundary=\"_=_swift_1591984650_03e814c2bdf4ea79ad5f84b35a730e1f_=_\"\r\n', 'Content-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n[Laravel](http://localhost)\r\n\r\n# Welcome!\r\n\r\nYou need to activate your =\r\nemail before you can start using all of our services.\r\n\r\nActivate: http:/=\r\n/127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshe=\r\nxAuoilEuZp3b04\r\n\r\nThank you for using our application!\r\n\r\nRegards,Larav=\r\nel\r\n\r\nIf you=E2=80=99re having trouble clicking the \"Activate\" button, co=\r\npy and paste the URL below\r\ninto your web browser: [http://127.0.0.1:8000/=\r\nactivate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04](=\r\nhttp://127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6=\r\nWEbshexAuoilEuZp3b04)\r\n\r\n=C2=A9 2020 Laravel. All rights reserved.\r\n');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kkn_class`
--

CREATE TABLE `kkn_class` (
  `id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 'ipAddress', 'IP Address', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 'domain', 'Domain Name', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 'user', 'User', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(5, 'city', 'City', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(6, 'state', 'State', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(7, 'country', 'Country', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(8, 'countryCode', 'Country Code', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(9, 'continent', 'Continent', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(10, 'region', 'Region', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-10 19:17:33', '2020-06-10 19:17:33', NULL),
(2, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-10 19:17:33', '2020-06-10 19:17:33', NULL),
(3, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2020-06-10 19:17:40', '2020-06-10 19:17:40', NULL),
(4, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 01:06:02', '2020-06-12 01:06:02', NULL),
(5, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 01:06:02', '2020-06-12 01:06:02', NULL),
(6, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2020-06-12 01:06:18', '2020-06-12 01:06:18', NULL),
(7, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 01:06:50', '2020-06-12 01:06:50', NULL),
(8, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 01:06:50', '2020-06-12 01:06:50', NULL),
(9, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/home', 'GET', '2020-06-12 01:06:54', '2020-06-12 01:06:54', NULL),
(10, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/roles', 'GET', '2020-06-12 01:11:30', '2020-06-12 01:11:30', NULL),
(11, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 01:11:35', '2020-06-12 01:11:35', NULL),
(12, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users/create', 'GET', '2020-06-12 01:11:42', '2020-06-12 01:11:42', NULL),
(13, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/active-users', 'GET', '2020-06-12 01:11:45', '2020-06-12 01:11:45', NULL),
(14, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:11:52', '2020-06-12 01:11:52', NULL),
(15, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/home', 'GET', '2020-06-12 01:15:55', '2020-06-12 01:15:55', NULL),
(16, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:16:05', '2020-06-12 01:16:05', NULL),
(17, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:16:05', '2020-06-12 01:16:05', NULL),
(18, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:16:59', '2020-06-12 01:16:59', NULL),
(19, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:17:08', '2020-06-12 01:17:08', NULL),
(20, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'POST', '2020-06-12 01:19:24', '2020-06-12 01:19:24', NULL),
(21, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'POST', '2020-06-12 01:52:56', '2020-06-12 01:52:56', NULL),
(22, 'Viewed activate', 'Registered', 5, 'http://127.0.0.1:8000/activate', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2020-06-12 01:52:56', '2020-06-12 01:52:56', NULL),
(23, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:53:09', '2020-06-12 01:53:09', NULL),
(24, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/home', 'GET', '2020-06-12 01:53:13', '2020-06-12 01:53:13', NULL),
(25, 'Viewed users/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 01:53:18', '2020-06-12 01:53:18', NULL),
(26, 'Viewed users/3', 'Registered', 1, 'http://127.0.0.1:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users/3/edit', 'GET', '2020-06-12 01:53:28', '2020-06-12 01:53:28', NULL),
(27, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 01:53:31', '2020-06-12 01:53:31', NULL),
(28, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/home', 'GET', '2020-06-12 01:53:33', '2020-06-12 01:53:33', NULL),
(29, 'Deleted users/3', 'Registered', 1, 'http://127.0.0.1:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'DELETE', '2020-06-12 01:53:37', '2020-06-12 01:53:37', NULL),
(30, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 01:53:38', '2020-06-12 01:53:38', NULL),
(31, 'Deleted users/4', 'Registered', 1, 'http://127.0.0.1:8000/users/4', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'DELETE', '2020-06-12 01:53:41', '2020-06-12 01:53:41', NULL),
(32, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 01:53:42', '2020-06-12 01:53:42', NULL),
(33, 'Viewed activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow', 'Registered', 5, 'http://127.0.0.1:8000/activate/GwW3dom0ZPgLvdeCMcnuxjKlF4tdsep1y60kl0yASpps7O4lFVrt3G7MCzz4J5Ow', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 01:53:53', '2020-06-12 01:53:53', NULL),
(34, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 01:53:53', '2020-06-12 01:53:53', NULL),
(35, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 01:53:58', '2020-06-12 01:53:58', NULL),
(36, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 01:54:07', '2020-06-12 01:54:07', NULL),
(37, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'POST', '2020-06-12 02:07:33', '2020-06-12 02:07:33', NULL),
(38, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:07:45', '2020-06-12 02:07:45', NULL),
(39, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/roles', 'GET', '2020-06-12 02:07:53', '2020-06-12 02:07:53', NULL),
(40, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:08:05', '2020-06-12 02:08:05', NULL),
(41, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:08:05', '2020-06-12 02:08:05', NULL),
(42, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:08:15', '2020-06-12 02:08:15', NULL),
(43, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:08:38', '2020-06-12 02:08:38', NULL),
(44, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:08:41', '2020-06-12 02:08:41', NULL),
(45, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:08:56', '2020-06-12 02:08:56', NULL),
(46, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:05', '2020-06-12 02:09:05', NULL),
(47, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:08', '2020-06-12 02:09:08', NULL),
(48, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:27', '2020-06-12 02:09:27', NULL),
(49, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:43', '2020-06-12 02:09:43', NULL),
(50, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:46', '2020-06-12 02:09:46', NULL),
(51, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:09:56', '2020-06-12 02:09:56', NULL),
(52, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:11:10', '2020-06-12 02:11:10', NULL),
(53, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:12:52', '2020-06-12 02:12:52', NULL),
(54, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:13:11', '2020-06-12 02:13:11', NULL),
(55, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:14:31', '2020-06-12 02:14:31', NULL),
(56, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:16:15', '2020-06-12 02:16:15', NULL),
(57, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:18:51', '2020-06-12 02:18:51', NULL),
(58, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', NULL, 'GET', '2020-06-12 02:20:11', '2020-06-12 02:20:11', NULL),
(59, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/roles', 'GET', '2020-06-12 02:25:03', '2020-06-12 02:25:03', NULL),
(60, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users/create', 'POST', '2020-06-12 02:25:31', '2020-06-12 02:25:31', NULL),
(61, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users/create', 'GET', '2020-06-12 02:25:32', '2020-06-12 02:25:32', NULL),
(62, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 02:25:51', '2020-06-12 02:25:51', NULL),
(63, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:28:08', '2020-06-12 02:28:08', NULL),
(64, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:28:10', '2020-06-12 02:28:10', NULL),
(65, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:28:12', '2020-06-12 02:28:12', NULL),
(66, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:28:13', '2020-06-12 02:28:13', NULL),
(67, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:29:49', '2020-06-12 02:29:49', NULL),
(68, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:29:51', '2020-06-12 02:29:51', NULL),
(69, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:29:52', '2020-06-12 02:29:52', NULL),
(70, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:30:58', '2020-06-12 02:30:58', NULL),
(71, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:31:01', '2020-06-12 02:31:01', NULL),
(72, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:31:02', '2020-06-12 02:31:02', NULL),
(73, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:31:59', '2020-06-12 02:31:59', NULL),
(74, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:32:00', '2020-06-12 02:32:00', NULL),
(75, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 02:32:07', '2020-06-12 02:32:07', NULL),
(76, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:32:09', '2020-06-12 02:32:09', NULL),
(77, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:32:37', '2020-06-12 02:32:37', NULL),
(78, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:35:59', '2020-06-12 02:35:59', NULL),
(79, 'Logged Out', 'Guest', NULL, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:36:01', '2020-06-12 02:36:01', NULL),
(80, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:37:32', '2020-06-12 02:37:32', NULL),
(81, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:37:32', '2020-06-12 02:37:32', NULL),
(82, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:37:39', '2020-06-12 02:37:39', NULL),
(83, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 02:37:44', '2020-06-12 02:37:44', NULL),
(84, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:37:46', '2020-06-12 02:37:46', NULL),
(85, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:39:06', '2020-06-12 02:39:06', NULL),
(86, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:39:25', '2020-06-12 02:39:25', NULL),
(87, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:39:25', '2020-06-12 02:39:25', NULL),
(88, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:39:26', '2020-06-12 02:39:26', NULL),
(89, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:39:52', '2020-06-12 02:39:52', NULL),
(90, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:39:52', '2020-06-12 02:39:52', NULL),
(91, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:40:23', '2020-06-12 02:40:23', NULL),
(92, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:40:50', '2020-06-12 02:40:50', NULL),
(93, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:40:50', '2020-06-12 02:40:50', NULL),
(94, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 02:40:59', '2020-06-12 02:40:59', NULL),
(95, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 02:42:25', '2020-06-12 02:42:25', NULL),
(96, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 02:42:25', '2020-06-12 02:42:25', NULL),
(97, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 03:02:44', '2020-06-12 03:02:44', NULL),
(98, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 03:10:05', '2020-06-12 03:10:05', NULL),
(99, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 03:10:17', '2020-06-12 03:10:17', NULL),
(100, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 03:10:17', '2020-06-12 03:10:17', NULL),
(101, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/student/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 03:10:22', '2020-06-12 03:10:22', NULL),
(102, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 03:13:21', '2020-06-12 03:13:21', NULL),
(103, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 03:13:21', '2020-06-12 03:13:21', NULL),
(104, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'POST', '2020-06-12 03:16:15', '2020-06-12 03:16:15', NULL),
(105, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 03:16:30', '2020-06-12 03:16:30', NULL),
(106, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 03:16:30', '2020-06-12 03:16:30', NULL),
(107, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'POST', '2020-06-12 03:16:32', '2020-06-12 03:16:32', NULL),
(108, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 03:16:40', '2020-06-12 03:16:40', NULL),
(109, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 03:16:40', '2020-06-12 03:16:40', NULL),
(110, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/users', 'GET', '2020-06-12 03:40:32', '2020-06-12 03:40:32', NULL),
(111, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 03:45:27', '2020-06-12 03:45:27', NULL),
(112, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 03:48:25', '2020-06-12 03:48:25', NULL),
(113, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'GET', '2020-06-12 03:50:02', '2020-06-12 03:50:02', NULL),
(114, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 03:51:33', '2020-06-12 03:51:33', NULL),
(115, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 03:51:37', '2020-06-12 03:51:37', NULL),
(116, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 06:41:38', '2020-06-12 06:41:38', NULL),
(117, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 06:41:38', '2020-06-12 06:41:38', NULL),
(118, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 06:41:55', '2020-06-12 06:41:55', NULL),
(119, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 06:41:55', '2020-06-12 06:41:55', NULL),
(120, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 08:09:19', '2020-06-12 08:09:19', NULL),
(121, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 08:35:18', '2020-06-12 08:35:18', NULL),
(122, 'Viewed profile/lp_student122', 'Registered', 5, 'http://127.0.0.1:8000/profile/lp_student122', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/profile', 'GET', '2020-06-12 09:58:48', '2020-06-12 09:58:48', NULL),
(123, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 09:59:02', '2020-06-12 09:59:02', NULL),
(124, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 10:16:40', '2020-06-12 10:16:40', NULL),
(125, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 10:24:29', '2020-06-12 10:24:29', NULL),
(126, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 10:32:45', '2020-06-12 10:32:45', NULL),
(127, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/profile', 'POST', '2020-06-12 10:56:05', '2020-06-12 10:56:05', NULL),
(128, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 10:56:34', '2020-06-12 10:56:34', NULL),
(129, 'Logged In', 'Registered', 7, 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'POST', '2020-06-12 10:57:33', '2020-06-12 10:57:33', NULL),
(130, 'Viewed activate', 'Registered', 7, 'http://127.0.0.1:8000/activate', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2020-06-12 10:57:33', '2020-06-12 10:57:33', NULL),
(131, 'Viewed activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04', 'Registered', 7, 'http://127.0.0.1:8000/activate/UDQxoA1AFo43JSTizESnJ68RlTQ36JG1jAsIs765YOf6WEbshexAuoilEuZp3b04', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 10:57:50', '2020-06-12 10:57:50', NULL),
(132, 'Viewed home', 'Registered', 7, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-06-12 10:57:50', '2020-06-12 10:57:50', NULL),
(133, 'Logged Out', 'Registered', 7, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student', 'POST', '2020-06-12 10:58:31', '2020-06-12 10:58:31', NULL),
(134, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 10:58:38', '2020-06-12 10:58:38', NULL),
(135, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 10:58:38', '2020-06-12 10:58:38', NULL),
(136, 'Viewed profile/lp_student122', 'Registered', 5, 'http://127.0.0.1:8000/profile/lp_student122', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/profile', 'GET', '2020-06-12 10:59:48', '2020-06-12 10:59:48', NULL),
(137, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 23:02:14', '2020-06-12 23:02:14', NULL),
(138, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 23:02:14', '2020-06-12 23:02:14', NULL),
(139, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/group', 'POST', '2020-06-12 23:20:23', '2020-06-12 23:20:23', NULL),
(140, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 23:20:44', '2020-06-12 23:20:44', NULL),
(141, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 23:20:44', '2020-06-12 23:20:44', NULL),
(142, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 23:25:41', '2020-06-12 23:25:41', NULL),
(143, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 23:30:42', '2020-06-12 23:30:42', NULL),
(144, 'Logged Out', 'Registered', 6, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/dosen', 'POST', '2020-06-12 23:31:20', '2020-06-12 23:31:20', NULL),
(145, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 23:31:25', '2020-06-12 23:31:25', NULL),
(146, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 23:31:26', '2020-06-12 23:31:26', NULL),
(147, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/group', 'POST', '2020-06-12 23:34:04', '2020-06-12 23:34:04', NULL),
(148, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 23:34:16', '2020-06-12 23:34:16', NULL),
(149, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 23:34:16', '2020-06-12 23:34:16', NULL),
(150, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 23:40:55', '2020-06-12 23:40:55', NULL),
(151, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/', 'GET', '2020-06-12 23:42:59', '2020-06-12 23:42:59', NULL),
(152, 'Logged Out', 'Registered', 6, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/dosen', 'POST', '2020-06-12 23:58:17', '2020-06-12 23:58:17', NULL),
(153, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-12 23:58:23', '2020-06-12 23:58:23', NULL),
(154, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-12 23:58:23', '2020-06-12 23:58:23', NULL),
(155, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-16 07:19:38', '2020-06-16 07:19:38', NULL),
(156, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-16 07:19:38', '2020-06-16 07:19:38', NULL),
(157, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/student/group', 'POST', '2020-06-16 07:20:11', '2020-06-16 07:20:11', NULL),
(158, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-16 07:20:17', '2020-06-16 07:20:17', NULL),
(159, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-16 07:20:17', '2020-06-16 07:20:17', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(160, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2020-06-16 07:20:24', '2020-06-16 07:20:24', NULL),
(161, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/active-users', 'GET', '2020-06-16 07:20:29', '2020-06-16 07:20:29', NULL),
(162, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users', 'POST', '2020-06-16 07:20:35', '2020-06-16 07:20:35', NULL),
(163, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-06-16 07:22:34', '2020-06-16 07:22:34', NULL),
(164, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-06-16 07:22:35', '2020-06-16 07:22:35', NULL),
(165, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 06:08:05', '2020-06-17 06:08:05', NULL),
(166, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 06:08:05', '2020-06-17 06:08:05', NULL),
(167, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/student', 'POST', '2020-06-17 06:08:09', '2020-06-17 06:08:09', NULL),
(168, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 06:08:15', '2020-06-17 06:08:15', NULL),
(169, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 06:08:16', '2020-06-17 06:08:16', NULL),
(170, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/', 'GET', '2020-06-17 06:37:42', '2020-06-17 06:37:42', NULL),
(171, 'Logged In', 'Registered', 6, 'http://192.168.100.13:8000/login', '192.168.100.2', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.96 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://192.168.100.13:8000/login', 'POST', '2020-06-17 09:32:08', '2020-06-17 09:32:08', NULL),
(172, 'Viewed home', 'Registered', 6, 'http://192.168.100.13:8000/home', '192.168.100.2', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.96 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://192.168.100.13:8000/login', 'GET', '2020-06-17 09:32:08', '2020-06-17 09:32:08', NULL),
(173, 'Viewed home', 'Registered', 6, 'http://192.168.100.13:8000/home', '192.168.100.2', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.96 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://192.168.100.13:8000/', 'GET', '2020-06-17 09:39:47', '2020-06-17 09:39:47', NULL),
(174, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/', 'GET', '2020-06-17 11:07:26', '2020-06-17 11:07:26', NULL),
(175, 'Logged Out', 'Registered', 6, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/dosen/student', 'POST', '2020-06-17 11:20:38', '2020-06-17 11:20:38', NULL),
(176, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 11:20:46', '2020-06-17 11:20:46', NULL),
(177, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 11:20:46', '2020-06-17 11:20:46', NULL),
(178, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 11:50:01', '2020-06-17 11:50:01', NULL),
(179, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 11:50:02', '2020-06-17 11:50:02', NULL),
(180, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/student/group', 'POST', '2020-06-17 11:51:03', '2020-06-17 11:51:03', NULL),
(181, 'Logged In', 'Registered', 7, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 11:51:23', '2020-06-17 11:51:23', NULL),
(182, 'Viewed home', 'Registered', 7, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 11:51:23', '2020-06-17 11:51:23', NULL),
(183, 'Logged Out', 'Registered', 7, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/student/group', 'POST', '2020-06-17 11:53:48', '2020-06-17 11:53:48', NULL),
(184, 'Logged In', 'Registered', 5, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 11:53:58', '2020-06-17 11:53:58', NULL),
(185, 'Viewed home', 'Registered', 5, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 11:53:58', '2020-06-17 11:53:58', NULL),
(186, 'Logged Out', 'Registered', 6, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/dosen', 'POST', '2020-06-17 12:09:56', '2020-06-17 12:09:56', NULL),
(187, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 12:10:06', '2020-06-17 12:10:06', NULL),
(188, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 12:10:06', '2020-06-17 12:10:06', NULL),
(189, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/', 'GET', '2020-06-17 12:10:11', '2020-06-17 12:10:11', NULL),
(190, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8001/users/create', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/home', 'GET', '2020-06-17 12:10:14', '2020-06-17 12:10:14', NULL),
(191, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/users/create', 'POST', '2020-06-17 12:10:18', '2020-06-17 12:10:18', NULL),
(192, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 12:10:27', '2020-06-17 12:10:27', NULL),
(193, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 12:10:28', '2020-06-17 12:10:28', NULL),
(194, 'Viewed home', 'Registered', 6, 'http://192.168.100.13:8000/home', '192.168.100.2', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.96 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://192.168.100.13:8000/', 'GET', '2020-06-17 12:11:02', '2020-06-17 12:11:02', NULL),
(195, 'Logged Out', 'Registered', 6, 'http://192.168.100.13:8000/logout', '192.168.100.2', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.96 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://192.168.100.13:8000/dosen/student/detail/RdqAeTE3KczB1Z3AdbAWFNFw4Al7tKwGfTk', 'POST', '2020-06-17 12:11:16', '2020-06-17 12:11:16', NULL),
(196, 'Logged Out', 'Registered', 5, 'http://127.0.0.1:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/student/proposal', 'POST', '2020-06-17 12:21:04', '2020-06-17 12:21:04', NULL),
(197, 'Logged In', 'Registered', 6, 'http://127.0.0.1:8001/login', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'POST', '2020-06-17 12:21:12', '2020-06-17 12:21:12', NULL),
(198, 'Viewed home', 'Registered', 6, 'http://127.0.0.1:8001/home', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8001/login', 'GET', '2020-06-17 12:21:13', '2020-06-17 12:21:13', NULL);

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
(3, '2015_07_31_1_email_log', 1),
(4, '2016_01_15_105324_create_roles_table', 1),
(5, '2016_01_15_114412_create_role_user_table', 1),
(6, '2016_01_26_115212_create_permissions_table', 1),
(7, '2016_01_26_115523_create_permission_role_table', 1),
(8, '2016_02_09_132439_create_permission_user_table', 1),
(9, '2016_09_21_001638_add_bcc_column_email_log', 1),
(10, '2017_03_09_082449_create_social_logins_table', 1),
(11, '2017_03_09_082526_create_activations_table', 1),
(12, '2017_03_20_213554_create_themes_table', 1),
(13, '2017_03_21_042918_create_profiles_table', 1),
(14, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(15, '2017_11_10_001638_add_more_mail_columns_email_log', 1),
(16, '2017_12_09_070937_create_two_step_auth_table', 1),
(17, '2018_05_11_115355_use_longtext_for_attachments', 1),
(18, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(19, '2019_02_19_045158_create_laravel_blocker_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 2, 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 3, 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 4, 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(5, 1, 4, '2020-06-12 01:08:28', '2020-06-12 01:08:28', NULL),
(6, 3, 4, '2020-06-12 01:08:28', '2020-06-12 01:08:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-10 19:16:30', '2020-06-10 19:16:30'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-10 19:16:30', '2020-06-10 19:16:30'),
(3, 5, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-12 01:52:56', '2020-06-12 01:52:56'),
(4, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-12 02:25:32', '2020-06-12 02:25:32'),
(5, 7, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-12 10:57:33', '2020-06-12 10:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 'User', 'user', 'User Role', 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 'Dosen', 'dosen', 'Dosen role', 3, '2020-06-12 01:08:28', '2020-06-12 01:08:28', NULL),
(5, 'Student', 'student', 'Student', 1, '2020-06-12 01:09:29', '2020-06-12 01:09:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 2, 2, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 3, 3, '2020-06-12 01:51:45', '2020-06-12 01:51:45', NULL),
(4, 3, 4, '2020-06-12 01:52:31', '2020-06-12 01:52:31', NULL),
(6, 5, 5, '2020-06-12 01:53:53', '2020-06-12 01:53:53', NULL),
(7, 4, 6, '2020-06-12 02:25:32', '2020-06-12 02:25:32', NULL),
(9, 5, 7, '2020-06-12 10:57:50', '2020-06-12 10:57:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `profile` tinyint(1) DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `profile`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'osbaldo.russel', 'Tianna', 'Schmidt', 'admin@admin.com', NULL, '$2y$10$9qUG7HeGGxDRfaWreKEBqeaGaR2quO8hpQU2R8vxSgCD9wJoHj1Na', NULL, 1, NULL, 'eGHMxpZNTv5RQ4LMTE4sYUhtNgB6qvhIuY3YeEKn2cmZnlsIgI1HbeWBMHvVRyIV', NULL, '208.68.190.76', NULL, '17.6.36.107', NULL, NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(2, 'murphy.stanton', 'Unique', 'Russel', 'user@user.com', NULL, '$2y$10$wuUzlU0dLEU0YWjVGARygu1ezYTAVageeyazasfUru82lWC9uvMeq', NULL, 1, NULL, 'cdKFSzFALt5Fi3ydgLGFMVzx5sNG81fKYzymlr9Y0GhF5bLXuwpcGOmokvXIibhC', '94.228.37.200', '132.200.238.30', NULL, NULL, NULL, NULL, '2020-06-10 19:16:30', '2020-06-10 19:16:30', NULL),
(3, 'lp_student1', 'lpf', 'student', 'lpf_student4@lpf.com', NULL, '$2y$10$o8Aprl9zAJu2vOubk9KOweEaUJQp9GyUnUkddRNCJ1vB5dB2FWtTq', NULL, 0, 0, 'YxCiCAwfIerJrfsBuCXz6HWXgp6kdu1GPM2boV3jLH7gncp4kR76hNhLDqX7G1Y6', '0.0.0.0', NULL, NULL, NULL, NULL, '0.0.0.0', '2020-06-12 01:51:45', '2020-06-12 01:53:38', '2020-06-12 01:53:38'),
(4, 'lp_student12', 'lpf', 'student', 'lpf_student9@lpf.com', NULL, '$2y$10$nfnJvzRfHWoE5YQMXLl8IOv/n94x/NK/odW8Ob6pxHV8sWIY2L86G', NULL, 0, 0, 'sZUxik5y4oaqCHxHO763IhYpoP5AzbSXp6MmK88gkifAue1LMTc466CaJhQfoXiI', '0.0.0.0', NULL, NULL, NULL, NULL, '0.0.0.0', '2020-06-12 01:52:31', '2020-06-12 01:53:41', '2020-06-12 01:53:41'),
(5, 'lp_student122', 'lpf', 'student', 'lpf_student921@lpf.com', NULL, '$2y$10$rwLaD72F5w4kt.SPHskxI.7tnytkdD/r.fFj5zqPAXDl7TuT8OQcK', NULL, 1, 1, 'a5tCfMqWHzCS46QisX0z6s2yLYCpJ8v85jAwciHOu8wuOsermTah1iLf6b3JXkNw', '0.0.0.0', '0.0.0.0', NULL, NULL, NULL, NULL, '2020-06-12 01:52:54', '2020-06-12 01:53:53', NULL),
(6, 'dosenyes', 'Dosen', 'Satu', 'Dosen1@upi.edu', NULL, '$2y$10$yz/ogvsR9ifJJ3GWcDJPT.PT5sTdyKEgGncfIZcR/x3cX57FVqICi', NULL, 1, 1, 'rl5XJRRsKQjGWIYWrqigPW2KM6zk9hyU6bqqTc11tcmf3v423TyFWHPicD4Hxra9', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2020-06-12 02:25:32', '2020-06-12 02:25:32', NULL),
(7, 'lp_student2131', 'AFSSWE', 'AFS', 'lpf_student412312@lpf.com', NULL, '$2y$10$lfQ08YO1Rqqavgf1PgMyye/EyiBZ9INO9PPVcOWzQq0kFZFmSrpva', NULL, 1, 1, 'cSg6EkFVP9o0DVvKzEQxXzIXNLM49agGdHsekjE5RnIVsmRhAFis7aue6Svt9kA7', '0.0.0.0', '0.0.0.0', NULL, NULL, NULL, NULL, '2020-06-12 10:57:30', '2020-06-12 10:57:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `app-faculty_dosen`
--
ALTER TABLE `app-faculty_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app-faculty_student`
--
ALTER TABLE `app-faculty_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app-faculty_student-group`
--
ALTER TABLE `app-faculty_student-group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen_token`
--
ALTER TABLE `dosen_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app-faculty_dosen`
--
ALTER TABLE `app-faculty_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app-faculty_student`
--
ALTER TABLE `app-faculty_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app-faculty_student-group`
--
ALTER TABLE `app-faculty_student-group`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
