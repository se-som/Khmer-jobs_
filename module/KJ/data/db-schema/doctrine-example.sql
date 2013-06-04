DROP DATABASE `zf2-doctrine-example`;
CREATE DATABASE `zf2-doctrine-example`
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
USE `zf2-doctrine-example`;

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `code` varchar(64) UNIQUE NOT NULL,
  `price` REAL(11,6) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `category_item` (
  `category` int(11) unsigned,
  `item` int(11) unsigned,

  FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`item`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,

  PRIMARY KEY (`category`, `item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `brand_name` varchar(64) NOT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `shop` int(11) unsigned,
  `item` int(11) unsigned,
  `client` int(11) unsigned,
  `quantity` int(11) unsigned,
  `datetime` int(11) unsigned,

  FOREIGN KEY (`shop`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`item`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) unsigned AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `shop` int(11) unsigned,

  FOREIGN KEY (`shop`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
