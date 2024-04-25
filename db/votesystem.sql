-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2024 at 02:54 PM
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
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$kLqXG4BAJrPbsOjJ/.B4eeZn6oojNhAb8l5/cb9eZvFnYU.pz2qni', 'Admin', '', 'profile.jpg', '2024-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL DEFAULT 'profile.jpg',
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(6, 1, 'Rahul', 'Patel', 'profile.jpg', 'To improve communication between students and faculty.'),
(7, 1, 'Priya', 'Sharma', 'profile.jpg', 'To implement more student events on campus.'),
(8, 1, 'Amit', 'Singh', 'profile.jpg', 'To enhance sports facilities and increase sports programs.'),
(9, 1, 'Sneha', 'Desai', 'profile.jpg', 'To focus on environmental sustainability and recycling programs.'),
(10, 1, 'Vikram', 'Joshi', 'profile.jpg', 'To improve academic resources and establish tutoring programs.'),
(11, 3, 'Ananya', 'Patil', 'profile.jpg', 'To improve campus infrastructure and facilities for students.'),
(12, 3, 'Rohan', 'Shah', 'profile.jpg', 'To enhance academic support services and resources for students.'),
(13, 3, 'Neha', 'Gupta', 'profile.jpg', 'To advocate for more scholarships and financial aid programs for students.'),
(14, 2, 'Aarav', 'Patel', 'profile.jpg', 'To organize more cultural festivals and events to celebrate diversity.'),
(15, 2, 'Sneha', 'Kumar', 'profile.jpg', 'To promote cultural exchange programs and increase international student involvement.'),
(16, 2, 'Vikram', 'Sharma', 'profile.jpg', 'To support and fund various cultural clubs and organizations.'),
(21, 3, 'Harshin', 'Kamishetty', '', '10 CG for everyone.');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(1, 'General Secretary', 2, 1),
(2, 'Cultural Secretary', 2, 2),
(3, 'Chairman', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `password`, `firstname`, `lastname`) VALUES
(2, '$2y$10$8sB6PODMeqeEaXcy.Q.atOQw6meDDM05Uj43TwbxRfcXL.hCaPFIC', 'Rakim', 'Middya'),
(3, '$2y$10$2MXteR1mi/qdYRsOTHQ46uZ7EjoooXD31o.2MbS6ez.3rY/JOsZre', 'Rishab', 'Bohra'),
(5, '$2y$10$2MXteR1mi/qdYRsOTHQ46uZ7EjoooXD31o.2MbS6ez.3rY/JOsZre', 'John', 'Doe'),
(6, '$2y$10$2MXteR1mi/qdYRsOTHQ46uZ7EjoooXD31o.2MbS6ez.3rY/JOsZre', 'Jane', 'Smith'),
(7, '$2y$10$2MXteR1mi/qdYRsOTHQ46uZ7EjoooXD31o.2MbS6ez.3rY/JOsZre', 'Michael', 'Johnson'),
(8, '$2y$10$5dtwSggqdV18Mp3d/Ovrau1gD5Etex1VGEo9LD3FwiyODy78h90Hu', 'Sri Sindhu', 'Veerathu');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
