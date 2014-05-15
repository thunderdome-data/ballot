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

 Date: 01/16/2014 07:40:14 AM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `oscars14_categories`
-- ----------------------------
DROP TABLE IF EXISTS `oscars14_categories`;
CREATE TABLE `oscars14_categories` (
  `cat_id` int(7) NOT NULL AUTO_INCREMENT,
  `category` varchar(256) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `critictext` text,
  `lastwinner` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `oscars14_categories`
-- ----------------------------
BEGIN;
INSERT INTO `oscars14_categories` VALUES ('1', 'Picture', 'cat1.jpg', '', '&quot;Argo&quot;', 'After a win at the Golden Globes, &quot;12 Years A Slave&quot; would appear to be a lock for Best Picture. If Alfonso Cuar&oacute;n takes home Best Director, his &quot;Gravity&quot; might win this category as well. Then again, the critical attention for &quot;Her&quot; is something to consider.'), ('2', 'Director', 'cat2.jpg', '', 'Ang Lee', 'Critics hailed Alfonso Cuar&oacute;n&rsquo;s &quot;Gravity&quot; as a game-changing moment for filmmaking for its groundbreaking lighting and camera movement. But if storytelling takes precedence for academy voters, Alexander Payne, Martin Scorsese and Steve McQueen are all possible winners. '), ('3', 'Actor', 'cat3.jpg', '', 'Daniel Day-Lewis', 'Chiwetel Ejiofor gave one of the most gut-wrenching performances of the year in &quot;12 Years a Slave,&quot; but will it be enough to hold off Matthew McConaughey, a surprise winner in this category at the Golden Globes?'), ('4', 'Actress', 'cat4.jpg', '', 'Jennifer Lawrence', 'Cate Blanchett&rsquo;s multi-layered performance in Woody Allen&rsquo;s &quot;Blue Jasmine&quot; will be tough to beat, though Judi Dench, Sandra Bullock or Amy Adams may walk away a winner here.'), ('5', 'Supporting Actor', 'cat5.jpg', '', 'Christoph Waltz', 'Love him or hate him, Jared Leto was essential to the success of &quot;Dallas Buyers Club,&quot; and his Golden Globe win was more than justified. Michael Fassbender and Bradley Cooper are also solid bets.'), ('6', 'Supporting Actress', 'cat6.jpg', '', 'Anne Hathaway', 'New &quot;it&quot; girl Jennifer Lawrence takes on former &quot;it&quot; girl Julia Roberts in this category. Not to be overlooked is Lupita Nyong&rsquo;o for her heart-rending performance of physical, emotional and sexual abuse in &quot;12 Years a Slave.&quot;'), ('7', 'Animated Feature', 'cat7.jpg', '', '&quot;Brave&quot;', '&quot;Frozen&quot; seems like a lock, though &quot;Despicable Me 2&quot; or &quot;The Croods&quot; could come away with an upset. '), ('8', 'Cinematography', 'cat8.jpg', '', '&quot;Life of Pi&quot;', 'This category seems like a race between &quot;Gravity&quot; and &quot;Inside Llewyn Davis.&quot; Or, will the black and white &quot;Nebraska&quot; win for its stark, moody images?'), ('9', 'Documentary Feature', 'cat9.jpg', '', '&quot;Searching for Sugar Man&quot;', '&quot;The Act of Killing&quot; and &quot;20 Feet from Stardom&quot; are strong contenders here, though the controversial &quot;Dirty Wars&quot; may very well win out.'), ('10', 'Original Song', 'cat10.jpg', '', '&quot;Skyfall&quot; from &quot;Skyfall&quot;', 'U2 paid tribute to the late Nelson Mandela after winning a Golden Globe for &quot;Ordinary Love.&quot; The anthem from &quot;Mandela: Long Walk To Freedom&quot; will be tough to beat. If anyone can, it&rsquo;s Pharrell Williams with his song &quot;Happy&quot; from &quot;Despicable Me 2.&quot;'), ('11', 'Original Screenplay', 'cat11.jpg', '', 'Quentin Tarantino, &quot;Django Unchained&quot;', 'Spike Jonze&rsquo;s wildly inventive &quot;Her&quot; is a favorite here, but Woody Allen&rsquo;s &quot;Blue Jasmine&quot; or David O. Russell&rsquo;s &quot;American Hustle&quot; will provide fierce competition.'), ('12', 'Costume Design', 'cat12.jpg', '', 'Jacqueline Durran, &quot;Anna Karenina&quot;', 'Period pieces usually reign supreme here, and 2013 was full of them. &quot;The Great Gatsby,&quot; &quot;12 Years a Slave&quot; and &quot;American Hustle&quot; all stand a fighting chance to win this one.');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
