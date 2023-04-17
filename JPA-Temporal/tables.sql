DROP TABLE IF EXISTS `jpa_JBD`.`Contact_Address`;
 CREATE TABLE `Contact_Address` (
  `STREET_ADDRESS` varchar(45) NOT NULL,
  `STATE` varchar(45) NOT NULL,
  `CITY` varchar(45) NOT NULL,
  `ZIP_CODE` varchar(45) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ADDR_TYPE` varchar(45) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ZIP_CODE`,`CITY`,`STATE`,`STREET_ADDRESS`,`ADDR_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jpa_JBD`.`Contacts`;
CREATE TABLE `Contacts` (
  `ID` int(11) NOT NULL,
  `CONTACT_NO` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`CONTACT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jpa_JBD`.`USER`;
CREATE TABLE `USER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `USER_TYPE` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_NAME_UNIQUE` (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;