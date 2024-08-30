-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2024 at 07:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog2`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `categories_id` int UNSIGNED NOT NULL,
  `users_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `focus_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `categories_id`, `users_id`, `title`, `images`, `news`, `alt`, `focus_key`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(2, 1, 1, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(3, 2, 2, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(4, 2, 2, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(5, 1, 1, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(6, 1, 2, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(7, 2, 2, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(8, 2, 1, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(9, 1, 1, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(10, 1, 1, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(11, 2, 2, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(12, 2, 2, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(13, 1, 1, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00');
INSERT INTO `articles` (`id`, `categories_id`, `users_id`, `title`, `images`, `news`, `alt`, `focus_key`, `description`, `created_at`, `updated_at`) VALUES
(14, 1, 2, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(15, 2, 2, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(16, 2, 1, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `id` int UNSIGNED NOT NULL,
  `articles_id` int UNSIGNED NOT NULL,
  `tags_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `articles_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-21 17:00:00', '2018-12-21 17:00:00'),
(2, 1, 2, '2018-12-21 17:00:00', '2018-12-21 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `icon`) VALUES
(1, 'Web Programming', 'if_php-2048-black_167633.png'),
(2, 'Web Design', 'if_node_js_682682.png'),
(3, 'Gallery', 'if_node_js_682682.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `articles_id` int UNSIGNED NOT NULL,
  `reply` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `articles_id`, `reply`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 1, 'Ini komentar pertama', 'no-image.jpg', '2024-03-09 21:43:42', '2024-03-09 21:43:42'),
(4, 1, 'ini komentar kedua', 'no-image.jpg', '2024-03-09 22:08:48', '2024-03-09 22:08:48'),
(5, 1, 'ini komentar ketiga', 'no-image.jpg', '2024-03-09 22:09:05', '2024-03-09 22:09:05'),
(6, 1, 'test', 'no-image.jpg', '2024-03-10 00:04:24', '2024-03-10 00:04:24'),
(7, 1, 'test', 'no-image.jpg', '2024-03-10 00:06:31', '2024-03-10 00:06:31'),
(8, 1, 'tes', 'no-image.jpg', '2024-03-10 00:07:38', '2024-03-10 00:07:38'),
(9, 1, 'komen lagi', 'no-image.jpg', '2024-03-18 07:22:18', '2024-03-18 07:22:18'),
(10, 1, 'komentar', 'no-image.jpg', '2024-03-18 07:25:11', '2024-03-18 07:25:11'),
(11, 1, 'komentar lagi', 'no-image.jpg', '2024-03-18 07:28:29', '2024-03-18 07:28:29'),
(12, 3, 'awad', 'no-image.jpg', '2024-05-28 07:43:33', '2024-05-28 07:43:33'),
(13, 3, 'I Love U', 'no-image.jpg', '2024-05-28 07:43:44', '2024-05-28 07:43:44');

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
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `categories_id` int NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `categories_id`, `images`) VALUES
(3, 'Me', 30, '202405281701202405281655171691519185.image-profile.jpeg'),
(4, 'Me and Friends', 30, '202405281702friend1.jpeg'),
(5, 'Gym', 30, '202405281702gym1.jpeg'),
(6, 'Me and Family', 30, '202405281703family3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_09_042546_create_categories_table', 1),
(4, '2018_10_09_043744_create_articles_table', 1),
(5, '2018_10_09_044756_create_comments_table', 1),
(6, '2018_10_09_045955_create_articletags_table', 1),
(7, '2018_10_09_090602_create_tags_table', 1),
(8, '2018_10_13_091450_create_relation_tags_articles_tags', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 2),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(12, '2024_02_28_161229_make_users_id_nullable_in_articles_table', 3),
(13, '2024_03_04_141634_gallery', 4),
(14, '2024_03_08_095012_page_gallery', 4),
(16, '2024_05_28_103958_categories', 5);

-- --------------------------------------------------------

--
-- Table structure for table `page_gallery`
--

CREATE TABLE `page_gallery` (
  `id` int NOT NULL,
  `gallery_id` int NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page_gallery`
