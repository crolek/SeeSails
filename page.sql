-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2015 at 04:12 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `see_sails`
--

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`title`, `content`, `id`, `createdAt`, `updatedAt`) VALUES
('Umm, I created a presentation with Sailsjs?', '<p>Chuck Rolek</p>\r\n<p>Front-end and Infrastructure Developer</p>\r\n<p>Principal Financial Group</p>\r\n', 1, '2015-06-08 21:25:08', '2015-06-08 21:25:08'),
('What is Sails?', '<h4>What Is Sails.js?</h4>\r\n<p>Sails makes it easy to build custom, enterprise-grade Node.js apps. It is designed to emulate the familiar MVC pattern of frameworks like Ruby on Rails, but with support for the requirements of modern apps: data-driven APIs with a scalable, service-oriented architecture. It''s especially good for building chat, realtime dashboards, or multiplayer games; but you can use it for any web application project - top to bottom.\r\n</p>\r\n<p>That was take directly from <a href="http://sailsjs.org/#!/">http://sailsjs.org/</a></p>', 2, '2015-06-08 21:25:28', '2015-06-08 21:25:28'),
('But why, this isn''t what Sailjs is for!', '<ul>\r\n	<li>cause why not?</li>\r\n	<li>I wanted to do something silly with Sailsjs</li>\r\n	<li>Plus I wanted a presentation "platform" for my talk at MidwestJS</li>\r\n</ul>', 3, '2015-06-08 22:16:07', '2015-06-08 22:16:07'),
('So where did I start?', '<ul>\r\n	<li>Install Nodejs</li>\r\n	<li><kbd>npm -g install sails</kbd> from: <a href="https://github.com/balderdashy/sails-docs/blob/master/getting-started/getting-started.md">Sails Getting Started</a></li>\r\n	<li>Started a new project using: <kbd>sails new sweetProjectName</kbd></li>\r\n	<li>Navigate into the project and do <kbd>sails lift</kbd></li>\r\n</ul>', 4, '2015-06-08 22:16:08', '2015-06-08 22:16:08'),
('Time to store stuff in the cargo hold.', '<ul>\r\n	<li>Pick your DB (see config/connections.js)</li>\r\n	<li>Create an endpoint: <kbd>sails generate api page</kbd></li>\r\n	<li>Add some data types (see the newly created folder api/models/Page.js)</li>\r\n	<li>Almost there!</li>\r\n</ul>', 5, '2015-06-08 22:16:08', '2015-06-08 22:16:08'),
('Time to see some magic.', '<ul>\r\n	<li><kbd>curl -X POST -H "Content-Type: application/json" http://localhost:1337/page -d "{\\"title\\":\\"t\\",\\"content\\": \\"c\\"}"</kbd></li>\r\n	<li>And now you have content!</li>\r\n	<li>Check it out at: <a href="http://localhost:1337/page/1">http://localhost:1337/page/1</a></li>\r\n	<li>GG. You''ve now created a new Sails app, stored data, and read it back!</li>\r\n</ul>', 6, '2015-06-08 22:16:09', '2015-06-08 22:16:09'),
('How did you make this into a presentation?', '<ul>\r\n	<li>I added a Custom Route in the <a href="https://github.com/crolek/SeeSails/blob/master/config/routes.js#L38">config/routes.js</a></li>\r\n	<li>Then I put a little bit of logic into my controller in <a href="https://github.com/crolek/SeeSails/blob/master/api/controllers/PageController.js#L9">controllers/Pagecontroller.js</a></li>\r\n	<li>Please forgive the garbage you''re about to see.</li>\r\n	<li>Finally, I created a simple view to display that data based on the page I wanted to see by adding <a href="https://github.com/crolek/SeeSails/blob/master/views/singlepage.ejs">views/singlepage.ejc</a></li>\r\n</ul>', 7, '2015-06-08 22:16:09', '2015-06-08 22:16:09'),
('', '<br /><br />\r\n<h2>Questions?</h2>', 8, '2015-06-08 22:16:09', '2015-06-08 22:16:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
