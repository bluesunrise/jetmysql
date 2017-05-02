create database jet;
use jet;
-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: localhost    Database: jet
-- ------------------------------------------------------
-- Server version	5.6.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ADMIN_ACTIVITY`
--

DROP TABLE IF EXISTS `ADMIN_ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_ACTIVITY` (
  `ACTIVITY` varchar(40) DEFAULT NULL,
  `CATEGORY` varchar(40) DEFAULT NULL,
  `ADMIN` varchar(80) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  `IPADDRESS` varchar(80) DEFAULT NULL,
  `ATTR_NAME` varchar(200) DEFAULT NULL,
  `ATTR_VALUE_BEFORE` varchar(1000) DEFAULT NULL,
  `ATTR_VALUE_AFTER` varchar(1000) DEFAULT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_ACTIVITY`
--

LOCK TABLES `ADMIN_ACTIVITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_ACTIVITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAPABILITY`
--

DROP TABLE IF EXISTS `CAPABILITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAPABILITY` (
  `CAPABILITY_ID` int(11) NOT NULL,
  `CAPABILITY` varchar(80) NOT NULL,
  PRIMARY KEY (`CAPABILITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAPABILITY`
--

LOCK TABLES `CAPABILITY` WRITE;
/*!40000 ALTER TABLE `CAPABILITY` DISABLE KEYS */;
INSERT INTO `CAPABILITY` VALUES (1,'HTML_3_2'),(2,'HTML_4_0'),(3,'HTML_ACTIVEX'),(4,'HTML_CSS1'),(5,'HTML_CSS2'),(6,'HTML_CSSP'),(7,'HTML_DOM'),(8,'HTML_DOM_1'),(9,'HTML_DOM_2'),(10,'HTML_DOM_IE'),(11,'HTML_DOM_NS4'),(12,'HTML_FORM'),(13,'HTML_FRAME'),(14,'HTML_IFRAME'),(15,'HTML_IMAGE'),(16,'HTML_JAVA'),(17,'HTML_JAVA1_0'),(18,'HTML_JAVA1_1'),(19,'HTML_JAVA1_2'),(20,'HTML_JAVASCRIPT'),(21,'HTML_JAVASCRIPT_1_0'),(22,'HTML_JAVASCRIPT_1_1'),(23,'HTML_JAVASCRIPT_1_2'),(24,'HTML_JAVA_JRE'),(25,'HTML_JSCRIPT'),(26,'HTML_JSCRIPT1_0'),(27,'HTML_JSCRIPT1_1'),(28,'HTML_JSCRIPT1_2'),(29,'HTML_LAYER'),(30,'HTML_NESTED_TABLE'),(31,'HTML_PLUGIN'),(32,'HTML_TABLE'),(33,'HTML_XML'),(34,'HTML_XSL'),(35,'HTTP_1_1'),(36,'HTTP_COOKIE'),(37,'WML_1_0'),(38,'WML_1_1'),(39,'WML_TABLE'),(40,'XML_XINCLUDE'),(41,'XML_XPATH'),(42,'XML_XSLT');
/*!40000 ALTER TABLE `CAPABILITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT` (
  `CLIENT_ID` int(11) NOT NULL,
  `EVAL_ORDER` int(11) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `USER_AGENT_PATTERN` varchar(128) DEFAULT NULL,
  `MANUFACTURER` varchar(80) DEFAULT NULL,
  `MODEL` varchar(80) DEFAULT NULL,
  `VERSION` varchar(40) DEFAULT NULL,
  `PREFERRED_MIMETYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES (1,1,'ie5mac','.*MSIE 5.*Mac.*','Microsoft','None','5.*',2),(2,2,'safari','.*Mac.*Safari.*','Apple','None','5.*',2),(3,3,'ie6','.*MSIE 6.*','Microsoft','None','6.0',2),(4,4,'ie5','.*MSIE 5.*','Microsoft','None','5.5',2),(5,5,'ns4','.*Mozilla/4.*','Netscape','None','4.75',2),(6,6,'mozilla','.*Mozilla/5.*','Mozilla','Mozilla','1.x',2),(7,7,'lynx','Lynx.*','GNU','None','',2),(8,8,'nokia_generic','Nokia.*','Nokia','Generic','',3),(9,9,'xhtml-basic','DoCoMo/2.0.*|KDDI-.*UP.Browser.*|J-PHONE/5.0.*|Vodafone/1.0/.*','WAP','Generic','',1),(10,10,'up','UP.*|.*UP.Browser.*','United Planet','Generic','',3),(11,11,'sonyericsson','Ercis.*|SonyE.*','SonyEricsson','Generic','',3),(12,12,'wapalizer','Wapalizer.*','Wapalizer','Generic','',3),(13,13,'klondike','Klondike.*','Klondike','Generic','',3),(14,14,'wml_generic','.*WML.*|.*WAP.*|.*Wap.*|.*wml.*','Generic','Generic','',3),(15,15,'vxml_generic','.*VoiceXML.*','Generic','Generic','',4),(16,16,'nuance','Nuance.*','Nuance','Generic','',4),(17,17,'agentxml','agentxml/1.0.*','Unknown','Generic','',6),(18,18,'opera7','.*Opera/7.*','Opera','Opera7','7.x',2),(19,4,'ie4ppc','.*MSIE 4.*Windows CE.*','Microsoft','None','4.01',2);
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_TO_CAPABILITY`
--

DROP TABLE IF EXISTS `CLIENT_TO_CAPABILITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_TO_CAPABILITY` (
  `CLIENT_ID` int(11) NOT NULL,
  `CAPABILITY_ID` int(11) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`CAPABILITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_TO_CAPABILITY`
--

LOCK TABLES `CLIENT_TO_CAPABILITY` WRITE;
/*!40000 ALTER TABLE `CLIENT_TO_CAPABILITY` DISABLE KEYS */;
INSERT INTO `CLIENT_TO_CAPABILITY` VALUES (1,1),(1,4),(1,11),(1,12),(1,13),(1,15),(1,16),(1,20),(1,31),(1,32),(1,36),(2,1),(2,3),(2,4),(2,5),(2,6),(2,10),(2,12),(2,13),(2,14),(2,15),(2,16),(2,20),(2,30),(2,32),(2,36),(3,1),(3,3),(3,4),(3,5),(3,6),(3,10),(3,12),(3,13),(3,14),(3,15),(3,16),(3,20),(3,30),(3,32),(3,36),(4,1),(4,3),(4,4),(4,5),(4,6),(4,10),(4,12),(4,13),(4,14),(4,15),(4,16),(4,20),(4,30),(4,32),(4,36),(5,1),(5,4),(5,11),(5,12),(5,13),(5,15),(5,16),(5,20),(5,29),(5,31),(5,32),(5,36),(6,1),(6,2),(6,4),(6,5),(6,6),(6,8),(6,12),(6,13),(6,14),(6,15),(6,16),(6,20),(6,24),(6,30),(6,31),(6,32),(6,36),(7,12),(7,13),(7,30),(7,32),(7,36),(18,1),(18,2),(18,4),(18,5),(18,6),(18,8),(18,12),(18,13),(18,14),(18,15),(18,16),(18,20),(18,24),(18,30),(18,31),(18,32),(18,36),(19,1),(19,4),(19,12),(19,15),(19,32),(19,36);
/*!40000 ALTER TABLE `CLIENT_TO_CAPABILITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_TO_MIMETYPE`
--

DROP TABLE IF EXISTS `CLIENT_TO_MIMETYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_TO_MIMETYPE` (
  `CLIENT_ID` int(11) NOT NULL,
  `MIMETYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`MIMETYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_TO_MIMETYPE`
--

LOCK TABLES `CLIENT_TO_MIMETYPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_TO_MIMETYPE` DISABLE KEYS */;
INSERT INTO `CLIENT_TO_MIMETYPE` VALUES (1,2),(2,2),(2,5),(2,6),(3,2),(3,5),(3,6),(4,2),(4,6),(5,2),(6,2),(6,5),(6,6),(7,2),(8,3),(9,1),(10,3),(11,3),(12,3),(13,3),(14,3),(15,4),(16,4),(17,6),(18,2),(18,5),(18,6),(19,2);
/*!40000 ALTER TABLE `CLIENT_TO_MIMETYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLUBS`
--

DROP TABLE IF EXISTS `CLUBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLUBS` (
  `NAME` varchar(80) NOT NULL,
  `COUNTRY` varchar(40) NOT NULL,
  `CITY` varchar(40) NOT NULL,
  `STADIUM` varchar(80) NOT NULL,
  `CAPACITY` int(11) DEFAULT NULL,
  `FOUNDED` int(11) DEFAULT NULL,
  `PITCH` varchar(40) DEFAULT NULL,
  `NICKNAME` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLUBS`
--

LOCK TABLES `CLUBS` WRITE;
/*!40000 ALTER TABLE `CLUBS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLUBS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOM_PORTLET_MODE`
--

DROP TABLE IF EXISTS `CUSTOM_PORTLET_MODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOM_PORTLET_MODE` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `CUSTOM_NAME` varchar(150) NOT NULL,
  `MAPPED_NAME` varchar(150) DEFAULT NULL,
  `PORTAL_MANAGED` smallint(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOM_PORTLET_MODE`
--

LOCK TABLES `CUSTOM_PORTLET_MODE` WRITE;
/*!40000 ALTER TABLE `CUSTOM_PORTLET_MODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CUSTOM_PORTLET_MODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOM_WINDOW_STATE`
--

DROP TABLE IF EXISTS `CUSTOM_WINDOW_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOM_WINDOW_STATE` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `CUSTOM_NAME` varchar(150) NOT NULL,
  `MAPPED_NAME` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOM_WINDOW_STATE`
--

LOCK TABLES `CUSTOM_WINDOW_STATE` WRITE;
/*!40000 ALTER TABLE `CUSTOM_WINDOW_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CUSTOM_WINDOW_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ALIAS`
--

DROP TABLE IF EXISTS `EVENT_ALIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ALIAS` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ALIAS`
--

LOCK TABLES `EVENT_ALIAS` WRITE;
/*!40000 ALTER TABLE `EVENT_ALIAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ALIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_DEFINITION`
--

DROP TABLE IF EXISTS `EVENT_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_DEFINITION` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  `VALUE_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_DEFINITION`
--

LOCK TABLES `EVENT_DEFINITION` WRITE;
/*!40000 ALTER TABLE `EVENT_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILTERED_PORTLET`
--

DROP TABLE IF EXISTS `FILTERED_PORTLET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILTERED_PORTLET` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILTERED_PORTLET`
--

LOCK TABLES `FILTERED_PORTLET` WRITE;
/*!40000 ALTER TABLE `FILTERED_PORTLET` DISABLE KEYS */;
/*!40000 ALTER TABLE `FILTERED_PORTLET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILTER_LIFECYCLE`
--

DROP TABLE IF EXISTS `FILTER_LIFECYCLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILTER_LIFECYCLE` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILTER_LIFECYCLE`
--

LOCK TABLES `FILTER_LIFECYCLE` WRITE;
/*!40000 ALTER TABLE `FILTER_LIFECYCLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FILTER_LIFECYCLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILTER_MAPPING`
--

DROP TABLE IF EXISTS `FILTER_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILTER_MAPPING` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `FILTER_NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILTER_MAPPING`
--

LOCK TABLES `FILTER_MAPPING` WRITE;
/*!40000 ALTER TABLE `FILTER_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FILTER_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER`
--

DROP TABLE IF EXISTS `FOLDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER` (
  `FOLDER_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `PATH` varchar(240) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `IS_HIDDEN` smallint(6) NOT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `DEFAULT_LAYOUT_DECORATOR` varchar(80) DEFAULT NULL,
  `DEFAULT_PORTLET_DECORATOR` varchar(80) DEFAULT NULL,
  `DEFAULT_PAGE_NAME` varchar(80) DEFAULT NULL,
  `SUBSITE` varchar(40) DEFAULT NULL,
  `USER_PRINCIPAL` varchar(40) DEFAULT NULL,
  `ROLE_PRINCIPAL` varchar(40) DEFAULT NULL,
  `GROUP_PRINCIPAL` varchar(40) DEFAULT NULL,
  `MEDIATYPE` varchar(15) DEFAULT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `EXT_ATTR_NAME` varchar(15) DEFAULT NULL,
  `EXT_ATTR_VALUE` varchar(40) DEFAULT NULL,
  `OWNER_PRINCIPAL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`FOLDER_ID`),
  UNIQUE KEY `UN_FOLDER_1` (`PATH`),
  KEY `IX_FOLDER_1` (`PARENT_ID`),
  CONSTRAINT `FK_FOLDER_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER`
--

LOCK TABLES `FOLDER` WRITE;
/*!40000 ALTER TABLE `FOLDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_CONSTRAINT`
--

DROP TABLE IF EXISTS `FOLDER_CONSTRAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_CONSTRAINT` (
  `CONSTRAINT_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `USER_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `ROLE_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `GROUP_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `PERMISSIONS_ACL` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CONSTRAINT_ID`),
  KEY `IX_FOLDER_CONSTRAINT_1` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_CONSTRAINT_1` FOREIGN KEY (`FOLDER_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_CONSTRAINT`
--

LOCK TABLES `FOLDER_CONSTRAINT` WRITE;
/*!40000 ALTER TABLE `FOLDER_CONSTRAINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_CONSTRAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_CONSTRAINTS_REF`
--

DROP TABLE IF EXISTS `FOLDER_CONSTRAINTS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_CONSTRAINTS_REF` (
  `CONSTRAINTS_REF_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_REF_ID`),
  UNIQUE KEY `UN_FOLDER_CONSTRAINTS_REF_1` (`FOLDER_ID`,`NAME`),
  KEY `IX_FOLDER_CONSTRAINTS_REF_1` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_CONSTRAINTS_REF_1` FOREIGN KEY (`FOLDER_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_CONSTRAINTS_REF`
--

LOCK TABLES `FOLDER_CONSTRAINTS_REF` WRITE;
/*!40000 ALTER TABLE `FOLDER_CONSTRAINTS_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_CONSTRAINTS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_MENU`
--

DROP TABLE IF EXISTS `FOLDER_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_MENU` (
  `MENU_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `FOLDER_ID` int(11) DEFAULT NULL,
  `ELEMENT_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `TEXT` varchar(100) DEFAULT NULL,
  `OPTIONS` varchar(255) DEFAULT NULL,
  `DEPTH` int(11) DEFAULT NULL,
  `IS_PATHS` smallint(6) DEFAULT NULL,
  `IS_REGEXP` smallint(6) DEFAULT NULL,
  `PROFILE` varchar(80) DEFAULT NULL,
  `OPTIONS_ORDER` varchar(255) DEFAULT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `IS_NEST` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`),
  KEY `IX_FOLDER_MENU_1` (`PARENT_ID`),
  KEY `IX_FOLDER_MENU_2` (`FOLDER_ID`),
  KEY `UN_FOLDER_MENU_1` (`FOLDER_ID`,`NAME`),
  CONSTRAINT `FK_FOLDER_MENU_2` FOREIGN KEY (`FOLDER_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_FOLDER_MENU_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FOLDER_MENU` (`MENU_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_MENU`
--

LOCK TABLES `FOLDER_MENU` WRITE;
/*!40000 ALTER TABLE `FOLDER_MENU` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_MENU_METADATA`
--

DROP TABLE IF EXISTS `FOLDER_MENU_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_MENU_METADATA` (
  `METADATA_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`METADATA_ID`),
  UNIQUE KEY `UN_FOLDER_MENU_METADATA_1` (`MENU_ID`,`NAME`,`LOCALE`,`VALUE`),
  KEY `IX_FOLDER_MENU_METADATA_1` (`MENU_ID`),
  CONSTRAINT `FK_FOLDER_MENU_METADATA_1` FOREIGN KEY (`MENU_ID`) REFERENCES `FOLDER_MENU` (`MENU_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_MENU_METADATA`
--

LOCK TABLES `FOLDER_MENU_METADATA` WRITE;
/*!40000 ALTER TABLE `FOLDER_MENU_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_MENU_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_METADATA`
--

DROP TABLE IF EXISTS `FOLDER_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_METADATA` (
  `METADATA_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`METADATA_ID`),
  UNIQUE KEY `UN_FOLDER_METADATA_1` (`FOLDER_ID`,`NAME`,`LOCALE`,`VALUE`),
  KEY `IX_FOLDER_METADATA_1` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_METADATA_1` FOREIGN KEY (`FOLDER_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_METADATA`
--

LOCK TABLES `FOLDER_METADATA` WRITE;
/*!40000 ALTER TABLE `FOLDER_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOLDER_ORDER`
--

DROP TABLE IF EXISTS `FOLDER_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOLDER_ORDER` (
  `ORDER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `SORT_ORDER` int(11) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  PRIMARY KEY (`ORDER_ID`),
  UNIQUE KEY `UN_FOLDER_ORDER_1` (`FOLDER_ID`,`NAME`),
  KEY `IX_FOLDER_ORDER_1` (`FOLDER_ID`),
  CONSTRAINT `FK_FOLDER_ORDER_1` FOREIGN KEY (`FOLDER_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOLDER_ORDER`
--

LOCK TABLES `FOLDER_ORDER` WRITE;
/*!40000 ALTER TABLE `FOLDER_ORDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOLDER_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT`
--

DROP TABLE IF EXISTS `FRAGMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT` (
  `FRAGMENT_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `PAGE_ID` int(11) DEFAULT NULL,
  `FRAGMENT_STRING_ID` varchar(80) DEFAULT NULL,
  `FRAGMENT_STRING_REFID` varchar(80) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `TYPE` varchar(40) DEFAULT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `DECORATOR` varchar(80) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `PMODE` varchar(10) DEFAULT NULL,
  `LAYOUT_ROW` int(11) DEFAULT NULL,
  `LAYOUT_COLUMN` int(11) DEFAULT NULL,
  `LAYOUT_SIZES` varchar(20) DEFAULT NULL,
  `LAYOUT_X` float DEFAULT NULL,
  `LAYOUT_Y` float DEFAULT NULL,
  `LAYOUT_Z` float DEFAULT NULL,
  `LAYOUT_WIDTH` float DEFAULT NULL,
  `LAYOUT_HEIGHT` float DEFAULT NULL,
  `OWNER_PRINCIPAL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`FRAGMENT_ID`),
  KEY `IX_FRAGMENT_1` (`PARENT_ID`),
  KEY `UN_FRAGMENT_1` (`PAGE_ID`),
  KEY `IX_FRAGMENT_2` (`FRAGMENT_STRING_REFID`),
  KEY `IX_FRAGMENT_3` (`FRAGMENT_STRING_ID`),
  CONSTRAINT `FK_FRAGMENT_2` FOREIGN KEY (`PAGE_ID`) REFERENCES `PAGE` (`PAGE_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_FRAGMENT_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FRAGMENT` (`FRAGMENT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT`
--

LOCK TABLES `FRAGMENT` WRITE;
/*!40000 ALTER TABLE `FRAGMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT_CONSTRAINT`
--

DROP TABLE IF EXISTS `FRAGMENT_CONSTRAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT_CONSTRAINT` (
  `CONSTRAINT_ID` int(11) NOT NULL,
  `FRAGMENT_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `USER_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `ROLE_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `GROUP_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `PERMISSIONS_ACL` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CONSTRAINT_ID`),
  KEY `IX_FRAGMENT_CONSTRAINT_1` (`FRAGMENT_ID`),
  CONSTRAINT `FK_FRAGMENT_CONSTRAINT_1` FOREIGN KEY (`FRAGMENT_ID`) REFERENCES `FRAGMENT` (`FRAGMENT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT_CONSTRAINT`
--

LOCK TABLES `FRAGMENT_CONSTRAINT` WRITE;
/*!40000 ALTER TABLE `FRAGMENT_CONSTRAINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT_CONSTRAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT_CONSTRAINTS_REF`
--

DROP TABLE IF EXISTS `FRAGMENT_CONSTRAINTS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT_CONSTRAINTS_REF` (
  `CONSTRAINTS_REF_ID` int(11) NOT NULL,
  `FRAGMENT_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_REF_ID`),
  UNIQUE KEY `UN_FRAGMENT_CONSTRAINTS_REF_1` (`FRAGMENT_ID`,`NAME`),
  KEY `IX_FRAGMENT_CONSTRAINTS_REF_1` (`FRAGMENT_ID`),
  CONSTRAINT `FK_FRAGMENT_CONSTRAINTS_REF_1` FOREIGN KEY (`FRAGMENT_ID`) REFERENCES `FRAGMENT` (`FRAGMENT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT_CONSTRAINTS_REF`
--

LOCK TABLES `FRAGMENT_CONSTRAINTS_REF` WRITE;
/*!40000 ALTER TABLE `FRAGMENT_CONSTRAINTS_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT_CONSTRAINTS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT_PREF`
--

DROP TABLE IF EXISTS `FRAGMENT_PREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT_PREF` (
  `PREF_ID` int(11) NOT NULL,
  `FRAGMENT_ID` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  `IS_READ_ONLY` smallint(6) NOT NULL,
  PRIMARY KEY (`PREF_ID`),
  UNIQUE KEY `UN_FRAGMENT_PREF_1` (`FRAGMENT_ID`,`NAME`),
  KEY `IX_FRAGMENT_PREF_1` (`FRAGMENT_ID`),
  CONSTRAINT `FK_FRAGMENT_PREF_1` FOREIGN KEY (`FRAGMENT_ID`) REFERENCES `FRAGMENT` (`FRAGMENT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT_PREF`
--

LOCK TABLES `FRAGMENT_PREF` WRITE;
/*!40000 ALTER TABLE `FRAGMENT_PREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT_PREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT_PREF_VALUE`
--

DROP TABLE IF EXISTS `FRAGMENT_PREF_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT_PREF_VALUE` (
  `PREF_VALUE_ID` int(11) NOT NULL,
  `PREF_ID` int(11) NOT NULL,
  `VALUE_ORDER` int(11) NOT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`PREF_VALUE_ID`),
  KEY `IX_FRAGMENT_PREF_VALUE_1` (`PREF_ID`),
  CONSTRAINT `FK_FRAGMENT_PREF_VALUE_1` FOREIGN KEY (`PREF_ID`) REFERENCES `FRAGMENT_PREF` (`PREF_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT_PREF_VALUE`
--

LOCK TABLES `FRAGMENT_PREF_VALUE` WRITE;
/*!40000 ALTER TABLE `FRAGMENT_PREF_VALUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT_PREF_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRAGMENT_PROP`
--

DROP TABLE IF EXISTS `FRAGMENT_PROP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRAGMENT_PROP` (
  `PROP_ID` int(11) NOT NULL,
  `FRAGMENT_ID` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  `SCOPE` varchar(10) DEFAULT NULL,
  `SCOPE_VALUE` varchar(40) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`PROP_ID`),
  UNIQUE KEY `UN_FRAGMENT_PROP_1` (`FRAGMENT_ID`,`NAME`,`SCOPE`,`SCOPE_VALUE`),
  KEY `IX_FRAGMENT_PROP_1` (`FRAGMENT_ID`),
  CONSTRAINT `FK_FRAGMENT_PROP_1` FOREIGN KEY (`FRAGMENT_ID`) REFERENCES `FRAGMENT` (`FRAGMENT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRAGMENT_PROP`
--

LOCK TABLES `FRAGMENT_PROP` WRITE;
/*!40000 ALTER TABLE `FRAGMENT_PROP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRAGMENT_PROP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JETSPEED_SERVICE`
--

DROP TABLE IF EXISTS `JETSPEED_SERVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JETSPEED_SERVICE` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `NAME` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JETSPEED_SERVICE`
--

LOCK TABLES `JETSPEED_SERVICE` WRITE;
/*!40000 ALTER TABLE `JETSPEED_SERVICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JETSPEED_SERVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LANGUAGE`
--

DROP TABLE IF EXISTS `LANGUAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LANGUAGE` (
  `ID` int(11) NOT NULL,
  `PORTLET_ID` int(11) NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  `SUPPORTED_LOCALE` smallint(6) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(100) DEFAULT NULL,
  `KEYWORDS` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LANGUAGE`
--

LOCK TABLES `LANGUAGE` WRITE;
/*!40000 ALTER TABLE `LANGUAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LANGUAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINK`
--

DROP TABLE IF EXISTS `LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINK` (
  `LINK_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `PATH` varchar(240) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `VERSION` varchar(40) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `IS_HIDDEN` smallint(6) NOT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `TARGET` varchar(80) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `SUBSITE` varchar(40) DEFAULT NULL,
  `USER_PRINCIPAL` varchar(40) DEFAULT NULL,
  `ROLE_PRINCIPAL` varchar(40) DEFAULT NULL,
  `GROUP_PRINCIPAL` varchar(40) DEFAULT NULL,
  `MEDIATYPE` varchar(15) DEFAULT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `EXT_ATTR_NAME` varchar(15) DEFAULT NULL,
  `EXT_ATTR_VALUE` varchar(40) DEFAULT NULL,
  `OWNER_PRINCIPAL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`LINK_ID`),
  UNIQUE KEY `UN_LINK_1` (`PATH`),
  KEY `IX_LINK_1` (`PARENT_ID`),
  CONSTRAINT `FK_LINK_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINK`
--

LOCK TABLES `LINK` WRITE;
/*!40000 ALTER TABLE `LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINK_CONSTRAINT`
--

DROP TABLE IF EXISTS `LINK_CONSTRAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINK_CONSTRAINT` (
  `CONSTRAINT_ID` int(11) NOT NULL,
  `LINK_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `USER_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `ROLE_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `GROUP_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `PERMISSIONS_ACL` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CONSTRAINT_ID`),
  KEY `IX_LINK_CONSTRAINT_1` (`LINK_ID`),
  CONSTRAINT `FK_LINK_CONSTRAINT_1` FOREIGN KEY (`LINK_ID`) REFERENCES `LINK` (`LINK_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINK_CONSTRAINT`
--

LOCK TABLES `LINK_CONSTRAINT` WRITE;
/*!40000 ALTER TABLE `LINK_CONSTRAINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `LINK_CONSTRAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINK_CONSTRAINTS_REF`
--

DROP TABLE IF EXISTS `LINK_CONSTRAINTS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINK_CONSTRAINTS_REF` (
  `CONSTRAINTS_REF_ID` int(11) NOT NULL,
  `LINK_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_REF_ID`),
  UNIQUE KEY `UN_LINK_CONSTRAINTS_REF_1` (`LINK_ID`,`NAME`),
  KEY `IX_LINK_CONSTRAINTS_REF_1` (`LINK_ID`),
  CONSTRAINT `FK_LINK_CONSTRAINTS_REF_1` FOREIGN KEY (`LINK_ID`) REFERENCES `LINK` (`LINK_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINK_CONSTRAINTS_REF`
--

LOCK TABLES `LINK_CONSTRAINTS_REF` WRITE;
/*!40000 ALTER TABLE `LINK_CONSTRAINTS_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `LINK_CONSTRAINTS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINK_METADATA`
--

DROP TABLE IF EXISTS `LINK_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINK_METADATA` (
  `METADATA_ID` int(11) NOT NULL,
  `LINK_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`METADATA_ID`),
  UNIQUE KEY `UN_LINK_METADATA_1` (`LINK_ID`,`NAME`,`LOCALE`,`VALUE`),
  KEY `IX_LINK_METADATA_1` (`LINK_ID`),
  CONSTRAINT `FK_LINK_METADATA_1` FOREIGN KEY (`LINK_ID`) REFERENCES `LINK` (`LINK_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINK_METADATA`
--

LOCK TABLES `LINK_METADATA` WRITE;
/*!40000 ALTER TABLE `LINK_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `LINK_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCALE_ENCODING_MAPPING`
--

DROP TABLE IF EXISTS `LOCALE_ENCODING_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCALE_ENCODING_MAPPING` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  `ENCODING` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCALE_ENCODING_MAPPING`
--

LOCK TABLES `LOCALE_ENCODING_MAPPING` WRITE;
/*!40000 ALTER TABLE `LOCALE_ENCODING_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCALE_ENCODING_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCALIZED_DESCRIPTION`
--

DROP TABLE IF EXISTS `LOCALIZED_DESCRIPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCALIZED_DESCRIPTION` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `OWNER_CLASS_NAME` varchar(255) NOT NULL,
  `DESCRIPTION` mediumtext NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCALIZED_DESCRIPTION`
--

LOCK TABLES `LOCALIZED_DESCRIPTION` WRITE;
/*!40000 ALTER TABLE `LOCALIZED_DESCRIPTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCALIZED_DESCRIPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCALIZED_DISPLAY_NAME`
--

DROP TABLE IF EXISTS `LOCALIZED_DISPLAY_NAME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCALIZED_DISPLAY_NAME` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `OWNER_CLASS_NAME` varchar(255) DEFAULT NULL,
  `DISPLAY_NAME` mediumtext NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCALIZED_DISPLAY_NAME`
--

LOCK TABLES `LOCALIZED_DISPLAY_NAME` WRITE;
/*!40000 ALTER TABLE `LOCALIZED_DISPLAY_NAME` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCALIZED_DISPLAY_NAME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIATYPE_TO_CAPABILITY`
--

DROP TABLE IF EXISTS `MEDIATYPE_TO_CAPABILITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIATYPE_TO_CAPABILITY` (
  `MEDIATYPE_ID` int(11) NOT NULL,
  `CAPABILITY_ID` int(11) NOT NULL,
  PRIMARY KEY (`MEDIATYPE_ID`,`CAPABILITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIATYPE_TO_CAPABILITY`
--

LOCK TABLES `MEDIATYPE_TO_CAPABILITY` WRITE;
/*!40000 ALTER TABLE `MEDIATYPE_TO_CAPABILITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEDIATYPE_TO_CAPABILITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIATYPE_TO_MIMETYPE`
--

DROP TABLE IF EXISTS `MEDIATYPE_TO_MIMETYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIATYPE_TO_MIMETYPE` (
  `MEDIATYPE_ID` int(11) NOT NULL,
  `MIMETYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`MEDIATYPE_ID`,`MIMETYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIATYPE_TO_MIMETYPE`
--

LOCK TABLES `MEDIATYPE_TO_MIMETYPE` WRITE;
/*!40000 ALTER TABLE `MEDIATYPE_TO_MIMETYPE` DISABLE KEYS */;
INSERT INTO `MEDIATYPE_TO_MIMETYPE` VALUES (1,2),(2,4),(3,3),(4,1),(5,6),(6,2);
/*!40000 ALTER TABLE `MEDIATYPE_TO_MIMETYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIA_TYPE`
--

DROP TABLE IF EXISTS `MEDIA_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIA_TYPE` (
  `MEDIATYPE_ID` int(11) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `CHARACTER_SET` varchar(40) DEFAULT NULL,
  `TITLE` varchar(80) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  PRIMARY KEY (`MEDIATYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIA_TYPE`
--

LOCK TABLES `MEDIA_TYPE` WRITE;
/*!40000 ALTER TABLE `MEDIA_TYPE` DISABLE KEYS */;
INSERT INTO `MEDIA_TYPE` VALUES (1,'html','UTF-8','HTML','Rich HTML for HTML 4.0 compliants browsers'),(2,'vxml','UTF-8','VoiceXML','Format suitable for use with an audio VoiceXML server'),(3,'wml','UTF-8','WML','Format for mobile phones and PDAs compatible with WML 1.1'),(4,'xhtml-basic','UTF-8','XHTML','XHTML Basic'),(5,'xml','','XML','XML 1.0'),(6,'html-basic','UTF-8','HTML-BASIC','Simple HTML for Handheld PC browsers such as Pocket IE');
/*!40000 ALTER TABLE `MEDIA_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIMETYPE`
--

DROP TABLE IF EXISTS `MIMETYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIMETYPE` (
  `MIMETYPE_ID` int(11) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  PRIMARY KEY (`MIMETYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIMETYPE`
--

LOCK TABLES `MIMETYPE` WRITE;
/*!40000 ALTER TABLE `MIMETYPE` DISABLE KEYS */;
INSERT INTO `MIMETYPE` VALUES (1,'application/xhtml+xml'),(2,'text/html'),(3,'text/vnd.wap.wml'),(4,'text/vxml'),(5,'text/xhtml'),(6,'text/xml');
/*!40000 ALTER TABLE `MIMETYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NAMED_PARAMETER`
--

DROP TABLE IF EXISTS `NAMED_PARAMETER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NAMED_PARAMETER` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NAMED_PARAMETER`
--

LOCK TABLES `NAMED_PARAMETER` WRITE;
/*!40000 ALTER TABLE `NAMED_PARAMETER` DISABLE KEYS */;
/*!40000 ALTER TABLE `NAMED_PARAMETER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_DLIST`
--

DROP TABLE IF EXISTS `OJB_DLIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_DLIST` (
  `ID` int(11) NOT NULL,
  `SIZE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_DLIST`
--

LOCK TABLES `OJB_DLIST` WRITE;
/*!40000 ALTER TABLE `OJB_DLIST` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_DLIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_DLIST_ENTRIES`
--

DROP TABLE IF EXISTS `OJB_DLIST_ENTRIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_DLIST_ENTRIES` (
  `ID` int(11) NOT NULL,
  `DLIST_ID` int(11) DEFAULT NULL,
  `POSITION_` int(11) DEFAULT NULL,
  `OID_` mediumblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_DLIST_ENTRIES`
--

LOCK TABLES `OJB_DLIST_ENTRIES` WRITE;
/*!40000 ALTER TABLE `OJB_DLIST_ENTRIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_DLIST_ENTRIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_DMAP`
--

DROP TABLE IF EXISTS `OJB_DMAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_DMAP` (
  `ID` int(11) NOT NULL,
  `SIZE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_DMAP`
--

LOCK TABLES `OJB_DMAP` WRITE;
/*!40000 ALTER TABLE `OJB_DMAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_DMAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_DSET`
--

DROP TABLE IF EXISTS `OJB_DSET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_DSET` (
  `ID` int(11) NOT NULL,
  `SIZE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_DSET`
--

LOCK TABLES `OJB_DSET` WRITE;
/*!40000 ALTER TABLE `OJB_DSET` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_DSET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_DSET_ENTRIES`
--

DROP TABLE IF EXISTS `OJB_DSET_ENTRIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_DSET_ENTRIES` (
  `ID` int(11) NOT NULL,
  `DLIST_ID` int(11) DEFAULT NULL,
  `POSITION_` int(11) DEFAULT NULL,
  `OID_` mediumblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_DSET_ENTRIES`
--

LOCK TABLES `OJB_DSET_ENTRIES` WRITE;
/*!40000 ALTER TABLE `OJB_DSET_ENTRIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_DSET_ENTRIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_HL_SEQ`
--

DROP TABLE IF EXISTS `OJB_HL_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_HL_SEQ` (
  `TABLENAME` varchar(175) NOT NULL,
  `FIELDNAME` varchar(70) NOT NULL,
  `MAX_KEY` int(11) DEFAULT NULL,
  `GRAB_SIZE` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`TABLENAME`,`FIELDNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_HL_SEQ`
--

LOCK TABLES `OJB_HL_SEQ` WRITE;
/*!40000 ALTER TABLE `OJB_HL_SEQ` DISABLE KEYS */;
INSERT INTO `OJB_HL_SEQ` VALUES ('SEQ_CAPABILITY','deprecatedColumn',60,20,3),('SEQ_CLIENT','deprecatedColumn',20,20,1),('SEQ_MEDIA_TYPE','deprecatedColumn',20,20,1),('SEQ_MIMETYPE','deprecatedColumn',20,20,1),('SEQ_RULE_CRITERION','deprecatedColumn',40,20,2),('SEQ_SECURITY_ATTRIBUTE','deprecatedColumn',20,20,1),('SEQ_SECURITY_CREDENTIAL','deprecatedColumn',20,20,1),('SEQ_SECURITY_DOMAIN','deprecatedColumn',20,20,1),('SEQ_SECURITY_PERMISSION','deprecatedColumn',20,20,1),('SEQ_SECURITY_PRINCIPAL','deprecatedColumn',20,20,1);
/*!40000 ALTER TABLE `OJB_HL_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_LOCKENTRY`
--

DROP TABLE IF EXISTS `OJB_LOCKENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_LOCKENTRY` (
  `OID_` varchar(250) NOT NULL,
  `TX_ID` varchar(50) NOT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  `ISOLATIONLEVEL` int(11) DEFAULT NULL,
  `LOCKTYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID_`,`TX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_LOCKENTRY`
--

LOCK TABLES `OJB_LOCKENTRY` WRITE;
/*!40000 ALTER TABLE `OJB_LOCKENTRY` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_LOCKENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OJB_NRM`
--

DROP TABLE IF EXISTS `OJB_NRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OJB_NRM` (
  `NAME` varchar(250) NOT NULL,
  `OID_` mediumblob,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OJB_NRM`
--

LOCK TABLES `OJB_NRM` WRITE;
/*!40000 ALTER TABLE `OJB_NRM` DISABLE KEYS */;
/*!40000 ALTER TABLE `OJB_NRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE`
--

DROP TABLE IF EXISTS `PAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE` (
  `PAGE_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `PATH` varchar(240) NOT NULL,
  `CONTENT_TYPE` varchar(40) DEFAULT NULL,
  `IS_INHERITABLE` smallint(6) DEFAULT NULL,
  `NAME` varchar(80) NOT NULL,
  `VERSION` varchar(40) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `IS_HIDDEN` smallint(6) DEFAULT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `DEFAULT_LAYOUT_DECORATOR` varchar(80) DEFAULT NULL,
  `DEFAULT_PORTLET_DECORATOR` varchar(80) DEFAULT NULL,
  `SUBSITE` varchar(40) DEFAULT NULL,
  `USER_PRINCIPAL` varchar(40) DEFAULT NULL,
  `ROLE_PRINCIPAL` varchar(40) DEFAULT NULL,
  `GROUP_PRINCIPAL` varchar(40) DEFAULT NULL,
  `MEDIATYPE` varchar(15) DEFAULT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `EXT_ATTR_NAME` varchar(15) DEFAULT NULL,
  `EXT_ATTR_VALUE` varchar(40) DEFAULT NULL,
  `OWNER_PRINCIPAL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  UNIQUE KEY `UN_PAGE_1` (`PATH`),
  KEY `IX_PAGE_1` (`PARENT_ID`),
  CONSTRAINT `FK_PAGE_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE`
--

LOCK TABLES `PAGE` WRITE;
/*!40000 ALTER TABLE `PAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_CONSTRAINT`
--

DROP TABLE IF EXISTS `PAGE_CONSTRAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_CONSTRAINT` (
  `CONSTRAINT_ID` int(11) NOT NULL,
  `PAGE_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `USER_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `ROLE_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `GROUP_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `PERMISSIONS_ACL` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CONSTRAINT_ID`),
  KEY `IX_PAGE_CONSTRAINT_1` (`PAGE_ID`),
  CONSTRAINT `FK_PAGE_CONSTRAINT_1` FOREIGN KEY (`PAGE_ID`) REFERENCES `PAGE` (`PAGE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_CONSTRAINT`
--

LOCK TABLES `PAGE_CONSTRAINT` WRITE;
/*!40000 ALTER TABLE `PAGE_CONSTRAINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_CONSTRAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_CONSTRAINTS_REF`
--

DROP TABLE IF EXISTS `PAGE_CONSTRAINTS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_CONSTRAINTS_REF` (
  `CONSTRAINTS_REF_ID` int(11) NOT NULL,
  `PAGE_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_REF_ID`),
  UNIQUE KEY `UN_PAGE_CONSTRAINTS_REF_1` (`PAGE_ID`,`NAME`),
  KEY `IX_PAGE_CONSTRAINTS_REF_1` (`PAGE_ID`),
  CONSTRAINT `FK_PAGE_CONSTRAINTS_REF_1` FOREIGN KEY (`PAGE_ID`) REFERENCES `PAGE` (`PAGE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_CONSTRAINTS_REF`
--

LOCK TABLES `PAGE_CONSTRAINTS_REF` WRITE;
/*!40000 ALTER TABLE `PAGE_CONSTRAINTS_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_CONSTRAINTS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_MENU`
--

DROP TABLE IF EXISTS `PAGE_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_MENU` (
  `MENU_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `PAGE_ID` int(11) DEFAULT NULL,
  `ELEMENT_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(40) DEFAULT NULL,
  `TEXT` varchar(100) DEFAULT NULL,
  `OPTIONS` varchar(255) DEFAULT NULL,
  `DEPTH` int(11) DEFAULT NULL,
  `IS_PATHS` smallint(6) DEFAULT NULL,
  `IS_REGEXP` smallint(6) DEFAULT NULL,
  `PROFILE` varchar(80) DEFAULT NULL,
  `OPTIONS_ORDER` varchar(255) DEFAULT NULL,
  `SKIN` varchar(80) DEFAULT NULL,
  `IS_NEST` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`),
  KEY `IX_PAGE_MENU_1` (`PARENT_ID`),
  KEY `IX_PAGE_MENU_2` (`PAGE_ID`),
  KEY `UN_PAGE_MENU_1` (`PAGE_ID`,`NAME`),
  CONSTRAINT `FK_PAGE_MENU_2` FOREIGN KEY (`PAGE_ID`) REFERENCES `PAGE` (`PAGE_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_PAGE_MENU_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `PAGE_MENU` (`MENU_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_MENU`
--

LOCK TABLES `PAGE_MENU` WRITE;
/*!40000 ALTER TABLE `PAGE_MENU` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_MENU_METADATA`
--

DROP TABLE IF EXISTS `PAGE_MENU_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_MENU_METADATA` (
  `METADATA_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`METADATA_ID`),
  UNIQUE KEY `UN_PAGE_MENU_METADATA_1` (`MENU_ID`,`NAME`,`LOCALE`,`VALUE`),
  KEY `IX_PAGE_MENU_METADATA_1` (`MENU_ID`),
  CONSTRAINT `FK_PAGE_MENU_METADATA_1` FOREIGN KEY (`MENU_ID`) REFERENCES `PAGE_MENU` (`MENU_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_MENU_METADATA`
--

LOCK TABLES `PAGE_MENU_METADATA` WRITE;
/*!40000 ALTER TABLE `PAGE_MENU_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_MENU_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_METADATA`
--

DROP TABLE IF EXISTS `PAGE_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_METADATA` (
  `METADATA_ID` int(11) NOT NULL,
  `PAGE_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) NOT NULL,
  PRIMARY KEY (`METADATA_ID`),
  UNIQUE KEY `UN_PAGE_METADATA_1` (`PAGE_ID`,`NAME`,`LOCALE`,`VALUE`),
  KEY `IX_PAGE_METADATA_1` (`PAGE_ID`),
  CONSTRAINT `FK_PAGE_METADATA_1` FOREIGN KEY (`PAGE_ID`) REFERENCES `PAGE` (`PAGE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_METADATA`
--

LOCK TABLES `PAGE_METADATA` WRITE;
/*!40000 ALTER TABLE `PAGE_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_SECURITY`
--

DROP TABLE IF EXISTS `PAGE_SECURITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_SECURITY` (
  `PAGE_SECURITY_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `PATH` varchar(240) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `VERSION` varchar(40) DEFAULT NULL,
  `SUBSITE` varchar(40) DEFAULT NULL,
  `USER_PRINCIPAL` varchar(40) DEFAULT NULL,
  `ROLE_PRINCIPAL` varchar(40) DEFAULT NULL,
  `GROUP_PRINCIPAL` varchar(40) DEFAULT NULL,
  `MEDIATYPE` varchar(15) DEFAULT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `EXT_ATTR_NAME` varchar(15) DEFAULT NULL,
  `EXT_ATTR_VALUE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PAGE_SECURITY_ID`),
  UNIQUE KEY `UN_PAGE_SECURITY_1` (`PARENT_ID`),
  UNIQUE KEY `UN_PAGE_SECURITY_2` (`PATH`),
  CONSTRAINT `FK_PAGE_SECURITY_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `FOLDER` (`FOLDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_SECURITY`
--

LOCK TABLES `PAGE_SECURITY` WRITE;
/*!40000 ALTER TABLE `PAGE_SECURITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_SECURITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_SEC_CONSTRAINTS_DEF`
--

DROP TABLE IF EXISTS `PAGE_SEC_CONSTRAINTS_DEF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_SEC_CONSTRAINTS_DEF` (
  `CONSTRAINTS_DEF_ID` int(11) NOT NULL,
  `PAGE_SECURITY_ID` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_DEF_ID`),
  UNIQUE KEY `UN_PAGE_SEC_CONSTRAINTS_DEF_1` (`PAGE_SECURITY_ID`,`NAME`),
  KEY `IX_PAGE_SEC_CONSTRAINTS_DEF_1` (`PAGE_SECURITY_ID`),
  CONSTRAINT `FK_PAGE_SEC_CONSTRAINTS_DEF_1` FOREIGN KEY (`PAGE_SECURITY_ID`) REFERENCES `PAGE_SECURITY` (`PAGE_SECURITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_SEC_CONSTRAINTS_DEF`
--

LOCK TABLES `PAGE_SEC_CONSTRAINTS_DEF` WRITE;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINTS_DEF` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINTS_DEF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_SEC_CONSTRAINTS_REF`
--

DROP TABLE IF EXISTS `PAGE_SEC_CONSTRAINTS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_SEC_CONSTRAINTS_REF` (
  `CONSTRAINTS_REF_ID` int(11) NOT NULL,
  `PAGE_SECURITY_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`CONSTRAINTS_REF_ID`),
  UNIQUE KEY `UN_PAGE_SEC_CONSTRAINTS_REF_1` (`PAGE_SECURITY_ID`,`NAME`),
  KEY `IX_PAGE_SEC_CONSTRAINTS_REF_1` (`PAGE_SECURITY_ID`),
  CONSTRAINT `FK_PAGE_SEC_CONSTRAINTS_REF_1` FOREIGN KEY (`PAGE_SECURITY_ID`) REFERENCES `PAGE_SECURITY` (`PAGE_SECURITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_SEC_CONSTRAINTS_REF`
--

LOCK TABLES `PAGE_SEC_CONSTRAINTS_REF` WRITE;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINTS_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINTS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_SEC_CONSTRAINT_DEF`
--

DROP TABLE IF EXISTS `PAGE_SEC_CONSTRAINT_DEF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_SEC_CONSTRAINT_DEF` (
  `CONSTRAINT_DEF_ID` int(11) NOT NULL,
  `CONSTRAINTS_DEF_ID` int(11) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `USER_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `ROLE_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `GROUP_PRINCIPALS_ACL` varchar(120) DEFAULT NULL,
  `PERMISSIONS_ACL` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`CONSTRAINT_DEF_ID`),
  KEY `IX_PAGE_SEC_CONSTRAINT_DEF_1` (`CONSTRAINTS_DEF_ID`),
  CONSTRAINT `FK_PAGE_SEC_CONSTRAINT_DEF_1` FOREIGN KEY (`CONSTRAINTS_DEF_ID`) REFERENCES `PAGE_SEC_CONSTRAINTS_DEF` (`CONSTRAINTS_DEF_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_SEC_CONSTRAINT_DEF`
--

LOCK TABLES `PAGE_SEC_CONSTRAINT_DEF` WRITE;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINT_DEF` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_SEC_CONSTRAINT_DEF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_STATISTICS`
--

DROP TABLE IF EXISTS `PAGE_STATISTICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAGE_STATISTICS` (
  `IPADDRESS` varchar(80) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  `PAGE` varchar(80) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `ELAPSED_TIME` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_STATISTICS`
--

LOCK TABLES `PAGE_STATISTICS` WRITE;
/*!40000 ALTER TABLE `PAGE_STATISTICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGE_STATISTICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARAMETER`
--

DROP TABLE IF EXISTS `PARAMETER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARAMETER` (
  `PARAMETER_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `OWNER_CLASS_NAME` varchar(255) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `PARAMETER_VALUE` mediumtext,
  PRIMARY KEY (`PARAMETER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARAMETER`
--

LOCK TABLES `PARAMETER` WRITE;
/*!40000 ALTER TABLE `PARAMETER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PARAMETER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARAMETER_ALIAS`
--

DROP TABLE IF EXISTS `PARAMETER_ALIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARAMETER_ALIAS` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARAMETER_ALIAS`
--

LOCK TABLES `PARAMETER_ALIAS` WRITE;
/*!40000 ALTER TABLE `PARAMETER_ALIAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PARAMETER_ALIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PA_METADATA_FIELDS`
--

DROP TABLE IF EXISTS `PA_METADATA_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PA_METADATA_FIELDS` (
  `ID` int(11) NOT NULL,
  `OBJECT_ID` int(11) NOT NULL,
  `COLUMN_VALUE` mediumtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PA_METADATA_FIELDS`
--

LOCK TABLES `PA_METADATA_FIELDS` WRITE;
/*!40000 ALTER TABLE `PA_METADATA_FIELDS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PA_METADATA_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PA_SECURITY_CONSTRAINT`
--

DROP TABLE IF EXISTS `PA_SECURITY_CONSTRAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PA_SECURITY_CONSTRAINT` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `TRANSPORT` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PA_SECURITY_CONSTRAINT`
--

LOCK TABLES `PA_SECURITY_CONSTRAINT` WRITE;
/*!40000 ALTER TABLE `PA_SECURITY_CONSTRAINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PA_SECURITY_CONSTRAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PD_METADATA_FIELDS`
--

DROP TABLE IF EXISTS `PD_METADATA_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PD_METADATA_FIELDS` (
  `ID` int(11) NOT NULL,
  `OBJECT_ID` int(11) NOT NULL,
  `COLUMN_VALUE` mediumtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `LOCALE_STRING` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PD_METADATA_FIELDS`
--

LOCK TABLES `PD_METADATA_FIELDS` WRITE;
/*!40000 ALTER TABLE `PD_METADATA_FIELDS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PD_METADATA_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_APPLICATION`
--

DROP TABLE IF EXISTS `PORTLET_APPLICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_APPLICATION` (
  `APPLICATION_ID` int(11) NOT NULL,
  `APP_NAME` varchar(80) NOT NULL,
  `CONTEXT_PATH` varchar(255) NOT NULL,
  `REVISION` int(11) NOT NULL,
  `VERSION` varchar(80) DEFAULT NULL,
  `APP_TYPE` int(11) DEFAULT NULL,
  `CHECKSUM` varchar(80) DEFAULT NULL,
  `SECURITY_REF` varchar(40) DEFAULT NULL,
  `DEFAULT_NAMESPACE` varchar(120) DEFAULT NULL,
  `RESOURCE_BUNDLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`APPLICATION_ID`),
  UNIQUE KEY `UK_APPLICATION` (`APP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_APPLICATION`
--

LOCK TABLES `PORTLET_APPLICATION` WRITE;
/*!40000 ALTER TABLE `PORTLET_APPLICATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_APPLICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_DEFINITION`
--

DROP TABLE IF EXISTS `PORTLET_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_DEFINITION` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `CLASS_NAME` varchar(255) DEFAULT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `EXPIRATION_CACHE` int(11) DEFAULT NULL,
  `RESOURCE_BUNDLE` varchar(255) DEFAULT NULL,
  `PREFERENCE_VALIDATOR` varchar(255) DEFAULT NULL,
  `SECURITY_REF` varchar(40) DEFAULT NULL,
  `CACHE_SCOPE` varchar(30) DEFAULT NULL,
  `CLONE_PARENT` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_DEFINITION`
--

LOCK TABLES `PORTLET_DEFINITION` WRITE;
/*!40000 ALTER TABLE `PORTLET_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_FILTER`
--

DROP TABLE IF EXISTS `PORTLET_FILTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_FILTER` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `FILTER_NAME` varchar(80) NOT NULL,
  `FILTER_CLASS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_FILTER`
--

LOCK TABLES `PORTLET_FILTER` WRITE;
/*!40000 ALTER TABLE `PORTLET_FILTER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_FILTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_LISTENER`
--

DROP TABLE IF EXISTS `PORTLET_LISTENER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_LISTENER` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `LISTENER_CLASS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_LISTENER`
--

LOCK TABLES `PORTLET_LISTENER` WRITE;
/*!40000 ALTER TABLE `PORTLET_LISTENER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_LISTENER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_PREFERENCE`
--

DROP TABLE IF EXISTS `PORTLET_PREFERENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_PREFERENCE` (
  `ID` int(11) NOT NULL,
  `DTYPE` varchar(10) NOT NULL,
  `APPLICATION_NAME` varchar(80) NOT NULL,
  `PORTLET_NAME` varchar(80) NOT NULL,
  `ENTITY_ID` varchar(80) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `NAME` varchar(254) NOT NULL,
  `READONLY` smallint(6) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UIX_PORTLET_PREFERENCE` (`DTYPE`,`APPLICATION_NAME`,`PORTLET_NAME`,`ENTITY_ID`,`USER_NAME`,`NAME`),
  KEY `IX_USER_PREFERENCE` (`DTYPE`,`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_PREFERENCE`
--

LOCK TABLES `PORTLET_PREFERENCE` WRITE;
/*!40000 ALTER TABLE `PORTLET_PREFERENCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_PREFERENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_PREFERENCE_VALUE`
--

DROP TABLE IF EXISTS `PORTLET_PREFERENCE_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_PREFERENCE_VALUE` (
  `ID` int(11) NOT NULL,
  `PREF_ID` int(11) NOT NULL,
  `IDX` smallint(6) NOT NULL,
  `PREF_VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`,`PREF_ID`,`IDX`),
  KEY `IX_PORTLET_PREFERENCE` (`PREF_ID`),
  CONSTRAINT `FK_PORTLET_PREFERENCE` FOREIGN KEY (`PREF_ID`) REFERENCES `PORTLET_PREFERENCE` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_PREFERENCE_VALUE`
--

LOCK TABLES `PORTLET_PREFERENCE_VALUE` WRITE;
/*!40000 ALTER TABLE `PORTLET_PREFERENCE_VALUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_PREFERENCE_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_STATISTICS`
--

DROP TABLE IF EXISTS `PORTLET_STATISTICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_STATISTICS` (
  `IPADDRESS` varchar(80) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  `PAGE` varchar(80) DEFAULT NULL,
  `PORTLET` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `ELAPSED_TIME` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_STATISTICS`
--

LOCK TABLES `PORTLET_STATISTICS` WRITE;
/*!40000 ALTER TABLE `PORTLET_STATISTICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_STATISTICS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTLET_SUPPORTS`
--

DROP TABLE IF EXISTS `PORTLET_SUPPORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PORTLET_SUPPORTS` (
  `SUPPORTS_ID` int(11) NOT NULL,
  `PORTLET_ID` int(11) NOT NULL,
  `MIME_TYPE` varchar(30) NOT NULL,
  `MODES` varchar(255) DEFAULT NULL,
  `STATES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SUPPORTS_ID`),
  UNIQUE KEY `UK_SUPPORTS` (`PORTLET_ID`,`MIME_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTLET_SUPPORTS`
--

LOCK TABLES `PORTLET_SUPPORTS` WRITE;
/*!40000 ALTER TABLE `PORTLET_SUPPORTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PORTLET_SUPPORTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRINCIPAL_PERMISSION`
--

DROP TABLE IF EXISTS `PRINCIPAL_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRINCIPAL_PERMISSION` (
  `PRINCIPAL_ID` int(11) NOT NULL,
  `PERMISSION_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRINCIPAL_ID`,`PERMISSION_ID`),
  KEY `IX_PRINCIPAL_PERMISSION_1` (`PERMISSION_ID`),
  KEY `IX_PRINCIPAL_PERMISSION_2` (`PRINCIPAL_ID`),
  CONSTRAINT `FK_PRINCIPAL_PERMISSION_2` FOREIGN KEY (`PRINCIPAL_ID`) REFERENCES `SECURITY_PRINCIPAL` (`PRINCIPAL_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_PRINCIPAL_PERMISSION_1` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `SECURITY_PERMISSION` (`PERMISSION_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRINCIPAL_PERMISSION`
--

LOCK TABLES `PRINCIPAL_PERMISSION` WRITE;
/*!40000 ALTER TABLE `PRINCIPAL_PERMISSION` DISABLE KEYS */;
INSERT INTO `PRINCIPAL_PERMISSION` VALUES (1,1),(3,2);
/*!40000 ALTER TABLE `PRINCIPAL_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRINCIPAL_RULE_ASSOC`
--

DROP TABLE IF EXISTS `PRINCIPAL_RULE_ASSOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRINCIPAL_RULE_ASSOC` (
  `PRINCIPAL_NAME` varchar(80) NOT NULL,
  `LOCATOR_NAME` varchar(80) NOT NULL,
  `RULE_ID` varchar(80) NOT NULL,
  PRIMARY KEY (`PRINCIPAL_NAME`,`LOCATOR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRINCIPAL_RULE_ASSOC`
--

LOCK TABLES `PRINCIPAL_RULE_ASSOC` WRITE;
/*!40000 ALTER TABLE `PRINCIPAL_RULE_ASSOC` DISABLE KEYS */;
INSERT INTO `PRINCIPAL_RULE_ASSOC` VALUES ('devmgr','page','user-role-fallback'),('guest','page','j2');
/*!40000 ALTER TABLE `PRINCIPAL_RULE_ASSOC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROCESSING_EVENT`
--

DROP TABLE IF EXISTS `PROCESSING_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROCESSING_EVENT` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROCESSING_EVENT`
--

LOCK TABLES `PROCESSING_EVENT` WRITE;
/*!40000 ALTER TABLE `PROCESSING_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROCESSING_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFILE_PAGE_ASSOC`
--

DROP TABLE IF EXISTS `PROFILE_PAGE_ASSOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROFILE_PAGE_ASSOC` (
  `LOCATOR_HASH` varchar(40) NOT NULL,
  `PAGE_ID` varchar(80) NOT NULL,
  PRIMARY KEY (`LOCATOR_HASH`,`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFILE_PAGE_ASSOC`
--

LOCK TABLES `PROFILE_PAGE_ASSOC` WRITE;
/*!40000 ALTER TABLE `PROFILE_PAGE_ASSOC` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROFILE_PAGE_ASSOC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFILING_RULE`
--

DROP TABLE IF EXISTS `PROFILING_RULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROFILING_RULE` (
  `RULE_ID` varchar(80) NOT NULL,
  `CLASS_NAME` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFILING_RULE`
--

LOCK TABLES `PROFILING_RULE` WRITE;
/*!40000 ALTER TABLE `PROFILING_RULE` DISABLE KEYS */;
INSERT INTO `PROFILING_RULE` VALUES ('group-fallback','org.apache.jetspeed.profiler.rules.impl.RoleFallbackProfilingRule','A role based fallback algorithm based on Jetspeed-1 group-based fallback'),('ip-address','org.apache.jetspeed.profiler.rules.impl.StandardProfilingRule','Resolves pages based on the clients remote IP address.'),('j1','org.apache.jetspeed.profiler.rules.impl.StandardProfilingRule','The default profiling rule following the Jetspeed-1 hard-coded profiler fallback algorithm.'),('j2','org.apache.jetspeed.profiler.rules.impl.StandardProfilingRule','The default profiling rule for users and mediatype minus language and country.'),('path','org.apache.jetspeed.profiler.rules.impl.StandardProfilingRule','use a path to locate.'),('role-fallback','org.apache.jetspeed.profiler.rules.impl.RoleFallbackProfilingRule','A role based fallback algorithm based on Jetspeed-1 role-based fallback'),('role-group','org.apache.jetspeed.profiler.rules.impl.RoleFallbackProfilingRule','A role based fallback algorithm that searches all groups and roles for a user'),('security','org.apache.jetspeed.profiler.rules.impl.StandardProfilingRule','The security profiling rule needed for credential change requirements.'),('user-role-fallback','org.apache.jetspeed.profiler.rules.impl.RoleFallbackProfilingRule','A role based fallback algorithm based on Jetspeed-1 role-based fallback'),('user-rolecombo-fallback','org.apache.jetspeed.profiler.rules.impl.RoleFallbackProfilingRule','A role based fallback algorithm based on Jetspeed-1 role-based fallback');
/*!40000 ALTER TABLE `PROFILING_RULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PUBLIC_PARAMETER`
--

DROP TABLE IF EXISTS `PUBLIC_PARAMETER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUBLIC_PARAMETER` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  `IDENTIFIER` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PUBLIC_PARAMETER`
--

LOCK TABLES `PUBLIC_PARAMETER` WRITE;
/*!40000 ALTER TABLE `PUBLIC_PARAMETER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PUBLIC_PARAMETER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PUBLISHING_EVENT`
--

DROP TABLE IF EXISTS `PUBLISHING_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUBLISHING_EVENT` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `LOCAL_PART` varchar(80) NOT NULL,
  `NAMESPACE` varchar(80) DEFAULT NULL,
  `PREFIX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PUBLISHING_EVENT`
--

LOCK TABLES `PUBLISHING_EVENT` WRITE;
/*!40000 ALTER TABLE `PUBLISHING_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PUBLISHING_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RULE_CRITERION`
--

DROP TABLE IF EXISTS `RULE_CRITERION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RULE_CRITERION` (
  `CRITERION_ID` varchar(80) NOT NULL,
  `RULE_ID` varchar(80) NOT NULL,
  `FALLBACK_ORDER` int(11) NOT NULL,
  `REQUEST_TYPE` varchar(40) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `COLUMN_VALUE` varchar(128) DEFAULT NULL,
  `FALLBACK_TYPE` int(11) DEFAULT '1',
  PRIMARY KEY (`CRITERION_ID`),
  KEY `IX_RULE_CRITERION_1` (`RULE_ID`),
  KEY `IX_RULE_CRITERION_2` (`RULE_ID`,`FALLBACK_ORDER`),
  CONSTRAINT `FK_RULE_CRITERION_1` FOREIGN KEY (`RULE_ID`) REFERENCES `PROFILING_RULE` (`RULE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RULE_CRITERION`
--

LOCK TABLES `RULE_CRITERION` WRITE;
/*!40000 ALTER TABLE `RULE_CRITERION` DISABLE KEYS */;
INSERT INTO `RULE_CRITERION` VALUES ('1','group-fallback',0,'group','group',NULL,2),('10','j2',2,'mediatype','mediatype',NULL,1),('11','j2',0,'path.session','page','default-page',0),('12','path',0,'path','path','/',0),('13','role-fallback',0,'role','role',NULL,2),('14','role-fallback',1,'path.session','page','default-page',0),('15','role-group',0,'role','role',NULL,2),('16','role-group',1,'navigation','navigation','/',2),('17','role-group',2,'group','group',NULL,2),('18','security',0,'hard.coded','page','/my-account.psml',0),('19','user-role-fallback',0,'user','user',NULL,2),('2','group-fallback',1,'path.session','page','default-page',0),('20','user-role-fallback',1,'navigation','navigation','/',2),('21','user-role-fallback',2,'role','role',NULL,2),('22','user-role-fallback',3,'path.session','page','default-page',1),('23','user-rolecombo-fallback',0,'user','user',NULL,2),('24','user-rolecombo-fallback',1,'navigation','navigation','/',2),('25','user-rolecombo-fallback',2,'rolecombo','role',NULL,2),('26','user-rolecombo-fallback',3,'path.session','page','default-page',1),('3','ip-address',0,'ip','ip',NULL,0),('4','j1',0,'path.session','page','default-page',0),('5','j1',1,'group.role.user','user',NULL,0),('6','j1',2,'mediatype','mediatype',NULL,1),('7','j1',3,'language','language',NULL,1),('8','j1',4,'country','country',NULL,1),('9','j2',1,'group.role.user','user',NULL,0);
/*!40000 ALTER TABLE `RULE_CRITERION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RUNTIME_OPTION`
--

DROP TABLE IF EXISTS `RUNTIME_OPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RUNTIME_OPTION` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `OWNER_CLASS_NAME` varchar(255) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RUNTIME_OPTION`
--

LOCK TABLES `RUNTIME_OPTION` WRITE;
/*!40000 ALTER TABLE `RUNTIME_OPTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RUNTIME_OPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RUNTIME_VALUE`
--

DROP TABLE IF EXISTS `RUNTIME_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RUNTIME_VALUE` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `RVALUE` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RUNTIME_VALUE`
--

LOCK TABLES `RUNTIME_VALUE` WRITE;
/*!40000 ALTER TABLE `RUNTIME_VALUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RUNTIME_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURED_PORTLET`
--

DROP TABLE IF EXISTS `SECURED_PORTLET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURED_PORTLET` (
  `ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURED_PORTLET`
--

LOCK TABLES `SECURED_PORTLET` WRITE;
/*!40000 ALTER TABLE `SECURED_PORTLET` DISABLE KEYS */;
/*!40000 ALTER TABLE `SECURED_PORTLET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_ATTRIBUTE`
--

DROP TABLE IF EXISTS `SECURITY_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_ATTRIBUTE` (
  `ATTR_ID` int(11) NOT NULL,
  `PRINCIPAL_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(200) NOT NULL,
  `ATTR_VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ATTR_ID`,`PRINCIPAL_ID`,`ATTR_NAME`),
  KEY `IX_NAME_LOOKUP` (`ATTR_NAME`),
  KEY `IX_PRINCIPAL_ATTR` (`PRINCIPAL_ID`),
  CONSTRAINT `FK_PRINCIPAL_ATTR` FOREIGN KEY (`PRINCIPAL_ID`) REFERENCES `SECURITY_PRINCIPAL` (`PRINCIPAL_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_ATTRIBUTE`
--

LOCK TABLES `SECURITY_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `SECURITY_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `SECURITY_ATTRIBUTE` VALUES (1,6,'user.name.family','Administrator'),(2,6,'user.name.given','System'),(3,8,'user.name.family','Manager'),(4,8,'user.name.given','Dev'),(5,8,'org.apache.jetspeed.profiler.refreshUserHomepage','true');
/*!40000 ALTER TABLE `SECURITY_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_CREDENTIAL`
--

DROP TABLE IF EXISTS `SECURITY_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_CREDENTIAL` (
  `CREDENTIAL_ID` int(11) NOT NULL,
  `PRINCIPAL_ID` int(11) NOT NULL,
  `CREDENTIAL_VALUE` varchar(254) DEFAULT NULL,
  `TYPE` smallint(6) NOT NULL,
  `UPDATE_ALLOWED` smallint(6) NOT NULL,
  `IS_STATE_READONLY` smallint(6) NOT NULL,
  `UPDATE_REQUIRED` smallint(6) NOT NULL,
  `IS_ENCODED` smallint(6) NOT NULL,
  `IS_ENABLED` smallint(6) NOT NULL,
  `AUTH_FAILURES` smallint(6) NOT NULL,
  `IS_EXPIRED` smallint(6) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `PREV_AUTH_DATE` datetime DEFAULT NULL,
  `LAST_AUTH_DATE` datetime DEFAULT NULL,
  `EXPIRATION_DATE` date DEFAULT NULL,
  PRIMARY KEY (`CREDENTIAL_ID`),
  KEY `IX_SECURITY_CREDENTIAL_1` (`PRINCIPAL_ID`),
  CONSTRAINT `FK_SECURITY_CREDENTIAL_1` FOREIGN KEY (`PRINCIPAL_ID`) REFERENCES `SECURITY_PRINCIPAL` (`PRINCIPAL_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_CREDENTIAL`
--

LOCK TABLES `SECURITY_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `SECURITY_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `SECURITY_CREDENTIAL` VALUES (1,6,'liiHgKcA1sEBisdWUN9fLEc2gBo=',0,1,0,1,1,1,0,0,'2017-05-02 13:44:59','2017-05-02 13:44:59',NULL,NULL,NULL),(2,8,'BbKbeW83cuCk0x/yyqL+WyKSUxE=',0,1,0,0,1,1,0,0,'2017-05-02 13:44:59','2017-05-02 13:44:59',NULL,NULL,NULL);
/*!40000 ALTER TABLE `SECURITY_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_DOMAIN`
--

DROP TABLE IF EXISTS `SECURITY_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_DOMAIN` (
  `DOMAIN_ID` int(11) NOT NULL,
  `DOMAIN_NAME` varchar(254) DEFAULT NULL,
  `REMOTE` smallint(6) DEFAULT '0',
  `ENABLED` smallint(6) DEFAULT '1',
  `OWNER_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DOMAIN_ID`),
  UNIQUE KEY `UIX_DOMAIN_NAME` (`DOMAIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_DOMAIN`
--

LOCK TABLES `SECURITY_DOMAIN` WRITE;
/*!40000 ALTER TABLE `SECURITY_DOMAIN` DISABLE KEYS */;
INSERT INTO `SECURITY_DOMAIN` VALUES (1,'[default]',0,1,NULL),(2,'[system]',0,1,NULL);
/*!40000 ALTER TABLE `SECURITY_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_PERMISSION`
--

DROP TABLE IF EXISTS `SECURITY_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_PERMISSION` (
  `PERMISSION_ID` int(11) NOT NULL,
  `PERMISSION_TYPE` varchar(30) NOT NULL,
  `NAME` varchar(254) NOT NULL,
  `ACTIONS` varchar(254) NOT NULL,
  PRIMARY KEY (`PERMISSION_ID`),
  UNIQUE KEY `UIX_SECURITY_PERMISSION` (`PERMISSION_TYPE`,`NAME`,`ACTIONS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_PERMISSION`
--

LOCK TABLES `SECURITY_PERMISSION` WRITE;
/*!40000 ALTER TABLE `SECURITY_PERMISSION` DISABLE KEYS */;
INSERT INTO `SECURITY_PERMISSION` VALUES (1,'portlet','j2-admin::*','view, edit'),(2,'portlet','jetspeed-layouts::*','view, edit');
/*!40000 ALTER TABLE `SECURITY_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_PRINCIPAL`
--

DROP TABLE IF EXISTS `SECURITY_PRINCIPAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_PRINCIPAL` (
  `PRINCIPAL_ID` int(11) NOT NULL,
  `PRINCIPAL_TYPE` varchar(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(200) NOT NULL,
  `IS_MAPPED` smallint(6) NOT NULL,
  `IS_ENABLED` smallint(6) NOT NULL,
  `IS_READONLY` smallint(6) NOT NULL,
  `IS_REMOVABLE` smallint(6) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `DOMAIN_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRINCIPAL_ID`),
  UNIQUE KEY `UIX_SECURITY_PRINCIPAL` (`PRINCIPAL_TYPE`,`PRINCIPAL_NAME`,`DOMAIN_ID`),
  KEY `IX_SECURITY_DOMAIN_1` (`DOMAIN_ID`),
  CONSTRAINT `FK_SECURITY_DOMAIN_1` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `SECURITY_DOMAIN` (`DOMAIN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_PRINCIPAL`
--

LOCK TABLES `SECURITY_PRINCIPAL` WRITE;
/*!40000 ALTER TABLE `SECURITY_PRINCIPAL` DISABLE KEYS */;
INSERT INTO `SECURITY_PRINCIPAL` VALUES (1,'role','admin',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(2,'role','guest',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(3,'role','user',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(4,'role','dev',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(5,'role','devmgr',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(6,'user','admin',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(7,'user','guest',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1),(8,'user','devmgr',1,1,0,1,'2017-05-02 13:44:59','2017-05-02 13:44:59',1);
/*!40000 ALTER TABLE `SECURITY_PRINCIPAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_PRINCIPAL_ASSOC`
--

DROP TABLE IF EXISTS `SECURITY_PRINCIPAL_ASSOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_PRINCIPAL_ASSOC` (
  `ASSOC_NAME` varchar(30) NOT NULL,
  `FROM_PRINCIPAL_ID` int(11) NOT NULL,
  `TO_PRINCIPAL_ID` int(11) NOT NULL,
  PRIMARY KEY (`ASSOC_NAME`,`FROM_PRINCIPAL_ID`,`TO_PRINCIPAL_ID`),
  KEY `IX_TO_PRINCIPAL_ASSOC_LOOKUP` (`ASSOC_NAME`,`TO_PRINCIPAL_ID`),
  KEY `IX_FROM_PRINCIPAL_ASSOC` (`FROM_PRINCIPAL_ID`),
  KEY `IX_TO_PRINCIPAL_ASSOC` (`TO_PRINCIPAL_ID`),
  CONSTRAINT `FK_TO_PRINCIPAL_ASSOC` FOREIGN KEY (`TO_PRINCIPAL_ID`) REFERENCES `SECURITY_PRINCIPAL` (`PRINCIPAL_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_FROM_PRINCIPAL_ASSOC` FOREIGN KEY (`FROM_PRINCIPAL_ID`) REFERENCES `SECURITY_PRINCIPAL` (`PRINCIPAL_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_PRINCIPAL_ASSOC`
--

LOCK TABLES `SECURITY_PRINCIPAL_ASSOC` WRITE;
/*!40000 ALTER TABLE `SECURITY_PRINCIPAL_ASSOC` DISABLE KEYS */;
INSERT INTO `SECURITY_PRINCIPAL_ASSOC` VALUES ('isMemberOf',6,1),('isMemberOf',6,3),('isMemberOf',7,2),('isMemberOf',8,3),('isMemberOf',8,4),('isMemberOf',8,5);
/*!40000 ALTER TABLE `SECURITY_PRINCIPAL_ASSOC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_ROLE`
--

DROP TABLE IF EXISTS `SECURITY_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_ROLE` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_ROLE`
--

LOCK TABLES `SECURITY_ROLE` WRITE;
/*!40000 ALTER TABLE `SECURITY_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SECURITY_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITY_ROLE_REFERENCE`
--

DROP TABLE IF EXISTS `SECURITY_ROLE_REFERENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_ROLE_REFERENCE` (
  `ID` int(11) NOT NULL,
  `PORTLET_DEFINITION_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(150) NOT NULL,
  `ROLE_LINK` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITY_ROLE_REFERENCE`
--

LOCK TABLES `SECURITY_ROLE_REFERENCE` WRITE;
/*!40000 ALTER TABLE `SECURITY_ROLE_REFERENCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SECURITY_ROLE_REFERENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SSO_SITE`
--

DROP TABLE IF EXISTS `SSO_SITE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SSO_SITE` (
  `SITE_ID` int(11) NOT NULL,
  `NAME` varchar(254) NOT NULL,
  `URL` varchar(254) NOT NULL,
  `ALLOW_USER_SET` smallint(6) DEFAULT '0',
  `REQUIRES_CERTIFICATE` smallint(6) DEFAULT '0',
  `CHALLENGE_RESPONSE_AUTH` smallint(6) DEFAULT '0',
  `FORM_AUTH` smallint(6) DEFAULT '0',
  `FORM_USER_FIELD` varchar(128) DEFAULT NULL,
  `FORM_PWD_FIELD` varchar(128) DEFAULT NULL,
  `REALM` varchar(128) DEFAULT NULL,
  `DOMAIN_ID` int(11) NOT NULL,
  PRIMARY KEY (`SITE_ID`),
  UNIQUE KEY `UIX_SITE_NAME` (`NAME`),
  UNIQUE KEY `UIX_SITE_URL` (`URL`),
  KEY `IX_SECURITY_DOMAIN_2` (`DOMAIN_ID`),
  CONSTRAINT `FK_SECURITY_DOMAIN_2` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `SECURITY_DOMAIN` (`DOMAIN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SSO_SITE`
--

LOCK TABLES `SSO_SITE` WRITE;
/*!40000 ALTER TABLE `SSO_SITE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SSO_SITE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ACTIVITY`
--

DROP TABLE IF EXISTS `USER_ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ACTIVITY` (
  `ACTIVITY` varchar(40) DEFAULT NULL,
  `CATEGORY` varchar(40) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  `IPADDRESS` varchar(80) DEFAULT NULL,
  `ATTR_NAME` varchar(200) DEFAULT NULL,
  `ATTR_VALUE_BEFORE` varchar(1000) DEFAULT NULL,
  `ATTR_VALUE_AFTER` varchar(1000) DEFAULT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ACTIVITY`
--

LOCK TABLES `USER_ACTIVITY` WRITE;
/*!40000 ALTER TABLE `USER_ACTIVITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `NAME` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE_REF`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE_REF` (
  `ID` int(11) NOT NULL,
  `APPLICATION_ID` int(11) NOT NULL,
  `NAME` varchar(150) DEFAULT NULL,
  `NAME_LINK` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE_REF`
--

LOCK TABLES `USER_ATTRIBUTE_REF` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE_REF` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_STATISTICS`
--

DROP TABLE IF EXISTS `USER_STATISTICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_STATISTICS` (
  `IPADDRESS` varchar(80) DEFAULT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `ELAPSED_TIME` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_STATISTICS`
--

LOCK TABLES `USER_STATISTICS` WRITE;
/*!40000 ALTER TABLE `USER_STATISTICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_STATISTICS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-02 13:47:20
