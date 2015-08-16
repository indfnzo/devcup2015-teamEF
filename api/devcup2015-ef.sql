-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2015 at 02:29 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devcup2015-ef`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `author_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `author_gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author_name`, `author_gender`, `create_timestamp`) VALUES
(41, '#LGBT', '<i>Just a thought, if you''re hiding in a closet or you''re hiding your partner with you. :)</i>\n\n<b>I''m a lesbian.</b> A butch, to be exact. I''m pretty much comfortable with who I am. Except for those little tiny things on the side. Although before, whenever I  was asked in class (we all experienced the impromptu session of Truths with all our classmates) if what was my relationship status, I always told them I was single, even though I had a girlfriend (2 years and counting, hahaha) simply because I wanted to avoid any side comments or a follow-up question. Of course, being a butch, I dress boy-ish (proud hardcore butch right here) with really short hair, etc. It''s not that I''m not comfortable with who I am and I''m embarrassed of who I love, I just didn''t want any further discussion, period. I didn''t want to expound, elaborate, or share something very personal in a room full of people I didn''t really truly know.\n\nThen I realized, that my deepest feelings and thoughts were never shared as much at all. My girlfriend, on the other hand, is so proud to brag to her friends how she has a girlfriend when in reality she''s the one who can enter a "normal" or a more acceptable relationship for other people. She''s the girl in our relationship, she''s bisexual. It makes me so guilty yet at the same time so proud that my girlfriend was never ashamed of me and she never hid me from other people. Yet here I am, the one whose "different," the "abnormal" one in the eyes of other people, I''m  the one who hides from those topics.\n\nDo you really understand why you''re still in the closet? Why you keep someone you love in the dark? Why we need approval of other people?\n\nWhy are we withdrawn to people who are brash enough to judge us? \n\nWhy do we need to be considered "normal" in their perspectives and be accepted by them? In the first place, why do they need to accept us? What have we done to them? Well, their the ones who have problems with us anyway! =))) They''re the ones who judge and condemn us. It''s not our duty to make us accept them.\n\nJust, be proud and love the skin you are in. Love the people you want to love. We love someone by who they are, not what their gender says so. Forget the world, fck them. Just love.\n\n<b>PS:</b> To my baby, I''m sorry I''ve always told everyone I''m single even though I''m happily taken by you, the best human being in this planet for me. I love you so much. I''ll never hide you again. I love you, always.', 'MahalNaMahalKita, Promise', '', '2015-08-16 00:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE IF NOT EXISTS `shouts` (
`id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
