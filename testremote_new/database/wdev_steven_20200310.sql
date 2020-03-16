/*
Navicat MySQL Data Transfer
Source Host           : 185.115.218.166:3306
Source Database       : wdev_steven

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cit_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `cit_name` varchar(255) DEFAULT NULL,
  `cit_img_id` mediumint(9) DEFAULT NULL,
  `cit_inhabitants` int(12) DEFAULT NULL,
  `cit_coordinate_x` double(16,4) DEFAULT NULL,
  `cit_coordinate_y` double(16,4) DEFAULT NULL,
  PRIMARY KEY (`cit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'London', '1', '8900000', '51.5074', '0.1278');
INSERT INTO `city` VALUES ('2', 'Paris', '2', '2148000', '48.8566', '2.3522');
INSERT INTO `city` VALUES ('3', 'Berlin', '3', '3748000', '52.5200', '13.4050');

-- ----------------------------
-- Table structure for `flower`
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `flo_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `flo_name` varchar(255) DEFAULT NULL,
  `flo_img_id` mediumint(9) DEFAULT NULL,
  `flo_color` varchar(255) DEFAULT NULL,
  `flo_months` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of flower
-- ----------------------------
INSERT INTO `flower` VALUES ('1', 'Tulp', '4', 'Oranje', 'februari-april');
INSERT INTO `flower` VALUES ('2', 'Roos', '5', 'Rood', 'april-september');
INSERT INTO `flower` VALUES ('3', 'Narcis', '6', 'Geel', 'maart-mei');

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `img_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `img_filename` varchar(512) DEFAULT NULL,
  `img_title` varchar(512) DEFAULT NULL,
  `img_width` mediumint(9) DEFAULT NULL,
  `img_height` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', 'london_2423609b', 'Big Ben', '230', '44000');
INSERT INTO `images` VALUES ('2', 'paris', 'Eiffeltoren', '3000', '4000');
INSERT INTO `images` VALUES ('3', 'berlin', 'De Muur', '5600', '1400');
INSERT INTO `images` VALUES ('4', 'tulips', 'Nederland Tulpenland', '1500', '300');
INSERT INTO `images` VALUES ('5', 'rose', 'Een rode roos', '233', '666');
INSERT INTO `images` VALUES ('6', 'narcis', 'Paasbloemen', '444', '555');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `itm_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `itm_tekst` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`itm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'brood');
INSERT INTO `items` VALUES ('2', 'koekjes');
INSERT INTO `items` VALUES ('3', 'boter');
INSERT INTO `items` VALUES ('4', 'appelsienen');
INSERT INTO `items` VALUES ('14', 'gouda kaas');
INSERT INTO `items` VALUES ('15', 'kiwi&#039;s');
INSERT INTO `items` VALUES ('16', 'eieren');
INSERT INTO `items` VALUES ('17', 'spiegeleieren');

-- ----------------------------
-- Table structure for `log_user`
-- ----------------------------
DROP TABLE IF EXISTS `log_user`;
CREATE TABLE `log_user` (
  `log_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `log_usr_id` mediumint(9) DEFAULT NULL,
  `log_session_id` varchar(512) DEFAULT NULL,
  `log_in` datetime DEFAULT NULL,
  `log_out` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log_user
-- ----------------------------
INSERT INTO `log_user` VALUES ('1', '46', 'q9jeecaq09p2vj9o366nt53pgb', '2020-03-10 23:22:06', '2020-03-10 23:22:15');
INSERT INTO `log_user` VALUES ('2', '46', '00rd6dpfiearcqo28u8v3p0hce', '2020-03-10 23:22:17', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `men_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `men_caption` varchar(127) DEFAULT NULL,
  `men_destination` varchar(512) DEFAULT NULL,
  `men_order` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`men_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Steden', 'steden.php', '1');
INSERT INTO `menu` VALUES ('2', 'Over ons', 'over_ons.php', '3');
INSERT INTO `menu` VALUES ('3', 'Vacatures', 'vacatures.php', '4');
INSERT INTO `menu` VALUES ('4', 'Contact', 'contact.php', '5');
INSERT INTO `menu` VALUES ('5', 'Afmelden', 'lib/logout.php', '21');
INSERT INTO `menu` VALUES ('6', 'Weekoverzicht', 'week.php', '7');
INSERT INTO `menu` VALUES ('7', 'File Upload', 'file_upload.php', '8');
INSERT INTO `menu` VALUES ('8', 'Mijn historiek', 'historiek.php', '9');
INSERT INTO `menu` VALUES ('9', 'Download taken', 'download_taken.php', '10');
INSERT INTO `menu` VALUES ('10', 'Mijn profiel', 'profiel.php', '11');
INSERT INTO `menu` VALUES ('11', 'Bloemen', 'flowers.php', '2');

-- ----------------------------
-- Table structure for `persoon`
-- ----------------------------
DROP TABLE IF EXISTS `persoon`;
CREATE TABLE `persoon` (
  `per_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `per_voornaam` varchar(512) DEFAULT NULL,
  `per_naam` varchar(512) DEFAULT NULL,
  `per_email` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persoon
-- ----------------------------
INSERT INTO `persoon` VALUES ('2', 'steven', 'de ryck', 'steven@inform.be');
INSERT INTO `persoon` VALUES ('6', 'Jan', 'Jambon', 'jambon@vlregering.be');
INSERT INTO `persoon` VALUES ('7', 'Steven', 'D&#039;Hondt', 'steven@syntra.be');

-- ----------------------------
-- Table structure for `taak`
-- ----------------------------
DROP TABLE IF EXISTS `taak`;
CREATE TABLE `taak` (
  `taa_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `taa_datum` date DEFAULT NULL,
  `taa_omschr` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`taa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of taak
-- ----------------------------
INSERT INTO `taak` VALUES ('1', '2020-01-08', 'Dag 9 - PHP1');
INSERT INTO `taak` VALUES ('2', '2020-01-09', 'Dag 10 - PHP1');
INSERT INTO `taak` VALUES ('3', '2020-01-10', 'Barbecue');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usr_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `usr_voornaam` varchar(512) DEFAULT NULL,
  `usr_naam` varchar(512) DEFAULT NULL,
  `usr_login` varchar(512) DEFAULT NULL,
  `usr_paswd` varchar(512) DEFAULT NULL,
  `usr_straat` varchar(512) DEFAULT NULL,
  `usr_huisnr` varchar(30) DEFAULT NULL,
  `usr_busnr` varchar(30) DEFAULT NULL,
  `usr_postcode` varchar(10) DEFAULT NULL,
  `usr_gemeente` varchar(512) DEFAULT NULL,
  `usr_telefoon` varchar(30) DEFAULT NULL,
  `usr_pasfoto` varchar(512) DEFAULT NULL,
  `usr_vz_eid` varchar(512) DEFAULT NULL,
  `usr_az_eid` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('24', 'Steven', 'De Ryck', 'steven@syntra.be', '$2y$10$7N0RWTAK2HrM4D1zK8sFJeVwmm0lEKZd.NkwNgApUHjwBjcjvUuLG', 'Oude baan', '2', '', '2800', 'Mechelen', '03 255 55 55', null, null, null);
INSERT INTO `users` VALUES ('46', 'Geert', 'Verhulst', 'geert@syntra.be', '$2y$10$cVcOWnZMycVgiuH.u9gTRObeoWH.zaO/bn6sADkwoodT1ZdaMwRRq', '', '', '', '', '', '', null, null, null);