--

INSERT INTO `page_gallery` (`id`, `gallery_id`, `images`, `created_at`, `updated_at`) VALUES
(13, 3, '171691601525.image-profile.jpeg', '2024-05-28 10:06:55', '2024-05-28 17:06:55'),
(14, 3, '171691601583.me2.jpeg', '2024-05-28 10:06:55', '2024-05-28 17:06:55'),
(15, 3, '171691601563.me3 - Copy.jpeg', '2024-05-28 10:06:55', '2024-05-28 17:06:55'),
(16, 3, '171691601579.me4.jpeg', '2024-05-28 10:06:55', '2024-05-28 17:06:55'),
(17, 4, '171691607364.202403091604friend4.jpeg', '2024-05-28 10:07:53', '2024-05-28 17:07:53'),
(18, 4, '17169160733.202405281702friend1.jpeg', '2024-05-28 10:07:53', '2024-05-28 17:07:53'),
(19, 4, '171691607322.friend2.jpeg', '2024-05-28 10:07:53', '2024-05-28 17:07:53'),
(20, 4, '171691607340.friend3.jpeg', '2024-05-28 10:07:53', '2024-05-28 17:07:53'),
(21, 6, '171691609862.Family1.jpeg', '2024-05-28 10:08:18', '2024-05-28 17:08:18'),
(22, 6, '171691609850.family2.jpeg', '2024-05-28 10:08:18', '2024-05-28 17:08:18'),
(23, 6, '171691609885.family3.jpeg', '2024-05-28 10:08:18', '2024-05-28 17:08:18'),
(24, 6, '171691609836.family4.jpeg', '2024-05-28 10:08:18', '2024-05-28 17:08:18'),
(25, 5, '171691619526.gym1.jpeg', '2024-05-28 10:09:55', '2024-05-28 17:09:55'),
(27, 4, '171698865951.ME FRIEND 5 .jpeg', '2024-05-29 06:17:39', '2024-05-29 13:17:39'),
(28, 4, '17169886595.ME FRIEND 6.jpeg', '2024-05-29 06:17:39', '2024-05-29 13:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `tag_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '2018-12-14 17:00:00', '2018-12-14 17:00:00'),
(2, 'PHP', '2018-12-14 17:00:00', '2018-12-14 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faisal', 'faisal@gmail.com', NULL, '$2y$10$NIM8kYzuj0E33W95SH5KtuwfoNXSvPdLPGfNQoQqIvGQWsLTGuFUS', NULL, '2024-03-07 08:49:32', '2024-03-07 08:49:32'),
(2, 'andrean', 'andrean@gmail.com', NULL, '$2y$10$9T.v4ZN41504xjvjt9vg3e/O7AU/TFgaQsBg8UxLZ6wP5mqgYdDBa', NULL, '2024-03-07 08:50:05', '2024-03-07 08:50:05'),
(3, 'Rasyid', 'rasyidbomantoro3@gmail.com', NULL, '$2y$12$mOHXKAdpDl5t.XgtKsNG2uIWG/iHZ5g3L9iaqBjVJ98M8cv3vryHi', NULL, '2024-05-28 06:58:27', '2024-05-28 06:58:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_tags_articles_id_foreign` (`articles_id`),
  ADD KEY `articles_tags_tags_id_foreign` (`tags_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_articles_id_foreign` (`articles_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_gallery`
--
ALTER TABLE `page_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gallery` (`gallery_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `articles_tags`
--
ALTER TABLE `articles_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page_gallery`
--
ALTER TABLE `page_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `articles_tags_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_tags_tags_id_foreign` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_gallery`
--
ALTER TABLE `page_gallery`
  ADD CONSTRAINT `fk_gallery` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
