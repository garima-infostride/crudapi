-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 05:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(3, 'admin', '$2a$04$cE7XJVFuwWTH6ZqbSw7izuUUP0RyAFHohM0TJHVZWic9sMbRzC5tS', '2021-07-14 21:29:16', '2021-07-19 23:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(30, 'Garima Chauhan', 'chauhangarima525@gmail.com', 'web development', 'Hello, I want to connect wit you !', '2021-07-19 14:46:04', '2021-07-19 14:46:04');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `section_title` varchar(256) DEFAULT NULL,
  `data` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `section_title`, `data`, `created_at`, `updated_at`) VALUES
(2, 'home', 'second_title', 'About Us...', '2021-07-18 03:24:09', '2021-07-19 01:30:08'),
(3, 'home', 'third_title', 'Why Choose Mentor !', '2021-07-18 03:24:09', '2021-07-19 01:30:08'),
(4, 'home', 'forth_title', 'Our Popular Courses....', '2021-07-18 03:24:09', '2021-07-19 01:30:08'),
(5, 'home', 'fifth_title', 'Our Mentors....', '2021-07-18 03:24:09', '2021-07-19 01:30:08'),
(6, 'home', 'forth_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit Asperiores dolores sed et. Tenetur quia eos. Autem tempore quibusdam vel necessitatibus optio ad corporis.', '2021-07-18 05:07:16', '2021-07-18 05:07:16'),
(7, 'home', 'third_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit Asperiores dolores sed et. Tenetur quia eos. Autem tempore quibusdam vel necessitatibus optio ad corporis.', '2021-07-18 05:12:16', '2021-07-19 01:30:08'),
(8, 'about', 'first_title', 'About Us', '2021-07-18 06:22:05', '2021-07-18 11:08:12'),
(9, 'about', 'second_title', 'TESTIMONIALS', '2021-07-18 06:22:05', '2021-07-18 11:08:12'),
(10, 'about', 'third_title', NULL, '2021-07-18 06:22:05', '2021-07-18 06:22:05'),
(11, 'about', 'forth_title', NULL, '2021-07-18 06:22:05', '2021-07-18 06:22:05'),
(12, 'about', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 06:24:56', '2021-07-18 11:08:12'),
(13, 'about', 'second_text', 'WHAT ARE THEY SAYING', '2021-07-18 11:06:47', '2021-07-18 11:08:12'),
(14, 'courses', 'first_title', 'Courses', '2021-07-18 12:19:11', '2021-07-18 12:30:14'),
(15, 'courses', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 12:19:11', '2021-07-18 12:30:14'),
(16, 'contact', 'first_title', 'Contact Us', '2021-07-18 12:51:28', '2021-07-18 14:52:58'),
(17, 'contact', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 12:51:28', '2021-07-18 14:52:58'),
(18, 'pricing', 'first_title', 'Pricing', '2021-07-18 12:51:50', '2021-07-18 12:55:20'),
(19, 'pricing', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 12:51:50', '2021-07-18 12:55:20'),
(20, 'events', 'first_title', 'Events', '2021-07-18 12:52:01', '2021-07-18 12:55:25'),
(21, 'events', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 12:52:01', '2021-07-18 12:55:25'),
(22, 'trainers', 'first_title', 'Trainers', '2021-07-18 12:55:57', '2021-07-18 12:55:57'),
(23, 'trainers', 'first_text', 'Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium.', '2021-07-18 12:55:57', '2021-07-18 12:55:57'),
(24, 'contact', 'description', NULL, '2021-07-18 13:08:19', '2021-07-18 14:43:50'),
(25, 'contact', 'map', '        <iframe style=\"border:0; width: 100%; height: 350px;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621\" frameborder=\"0\" allowfullscreen></iframe>', '2021-07-18 14:48:08', '2021-07-18 20:25:02'),
(26, 'footer', 'first_title', '<h3>Mentor</h3><p>A108 Adam Street<br />New York, NY 535022<br />United States</p><p><strong>Phone:</strong> +1 5589 55488 55<br /><strong>Email:</strong> info@example.com</p><h4>Useful Links</h4><ul>	<li><a href=\"http://127.0.0.1:8000/contact#\">Home</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">About us</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Services</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Terms of service</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Privacy policy</a></li></ul><h4>Our Services</h4><ul>	<li><a href=\"http://127.0.0.1:8000/contact#\">Web Design</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Web Development</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Product Management</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Marketing</a></li>	<li><a href=\"http://127.0.0.1:8000/contact#\">Graphic Design</a></li></ul><h4>Join Our Newsletter</h4><p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p><form action=\"http://127.0.0.1:8000/contact\" method=\"post\"><input name=\"email\" type=\"email\" /> </form>', '2021-07-18 15:11:18', '2021-07-19 00:19:53'),
(27, 'footer', 'first_text', NULL, '2021-07-19 00:19:53', '2021-07-19 00:19:53'),
(28, 'footer', 'map', '<h3>Mentor</h3><p>A108 Adam Street<br />New York, NY 535022<br />United States</p><p><strong>Phone:</strong> +1 5589 55488 55<br /><strong>Email:</strong> info@example.com</p>', '2021-07-19 00:19:53', '2021-07-19 00:27:27'),
(29, 'footer', 'map1', '<h4>Useful Links</h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://127.0.0.1:8000/#\">Home</a></li>\r\n	<li><a href=\"http://127.0.0.1:8000/#\">About us</a></li>\r\n	<li><a href=\"http://127.0.0.1:8000/#\">Services</a></li>\r\n	<li><a href=\"http://127.0.0.1:8000/#\">Terms of service</a></li>\r\n	<li><a href=\"http://127.0.0.1:8000/#\">Privacy policy</a></li>\r\n</ul>', '2021-07-19 00:25:34', '2021-07-19 00:27:27'),
(30, 'home', 'banner_image', '19072021162667800854.jpg', '2021-07-19 01:08:40', '2021-07-19 01:30:08');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `section_title` varchar(256) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `button_text` varchar(200) DEFAULT NULL,
  `fees` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `page_title`, `section_title`, `title`, `description`, `button_text`, `fees`, `image`, `created_at`, `updated_at`) VALUES
(8, 'home', 'second_section', 'Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.', '<h3 style=\"color:#aaaaaa; font-style:italic\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></h3>\r\n\r\n<ol>\r\n	<li>&nbsp;Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n	<li>&nbsp;Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n	<li>&nbsp;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n</ol>\r\n\r\n<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</p>', NULL, NULL, '18072021162660620790.jpg', '2021-07-18 03:39:11', '2021-07-18 05:33:27'),
(9, 'home', 'third_section', '1232', '<p>Students</p>', NULL, NULL, '', '2021-07-18 03:40:11', '2021-07-18 03:40:11'),
(10, 'home', 'third_section', '64', '<p>Courses</p>', NULL, NULL, '', '2021-07-18 03:41:25', '2021-07-18 03:41:25'),
(11, 'home', 'third_section', '42', '<p>Events</p>', NULL, NULL, '', '2021-07-18 03:41:52', '2021-07-18 03:41:52'),
(12, 'home', 'third_section', '15', '<p>Trainers</p>', NULL, NULL, '', '2021-07-18 03:42:13', '2021-07-18 03:42:13'),
(18, 'home', 'forth_section', 'Corporis voluptates sit', '<p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>', NULL, NULL, '18072021162660216027.PNG', '2021-07-18 04:26:01', '2021-07-18 04:26:01'),
(19, 'home', 'forth_section', 'Ullamco laboris ladore pan', '<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>', NULL, NULL, '18072021162660220159.PNG', '2021-07-18 04:26:41', '2021-07-18 04:26:41'),
(20, 'home', 'forth_section', 'Labore consequatur', '<p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>', NULL, NULL, '18072021162660223634.PNG', '2021-07-18 04:27:16', '2021-07-18 04:27:16'),
(21, 'home', 'fifth_section', 'Antonio', '<h3><a href=\"http://localhost/mentor/course-details.html\">Website Design</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Web Development', '$169', '18072021162660642545.jpg', '2021-07-18 05:37:05', '2021-07-18 05:45:13'),
(22, 'home', 'fifth_section', 'Lana', '<h3><a href=\"http://localhost/mentor/course-details.html\">Search Engine Optimization</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Marketing', '$250', '18072021162660710338.jpg', '2021-07-18 05:47:50', '2021-07-18 05:48:23'),
(23, 'home', 'fifth_section', 'Brandon', '<h3><a href=\"http://localhost/mentor/course-details.html\">Copywriting</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Content', '$180', '18072021162660726816.jpg', '2021-07-18 05:51:08', '2021-07-18 05:51:08'),
(24, 'home', 'sixth_section', 'Walter White', '<span>Web Development</span>\r\n                <p>\r\n                  Magni qui quod omnis unde et eos fuga et exercitationem. Odio veritatis perspiciatis quaerat qui aut aut aut\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '18072021162660740061.jpg', '2021-07-18 05:53:21', '2021-07-19 01:38:30'),
(25, 'home', 'sixth_section', 'Sarah Jhinson', '<span>Marketing</span>\r\n                <p>\r\n                  Repellat fugiat adipisci nemo illum nesciunt voluptas repellendus. In architecto rerum rerum temporibus\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '18072021162660764529.jpg', '2021-07-18 05:57:25', '2021-07-19 01:39:24'),
(26, 'home', 'sixth_section', 'William Anderson', '<span>Content</span>\r\n                <p>\r\n                  Voluptas necessitatibus occaecati quia. Earum totam consequuntur qui porro et laborum toro des clara\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '18072021162660770258.jpg', '2021-07-18 05:58:22', '2021-07-19 01:39:49'),
(27, 'about', 'about_first_section', 'Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.', '<h2 style=\"font-style:italic\"><span style=\"color:#bdc3c7\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></span></h2>\r\n\r\n<ol>\r\n	<li>&nbsp;Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n	<li>&nbsp;Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n	<li>&nbsp;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n</ol>\r\n\r\n<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</p>', NULL, NULL, '18072021162662597144.jpg', '2021-07-18 10:54:14', '2021-07-18 11:02:51'),
(28, 'about', 'about_second_section', '1232', '<p>Students</p>', NULL, NULL, '', '2021-07-18 11:09:42', '2021-07-18 11:09:42'),
(29, 'about', 'about_second_section', '64', '<p>Courses</p>', NULL, NULL, '', '2021-07-18 11:10:16', '2021-07-18 11:16:33'),
(30, 'about', 'about_second_section', '42', '<p>Events</p>', NULL, NULL, '', '2021-07-18 11:10:53', '2021-07-18 11:16:49'),
(31, 'about', 'about_second_section', '15', '<p>Trainers</p>', NULL, NULL, '', '2021-07-18 11:11:13', '2021-07-18 11:17:04'),
(32, 'about', 'about_third_section', 'Saul Goodman', '<i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n                    Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.\r\n                    <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>', 'CEO & Founder', NULL, '18072021162662700953.jpg', '2021-07-18 11:20:09', '2021-07-18 11:45:06'),
(33, 'about', 'about_third_section', 'Sara Wilsom', '<i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n                    Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.\r\n                    <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>', 'Designer', NULL, '18072021162662834170.jpg', '2021-07-18 11:42:21', '2021-07-18 11:44:12'),
(34, 'about', 'about_third_section', 'Jena Karlis', '<i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n                    Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.\r\n                    <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>', 'Store Owner', NULL, '18072021162662860777.jpg', '2021-07-18 11:46:47', '2021-07-18 11:46:47'),
(35, 'about', 'about_third_section', 'Matt Bradone', '<i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n                    Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.\r\n                    <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>', 'Freelancer', NULL, '18072021162662870389.jpg', '2021-07-18 11:48:23', '2021-07-18 11:48:23'),
(36, 'about', 'about_third_section', 'John Larson', '<i class=\"bx bxs-quote-alt-left quote-icon-left\"></i>\r\n                    Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.\r\n                    <i class=\"bx bxs-quote-alt-right quote-icon-right\"></i>', 'Enterpreneur', NULL, '18072021162662878261.jpg', '2021-07-18 11:49:43', '2021-07-18 11:49:43'),
(37, 'courses', 'course_second_section', 'Antonio', '<h3><a href=\"http://127.0.0.1:8000/courses/course-details\">Website Design</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Web Development', '$169', '18072021162664192178.jpg', '2021-07-18 15:28:41', '2021-07-18 22:41:00'),
(38, 'courses', 'course_second_section', 'Lana', '<h3><a href=\"http://127.0.0.1:8000/courses/course-details\">Search Engine Optimization</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Marketing', '$250', '19072021162666796963.jpg', '2021-07-18 22:42:49', '2021-07-18 22:42:49'),
(39, 'courses', 'course_second_section', 'Brandon', '<h3><a href=\"http://127.0.0.1:8000/courses/course-details\">Copywriting</a></h3>\r\n\r\n<p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>', 'Content', '$180', '19072021162666850657.jpg', '2021-07-18 22:48:20', '2021-07-18 22:51:46'),
(41, 'trainers', 'trainer_second_section', 'Walter White', '<span>Web Development</span>\r\n                <p>\r\n                  Magni qui quod omnis unde et eos fuga et exercitationem. Odio veritatis perspiciatis quaerat qui aut aut aut\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '19072021162666864088.jpg', '2021-07-18 22:54:00', '2021-07-18 23:04:05'),
(42, 'trainers', 'trainer_second_section', 'Sarah Jhinson', '<span>Marketing</span>\r\n                <p>\r\n                  Repellat fugiat adipisci nemo illum nesciunt voluptas repellendus. In architecto rerum rerum temporibus\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '19072021162666900012.jpg', '2021-07-18 23:00:00', '2021-07-18 23:00:00'),
(43, 'trainers', 'trainer_second_section', 'William Anderson', '<span>Content</span>\r\n                <p>\r\n                  Voluptas necessitatibus occaecati quia. Earum totam consequuntur qui porro et laborum toro des clara\r\n                </p>\r\n                <div class=\"social\">\r\n                  <a href=\"\"><i class=\"bi bi-twitter\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-facebook\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-instagram\"></i></a>\r\n                  <a href=\"\"><i class=\"bi bi-linkedin\"></i></a>\r\n                </div>', NULL, NULL, '19072021162666909092.jpg', '2021-07-18 23:01:30', '2021-07-18 23:01:30'),
(44, 'events', 'event_second_section', 'Introduction to webdesign', '<h3 style=\"color:#aaaaaa; font-style:italic\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:16px\">Sunday, September 26th at 7:00 pm</span></h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>', NULL, NULL, '19072021162666943447.jpg', '2021-07-18 23:07:14', '2021-07-18 23:15:47'),
(45, 'events', 'event_second_section', 'Marketing Strategies', '<h3 style=\"color:#aaaaaa; font-style:italic\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size:16px\"> Sunday, November 15th at 7:00 pm</span></h3>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>', NULL, NULL, '19072021162666963692.jpg', '2021-07-18 23:10:37', '2021-07-18 23:17:02'),
(46, 'pricing', 'pricing_second_section', 'Free', '<ul>\r\n	<li>\r\n	<h4><sup>$</sup>0&nbsp;/ <span style=\"color:#bdc3c7\">month</span></h4>\r\n	</li>\r\n	<li>Aida dere</li>\r\n	<li>Nec feugiat nisl</li>\r\n	<li>Nulla at volutpat dola</li>\r\n	<li><span style=\"color:#bdc3c7\"><s>Pharetra massa</s></span></li>\r\n	<li><span style=\"color:#bdc3c7\"><s>Massa ultricies mi</s></span></li>\r\n</ul>', 'Buy Now', NULL, '', '2021-07-18 23:19:16', '2021-07-18 23:24:58'),
(47, 'pricing', 'pricing_second_section', 'Business', '<h4><sup>$</sup>19&nbsp;/ <span style=\"color:#bdc3c7\">month</span></h4>\r\n\r\n<ul>\r\n	<li>Aida dere</li>\r\n	<li>Nec feugiat nisl</li>\r\n	<li>Nulla at volutpat dola</li>\r\n	<li>Pharetra massa</li>\r\n	<li><span style=\"color:#bdc3c7\"><s>Massa ultricies mi</s></span></li>\r\n</ul>', 'Buy Now', NULL, '', '2021-07-18 23:26:15', '2021-07-18 23:31:15'),
(48, 'pricing', 'pricing_second_section', 'Developer', '<h4><sup>$</sup>29&nbsp;/<span style=\"color:#bdc3c7\"> month</span></h4>\r\n\r\n<ul>\r\n	<li>Aida dere</li>\r\n	<li>Nec feugiat nisl</li>\r\n	<li>Nulla at volutpat dola</li>\r\n	<li>Pharetra massa</li>\r\n	<li>Massa ultricies mi</li>\r\n</ul>', 'Buy Now', NULL, '', '2021-07-18 23:30:11', '2021-07-18 23:30:11'),
(49, 'pricing', 'pricing_second_section', 'Ultimate', '<h4><sup>$</sup>49&nbsp;/ <span style=\"color:#bdc3c7\">month</span></h4>\r\n\r\n<ul>\r\n	<li>Aida dere</li>\r\n	<li>Nec feugiat nisl</li>\r\n	<li>Nulla at volutpat dola</li>\r\n	<li>Pharetra massa</li>\r\n	<li>Massa ultricies mi</li>\r\n</ul>', 'Buy Now', NULL, '', '2021-07-18 23:32:05', '2021-07-18 23:32:58'),
(50, 'contact', 'contact_second_section', 'Address', '<div class=\"info\">\r\n              <div class=\"address\">\r\n                <i class=\"bi bi-geo-alt\"></i>\r\n                <h4>Location:</h4>\r\n                <p>A108 Adam Street, New York, NY 535022</p>\r\n              </div>\r\n\r\n              <div class=\"email\">\r\n                <i class=\"bi bi-envelope\"></i>\r\n                <h4>Email:</h4>\r\n                <p>info@example.com</p>\r\n              </div>\r\n\r\n              <div class=\"phone\">\r\n                <i class=\"bi bi-phone\"></i>\r\n                <h4>Call:</h4>\r\n                <p>+1 5589 55488 55s</p>\r\n              </div>\r\n\r\n            </div>', NULL, NULL, '', '2021-07-18 23:34:21', '2021-07-18 23:45:31');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
