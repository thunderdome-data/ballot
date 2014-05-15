/*
 Navicat Premium Data Transfer

 Source Server         : dfmbeta MySQL
 Source Server Type    : MySQL
 Source Server Version : 50167
 Source Host           : localhost
 Source Database       : features

 Target Server Type    : MySQL
 Target Server Version : 50167
 File Encoding         : utf-8

 Date: 01/16/2014 08:12:33 AM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `oscars14_nominees`
-- ----------------------------
DROP TABLE IF EXISTS `oscars14_nominees`;
CREATE TABLE `oscars14_nominees` (
  `nom_id` int(7) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `movie` varchar(256) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `blurb` mediumtext,
  `story_links` mediumtext,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`nom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `oscars14_nominees`
-- ----------------------------
BEGIN;
INSERT INTO `oscars14_nominees` VALUES ('1', '', '', '&quot;American Hustle&quot;', '1', 'americanhustle.jpg', '', '', '0'), ('2', '', '', '&quot;Captain Phillips&quot;', '1', 'captphillips.jpg', '', '', '0'), ('3', '', '', '&quot;Dallas Buyers Club&quot;', '1', 'dallasbuyers.jpg', '', '', '0'), ('4', '', '', '&quot;Gravity&quot;', '1', 'gravity.jpg', '', '', '0'), ('5', '', '', '&quot;Her&quot;', '1', 'her.jpg', '', '', '0'), ('6', '', '', '&quot;Nebraska&quot;', '1', 'nebraska.jpg', '', '', '0'), ('7', '', '', '&quot;Philomena&quot;', '1', 'philomena.jpg', '', '', '0'), ('8', '', '', '&quot;12 Years a Slave&quot;', '1', 'yearsaslave.jpg', '', '', '0'), ('9', '', '', '&quot;The Wolf of Wall Street&quot;', '1', 'wallstreet.jpg', '', '', '0'), ('10', 'David O.', 'Russell', '&quot;American Hustle&quot;', '2', 'russell.jpg', '', '', '1'), ('11', 'Alfonso', 'Cuar&oacute;n', '&quot;Gravity&quot;', '2', 'cuaron.jpg', '', '', '0'), ('12', 'Alexander', 'Payne', '&quot;Nebraska&quot;', '2', 'payne.jpg', '', '', '0'), ('13', 'Steve', 'McQueen', '&quot;12 Years a Slave&quot;', '2', 'mcqueen.jpg', '', '', '0'), ('14', 'Martin', 'Scorsese', '&quot;The Wolf of Wall Street&quot;', '2', 'scorsese.jpg', '', '', '0'), ('15', 'Christian', 'Bale', '&quot;American Hustle&quot;', '3', 'christianbale.jpg', '', '', '0'), ('16', 'Bruce', 'Dern', '&quot;Nebraska&quot;', '3', 'brucedern.jpg', '', '', '0'), ('17', 'Leonardo', 'DiCaprio', '&quot;The Wolf of Wall Street&quot;', '3', 'dicaprio.jpg', '', '', '0'), ('18', 'Chiwetel', 'Ejiofor', '&quot;12 Years a Slave&quot;', '3', 'ejiofor.jpg', '', '', '0'), ('19', 'Matthew', 'McConaughey', '&quot;Dallas Buyers Club&quot;', '3', 'mcconaughey.jpg', '', '', '0'), ('20', 'Amy', 'Adams', '&quot;American Hustle&quot;', '4', 'amyadams.jpg', '', '', '0'), ('21', 'Cate', 'Blanchett', '&quot;Blue Jasmine&quot;', '4', 'bluejasmine.jpg', '', '', '0'), ('22', 'Sandra', 'Bullock', '&quot;Gravity&quot;', '4', 'bullock.jpg', '', '', '0'), ('23', 'Judi', 'Dench', '&quot;Philomena&quot;', '4', 'judidench.jpg', '', '', '0'), ('24', 'Meryl', 'Streep', '&quot;August: Osage County&quot;', '4', 'streep.jpg', '', '', '0'), ('25', 'Barkhad', 'Abdi', '&quot;Captain Phillips&quot;', '5', 'abdi.jpg', '', '', '0'), ('26', 'Bradley', 'Cooper', '&quot;American Hustle&quot;', '5', 'cooper.jpg', '', '', '0'), ('27', 'Michael', 'Fassbender', '&quot;12 Years a Slave&quot;', '5', 'fassbender.jpg', '', '', '0'), ('28', 'Jonah', 'Hill', '&quot;The Wolf of Wall Street&quot;', '5', 'hill.jpg', '', '', '0'), ('29', 'Jared', 'Leto', '&quot;Dallas Buyers Club&quot;', '5', 'jaredleto.jpg', '', '', '0'), ('30', 'Sally', 'Hawkins', '&quot;Blue Jasmine&quot;', '6', 'sallyhawkins.jpg', '', '', '0'), ('31', 'Jennifer', 'Lawrence', '&quot;American Hustle&quot;', '6', 'jlaw.jpg', '', '', '0'), ('32', 'Lupita', 'Nyong&rsquo;o', '&quot;12 Years a Slave&quot;', '6', 'lupita.jpg', '', '', '0'), ('33', 'Julia', 'Roberts', '&quot;August: Osage County&quot;', '6', 'juliaroberts.jpg', '', '', '0'), ('34', 'June', 'Squibb', '&quot;Nebraska&quot;', '6', 'junesquibb.jpg', '', '', '0'), ('35', '', '', '&quot;The Croods&quot;', '7', 'croods.jpg', '', '', '0'), ('36', '', '', '&quot;Despicable Me 2&quot;', '7', 'despicable.jpg', '', '', '0'), ('37', '', '', '&quot;Ernest &amp; Celestine&quot;', '7', 'ernest.jpg', '', '', '0'), ('38', '', '', '&quot;Frozen&quot;', '7', 'frozen.jpg', '', '', '0'), ('39', '', '', '&quot;The Wind Rises&quot;', '7', 'windrises.jpg', '', '', '0'), ('40', '', '', '&quot;The Grandmaster&quot;', '8', 'ziyi.jpg', '', '', '0'), ('41', '', '', '&quot;Gravity&quot;', '8', 'gravity.jpg', '', '', '0'), ('42', '', '', '&quot;Inside Llewyn Davis&quot;', '8', 'llewyndavis.jpg', '', '', '0'), ('43', '', '', '&quot;Nebraska&quot;', '8', 'nebraska.jpg', '', '', '0'), ('44', '', '', '&quot;Prisoners&quot;', '8', 'prisoners.jpg', '', '', '0'), ('45', '', '', '&quot;The Act of Killing&quot;', '9', 'actofkilling.jpg', '', '', '0'), ('46', '', '', '&quot;Cutie and the Boxer&quot;', '9', 'theboxer.jpg', '', '', '0'), ('47', '', '', '&quot;Dirty Wars&quot;', '9', 'dirtywars.jpg', '', '', '0'), ('48', '', '', '&quot;The Square&quot;', '9', 'thesquare.jpg', '', '', '0'), ('49', '', '', '&quot;20 Feet from Stardom&quot;', '9', '20fttostardom.jpg', '', '', '0'), ('50', '&quot;Alone Yet Not Alone&quot;', 'from', '&quot;Alone Yet Not Alone&quot;', '10', 'alone.jpg', '', '', '0'), ('51', '&quot;Happy&quot;', 'from', '&quot;Despicable Me 2&quot;', '10', 'despicable.jpg', '', '', '0'), ('52', '&quot;Let It Go&quot;', 'from', '&quot;Frozen&quot;', '10', 'frozen.jpg', '', '', '0'), ('53', '&quot;The Moon Song&quot;', 'from', '&quot;Her&quot;', '10', 'her.jpg', '', '', '0'), ('54', '&quot;Ordinary Love&quot;', 'from', '&quot;Mandela: Long Walk To Freedom&quot;', '10', 'mandela.jpg', '', '', '0'), ('55', 'David O. Russell/', 'Eric Singer', '&quot;American Hustle&quot;', '11', 'russellsinger.jpg', '', '', '0'), ('56', 'Woody', 'Allen', '&quot;Blue Jasmine&quot;', '11', 'allen.jpg', '', '', '0'), ('57', 'Melisa Wallack/', 'Craig Borten', '&quot;Dallas Buyers Club&quot;', '11', 'wallackborten.jpg', '', '', '0'), ('58', 'Spike', 'Jonze', '&quot;Her&quot;', '11', 'spikejonze.jpg', '', '', '0'), ('59', 'Bob', 'Nelson', '&quot;Nebraska&quot;', '11', 'nelson.jpg', '', '', '0'), ('60', 'Michael', 'Wilkinson', '&quot;American Hustle&quot;', '12', 'wilkinson.jpg', '', '', '0'), ('61', 'William Chang', 'Suk Ping', '&quot;The Grandmaster&quot;', '12', 'grandmaster.jpg', '', '', '0'), ('62', 'Catherine', 'Martin', '&quot;The Great Gatsby&quot;', '12', 'martin.jpg', '', '', '0'), ('63', 'Michael', 'O&rsquo;Connor', '&quot;The Invisible Woman&quot;', '12', 'oconnor.jpg', '', '', '0'), ('64', 'Patricia', 'Norris', '&quot;12 Years a Slave&quot;', '12', 'norris.jpg', '', '', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
