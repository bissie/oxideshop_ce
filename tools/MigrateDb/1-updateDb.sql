#
# Add MAPID fields
#
ALTER TABLE `oxdiscount` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxcategories` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxattribute` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxlinks` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxvoucherseries` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxmanufacturers` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxnews` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxselectlist` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxwrapping` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxdeliveryset` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxdelivery` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxvendor` ADD `OXMAPID` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxobject2category` ADD `OXMAPID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);
ALTER TABLE `oxarticles` ADD `OXMAPID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Integer Mapping identifier' AFTER `OXID`, ADD INDEX (OXMAPID);

#
# Add mapping tables (no index fields)
#

DROP TABLE IF EXISTS `oxarticles2shop`;
CREATE TABLE IF NOT EXISTS `oxarticles2shop` (
  `OXSHOPID`      INT(11)    NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` BIGINT(20) NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxcategories2shop`;
CREATE TABLE IF NOT EXISTS `oxcategories2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxobject2category2shop`;
CREATE TABLE IF NOT EXISTS `oxobject2category2shop` (
  `OXSHOPID`      INT(11)    NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` BIGINT(20) NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxmanufacturers2shop`;
CREATE TABLE IF NOT EXISTS `oxmanufacturers2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxvendor2shop`;
CREATE TABLE IF NOT EXISTS `oxvendor2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxdiscount2shop`;
CREATE TABLE IF NOT EXISTS `oxdiscount2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxattribute2shop`;
CREATE TABLE IF NOT EXISTS `oxattribute2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxlinks2shop`;
CREATE TABLE IF NOT EXISTS `oxlinks2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxvoucherseries2shop`;
CREATE TABLE IF NOT EXISTS `oxvoucherseries2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxnews2shop`;
CREATE TABLE IF NOT EXISTS `oxnews2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxselectlist2shop`;
CREATE TABLE IF NOT EXISTS `oxselectlist2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxwrapping2shop`;
CREATE TABLE IF NOT EXISTS `oxwrapping2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxdeliveryset2shop`;
CREATE TABLE IF NOT EXISTS `oxdeliveryset2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';

DROP TABLE IF EXISTS `oxdelivery2shop`;
CREATE TABLE IF NOT EXISTS `oxdelivery2shop` (
  `OXSHOPID`      INT(11)   NOT NULL COMMENT 'Mapped shop id',
  `OXMAPOBJECTID` INT(11)   NOT NULL COMMENT 'Mapped object id',
  `OXTIMESTAMP`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE latin1_general_ci COMMENT='Mapping table for element subshop assignments';
