-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2021-04-10 04:26:22
-- Server Edition： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mv`
--

-- --------------------------------------------------------

--
-- Table Structure `tbl_movies`
--

CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `mv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mv_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `mv_title` varchar(255) NOT NULL,
  `mv_year` varchar(5) NOT NULL,
  `mv_runtime` varchar(25) NOT NULL,
  `mv_storyline` text NOT NULL,
  `mv_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `mv_release` varchar(125) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`mv_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- database `tbl_movies`
--

INSERT INTO `tbl_movies` (`mv_id`, `mv_cover`, `mv_title`, `mv_year`, `mv_runtime`, `mv_storyline`, `mv_trailer`, `mv_release`, `type`) VALUES
(1, 'arrival', 'arrival', '2020', '195', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill&rsquo;s true parentage.', '', 'May 5, 2017', 1),
(2, 'beauty', 'beauty', '2021', '210', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', '', 'July 21, 2017', 1),
(3, 'brooklyn', 'brooklyn', '2020', '120', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan&rsquo;s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', '', 'March 3,2017', 1),
(4, 'colonia', 'colonia', '2020', '230', ' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ', '', 'June 28,2017', 1),
(5, 'deadpool', 'deadpool', '2019', '160', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', '', 'March 17, 2017', 1),
(6, 'donjon', 'donjon', '2019', '180', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', '', 'November 4, 2016', 1),
(7, 'dunkirk', 'dunkirk', '2018', '220', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', '', 'Febuary 12, 2016', 1),
(8, 'eddie', 'eddie', '2016', '230', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', '', 'November 11, 2016', 1),
(9, 'force', 'force', '2016', '190', 'The story of Eddie Edwards, the notoriously tenacious British underdog ski jumper who charmed the world at the 1988 Winter Olympics.', '', 'Febuary 26, 2016', 1),
(10, 'gravity', 'gravity', '2016', '190', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.', '', 'November 4, 2016', 1),
(11, 'guardians', 'guardians', '2015', '2h 36m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', '', 'January 8, 2015', 1),
(12, 'guardians2', 'guardians2', '2021', '1h 57m', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', '', 'November 25, 2015', 2),
(13, 'hacksaw', 'hacksaw', '2019', '2h 3m', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', '', 'October 9, 2015', 2),
(14, 'logan', 'logan', '2018', '1h 46m', 'A young woman&rsquo;s desperate search for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.', '', 'April 15, 2015', 2),
(15, 'okja', 'okja', '2015', '2h 16m', 'Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.', '', 'December 18, 2015', 2),
(16, 'pi', 'pi', '2019', '1h 47m', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student''s potential.', '', 'October 15, 2014', 2),
(17, 'revenant', 'revenant', '2014', '2h 1m', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', '', 'August 1, 2014', 2),
(18, 'silver', 'silver', '2021', '1h 30m', 'A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.', '', 'September 27, 2013', 2),
(19, 'trolls', 'trolls', '2015', '1h 31m', 'Two astronauts work together to survive after an accident which leaves them alone in space.', '', 'October 4, 2013', 2),
(20, 'walk', 'walk', '2012', '2h 7m', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', '', 'November 21, 2012', 2),
(21, 'whiplash', 'whiplash', '2012', '2h 2m', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', '', 'December 25, 2012', 2);

-- --------------------------------------------------------

--
-- Table Structure `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- database `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`) VALUES
(1, 'admin', 'user1', '123456', 'admin@t.com', '2021-03-15 19:07:35', '127.0.0.1', 1, 5),
(2, 'jame', 'user2', '123456', 'admin@t.com', '2019-03-14 20:11:28', '127.0.0.1:8000', 1, 5),
(3, 'test', 'user3', '123456', 'admin@t.com', '2019-03-12 20:12:40', '127.0.0.1:8000', 0, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
