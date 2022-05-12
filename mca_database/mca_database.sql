-- INVEDION
-- http://www.invedion.com
-- contact@invedion.com


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

CREATE TABLE `mca_admin` (
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `mca_admin` (`name`, `pass`) VALUES
('admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

CREATE TABLE `mca_categories` (
  `id` int(11) NOT NULL,
  `id_lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mca_order` int(11) NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `mca_categories` (`id`, `id_lang`, `title`, `description`, `mca_order`, `online`) VALUES
(1, 'all', 'Lifestyle', 'Adventure, Travel & Vacations, Recreation, Lifestyle, Real Estate', 1, 1),
(2, 'all', 'Business & Finance', 'Leadership, Sales & Marketing, Personal Finance, Business, Accounting', 2, 1),
(3, 'all', 'Women\'s', 'Fashion & Beauty, Home & Cooking, Weddings, Pregnancy & Family', 3, 1),
(4, 'all', 'Men\'s', 'Men\'s Fitness, Cars, Sports & Athletics', 4, 1),
(5, 'all', 'Health & Food', 'Healthy Habits, Healthy Meals, Fitness\r\n', 5, 1),
(6, 'all', 'Kids & Children', 'Good Parent, Learning, Play & Fun', 6, 1),
(7, 'all', 'Gadgets', 'Latest Tech Staff For Geek ', 7, 1),
(8, 'all', 'Smartphone', 'Samsung, Apple, Nokia, Microsoft', 8, 1),
(9, 'all', 'Video Games', 'RPG, Strategy, RTS, Adventure, Arcade etc.', 9, 1),
(10, 'all', 'Science', 'Latest Scientific Research', 10, 1);

-- --------------------------------------------------------

CREATE TABLE `mca_content` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `mca_order` int(11) NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `mca_content` (`id`, `id_category`, `photo`, `title`, `description`, `mca_order`, `online`) VALUES
(1, 1, '1.jpg', 'Big City Life No.1', 'In this magazine you will find more information about Invedion™ and it latest Magazine Content App.', 1, 1),
(2, 1, '2.jpg', 'Big City Life No.2', 'Sample description about this publication goes here...', 2, 1),
(3, 1, '3.jpg', 'Big City Life No.3', 'Sample description about this publication goes here...', 3, 1),
(4, 1, '4.jpg', 'Big City Life No.4', 'Sample description about this publication goes here...', 4, 1),
(5, 1, '5.jpg', 'Big City Life No.5', 'Sample description about this publication goes here...', 5, 1),
(6, 1, '6.jpg', 'Big City Life No.6', 'Sample description about this publication goes here...', 6, 1),
(7, 1, '7.jpg', 'Big City Life No.7', 'Sample description about this publication goes here...', 7, 1),
(8, 1, '8.jpg', 'Big City Life No.8', 'Sample description about this publication goes here...', 8, 1),
(9, 1, '9.jpg', 'Big City Life No.9', 'Sample description about this publication goes here...', 9, 1),
(10, 1, '10.jpg', 'Vacation Magazine No.1', 'Sample description about this publication goes here...', 10, 1),
(11, 1, '11.jpg', 'Vacation Magazine No.2', 'Sample description about this publication goes here...', 11, 1),
(12, 1, '12.jpg', 'Vacation Magazine No.3', 'Sample description about this publication goes here...', 12, 1),
(13, 1, '13.jpg', 'Vacation Magazine No.4', 'Sample description about this publication goes here...', 13, 1),
(14, 1, '14.jpg', 'Vacation Magazine No.5', 'Sample description about this publication goes here...', 14, 1),
(15, 1, '15.jpg', 'Vacation Magazine No.6', 'Sample description about this publication goes here...', 15, 1);

-- --------------------------------------------------------

CREATE TABLE `mca_content_articles` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_demo` text COLLATE utf8_unicode_ci NOT NULL,
  `desc_full` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mca_order` int(11) NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `mca_content_articles` (`id`, `id_content`, `title`, `desc_demo`, `desc_full`, `mca_order`, `online`) VALUES
(1, 1, 'Welcome in Invedion Magazine Content App', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br>If you have any questions feel free to contact us <a href=\"http://www.invedion.com\">http://www.invedion.com</a><br></p><p><br><img style=\"width: 1000px;\" src=\"http://invedion.com/images/mobile_app _invedion_logo.jpg\"><br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br><br></p><p><iframe src=\"http://www.youtube.com/embed/7Loppv2hEb0\" class=\"note-video-clip\" width=\"1000\" height=\"640\" frameborder=\"0\"></iframe><br></p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><b><span style=\"font-size: 45px;\">Free Tutorial:<br></span></b><p><iframe src=\"http://www.youtube.com/embed/XJkR6yGw8e4\" class=\"note-video-clip\" width=\"1000\" height=\"640\" frameborder=\"0\"></iframe><b><br></b><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p><br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br>If you have any questions feel free to contact us <a href=\"http://www.invedion.com\">http://www.invedion.com</a><br></p><p><br><img style=\"width: 1000px;\" src=\"http://invedion.com/images/mobile_app _invedion_logo.jpg\"><br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br><br></p><p><iframe src=\"http://www.youtube.com/embed/7Loppv2hEb0\" class=\"note-video-clip\" width=\"1000\" height=\"640\" frameborder=\"0\"></iframe><br></p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><b><span style=\"font-size: 45px;\">Free Tutorial:<br></span></b><p><iframe src=\"http://www.youtube.com/embed/XJkR6yGw8e4\" class=\"note-video-clip\" width=\"1000\" height=\"640\" frameborder=\"0\"></iframe><b><br></b><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p><br></p>', 1, 1),
(2, 1, 'Unlimited categories', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 2, 1),
(3, 1, 'Social media integration', '<p>DEMO </p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>FULL ACCESS<br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p>', 3, 1),
(4, 1, 'Demo & full access content', '<p>This is demo only:<br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p><p>This is full access content:<br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br><br><img style=\"width: 778px;\" src=\"http://invedion.com/images/mobile_app _invedion_logo.jpg\"><br><br>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p></p>', 4, 1),
(5, 1, 'Extra article with extreme long title - yes you can create as long title you want', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).</p><p><br></p><p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 5, 1),
(6, 1, 'Unlimited number of articles in your publication', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 6, 1),
(7, 1, 'Storage online & offline - save your favorite', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 7, 1),
(8, 1, 'Android & iOS support', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 8, 1),
(9, 1, 'Unlimited language support', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 9, 1),
(10, 1, 'Push notification ready', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', '<p>Invedion™ is a professional developer company based on MOBILE APP technologies for ANDROID, iOS and WINDOWS PHONE. We carry out projects for companies of all sizes, in every industry around the world. The combination of these elements makes the guarantee leading solutions for virtually every customer both in the domestic and global markets. We are also double winner of Samsung World App Challenge. We have over 5 years of experience in mobile app development for all major platforms (Android, iOS, Amazon Fire, Tizen, Windows Phone, and Windows 10 Mobile). We have 12 years of experience in the IT industry (creation of interactive websites, banners, software, promotional materials, e. g. movies, placards, business cards).<br></p>', 10, 1);

-- --------------------------------------------------------

CREATE TABLE `mca_favorite` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_content` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE `mca_lang` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `mca_lang` (`id`, `name`, `short`, `online`) VALUES
(1, 'English', 'en', 1),
(2, 'Polish', 'pl', 1),
(3, 'Italian', 'it', 1),
(4, 'Spanish', 'es', 1),
(5, 'German', 'de', 1),
(6, 'French', 'fr', 1),
(7, 'Greek', 'gr', 1),
(8, 'Russian', 'ru', 1);

-- --------------------------------------------------------

CREATE TABLE `mca_users` (
  `id` int(11) NOT NULL,
  `reg_date` date NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `mca_admin`
  ADD PRIMARY KEY (`name`);


ALTER TABLE `mca_categories`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_content`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_content_articles`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_favorite`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_lang`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mca_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `mca_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `mca_content_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `mca_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `mca_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `mca_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  