-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forza motors`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` int(11) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `confirm_password` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_data`
--

INSERT INTO `users_data` (`userid`, `username`, `password`, `email`, `phoneno`, `firstname`, `lastname`, `created_at`, `confirm_password`, `role`) VALUES
(1, 'sachin009', '$2y$10$VuCW0pIFp4dpYfp/ZPKulu8WYfEfrBRUiFCmQZGw7g0bxgc6o4zPm', 'eargtg@gmail.com', 2147483647, 'sachin', 'mamu', '2024-06-13 05:43:36', '', 1),
(2, 'kuttan@banglore', '$2y$10$cNLBC76//swDaNj.zt2FZuLLpexw4cr.T3qy/Y850fBEDqkeLvBwG', 'kutu0@gmail.com', 2147483647, 'kuttan', 'panikar', '2024-06-13 05:47:51', 'password', 1),
(3, 'bobby@123', '$2y$10$SZ07v4lkSz45oz8WX0l99eR/lP0Ix2UeupW/F9W7GpnFWqglSN30K', 'boby9@gmail.com', 999999, 'boby', 'lucifer', '2024-06-13 05:51:04', '123', 1),
(5, 'charls', '$2y$10$COEdqhMBrBsRsOLzHSe.OuUS9KFlwOdRZHt4qsz3jZG6kHBERNGnC', 'charls@gmail.com', 988664434, 'charls', 'sabu', '2024-06-24 16:34:32', '123', 1),
(6, 'abu', '$2y$10$7ZWICIW9WIchmQyI.qpgEeI3lTHqSUKZHhtbIsFOQMhvH5LzJUno.', 'abu@gmail.com', 867349, 'abu', 'salim', '2024-06-24 17:55:43', 'salim', 1),
(10, 'josk', '$2y$10$Jiqe5AQSaoT2KtvfPWF64OyBcd0IDj1XIjIwsmBwxv3yyyCn7Ld4i', 'JOS23@gmail.com', 2147483647, 'JOS', 'KUTTY', '2024-06-24 18:21:30', 'pp', 2),
(12, 'huhu', '$2y$10$paKFA4/.6ZsEgOPRLHaD7.vHPE6DOsiJPD5B639vl96oPFTpmfCeW', 'abym23@gmail.com', 2147483647, 'AbyM', 'MAN', '2024-07-04 07:32:47', 'aa', 1),
(15, 'huu123', '$2y$10$5wM0Hv43jOr4ZArnyreiLuPWc6/w0XRRMSGO3mbJJF7nZ1Qvt/SBW', 'hello@gmail.com', 2147483647, 'huhu', 'chruu', '2024-07-04 08:05:29', '', 1),
(19, 'kokoppp', '$2y$10$pdfzkL31kWxcUbX9Salz3eHBy88ZZ4a5Ru.vEVj.zqHjlcZBNw8he', 'kokok23@gmail.com', 2147483647, 'koko', 'k', '2024-07-04 15:20:55', 'rajeevp', 1),
(25, 'anusha21', '$2y$10$23fiauJtVtb24URJA/vNtOyH6S01MwDdzAT8chSvRCAgr/jKQdOE6', 'a@gmail.com', 988664434, 'anusha', 'ms', '2024-07-11 04:50:43', '123234', 2),
(26, 'rtyy', '$2y$10$CwZ8JaGbWBacxKRDkCQy/.X1S/3dfOnf2gcI9XOQUNLJppmB3.FPi', 'dj@gmail.com', 2147483647, 'dona', 'joseph', '2024-07-11 05:01:16', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `firstname` (`firstname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_data`
--
ALTER TABLE `users_data`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
