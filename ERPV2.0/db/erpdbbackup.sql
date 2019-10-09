CREATE DATABASE  IF NOT EXISTS `erp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `erp`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	5.1.30-community

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
-- Table structure for table `agingaccount`
--

DROP TABLE IF EXISTS `agingaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agingaccount` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `deescription` varchar(255) DEFAULT NULL,
  `monthly` varchar(255) DEFAULT NULL,
  `monthly2` varchar(255) DEFAULT NULL,
  `monthly3` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agingaccount`
--

LOCK TABLES `agingaccount` WRITE;
/*!40000 ALTER TABLE `agingaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `agingaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agingaccountpayable`
--

DROP TABLE IF EXISTS `agingaccountpayable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agingaccountpayable` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `deescription` varchar(255) DEFAULT NULL,
  `monthly` varchar(255) DEFAULT NULL,
  `monthly2` varchar(255) DEFAULT NULL,
  `monthly3` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agingaccountpayable`
--

LOCK TABLES `agingaccountpayable` WRITE;
/*!40000 ALTER TABLE `agingaccountpayable` DISABLE KEYS */;
INSERT INTO `agingaccountpayable` VALUES (1,'12/12/10','12/12/11','10/27/2013','12000','12000','120000','Just take care','10000','120000','1200000','1440000000000000',NULL);
/*!40000 ALTER TABLE `agingaccountpayable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apprisialform`
--

DROP TABLE IF EXISTS `apprisialform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apprisialform` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `item1` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `apprisedvalue` varchar(255) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `appraisalname` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apprisialform`
--

LOCK TABLES `apprisialform` WRITE;
/*!40000 ALTER TABLE `apprisialform` DISABLE KEYS */;
/*!40000 ALTER TABLE `apprisialform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoexpencestravel`
--

DROP TABLE IF EXISTS `autoexpencestravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoexpencestravel` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `empname` varchar(255) DEFAULT NULL,
  `completedby` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `auditedby` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `purposeoftrip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipno` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `travelfrom` varchar(255) DEFAULT NULL,
  `odometerstart` varchar(255) DEFAULT NULL,
  `odometerend` varchar(255) DEFAULT NULL,
  `totalmileage` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amountdue` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoexpencestravel`
--

LOCK TABLES `autoexpencestravel` WRITE;
/*!40000 ALTER TABLE `autoexpencestravel` DISABLE KEYS */;
INSERT INTO `autoexpencestravel` VALUES (1,'12/12/12','Mon','Ravi','Kiran','Repalle','Kiran','Repalle','Honeymoon','OOTI','Kiran','TamilNadu','222265','7702305661','Finance','12/02/12','Repalle','Guntur','OOTI','460','500','230000',NULL);
/*!40000 ALTER TABLE `autoexpencestravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashdisbursmentjournal`
--

DROP TABLE IF EXISTS `cashdisbursmentjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashdisbursmentjournal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `check1` varchar(255) DEFAULT NULL,
  `payee1` varchar(255) DEFAULT NULL,
  `accountc1` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `cash1` varchar(255) DEFAULT NULL,
  `discount1` varchar(255) DEFAULT NULL,
  `other1` varchar(255) DEFAULT NULL,
  `accountd1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `amountp1` varchar(255) DEFAULT NULL,
  `othera1` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `check2` varchar(255) DEFAULT NULL,
  `payee2` varchar(255) DEFAULT NULL,
  `accountc2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `cash2` varchar(255) DEFAULT NULL,
  `discount2` varchar(255) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  `accountd2` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `amountp2` varchar(255) DEFAULT NULL,
  `othera2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `check3` varchar(255) DEFAULT NULL,
  `payee3` varchar(255) DEFAULT NULL,
  `accountc3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `cash3` varchar(255) DEFAULT NULL,
  `discount3` varchar(255) DEFAULT NULL,
  `other3` varchar(255) DEFAULT NULL,
  `accountd3` varchar(255) DEFAULT NULL,
  `amount3` varchar(255) DEFAULT NULL,
  `amountp3` varchar(255) DEFAULT NULL,
  `othera3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashdisbursmentjournal`
--

LOCK TABLES `cashdisbursmentjournal` WRITE;
/*!40000 ALTER TABLE `cashdisbursmentjournal` DISABLE KEYS */;
INSERT INTO `cashdisbursmentjournal` VALUES (1,'12/12/10','12/12/11','12/12/12','1222122','12000','2000','120000','20000','1000','2000','1000','9000','12000','2000','12/02/12','1222112','20000','200','1000','2000','1000','2000','1000','9000','12000','2000','12/03/12','1222112','2000','200','1000','2000','1000','2000','1000','9000','12000','2000');
/*!40000 ALTER TABLE `cashdisbursmentjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashreciptjournal`
--

DROP TABLE IF EXISTS `cashreciptjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashreciptjournal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `accountc1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `sales1` varchar(255) DEFAULT NULL,
  `amountr1` varchar(255) DEFAULT NULL,
  `cash1` varchar(255) DEFAULT NULL,
  `discount1` varchar(255) DEFAULT NULL,
  `other1` varchar(255) DEFAULT NULL,
  `accountd1` varchar(255) DEFAULT NULL,
  `accountp1` varchar(255) DEFAULT NULL,
  `othera1` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `accountc2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `sales2` varchar(255) DEFAULT NULL,
  `amountr2` varchar(255) DEFAULT NULL,
  `cash2` varchar(255) DEFAULT NULL,
  `discount2` varchar(255) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  `accountd2` varchar(255) DEFAULT NULL,
  `accountp2` varchar(255) DEFAULT NULL,
  `othera2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `accountc3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `sales3` varchar(255) DEFAULT NULL,
  `amountr3` varchar(255) DEFAULT NULL,
  `cash3` varchar(255) DEFAULT NULL,
  `discount3` varchar(255) DEFAULT NULL,
  `other3` varchar(255) DEFAULT NULL,
  `accountd3` varchar(255) DEFAULT NULL,
  `accountp3` varchar(255) DEFAULT NULL,
  `othera3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashreciptjournal`
--

LOCK TABLES `cashreciptjournal` WRITE;
/*!40000 ALTER TABLE `cashreciptjournal` DISABLE KEYS */;
INSERT INTO `cashreciptjournal` VALUES (1,'12/12/10','12/12/11','12/12/12','2000','12000','12000','12000','20000','1000','2000','1000','10000','2000','12/02/12','200','1000','12000','12000','2000','1000','2000','1000','12000','2000','12/03/12','200','1000','12000','12000','2000','1000','2000','1000','12000','2000');
/*!40000 ALTER TABLE `cashreciptjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companypayslip`
--

DROP TABLE IF EXISTS `companypayslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companypayslip` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `conv` varchar(255) DEFAULT NULL,
  `hra` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `gratuaty` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `mis1` varchar(255) DEFAULT NULL,
  `mie1` varchar(255) DEFAULT NULL,
  `mip1` varchar(255) DEFAULT NULL,
  `mis2` varchar(255) DEFAULT NULL,
  `mie2` varchar(255) DEFAULT NULL,
  `mip2` varchar(255) DEFAULT NULL,
  `mis3` varchar(255) DEFAULT NULL,
  `mie3` varchar(255) DEFAULT NULL,
  `mip3` varchar(255) DEFAULT NULL,
  `mis4` varchar(255) DEFAULT NULL,
  `mie4` varchar(255) DEFAULT NULL,
  `mip4` varchar(255) DEFAULT NULL,
  `fis1` varchar(255) DEFAULT NULL,
  `fie1` varchar(255) DEFAULT NULL,
  `fip1` varchar(255) DEFAULT NULL,
  `fis2` varchar(255) DEFAULT NULL,
  `fie2` varchar(255) DEFAULT NULL,
  `fip2` varchar(255) DEFAULT NULL,
  `fis3` varchar(255) DEFAULT NULL,
  `fie3` varchar(255) DEFAULT NULL,
  `fip3` varchar(255) DEFAULT NULL,
  `fis4` varchar(255) DEFAULT NULL,
  `fie4` varchar(255) DEFAULT NULL,
  `fip4` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companypayslip`
--

LOCK TABLES `companypayslip` WRITE;
/*!40000 ALTER TABLE `companypayslip` DISABLE KEYS */;
INSERT INTO `companypayslip` VALUES (1,'DeltaSoftSolutions','40','10','10','10',NULL,'10','0,250000','160000,above','0,30','160000','180000','10','180000','250000','20',NULL,NULL,NULL,'0','180000','0','180000','250000','10','250000','350000','20','350000','above','30','10/24/2013');
/*!40000 ALTER TABLE `companypayslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailycashreport`
--

DROP TABLE IF EXISTS `dailycashreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dailycashreport` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `date1` varchar(255) DEFAULT NULL,
  `cashr1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `cashp1` varchar(255) DEFAULT NULL,
  `amounta1` varchar(255) DEFAULT NULL,
  `cashr2` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `cashp2` varchar(255) DEFAULT NULL,
  `amounta2` varchar(255) DEFAULT NULL,
  `cashr3` varchar(255) DEFAULT NULL,
  `amount3` varchar(255) DEFAULT NULL,
  `cashp3` varchar(255) DEFAULT NULL,
  `amounta3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailycashreport`
--

LOCK TABLES `dailycashreport` WRITE;
/*!40000 ALTER TABLE `dailycashreport` DISABLE KEYS */;
INSERT INTO `dailycashreport` VALUES (1,'12/12/12','BankOfBaroda','9000','12000','12000','BankofIndia','9000','12000','12000','BankOfHyderabad','9000','12000','12000');
/*!40000 ALTER TABLE `dailycashreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nameinhris` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `joinindate` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `reportingto` varchar(255) DEFAULT NULL,
  `joblevel` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `entrymanner` varchar(255) DEFAULT NULL,
  `nomination` varchar(255) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `maritalstatus` varchar(255) DEFAULT NULL,
  `marriagedate` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `pannumber` varchar(255) DEFAULT NULL,
  `passportnumber` varchar(255) DEFAULT NULL,
  `issueddateandplace` varchar(255) DEFAULT NULL,
  `validity` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `presentsalary` varchar(255) DEFAULT NULL,
  `join_time_req` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `bankaccount` varchar(255) DEFAULT NULL,
  `pfno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'10001','Rayaprolu RaviKiran','Rayaprolu','RSRKSastry','04/02/86','m','12/12/11','Manager','HR','Kiran','Manager','Repalle','direct','Direct','Repalle','No','--','Hindi','100210021','2221122212312','12/12/10','2','DeltaSoftSolutions','PG','hr_ravi','hr_ravi','360000','12:00pm',NULL,'12002102011','233112234');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeerequisition`
--

DROP TABLE IF EXISTS `employeerequisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeerequisition` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `joblevel` varchar(255) DEFAULT NULL,
  `jobresponsibilities` varchar(255) DEFAULT NULL,
  `specificaccountabilities` varchar(255) DEFAULT NULL,
  `skilrequired` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `targettime` varchar(255) DEFAULT NULL,
  `industryspecific` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `ageto` varchar(255) DEFAULT NULL,
  `personalitytraits` varchar(255) DEFAULT NULL,
  `mobility` varchar(255) DEFAULT NULL,
  `organizationspecific` varchar(255) DEFAULT NULL,
  `computerliteracy` varchar(255) DEFAULT NULL,
  `leadershipqualitiesa` varchar(255) DEFAULT NULL,
  `leadershipqualitiesb` varchar(255) DEFAULT NULL,
  `leadershipqualitiesc` varchar(255) DEFAULT NULL,
  `leadershipqualitiesd` varchar(255) DEFAULT NULL,
  `locationspecifica` varchar(255) DEFAULT NULL,
  `locationspecificb` varchar(255) DEFAULT NULL,
  `locationspecificc` varchar(255) DEFAULT NULL,
  `genderspecific` varchar(255) DEFAULT NULL,
  `indentername` varchar(255) DEFAULT NULL,
  `functionalheadname` varchar(255) DEFAULT NULL,
  `unithead` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeerequisition`
--

LOCK TABLES `employeerequisition` WRITE;
/*!40000 ALTER TABLE `employeerequisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeerequisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertainmentexpenceses`
--

DROP TABLE IF EXISTS `entertainmentexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entertainmentexpenceses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `amountdue` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainmentexpenceses`
--

LOCK TABLES `entertainmentexpenceses` WRITE;
/*!40000 ALTER TABLE `entertainmentexpenceses` DISABLE KEYS */;
INSERT INTO `entertainmentexpenceses` VALUES (1,'Ravi','7702305661','Repalle','Kiran','Finance','12/12/12','Mon','230000',NULL);
/*!40000 ALTER TABLE `entertainmentexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finalpayslip`
--

DROP TABLE IF EXISTS `finalpayslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finalpayslip` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empid` varchar(255) DEFAULT NULL,
  `empname` varchar(255) DEFAULT NULL,
  `bankaccount` double DEFAULT NULL,
  `pfno` double DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `pannumber` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `paiddays` int(11) DEFAULT NULL,
  `basic` double DEFAULT NULL,
  `hra` double DEFAULT NULL,
  `pf` double DEFAULT NULL,
  `conv` double DEFAULT NULL,
  `da` double DEFAULT NULL,
  `gratuty` double DEFAULT NULL,
  `sa` double DEFAULT NULL,
  `monthly` double DEFAULT NULL,
  `yearly` double DEFAULT NULL,
  `overallsal` double DEFAULT NULL,
  `losspay` double DEFAULT NULL,
  `lic` double DEFAULT NULL,
  `insurence` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `schoolfee` double DEFAULT NULL,
  `childeducation` double DEFAULT NULL,
  `specialallogation` double DEFAULT NULL,
  `otherded` double DEFAULT NULL,
  `incometax` double DEFAULT NULL,
  `grass` double DEFAULT NULL,
  `totalded` varchar(255) DEFAULT NULL,
  `netammount` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `pt` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finalpayslip`
--

LOCK TABLES `finalpayslip` WRITE;
/*!40000 ALTER TABLE `finalpayslip` DISABLE KEYS */;
/*!40000 ALTER TABLE `finalpayslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodexpenses`
--

DROP TABLE IF EXISTS `foodexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodexpenses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `amountdue` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodexpenses`
--

LOCK TABLES `foodexpenses` WRITE;
/*!40000 ALTER TABLE `foodexpenses` DISABLE KEYS */;
INSERT INTO `foodexpenses` VALUES (1,'Ravi','7702305661','Repalle','Kiran','Finance','12/12/12','Mon','230000',NULL),(2,'Ravi','7702305661','Repalle','Kiran','Finance','12/12/12','Tue','230000',NULL);
/*!40000 ALTER TABLE `foodexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupdetails`
--

DROP TABLE IF EXISTS `groupdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupdetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `natureofgroup` varchar(255) DEFAULT NULL,
  `grpbeh` varchar(255) DEFAULT NULL,
  `netrep` varchar(255) DEFAULT NULL,
  `usecal` varchar(255) DEFAULT NULL,
  `metall` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupdetails`
--

LOCK TABLES `groupdetails` WRITE;
/*!40000 ALTER TABLE `groupdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `grouptype` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelexpenses`
--

DROP TABLE IF EXISTS `hotelexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotelexpenses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `noofdays` varchar(255) DEFAULT NULL,
  `hotelname` varchar(255) DEFAULT NULL,
  `hotellocation` varchar(255) DEFAULT NULL,
  `amountperday` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelexpenses`
--

LOCK TABLES `hotelexpenses` WRITE;
/*!40000 ALTER TABLE `hotelexpenses` DISABLE KEYS */;
INSERT INTO `hotelexpenses` VALUES (1,'Ravi','7702305661','Repalle','Kiran','Accounts','12/12/12','Tue','12,TajKrishna',NULL,'Hyderabad','50000',NULL);
/*!40000 ALTER TABLE `hotelexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewevaluation`
--

DROP TABLE IF EXISTS `interviewevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interviewevaluation` (
  `srno` bigint(20) NOT NULL AUTO_INCREMENT,
  `candidatename` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `apperence` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `jobstability` varchar(255) DEFAULT NULL,
  `attitude` varchar(255) DEFAULT NULL,
  `communicationskills` varchar(255) DEFAULT NULL,
  `jobknowledge` varchar(255) DEFAULT NULL,
  `jobskills` varchar(255) DEFAULT NULL,
  `jobpotential` varchar(255) DEFAULT NULL,
  `carrierachivements` varchar(255) DEFAULT NULL,
  `workdeduction` varchar(255) DEFAULT NULL,
  `abilitytolearn` varchar(255) DEFAULT NULL,
  `openmindness` varchar(255) DEFAULT NULL,
  `overallstability` varchar(255) DEFAULT NULL,
  `finalassesment` varchar(255) DEFAULT NULL,
  `othercomments` varchar(255) DEFAULT NULL,
  `interviewedby` varchar(255) DEFAULT NULL,
  `executivename` varchar(255) DEFAULT NULL,
  `joingtime` varchar(255) DEFAULT NULL,
  `presentsalary` varchar(255) DEFAULT NULL,
  `expetedsalary` varchar(255) DEFAULT NULL,
  `salaryoffered` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `maturitylevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewevaluation`
--

LOCK TABLES `interviewevaluation` WRITE;
/*!40000 ALTER TABLE `interviewevaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `interviewevaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventoryreport`
--

DROP TABLE IF EXISTS `inventoryreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventoryreport` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `today` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `deptlocation` varchar(255) DEFAULT NULL,
  `datein` varchar(255) DEFAULT NULL,
  `po` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `recivedby` varchar(255) DEFAULT NULL,
  `dateout` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `Stockleft` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventoryreport`
--

LOCK TABLES `inventoryreport` WRITE;
/*!40000 ALTER TABLE `inventoryreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventoryreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `custname` varchar(255) DEFAULT NULL,
  `invoiceid` varchar(255) DEFAULT NULL,
  `invoiceno` varchar(6) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `referenceno` varchar(255) DEFAULT NULL,
  `srlno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unitprice` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `servicetax` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `inputdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceworkperform`
--

DROP TABLE IF EXISTS `invoiceworkperform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoiceworkperform` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `lb_date` varchar(255) DEFAULT NULL,
  `lb_quantity` varchar(255) DEFAULT NULL,
  `lb_description` varchar(255) DEFAULT NULL,
  `lb_price` varchar(255) DEFAULT NULL,
  `mat_date` varchar(255) DEFAULT NULL,
  `mat_quantity` varchar(255) DEFAULT NULL,
  `mat_description` varchar(255) DEFAULT NULL,
  `mat_price` varchar(255) DEFAULT NULL,
  `misc_date` varchar(255) DEFAULT NULL,
  `mis_quantity` varchar(255) DEFAULT NULL,
  `mis_description` varchar(255) DEFAULT NULL,
  `mis_price` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceworkperform`
--

LOCK TABLES `invoiceworkperform` WRITE;
/*!40000 ALTER TABLE `invoiceworkperform` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoiceworkperform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `paricularby` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaveapplications`
--

DROP TABLE IF EXISTS `leaveapplications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaveapplications` (
  `srno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `employeecode` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `purposeofleave` varchar(255) DEFAULT NULL,
  `addressonleave` varchar(255) DEFAULT NULL,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `cl` varchar(255) DEFAULT NULL,
  `nocl` varchar(255) DEFAULT NULL,
  `sl` varchar(255) DEFAULT NULL,
  `nosl` varchar(255) DEFAULT NULL,
  `el` varchar(255) DEFAULT NULL,
  `noel` varchar(255) DEFAULT NULL,
  `lop` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `authenticationcode` varchar(255) DEFAULT NULL,
  `noofleaves` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaveapplications`
--

LOCK TABLES `leaveapplications` WRITE;
/*!40000 ALTER TABLE `leaveapplications` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaveapplications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger`
--

DROP TABLE IF EXISTS `ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `ledgername` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `inventoryvalues` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `panno` varchar(255) DEFAULT NULL,
  `salestax` varchar(255) DEFAULT NULL,
  `openingbalance` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger`
--

LOCK TABLES `ledger` WRITE;
/*!40000 ALTER TABLE `ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'hr_ravi','hr_ravi',NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measures` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `formalname` varchar(255) DEFAULT NULL,
  `numofdec` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misleniousexpenceses`
--

DROP TABLE IF EXISTS `misleniousexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `misleniousexpenceses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misleniousexpenceses`
--

LOCK TABLES `misleniousexpenceses` WRITE;
/*!40000 ALTER TABLE `misleniousexpenceses` DISABLE KEYS */;
INSERT INTO `misleniousexpenceses` VALUES (1,'Ravi','7702305661','Repalle','Kiran','Finance','12/12/12','Mon','Sick','12000',NULL);
/*!40000 ALTER TABLE `misleniousexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nontradingexpenceses`
--

DROP TABLE IF EXISTS `nontradingexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nontradingexpenceses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `hotelname` varchar(255) DEFAULT NULL,
  `hotellocation` varchar(255) DEFAULT NULL,
  `amountperday` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nontradingexpenceses`
--

LOCK TABLES `nontradingexpenceses` WRITE;
/*!40000 ALTER TABLE `nontradingexpenceses` DISABLE KEYS */;
INSERT INTO `nontradingexpenceses` VALUES (1,'Ravi','7702305661','Repalle','Kiran','Sales','12/12/12','Sun',NULL,NULL,NULL,NULL,'TV','3','30000');
/*!40000 ALTER TABLE `nontradingexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderform`
--

DROP TABLE IF EXISTS `orderform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderform` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  `soldto` varchar(255) DEFAULT NULL,
  `shipto` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipby` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `itemdesc` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderform`
--

LOCK TABLES `orderform` WRITE;
/*!40000 ALTER TABLE `orderform` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outofstocknotice`
--

DROP TABLE IF EXISTS `outofstocknotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outofstocknotice` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `custname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `qnty` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `esdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outofstocknotice`
--

LOCK TABLES `outofstocknotice` WRITE;
/*!40000 ALTER TABLE `outofstocknotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `outofstocknotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pettycash`
--

DROP TABLE IF EXISTS `pettycash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pettycash` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `vocher` varchar(255) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `balane` varchar(255) DEFAULT NULL,
  `auditedby` varchar(255) DEFAULT NULL,
  `approvedby1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pettycash`
--

LOCK TABLES `pettycash` WRITE;
/*!40000 ALTER TABLE `pettycash` DISABLE KEYS */;
INSERT INTO `pettycash` VALUES (1,'sales','10/28/2013','20000','1222000','Kiran','','20000','Kiran','Kiran'),(2,'sales','10/28/2013','20000','1222000','Kiran','','20000','Kiran','Kiran'),(3,'sales','10/28/2013','20000','1222000','Kiran','','20000','Kiran','Kiran');
/*!40000 ALTER TABLE `pettycash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pettycashvocher`
--

DROP TABLE IF EXISTS `pettycashvocher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pettycashvocher` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `account1` varchar(255) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `amount3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pettycashvocher`
--

LOCK TABLES `pettycashvocher` WRITE;
/*!40000 ALTER TABLE `pettycashvocher` DISABLE KEYS */;
INSERT INTO `pettycashvocher` VALUES (1,'12000','Just Take Care','9000','1000','Just Take Care','9000','1000','Just Take Care','9000'),(2,'12000','Just Take Care','9000','1000','Just Take Care','9000','1000','Just Take Care','9000');
/*!40000 ALTER TABLE `pettycashvocher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonebillexpences`
--

DROP TABLE IF EXISTS `phonebillexpences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebillexpences` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `billmonth` varchar(255) DEFAULT NULL,
  `amountdue` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebillexpences`
--

LOCK TABLES `phonebillexpences` WRITE;
/*!40000 ALTER TABLE `phonebillexpences` DISABLE KEYS */;
INSERT INTO `phonebillexpences` VALUES (1,'12/12/12','Mon','Airtel','7702305661','Repalle','Kiran','Sales','Jan','230000',NULL),(2,'','Sun','BSNL','','','','Sales','Jan','',NULL);
/*!40000 ALTER TABLE `phonebillexpences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physicalinventorycount`
--

DROP TABLE IF EXISTS `physicalinventorycount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physicalinventorycount` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `sheet` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `itemnumber` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `location1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physicalinventorycount`
--

LOCK TABLES `physicalinventorycount` WRITE;
/*!40000 ALTER TABLE `physicalinventorycount` DISABLE KEYS */;
/*!40000 ALTER TABLE `physicalinventorycount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `refenceno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `purchaseledger` varchar(255) DEFAULT NULL,
  `nameofitems` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_entry`
--

DROP TABLE IF EXISTS `purchase_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_entry` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `today` varchar(255) DEFAULT NULL,
  `partname` varchar(255) DEFAULT NULL,
  `qutationno` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `qnty` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_entry`
--

LOCK TABLES `purchase_entry` WRITE;
/*!40000 ALTER TABLE `purchase_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseorder` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `toaddress` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  `shipto` varchar(255) DEFAULT NULL,
  `shipweek` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantityordered` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unitcount` varchar(255) DEFAULT NULL,
  `unitprice` varchar(255) DEFAULT NULL,
  `specilainstructions` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `approvalname` varchar(255) DEFAULT NULL,
  `purchasername` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaserequsition`
--

DROP TABLE IF EXISTS `purchaserequsition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaserequsition` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `internalcode` varchar(255) DEFAULT NULL,
  `qntyrequired` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `quantityno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaserequsition`
--

LOCK TABLES `purchaserequsition` WRITE;
/*!40000 ALTER TABLE `purchaserequsition` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaserequsition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchasereturns`
--

DROP TABLE IF EXISTS `purchasereturns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchasereturns` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `today` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `quantityrequired` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasereturns`
--

LOCK TABLES `purchasereturns` WRITE;
/*!40000 ALTER TABLE `purchasereturns` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchasereturns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipt`
--

DROP TABLE IF EXISTS `recipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipt` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `currentbalance1` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipt`
--

LOCK TABLES `recipt` WRITE;
/*!40000 ALTER TABLE `recipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salescalllog`
--

DROP TABLE IF EXISTS `salescalllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salescalllog` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `today` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `calltype` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `purposeofcall` varchar(255) DEFAULT NULL,
  `opencovesation` varchar(255) DEFAULT NULL,
  `salesstory` varchar(255) DEFAULT NULL,
  `benfitsofcustomer` varchar(255) DEFAULT NULL,
  `objection` varchar(255) DEFAULT NULL,
  `closingconversation` varchar(255) DEFAULT NULL,
  `whentoflow` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salescalllog`
--

LOCK TABLES `salescalllog` WRITE;
/*!40000 ALTER TABLE `salescalllog` DISABLE KEYS */;
/*!40000 ALTER TABLE `salescalllog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesentry`
--

DROP TABLE IF EXISTS `salesentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesentry` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `today` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `quantityno` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesentry`
--

LOCK TABLES `salesentry` WRITE;
/*!40000 ALTER TABLE `salesentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorder`
--

DROP TABLE IF EXISTS `salesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesorder` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `toaddress` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  `shipto` varchar(255) DEFAULT NULL,
  `shipweek` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantityordered` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unitcount` varchar(255) DEFAULT NULL,
  `unitprice` varchar(255) DEFAULT NULL,
  `specilainstructions` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `approvalname` varchar(255) DEFAULT NULL,
  `purchasername` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorder`
--

LOCK TABLES `salesorder` WRITE;
/*!40000 ALTER TABLE `salesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesreturn`
--

DROP TABLE IF EXISTS `salesreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesreturn` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `refno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `paryaccount` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `salesledger` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesreturn`
--

LOCK TABLES `salesreturn` WRITE;
/*!40000 ALTER TABLE `salesreturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesreturnentry`
--

DROP TABLE IF EXISTS `salesreturnentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesreturnentry` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `today` varchar(255) DEFAULT NULL,
  `partyname` varchar(255) DEFAULT NULL,
  `quatationno` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `qantity` varchar(255) DEFAULT NULL,
  `unnits` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesreturnentry`
--

LOCK TABLES `salesreturnentry` WRITE;
/*!40000 ALTER TABLE `salesreturnentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesreturnentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockgroup`
--

DROP TABLE IF EXISTS `stockgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockgroup` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `qtyadd` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockgroup`
--

LOCK TABLES `stockgroup` WRITE;
/*!40000 ALTER TABLE `stockgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockitem`
--

DROP TABLE IF EXISTS `stockitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockitem` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rateofduty` varchar(255) DEFAULT NULL,
  `trafficclassification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockitem`
--

LOCK TABLES `stockitem` WRITE;
/*!40000 ALTER TABLE `stockitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephonesalesorder`
--

DROP TABLE IF EXISTS `telephonesalesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telephonesalesorder` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `toaddress` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) DEFAULT NULL,
  `shipto` varchar(255) DEFAULT NULL,
  `shipweek` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantityordered` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unitcount` varchar(255) DEFAULT NULL,
  `unitprice` varchar(255) DEFAULT NULL,
  `specilainstructions` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `approvalname` varchar(255) DEFAULT NULL,
  `purchasername` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephonesalesorder`
--

LOCK TABLES `telephonesalesorder` WRITE;
/*!40000 ALTER TABLE `telephonesalesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephonesalesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temppayslip`
--

DROP TABLE IF EXISTS `temppayslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temppayslip` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empid` varchar(255) DEFAULT NULL,
  `bankaccount` double DEFAULT NULL,
  `pfno` double DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `pannumber` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `paiddays` int(11) DEFAULT NULL,
  `basic` double DEFAULT NULL,
  `hra` double DEFAULT NULL,
  `pf` double DEFAULT NULL,
  `conv` double DEFAULT NULL,
  `da` double DEFAULT NULL,
  `gratuty` double DEFAULT NULL,
  `sa` double DEFAULT NULL,
  `monthly` double DEFAULT NULL,
  `yearly` double DEFAULT NULL,
  `overallsal` double DEFAULT NULL,
  `losspay` double DEFAULT NULL,
  `lic` double DEFAULT NULL,
  `insurence` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `schoolfee` double DEFAULT NULL,
  `childeducation` double DEFAULT NULL,
  `specialallogation` double DEFAULT NULL,
  `otherded` double DEFAULT NULL,
  `incometax` double DEFAULT NULL,
  `grass` double DEFAULT NULL,
  `netammount` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `empname` varchar(255) DEFAULT NULL,
  `pt` double DEFAULT NULL,
  `totalded` double DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temppayslip`
--

LOCK TABLES `temppayslip` WRITE;
/*!40000 ALTER TABLE `temppayslip` DISABLE KEYS */;
INSERT INTO `temppayslip` VALUES (119,'10001',12002102011,233112234,'HR','100210021','Manager',0,12000,1200,1200,0,1200,0,15590,30000,360000,0,0,0,0,0,0,0,0,0,0,0,0,0,'10/25/2013','Rayaprolu RaviKiran',NULL,NULL);
/*!40000 ALTER TABLE `temppayslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vochercontra`
--

DROP TABLE IF EXISTS `vochercontra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vochercontra` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `particular` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ammount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vochercontra`
--

LOCK TABLES `vochercontra` WRITE;
/*!40000 ALTER TABLE `vochercontra` DISABLE KEYS */;
/*!40000 ALTER TABLE `vochercontra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocherdetails`
--

DROP TABLE IF EXISTS `vocherdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocherdetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `typeofvocher` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `vochernumbering` varchar(255) DEFAULT NULL,
  `advconfiguration` varchar(255) DEFAULT NULL,
  `useeffectivedates` varchar(255) DEFAULT NULL,
  `usecommonnarration` varchar(255) DEFAULT NULL,
  `narrationsforeachentry` varchar(255) DEFAULT NULL,
  `nameofclass` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocherdetails`
--

LOCK TABLES `vocherdetails` WRITE;
/*!40000 ALTER TABLE `vocherdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocherdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocherpayment`
--

DROP TABLE IF EXISTS `vocherpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocherpayment` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocherpayment`
--

LOCK TABLES `vocherpayment` WRITE;
/*!40000 ALTER TABLE `vocherpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocherpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocherpurcahsereturn`
--

DROP TABLE IF EXISTS `vocherpurcahsereturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocherpurcahsereturn` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `refno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `partyaccount` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `purachaseledger` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocherpurcahsereturn`
--

LOCK TABLES `vocherpurcahsereturn` WRITE;
/*!40000 ALTER TABLE `vocherpurcahsereturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocherpurcahsereturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vochersales`
--

DROP TABLE IF EXISTS `vochersales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vochersales` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `refno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `salesledger` varchar(255) DEFAULT NULL,
  `nameofitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vochersales`
--

LOCK TABLES `vochersales` WRITE;
/*!40000 ALTER TABLE `vochersales` DISABLE KEYS */;
/*!40000 ALTER TABLE `vochersales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vochertype`
--

DROP TABLE IF EXISTS `vochertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vochertype` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `vochername` varchar(255) DEFAULT NULL,
  `vochertype` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `vochernumbering` varchar(255) DEFAULT NULL,
  `advconfiguration` varchar(255) DEFAULT NULL,
  `useeffectivedates` varchar(255) DEFAULT NULL,
  `usecommonnarration` varchar(255) DEFAULT NULL,
  `narrationsforeachentry` varchar(255) DEFAULT NULL,
  `nameofclass` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vochertype`
--

LOCK TABLES `vochertype` WRITE;
/*!40000 ALTER TABLE `vochertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `vochertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-29 20:29:32
