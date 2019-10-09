CREATE DATABASE  IF NOT EXISTS `finance` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `finance`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: finance
-- ------------------------------------------------------
-- Server version	5.5.20-log

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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupdetails`
--

LOCK TABLES `groupdetails` WRITE;
/*!40000 ALTER TABLE `groupdetails` DISABLE KEYS */;
INSERT INTO `groupdetails` VALUES (1,'TravelAdv','travelingAdv','IndirectExpenses','Travelling Details','Yes','No','No','NotApplicable','',NULL,'ravi_svs','2014-11-03',NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `groupdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_advertisementexp`
--

DROP TABLE IF EXISTS `tl_fn_advertisementexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_advertisementexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `onissues` varchar(255) DEFAULT NULL,
  `typeofaddess` varchar(255) DEFAULT NULL,
  `noofseconds` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `landno` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_advertisementexp`
--

LOCK TABLES `tl_fn_advertisementexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_advertisementexp` DISABLE KEYS */;
INSERT INTO `tl_fn_advertisementexp` VALUES (1,'Delta Soft Solutions','RealEstate','Selling the Plot','120','9876543212','044234561','10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Maxi3D','RealEstate','Building Structure','120','7702305661','044-2345621','30000','2014-10-24',NULL,NULL,NULL,'RaviTravelExp','SVSINFOMATICS',NULL),(3,'3DMax','CompanyLanching','Lanching','180','9987981817','040-223874','80000','2014-11-04',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan'),(4,'Delta Soft Solution','CompanyLanching','Lanching','180','7730123445','040-223874','1500000','2014-11-15',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan'),(5,'','','','','','','','2014-11-19',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','');
/*!40000 ALTER TABLE `tl_fn_advertisementexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_aggingaccountpayble`
--

DROP TABLE IF EXISTS `tl_fn_aggingaccountpayble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_aggingaccountpayble` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `invoice1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `thirtydays1` varchar(255) DEFAULT NULL,
  `sixtydays1` varchar(255) DEFAULT NULL,
  `nintydays1` varchar(255) DEFAULT NULL,
  `accounta1` varchar(255) DEFAULT NULL,
  `total1` varchar(255) DEFAULT NULL,
  `accounta2` varchar(255) DEFAULT NULL,
  `accounta3` varchar(255) DEFAULT NULL,
  `accounta4` varchar(255) DEFAULT NULL,
  `accounta5` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `invoice2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `thirtydays2` varchar(255) DEFAULT NULL,
  `sixtydays2` varchar(255) DEFAULT NULL,
  `nintydays2` varchar(255) DEFAULT NULL,
  `total2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `invoice3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `thirtydays3` varchar(255) DEFAULT NULL,
  `sixtydays3` varchar(255) DEFAULT NULL,
  `nintydays3` varchar(255) DEFAULT NULL,
  `total3` varchar(255) DEFAULT NULL,
  `date4` varchar(255) DEFAULT NULL,
  `invoice4` varchar(255) DEFAULT NULL,
  `account4` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `thirtydays4` varchar(255) DEFAULT NULL,
  `sixtydays4` varchar(255) DEFAULT NULL,
  `nintydays4` varchar(255) DEFAULT NULL,
  `total4` varchar(255) DEFAULT NULL,
  `date5` varchar(255) DEFAULT NULL,
  `invoice5` varchar(255) DEFAULT NULL,
  `account5` varchar(255) DEFAULT NULL,
  `description5` varchar(255) DEFAULT NULL,
  `thirtydays5` varchar(255) DEFAULT NULL,
  `sixtydays5` varchar(255) DEFAULT NULL,
  `nintydays5` varchar(255) DEFAULT NULL,
  `total5` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_aggingaccountpayble`
--

LOCK TABLES `tl_fn_aggingaccountpayble` WRITE;
/*!40000 ALTER TABLE `tl_fn_aggingaccountpayble` DISABLE KEYS */;
INSERT INTO `tl_fn_aggingaccountpayble` VALUES (1,'2014-11-01','2014-11-30','2014-11-01','10000','101010','Please sendData','3000','6000','9000','100010','18000','0010010','1010101','10101010','10101010','2014-11-09','10000','1010101','Please Send Data','3000','6000','9000','18000','2014-11-16','10000','10101010','Please Send Data','3000','6000','9000','18000','2014-11-23','10000','01010101','Please Send Data','3000','6000','9000','18000','2014-11-30','10000','10101010','Please Send Data','3000','6000','9000','18000','2014-11-15','SVSINFOMATICS',NULL);
/*!40000 ALTER TABLE `tl_fn_aggingaccountpayble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_aggingaccountreceivable`
--

DROP TABLE IF EXISTS `tl_fn_aggingaccountreceivable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_aggingaccountreceivable` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `invoice1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `thirtydays1` varchar(255) DEFAULT NULL,
  `sixtydays1` varchar(255) DEFAULT NULL,
  `nintydays1` varchar(255) DEFAULT NULL,
  `accounta1` varchar(255) DEFAULT NULL,
  `total1` varchar(255) DEFAULT NULL,
  `accounta2` varchar(255) DEFAULT NULL,
  `accounta3` varchar(255) DEFAULT NULL,
  `accounta4` varchar(255) DEFAULT NULL,
  `accounta5` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `invoice2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `thirtydays2` varchar(255) DEFAULT NULL,
  `sixtydays2` varchar(255) DEFAULT NULL,
  `nintydays2` varchar(255) DEFAULT NULL,
  `total2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `invoice3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `thirtydays3` varchar(255) DEFAULT NULL,
  `sixtydays3` varchar(255) DEFAULT NULL,
  `nintydays3` varchar(255) DEFAULT NULL,
  `total3` varchar(255) DEFAULT NULL,
  `date4` varchar(255) DEFAULT NULL,
  `invoice4` varchar(255) DEFAULT NULL,
  `account4` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `thirtydays4` varchar(255) DEFAULT NULL,
  `sixtydays4` varchar(255) DEFAULT NULL,
  `nintydays4` varchar(255) DEFAULT NULL,
  `total4` varchar(255) DEFAULT NULL,
  `date5` varchar(255) DEFAULT NULL,
  `invoice5` varchar(255) DEFAULT NULL,
  `account5` varchar(255) DEFAULT NULL,
  `description5` varchar(255) DEFAULT NULL,
  `thirtydays5` varchar(255) DEFAULT NULL,
  `sixtydays5` varchar(255) DEFAULT NULL,
  `nintydays5` varchar(255) DEFAULT NULL,
  `total5` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_aggingaccountreceivable`
--

LOCK TABLES `tl_fn_aggingaccountreceivable` WRITE;
/*!40000 ALTER TABLE `tl_fn_aggingaccountreceivable` DISABLE KEYS */;
INSERT INTO `tl_fn_aggingaccountreceivable` VALUES (1,'2014-11-01','2014-11-30','2014-11-02','10000','101010','Please sendData','3000','6000','9000','100010','18000','0010010','1010101','10101010','10101010','2014-11-09','10000','1010101','Please Send Data','3000','6000','9000','18000','2014-11-16','10000','10101010','Please Send Data','3000','6000','9000','18000','2014-11-23','10000','01010101','Please Send Data','3000','6000','9000','18000','2014-11-30','10000','10101010','Please Send Data','3000','6000','9000','18000','2014-11-15','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_aggingaccountreceivable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_autoexpencestravel`
--

DROP TABLE IF EXISTS `tl_fn_autoexpencestravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_autoexpencestravel` (
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
  `ledgername` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_autoexpencestravel`
--

LOCK TABLES `tl_fn_autoexpencestravel` WRITE;
/*!40000 ALTER TABLE `tl_fn_autoexpencestravel` DISABLE KEYS */;
INSERT INTO `tl_fn_autoexpencestravel` VALUES (1,'','Sun','Ravi','Kiran','Hyd','Kishore','Repalle','Official','Mumbai','Pavan','Telangana','5222201','9963514955','Finance','','Hyd','2000','4000','2000','7','14000','2014-10-01',NULL,NULL,NULL,NULL,NULL),(2,'2014-10-20','Sun','RaviKiran','Kirshna','Hyderabad','Krishna','Repalle','Demo','Hyderabad','Kumar','AndhraPradesh','5222515','040-223874','Finance','2014-10-20','Repalle','09873','09987','114','7','798','2014-10-20',NULL,NULL,NULL,NULL,NULL),(3,'2014-10-20','Sun',NULL,'Kirshna','Hyderabad','Krishna','Repalle','Demo','Hyderabad','Kumar','AndhraPradesh','5222515','040-223874','Sales','2014-10-20','Repalle','09873','09987','114','7','798','2014-10-20','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(4,'2014-10-24','Sun',NULL,'Kirshna','Hyderabad','Krishna','Repalle','Demo','Hyderabad','Kumar','AndhraPradesh','5222515','040-223874','Finance','2014-10-24','Repalle','09873','09987','114','7','798','2014-10-24','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(5,'2014-11-04','Sun',NULL,'Kiran','Hyderabad','Kirshna','Repalle','Office','Pune','Pavan','AndhraPradesh','522262','27600006','Finance','2014-11-04','Hyderabad','2000','20000','18000','8','144000','2014-11-04','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(6,'2014-12-12','Sun',NULL,'Pavan','Hyderabad','Pavan','Hyderabad','Job','NewDelhi','Pavan','Telangana','500020','7702305661','Finance','2014-12-12','KrishnaNagar','12020','12060','40','4','160','2014-12-12','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(7,'2014-12-30','Sun',NULL,'Pavan','Hyderabad','Pavan','Hyderabad','Office','AndhraPradesh','Pavan','AndhraPradesh','522262','8765432112','Sales','2014-12-30','Hyderabad','1230','1280','50','8','400','2014-12-30','KiranExp',NULL,NULL,'kiran.pgs@gmail.com','Paramount GS');
/*!40000 ALTER TABLE `tl_fn_autoexpencestravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_cashdisbursementsjournal`
--

DROP TABLE IF EXISTS `tl_fn_cashdisbursementsjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_cashdisbursementsjournal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `ledgerno` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `check1` varchar(255) DEFAULT NULL,
  `payee1` varchar(255) DEFAULT NULL,
  `accountc1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `cash1` varchar(255) DEFAULT NULL,
  `discount1` varchar(255) DEFAULT NULL,
  `other1` varchar(255) DEFAULT NULL,
  `accountd1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `amountp1` varchar(255) DEFAULT NULL,
  `accountp1` varchar(255) DEFAULT NULL,
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
  `accountp2` varchar(255) DEFAULT NULL,
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
  `accountp3` varchar(255) DEFAULT NULL,
  `othera3` varchar(255) DEFAULT NULL,
  `date4` varchar(255) DEFAULT NULL,
  `check4` varchar(255) DEFAULT NULL,
  `payee4` varchar(255) DEFAULT NULL,
  `accountc4` varchar(255) DEFAULT NULL,
  `account4` varchar(255) DEFAULT NULL,
  `cash4` varchar(255) DEFAULT NULL,
  `discount4` varchar(255) DEFAULT NULL,
  `other4` varchar(255) DEFAULT NULL,
  `accountd4` varchar(255) DEFAULT NULL,
  `amount4` varchar(255) DEFAULT NULL,
  `amountp4` varchar(255) DEFAULT NULL,
  `accountp4` varchar(255) DEFAULT NULL,
  `othera4` varchar(255) DEFAULT NULL,
  `date5` varchar(255) DEFAULT NULL,
  `check5` varchar(255) DEFAULT NULL,
  `payee5` varchar(255) DEFAULT NULL,
  `accountc5` varchar(255) DEFAULT NULL,
  `account5` varchar(255) DEFAULT NULL,
  `cash5` varchar(255) DEFAULT NULL,
  `discount5` varchar(255) DEFAULT NULL,
  `other5` varchar(255) DEFAULT NULL,
  `accountd5` varchar(255) DEFAULT NULL,
  `amount5` varchar(255) DEFAULT NULL,
  `amountp5` varchar(255) DEFAULT NULL,
  `accountp5` varchar(255) DEFAULT NULL,
  `othera5` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_cashdisbursementsjournal`
--

LOCK TABLES `tl_fn_cashdisbursementsjournal` WRITE;
/*!40000 ALTER TABLE `tl_fn_cashdisbursementsjournal` DISABLE KEYS */;
INSERT INTO `tl_fn_cashdisbursementsjournal` VALUES (1,'Jan','RaviTravelAdv','2014-10-01','1212121','1121212','212121','12000','121212','12121','12121','12121','12121','1212',NULL,'1212','2014-10-05','12121','1212','12121','2121','212121','1212121','212121','1212121','160000','12121',NULL,'12121','2014-10-12','12121','12121','12121','212121','12121','1212121','121212','1212121','1212121','1121212',NULL,'121212','2014-10-19','12121','212121','12121','21212','121212','1212121','12121','1212121','1212121','121212',NULL,'1212121','2014-10-26','12121','121212','1212121','12121','12121','12121','12121','12121','1212','12121',NULL,'1212112','2014-10-27','SVSINFOMATICS'),(2,'Jan','RaviTravelAdv','2014-11-02','10101010','20000','1201010','102010','30000','10','2000','2000','301010','4000',NULL,'20000','2014-11-09','10101010','20000','01102020','2020202','202020','20','2000','20002','30000','4000',NULL,'40000','2014-11-16','19019199','20000','10101010','20202020','20000','10','3000','3000','30000','4000',NULL,'50000','2014-11-23','10001919','20000','1001010','202001010','2000','20','3000','3000','3000','4000',NULL,'50000','2014-11-30','10001010','20000','03030300','20000','0','0','0','0','0','0',NULL,'0','2014-11-15','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_cashdisbursementsjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_cashreceiptsjournal`
--

DROP TABLE IF EXISTS `tl_fn_cashreceiptsjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_cashreceiptsjournal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `ledgerno` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `accountcredited1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `sales1` varchar(255) DEFAULT NULL,
  `amountreceivables1` varchar(255) DEFAULT NULL,
  `cash1` varchar(255) DEFAULT NULL,
  `discount1` varchar(255) DEFAULT NULL,
  `other1` varchar(255) DEFAULT NULL,
  `accountd1` varchar(255) DEFAULT NULL,
  `accounts1` varchar(255) DEFAULT NULL,
  `othera1` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `accountcredited2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `sales2` varchar(255) DEFAULT NULL,
  `amountreceivables2` varchar(255) DEFAULT NULL,
  `cash2` varchar(255) DEFAULT NULL,
  `discount2` varchar(255) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  `accountd2` varchar(255) DEFAULT NULL,
  `accounts2` varchar(255) DEFAULT NULL,
  `othera2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `accountcredited3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `sales3` varchar(255) DEFAULT NULL,
  `amountreceivables3` varchar(255) DEFAULT NULL,
  `cash3` varchar(255) DEFAULT NULL,
  `discount3` varchar(255) DEFAULT NULL,
  `other3` varchar(255) DEFAULT NULL,
  `accountd3` varchar(255) DEFAULT NULL,
  `accounts3` varchar(255) DEFAULT NULL,
  `othera3` varchar(255) DEFAULT NULL,
  `date4` varchar(255) DEFAULT NULL,
  `accountcredited4` varchar(255) DEFAULT NULL,
  `account4` varchar(255) DEFAULT NULL,
  `sales4` varchar(255) DEFAULT NULL,
  `amountreceivables4` varchar(255) DEFAULT NULL,
  `cash4` varchar(255) DEFAULT NULL,
  `discount4` varchar(255) DEFAULT NULL,
  `other4` varchar(255) DEFAULT NULL,
  `accountd4` varchar(255) DEFAULT NULL,
  `accounts4` varchar(255) DEFAULT NULL,
  `othera4` varchar(255) DEFAULT NULL,
  `date5` varchar(255) DEFAULT NULL,
  `accountcredited5` varchar(255) DEFAULT NULL,
  `account5` varchar(255) DEFAULT NULL,
  `sales5` varchar(255) DEFAULT NULL,
  `amountreceivables5` varchar(255) DEFAULT NULL,
  `cash5` varchar(255) DEFAULT NULL,
  `discount5` varchar(255) DEFAULT NULL,
  `other5` varchar(255) DEFAULT NULL,
  `accountd5` varchar(255) DEFAULT NULL,
  `accounts5` varchar(255) DEFAULT NULL,
  `othera5` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_cashreceiptsjournal`
--

LOCK TABLES `tl_fn_cashreceiptsjournal` WRITE;
/*!40000 ALTER TABLE `tl_fn_cashreceiptsjournal` DISABLE KEYS */;
INSERT INTO `tl_fn_cashreceiptsjournal` VALUES (1,'Jan','RaviTravelAdv','2014-10-01','sfskfjsklj','12000','12121','212121','121212','12121','121212','12121','121212','1212','2014-10-05','1212121','2121','121212','21212','212121','1212121','212121','1212121','121212','12121','2014-10-12','11212','212121','121212','121212','12121','1212121','121212','1212121','12121','121212','2014-10-19','12121','21212','1212','12122','121212','1212121','12121','1212121','12121','1212121','2014-10-26','12121','12121','121212','12121','12121','12121','12121','12122','1212121','1212112','2014-10-27',NULL,NULL),(2,'Jan','RaviTravelAdv','2014-11-02','10010','2000','2000','100','3000','10','3000','2020','102020','101010','2014-11-09','100191919','299','92929','3999','93939','9292828','828282','82828','82828','82828','2014-11-16','10101001','10101','301010','300','191818','10','3000','3000','12455','50000','2014-11-23','1245879','01010101','2564789','500','2000','20','3000','3000','15487','462589','2014-11-30','458976','12356487','23645697','700','0','0','0','0','2546','0','2014-11-15','SVSINFOMATICS',NULL);
/*!40000 ALTER TABLE `tl_fn_cashreceiptsjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_cashreciptjournal`
--

DROP TABLE IF EXISTS `tl_fn_cashreciptjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_cashreciptjournal` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_cashreciptjournal`
--

LOCK TABLES `tl_fn_cashreciptjournal` WRITE;
/*!40000 ALTER TABLE `tl_fn_cashreciptjournal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_fn_cashreciptjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_closingstock`
--

DROP TABLE IF EXISTS `tl_fn_closingstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_closingstock` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `stockitem` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_closingstock`
--

LOCK TABLES `tl_fn_closingstock` WRITE;
/*!40000 ALTER TABLE `tl_fn_closingstock` DISABLE KEYS */;
INSERT INTO `tl_fn_closingstock` VALUES (1,'CrystalCoal','8500.0','ton','32235.29411764706','2.74E8',NULL,NULL,NULL,NULL,NULL),(2,'LeeJeans','500.0','mts','800.0','400000.0',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_fn_closingstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_companyregistration`
--

DROP TABLE IF EXISTS `tl_fn_companyregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_companyregistration` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reenterpassword` varchar(255) DEFAULT NULL,
  `app_status` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `companyid` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `logopath` varchar(255) DEFAULT NULL,
  `logoname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_companyregistration`
--

LOCK TABLES `tl_fn_companyregistration` WRITE;
/*!40000 ALTER TABLE `tl_fn_companyregistration` DISABLE KEYS */;
INSERT INTO `tl_fn_companyregistration` VALUES (26,'SVSINFOMATICS','svsinfomatics@gmail.com','1234567','123456','Admin','2014-10-24',NULL,'8987654321','040-34567898','svsinfomatics@gmail.com','Hyderabad',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\logo.jpg','logo.jpg'),(27,'HCL','hcl.hr@gmail.com','123456','123456','Admin','2014-10-24',NULL,'8765432109','040-2345678','hcl.hr@gmail.com','Hyderabad',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\hcllogo.gif','hcllogo.gif'),(28,'ABC Sysytems','vsvtn99','sai1212345','sai1212345','Admin','2014-10-28',NULL,'972-743-7554','27600007','pv@abc.com','Plot no5, balaji swarnapuri colony',NULL,NULL,NULL,NULL,NULL),(29,'Delta Soft Solutions','delta.hr@gmail.com','123456','123456','Admin','2014-10-28',NULL,'9989942212','08648-223874','delta.hr@gmail.com','Repalle.',NULL,NULL,NULL,'E:\\spring projects\\e-Finance\\e-Finance\\logosdelta-software-solutions-logo.png','delta-software-solutions-logo.png'),(30,'TCS','tcs.hr@gmail,com','123456','123456','Admin','2014-10-30',NULL,'9989934414','040-2345678','tcs.hr@gmail,com','Hyderabad',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logostcs-logo-ef1e3c1b4a-seeklogocom1.gif','tcs-logo-ef1e3c1b4a-seeklogocom1.gif'),(33,'INFOSYS','infosys.hr@gmail.com','123456','123456','Admin','2014-10-30',NULL,'8987654321','040-2345678','infosys.hr@gmail.com','Hyderabad',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\Infosys.jpg','Infosys.jpg'),(34,'abc.com','pavan@abc.com','abc123','abc123','Admin','2014-11-01',NULL,'9727437554','040-2760006','pavan@abc.com','chikkadapalli',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\alter_button.png','alter_button.png'),(35,'Delta Soft Solution','delta.hr@gmail.com','1234567','1234567','Admin','2014-11-12',NULL,'9989942212','040-2238741','delta.hr@gmail.com','Repalle.',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\Adobe-PDF.gif','Adobe-PDF.gif'),(36,'PGS','pavan@pgs.com','123456','123456','Admin','2014-12-12',NULL,'7730123445','040-27600006','pavan@pgs.com','Texas',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\tcs-logo-ef1e3c1b4a-seeklogocom1.gif','tcs-logo-ef1e3c1b4a-seeklogocom1.gif'),(37,'ESS','hr.ess@gmail.com','123456','123456','Admin','2014-12-15',NULL,'8987654321','040-22387412','hr.ess@gmail.com','Hyderabad.',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\ESS_LOGO26.gif','ESS_LOGO26.gif'),(38,'Paramount GS','pavan@paramountgs.com','abc123','abc123','Admin','2014-12-30',NULL,'9733333333','040-27600006','pavan@paramountgs.com','Dalas , TX',NULL,NULL,NULL,'D:\\java projects\\e-Finance\\e-Finance\\logos\\FileUploadImage;upload;banner_img2.jpg','FileUploadImage;upload;banner_img2.jpg');
/*!40000 ALTER TABLE `tl_fn_companyregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_current_asserts`
--

DROP TABLE IF EXISTS `tl_fn_current_asserts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_current_asserts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `ledgername` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_current_asserts`
--

LOCK TABLES `tl_fn_current_asserts` WRITE;
/*!40000 ALTER TABLE `tl_fn_current_asserts` DISABLE KEYS */;
INSERT INTO `tl_fn_current_asserts` VALUES (1,'RaviTravelExp','-1.9405E7','IndirectExpenses','SVSINFOMATICS'),(2,'RaviTravelAdv','0.0','IndirectExpenses','SVSINFOMATICS'),(3,'Cash','0.0','Cash-in-Hand','SVSINFOMATICS'),(4,'Coal','-400000.0','PurchaseAccounts','SVSINFOMATICS'),(11,'RaviTravelAdv','0.0','IndirectExpenses','SVSINFOMATICS'),(12,'svsfund','4000000','CapitalAccount','SVSINFOMATICS'),(17,'CoalSales','400000.0','SalesAccounts','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_current_asserts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_dailycashreport`
--

DROP TABLE IF EXISTS `tl_fn_dailycashreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_dailycashreport` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `dates` varchar(255) DEFAULT NULL,
  `sno1` varchar(255) DEFAULT NULL,
  `cashrecordedform1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `cashpaidoutto1` varchar(255) DEFAULT NULL,
  `amounts1` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `sno2` varchar(255) DEFAULT NULL,
  `cashrecordedform2` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `cashpaidoutto2` varchar(255) DEFAULT NULL,
  `amounts2` varchar(255) DEFAULT NULL,
  `sno3` varchar(255) DEFAULT NULL,
  `cashrecordedform3` varchar(255) DEFAULT NULL,
  `amount3` varchar(255) DEFAULT NULL,
  `cashpaidoutto3` varchar(255) DEFAULT NULL,
  `amounts3` varchar(255) DEFAULT NULL,
  `sno4` varchar(255) DEFAULT NULL,
  `cashrecordedform4` varchar(255) DEFAULT NULL,
  `amount4` varchar(255) DEFAULT NULL,
  `cashpaidoutto4` varchar(255) DEFAULT NULL,
  `amounts4` varchar(255) DEFAULT NULL,
  `sno5` varchar(255) DEFAULT NULL,
  `cashrecordedform5` varchar(255) DEFAULT NULL,
  `amount5` varchar(255) DEFAULT NULL,
  `cashpaidoutto5` varchar(255) DEFAULT NULL,
  `amounts5` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_dailycashreport`
--

LOCK TABLES `tl_fn_dailycashreport` WRITE;
/*!40000 ALTER TABLE `tl_fn_dailycashreport` DISABLE KEYS */;
INSERT INTO `tl_fn_dailycashreport` VALUES (1,'yyyy-mm-dd','1','Krishna','4000','Kamal','40000','2014-10-27','2','kumar','5000','kumar','50000','3','kiran','5000','Kumar','50000','4','Kutumbayya','60000','krishna','50000','5','kesava','7000','janam','7000',NULL,NULL),(2,'2014-11-15',NULL,'Ravi','3000','HCL','3000','2014-11-15',NULL,'Delta','5000','TCS','5000',NULL,'NTPCL','5000','Delta','4000',NULL,'BHEL','4000','Delta ','4000',NULL,'NTPCL','5000','Delta ','4000','SVSINFOMATICS',NULL);
/*!40000 ALTER TABLE `tl_fn_dailycashreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_entertainmentexpenceses`
--

DROP TABLE IF EXISTS `tl_fn_entertainmentexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_entertainmentexpenceses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `amountdue` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_entertainmentexpenceses`
--

LOCK TABLES `tl_fn_entertainmentexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_entertainmentexpenceses` DISABLE KEYS */;
INSERT INTO `tl_fn_entertainmentexpenceses` VALUES (1,NULL,'27600006','Hyderabad','Pavan','Sales','2014-11-15','Sun','2000',NULL,NULL,NULL,'2014-11-15','RaviTravelAdv','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_entertainmentexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_foodexpenses`
--

DROP TABLE IF EXISTS `tl_fn_foodexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_foodexpenses` (
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
  `ledgername` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_foodexpenses`
--

LOCK TABLES `tl_fn_foodexpenses` WRITE;
/*!40000 ALTER TABLE `tl_fn_foodexpenses` DISABLE KEYS */;
INSERT INTO `tl_fn_foodexpenses` VALUES (1,NULL,'040-223874','Hyderabad','Kumar','Finance','2014-10-20','Sun','798','2014-10-20','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(2,NULL,'7702305661','Hyderabad','Kumar','Finance','2014-10-24','Tue','798','2014-10-24','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(3,NULL,'27600006','Hyderabad','Pavan','Sales','2014-11-04','Sun','2000','2014-11-04','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(4,NULL,'','','','Sales','yyyy-mm-dd','Sun','','2014-11-18','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(5,NULL,'9989942212','Panjagutta','Pavan','Sales','2014-12-30','Sun','2000','2014-12-30','KiranExp',NULL,NULL,NULL,'Paramount GS');
/*!40000 ALTER TABLE `tl_fn_foodexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_groupmapping`
--

DROP TABLE IF EXISTS `tl_fn_groupmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_groupmapping` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `primarygroup` varchar(255) DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_groupmapping`
--

LOCK TABLES `tl_fn_groupmapping` WRITE;
/*!40000 ALTER TABLE `tl_fn_groupmapping` DISABLE KEYS */;
INSERT INTO `tl_fn_groupmapping` VALUES (1,'IndirectExpenses','TravelAdv',NULL,'SVSINFOMATICS'),(2,'BankAccounts','BankAccounts',NULL,NULL),(3,'BankOCC-A/c','BankOCC-A/c',NULL,NULL),(4,'BankOD-A/c','BankOD-A/c',NULL,NULL),(5,'Branch/Divisions','Branch/Divisions',NULL,NULL),(6,'CapitalAccount','CapitalAccount',NULL,NULL),(7,'Cash-in-Hand','Cash-in-Hand',NULL,NULL),(8,'CurrentAssets','CurrentAssets',NULL,NULL),(9,'CurrentLiabilities','CurrentLiabilities',NULL,NULL),(10,'Deposits(Asset)','Deposits(Asset)',NULL,NULL),(11,'DirectExpenses','DirectExpenses',NULL,NULL),(12,'DirectIncomes','DirectIncomes',NULL,NULL),(13,'Duties&Taxes','Duties&Taxes',NULL,NULL),(14,'Expenses(Direct)\n','Expenses(Direct)\n',NULL,NULL),(15,'Expenses(InDirect)','Expenses(InDirect)',NULL,NULL),(16,'FixedAssets','FixedAssets',NULL,NULL),(17,'Income(Direct)','Income(Direct)',NULL,NULL),(18,'Income(InDirect)','Income(InDirect)',NULL,NULL),(19,'IndirectExpenses','IndirectExpenses',NULL,NULL),(20,'IndirectIncomes','IndirectIncomes',NULL,NULL),(21,'Investments','Investments',NULL,NULL),(22,'Loans&Advances','Loans&Advances',NULL,NULL),(23,'Loans(Liability)','Loans(Liability)',NULL,NULL),(24,'Provisions','Provisions',NULL,NULL),(25,'PurchaseAccounts','PurchaseAccounts',NULL,NULL),(26,'Reverse&Surplus','Reverse&Surplus',NULL,NULL),(27,'RetainedEarnings','RetainedEarnings',NULL,NULL),(28,'SalesAccounts','SalesAccounts',NULL,NULL),(29,'SecuredLoans','SecuredLoans',NULL,NULL),(30,'Stock-in-hand','Stock-in-hand',NULL,NULL),(31,'SundryCreditors','SundryCreditors',NULL,NULL),(32,'SundryDebtors','SundryDebtors',NULL,NULL),(33,'Suspense-A/c','Suspense-A/c',NULL,NULL),(34,'UnsecuredLoans','UnsecuredLoans',NULL,NULL);
/*!40000 ALTER TABLE `tl_fn_groupmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_groups`
--

DROP TABLE IF EXISTS `tl_fn_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_groups` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_groups`
--

LOCK TABLES `tl_fn_groups` WRITE;
/*!40000 ALTER TABLE `tl_fn_groups` DISABLE KEYS */;
INSERT INTO `tl_fn_groups` VALUES (3,'BankAccounts',NULL),(4,'BankOCC-A/c',NULL),(5,'BankOD-A/c',NULL),(6,'Branch/Divisions',NULL),(7,'CapitalAccount',NULL),(8,'Cash-in-Hand',NULL),(9,'CurrentAssets',NULL),(10,'CurrentLiabilities',NULL),(11,'Deposits(Asset)',NULL),(12,'DirectExpenses',NULL),(13,'DirectIncomes',NULL),(14,'Duties&Taxes',NULL),(15,'Expenses(Direct)',NULL),(16,'Expenses(InDirect)',NULL),(17,'FixedAssets',NULL),(18,'Income(Direct)',NULL),(19,'Income(InDirect)',NULL),(20,'IndirectExpenses',NULL),(21,'IndirectIncomes',NULL),(22,'Investments',NULL),(23,'Loans&Advances(Asset)',NULL),(24,'Loans(Liability)',NULL),(25,'Misc.Expenses(ASSET)',NULL),(26,'Provisions',NULL),(27,'PurchaseAccounts',NULL),(28,'Reverse&Surplus',NULL),(29,'RetainedEarnings',NULL),(30,'SalesAccounts',NULL),(31,'SecuredLoans',NULL),(32,'Stock-in-hand',NULL),(33,'SundryCreditors',NULL),(34,'SundryDebtors',NULL),(35,'Suspense-A/c',NULL),(36,'UnsecuredLoans',NULL),(52,'TravelAdv','SVSINFOMATICS'),(53,'Other CurrentLiabilites',NULL);
/*!40000 ALTER TABLE `tl_fn_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_hotelexpenses`
--

DROP TABLE IF EXISTS `tl_fn_hotelexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_hotelexpenses` (
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
  `totalamount` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_hotelexpenses`
--

LOCK TABLES `tl_fn_hotelexpenses` WRITE;
/*!40000 ALTER TABLE `tl_fn_hotelexpenses` DISABLE KEYS */;
INSERT INTO `tl_fn_hotelexpenses` VALUES (1,NULL,'040-223874','Hyderabad','Kumar','Finance','2014-10-21','Sun','4','Taj','Hyderabad','5000','20000',NULL,NULL,NULL,'2014-10-21','RaviTravelAdv','SVSINFOMATICS'),(2,NULL,'27600006','Hyderabad','Pavan','Sales','2014-11-03','Sun','2','Taj','Bombay','2000','4000',NULL,NULL,NULL,'2014-11-04','RaviTravelAdv','SVSINFOMATICS'),(3,NULL,'','','','Sales','yyyy-mm-dd','Sun','','','','','',NULL,NULL,NULL,'2014-11-19','RaviTravelAdv','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_hotelexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_internetexp`
--

DROP TABLE IF EXISTS `tl_fn_internetexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_internetexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `package1` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `installments` varchar(255) DEFAULT NULL,
  `repairs` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `complientno` varchar(255) DEFAULT NULL,
  `paymentplan` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `paiddate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_internetexp`
--

LOCK TABLES `tl_fn_internetexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_internetexp` DISABLE KEYS */;
INSERT INTO `tl_fn_internetexp` VALUES (1,'Delta Soft Solutions','ComboPack','3000','2',NULL,'6000','044-654321','181818187171717','3000','9876543212','50000','2014-09-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'BSNL','4MBPS','800','800',NULL,'800','040-27600006','19292929292929','800','9989942212','800','2014-11-04',NULL,NULL,NULL,NULL,NULL,'SVSINFOMATICS','Pavan'),(3,'BSNL','4MBPS','800','800',NULL,'800','27600006','19292929292929','800','9989942212','800','2014-11-04',NULL,NULL,NULL,NULL,NULL,'SVSINFOMATICS','Pavan'),(4,'Delta Soft Solution','4MBPS','800','2',NULL,'60000','040-27600006','19292929292929','800','7730123445','800','2014-11-15',NULL,NULL,NULL,'RaviTravelExp',NULL,'SVSINFOMATICS','Pavan');
/*!40000 ALTER TABLE `tl_fn_internetexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_ledger`
--

DROP TABLE IF EXISTS `tl_fn_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_ledger` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `ledgername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_ledger`
--

LOCK TABLES `tl_fn_ledger` WRITE;
/*!40000 ALTER TABLE `tl_fn_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_fn_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_ledgerdetails`
--

DROP TABLE IF EXISTS `tl_fn_ledgerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_ledgerdetails` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_ledgerdetails`
--

LOCK TABLES `tl_fn_ledgerdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_ledgerdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_ledgerdetails` VALUES (1,'RaviTravelAdv','RaviTravelAdvance','TravelAdv','No','RaviKiran','Repalle','AndhraPradesh','5222265','KJW0100','12121211212','','Dr','',NULL,'ravi_svs','2014-11-03','SVSINFOMATICS'),(2,'Cash','Cash','Cash-in-Hand','','Cash in Hand','Repalle','AndhraPradesh','5222265','KJW0100','12121211212','','Dr','',NULL,'ravi_svs','2014-11-07','SVSINFOMATICS'),(3,'RaviTravelExp','RaviTravelExp','IndirectExpenses','','RaviKiran TravelExp','Repalle.','AndhraPradesh','5222265','KJW0100','12121211212','','Dr','',NULL,'ravi_svs','2014-11-07','SVSINFOMATICS'),(4,'Coal','Coalpurchases','PurchaseAccounts','No','RamagundamCoal Station','KottaGudam,Khammam.','Telangana','233282812','KIKDK2928','12121334459','','Dr','',NULL,'ravi_svs','2014-11-11','SVSINFOMATICS'),(5,'CoalSales','CoalSales','SalesAccounts','No','CoalSalesDetails(RamaGundam)','RamaGundam,Khammam.','Telangana','233282812','KJW0100','12121211212','','Dr','',NULL,'ravi_svs','2014-11-11','SVSINFOMATICS'),(6,'svsfund','svsprivatefund','CapitalAccount','No','svsinfomaticsfund','Hyderabad','Telangana','5000022','KIURKI908','987654','','Dr','',NULL,'ravi_svs','2014-11-26','SVSINFOMATICS'),(7,'KiranAdv','kiranadv','BankAccounts','No','Kirankumar','Hyderabad','AndhraPradesh','5222265','2345876','765432','','Dr','',NULL,'kiran.pgs@gmail.com','2014-12-30','Paramount GS'),(8,'KiranExp','kiranexp','IndirectExpenses','No','KiranKumar','Hyderabad','AndhraPradesh','5222265','234567','234567','','Dr','',NULL,'kiran.pgs@gmail.com','2014-12-30','Paramount GS');
/*!40000 ALTER TABLE `tl_fn_ledgerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_measures`
--

DROP TABLE IF EXISTS `tl_fn_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_measures` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `formalname` varchar(255) DEFAULT NULL,
  `numofdec` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_measures`
--

LOCK TABLES `tl_fn_measures` WRITE;
/*!40000 ALTER TABLE `tl_fn_measures` DISABLE KEYS */;
INSERT INTO `tl_fn_measures` VALUES (1,'Simple','mts','meters','2',NULL,NULL,NULL,'SVSINFOMATICS'),(2,'Simple','ton','tonnes','3',NULL,NULL,NULL,'SVSINFOMATICS'),(3,'Simple','kg','KiloGram','2',NULL,NULL,NULL,NULL),(4,'Simple','kg','KiloGrams','2',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_misleniousexpenceses`
--

DROP TABLE IF EXISTS `tl_fn_misleniousexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_misleniousexpenceses` (
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
  `ledgername` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_misleniousexpenceses`
--

LOCK TABLES `tl_fn_misleniousexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_misleniousexpenceses` DISABLE KEYS */;
INSERT INTO `tl_fn_misleniousexpenceses` VALUES (1,NULL,'7702305661','Hyderabad','Kumar','Finance','2014-10-24','Sun','Current','3000','2014-10-24','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(2,NULL,'27600006','Hyderabad','Pavan','Sales','2014-11-04','Sun','Snacks','2000','2014-11-04','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(3,NULL,'27600006','Hyderabad','Pavan','Finance','2014-11-15','Sun','Snacks','60000','2014-11-15','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(4,NULL,'1221212121','Hyderabad','Pavan','Sales','2014-12-11','Sun','Snacks','60000','2014-12-13','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_misleniousexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_nontradingexpenceses`
--

DROP TABLE IF EXISTS `tl_fn_nontradingexpenceses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_nontradingexpenceses` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  `day1` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_nontradingexpenceses`
--

LOCK TABLES `tl_fn_nontradingexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_nontradingexpenceses` DISABLE KEYS */;
INSERT INTO `tl_fn_nontradingexpenceses` VALUES (1,NULL,'7702305661','Hyderabad','Kumar','Finance','2014-10-24','Fri','TV','8','3000','2014-10-24','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS','24000'),(2,NULL,'27600006','Hyderabad','Pavan','Finance','2014-11-04','Sun','TV','2','5000','2014-11-04','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS','10000'),(3,NULL,'27600006','Hyderabad','Pavan','Sales','2014-11-15','Sun','TV','500','60000','2014-11-15','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS','30000000');
/*!40000 ALTER TABLE `tl_fn_nontradingexpenceses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_officeexp`
--

DROP TABLE IF EXISTS `tl_fn_officeexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_officeexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `amountperitem` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_officeexp`
--

LOCK TABLES `tl_fn_officeexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_officeexp` DISABLE KEYS */;
INSERT INTO `tl_fn_officeexp` VALUES (1,'TV','1','100000','100000','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL,NULL),(2,'TV','8','30000','240000','2014-10-24',NULL,NULL,NULL,'RaviTravelExp','SVSINFOMATICS',NULL),(3,'TV','2','4000','8000','2014-11-04',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan'),(4,'TV','5000','4000','20000000','2014-11-15',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan');
/*!40000 ALTER TABLE `tl_fn_officeexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_pettycashjournal`
--

DROP TABLE IF EXISTS `tl_fn_pettycashjournal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_pettycashjournal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `voucher` varchar(255) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `auditedby` varchar(255) DEFAULT NULL,
  `approvedbys` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_pettycashjournal`
--

LOCK TABLES `tl_fn_pettycashjournal` WRITE;
/*!40000 ALTER TABLE `tl_fn_pettycashjournal` DISABLE KEYS */;
INSERT INTO `tl_fn_pettycashjournal` VALUES (1,'Sales','2014-10-15','2121','1212121','Pavan','100000','12121','Krishna','Ravi',NULL,NULL,NULL),(2,'Sales','2014-11-11','121221','40000','Pavan','1600','3000','Krishna','kumar','2014-11-15',NULL,'SVSINFOMATICS'),(3,'Sales','2014-11-15','121221','40000','Pavan','1600','3000','Kirshna','kumar','2014-11-15',NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_pettycashjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_pettycashvoucher`
--

DROP TABLE IF EXISTS `tl_fn_pettycashvoucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_pettycashvoucher` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `sno1` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `sno2` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `sno3` varchar(255) DEFAULT NULL,
  `account3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `amount3` varchar(255) DEFAULT NULL,
  `sno4` varchar(255) DEFAULT NULL,
  `account4` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `amount4` varchar(255) DEFAULT NULL,
  `sno5` varchar(255) DEFAULT NULL,
  `account5` varchar(255) DEFAULT NULL,
  `description5` varchar(255) DEFAULT NULL,
  `amount5` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_pettycashvoucher`
--

LOCK TABLES `tl_fn_pettycashvoucher` WRITE;
/*!40000 ALTER TABLE `tl_fn_pettycashvoucher` DISABLE KEYS */;
INSERT INTO `tl_fn_pettycashvoucher` VALUES (1,'1','12000','Please keep going','12121',NULL,'2','2121','2121','120000','3','212121','2122121','1212121','4','21212','12121','1212121','5','12121','12121','1212',NULL,NULL),(2,NULL,'101010','Please sendData','3000','2014-11-15',NULL,'1010101','Please Send Data','25000',NULL,'10101010','Please Send Data','30000',NULL,'01010101','Please Send Data','3000',NULL,'10101010','Please Send Data','5000','SVSINFOMATICS',NULL);
/*!40000 ALTER TABLE `tl_fn_pettycashvoucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_phonebillexpences`
--

DROP TABLE IF EXISTS `tl_fn_phonebillexpences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_phonebillexpences` (
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
  `ledgername` varchar(255) DEFAULT NULL,
  `department1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_phonebillexpences`
--

LOCK TABLES `tl_fn_phonebillexpences` WRITE;
/*!40000 ALTER TABLE `tl_fn_phonebillexpences` DISABLE KEYS */;
INSERT INTO `tl_fn_phonebillexpences` VALUES (1,'2014-10-02','Sun','BSNL','9963514955','Repalle','Pavan','Sales','Jan','14000','2014-10-02',NULL,NULL,NULL,NULL,NULL),(2,'2014-10-02','Sun','Airtel','9989942212','Hyd','Pavan','Finance','Feb','14000','2014-10-02',NULL,NULL,NULL,NULL,NULL),(3,'2014-10-20','Sun','BSNL','040-223874','Hyderabad','Kumar','Sales','Jan','798','2014-10-20','RaviTravelExp',NULL,NULL,NULL,NULL),(4,'2014-10-24','Fri','BSNL','040-223874','Hyderabad','Kumar','Finance','Jan','798','2014-10-24','RaviTravelExp',NULL,NULL,NULL,'SVSINFOMATICS'),(5,'2014-11-04','Sun','BSNL','27600006','Hyderabad','Pavan','Finance','Jan','890','2014-11-04','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS'),(6,'2014-11-10','Mon','Airtel','040-27600006','Hyderabad','Pavan','Accounts','Oct','2000','2014-11-12',NULL,NULL,NULL,NULL,'Delta Soft Solution'),(7,'yyyy-mm-dd','Sun','BSNL','9848022361','Hyderabad','Pavan','Sales','Jan','567','2014-12-30','KiranAdv',NULL,NULL,NULL,'Paramount GS');
/*!40000 ALTER TABLE `tl_fn_phonebillexpences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_postageexp`
--

DROP TABLE IF EXISTS `tl_fn_postageexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_postageexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `to_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `typeofpost` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_postageexp`
--

LOCK TABLES `tl_fn_postageexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_postageexp` DISABLE KEYS */;
INSERT INTO `tl_fn_postageexp` VALUES (1,'HCL','Delhi','SpeedPost','200','300','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL,NULL),(2,'PavanKumar','US','SpeedPost','10000','10000','2014-10-24',NULL,NULL,NULL,'RaviTravelExp',NULL,NULL),(3,'PavanKumar','Repalle','SpeedPost','100','100','2014-10-24',NULL,NULL,NULL,'RaviTravelExp','SVSINFOMATICS',NULL),(4,'HCL','Repalle','Speed Post','200','200','2014-11-15',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan');
/*!40000 ALTER TABLE `tl_fn_postageexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_purchase`
--

DROP TABLE IF EXISTS `tl_fn_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_purchase` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `refenceno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT NULL,
  `partyaccountname` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `purchaseledger` varchar(255) DEFAULT NULL,
  `nameofitems` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_purchase`
--

LOCK TABLES `tl_fn_purchase` WRITE;
/*!40000 ALTER TABLE `tl_fn_purchase` DISABLE KEYS */;
INSERT INTO `tl_fn_purchase` VALUES (1,'1','1','11/11/2014','Cash',NULL,'','Coal','CrystalCoal','5000','ton','50000','250000000','Amount is paid to the Company.','2014-11-11',NULL,NULL,NULL,'SVSINFOMATICS'),(2,'2','2','11/11/2014','Cash',NULL,'','Coal','CrystalCoal','500','ton','30000','15000000','Amount is Paid to Company.','2014-11-11',NULL,NULL,NULL,'SVSINFOMATICS'),(3,'3','3','11/16/2014','Cash',NULL,'','Coal','CrystalCoal','3000','ton','3000','9000000','Amount is to be payed.','2014-11-16',NULL,NULL,NULL,'SVSINFOMATICS'),(4,'4','4','11/28/2014','Cash',NULL,'','Coal','LeeJeans','500','mts','800','400000','Amount is Paid to the Person.','2014-11-28',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_recipt`
--

DROP TABLE IF EXISTS `tl_fn_recipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_recipt` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_recipt`
--

LOCK TABLES `tl_fn_recipt` WRITE;
/*!40000 ALTER TABLE `tl_fn_recipt` DISABLE KEYS */;
INSERT INTO `tl_fn_recipt` VALUES (1,'1','2014-11-26','svsfund','-4000000.0','RaviTravelAdv','1555000.0','4000000','Amount is Paid.',NULL,NULL,NULL,NULL,'2014-11-26','SVSINFOMATICS'),(2,'1','2014-12-19','Cash','','RaviTravelAdv','','','',NULL,NULL,NULL,NULL,'2014-12-19','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_recipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_repairmaintenance`
--

DROP TABLE IF EXISTS `tl_fn_repairmaintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_repairmaintenance` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `ledgername` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  `approvedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_repairmaintenance`
--

LOCK TABLES `tl_fn_repairmaintenance` WRITE;
/*!40000 ALTER TABLE `tl_fn_repairmaintenance` DISABLE KEYS */;
INSERT INTO `tl_fn_repairmaintenance` VALUES (1,'Wiring','2','300','600','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL,NULL),(2,'TV','8','4000','32000','2014-10-24',NULL,NULL,NULL,'RaviTravelExp','SVSINFOMATICS',NULL),(3,'TV','2','800','1600','2014-11-04',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS',NULL),(4,'TV','2','800','1600','2014-11-04',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS',NULL),(5,'TV','2','2000','4000','2014-11-04',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan'),(6,'TV','3','60000','180000','2014-11-15',NULL,NULL,NULL,'RaviTravelAdv','SVSINFOMATICS','Pavan');
/*!40000 ALTER TABLE `tl_fn_repairmaintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_salaryexp`
--

DROP TABLE IF EXISTS `tl_fn_salaryexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_salaryexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `noofemployee` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_salaryexp`
--

LOCK TABLES `tl_fn_salaryexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_salaryexp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_fn_salaryexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_salesreturn`
--

DROP TABLE IF EXISTS `tl_fn_salesreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_salesreturn` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_salesreturn`
--

LOCK TABLES `tl_fn_salesreturn` WRITE;
/*!40000 ALTER TABLE `tl_fn_salesreturn` DISABLE KEYS */;
INSERT INTO `tl_fn_salesreturn` VALUES (1,'1','1','2014-11-15','Cash','','CoalSales','CrystalCoal','500','ton','800','400000','Amout is to be recived.','2014-11-15',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_salesreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_stockgroup`
--

DROP TABLE IF EXISTS `tl_fn_stockgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_stockgroup` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockgroup`
--

LOCK TABLES `tl_fn_stockgroup` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockgroup` DISABLE KEYS */;
INSERT INTO `tl_fn_stockgroup` VALUES (1,'Pants','SVSINFOMATICS'),(2,'Shirts','SVSINFOMATICS'),(3,'RakshasaBoggu','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_stockgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_stockgroupdetails`
--

DROP TABLE IF EXISTS `tl_fn_stockgroupdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_stockgroupdetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `qtyadd` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockgroupdetails`
--

LOCK TABLES `tl_fn_stockgroupdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockgroupdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_stockgroupdetails` VALUES (1,'Pants','pants','','No','2014-10-14',NULL,NULL,NULL,'SVSINFOMATICS'),(2,'Shirts','shirts','Primary','No','2014-10-24',NULL,NULL,NULL,'SVSINFOMATICS'),(3,'RakshasaBoggu','CrystalCoal','Primary','No','2014-11-11',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_stockgroupdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_stockitem`
--

DROP TABLE IF EXISTS `tl_fn_stockitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_stockitem` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rateofduty` varchar(255) DEFAULT NULL,
  `trafficclassification` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockitem`
--

LOCK TABLES `tl_fn_stockitem` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockitem` DISABLE KEYS */;
INSERT INTO `tl_fn_stockitem` VALUES (1,'LeeJeans','LeeJeans','Pants','mts','3000','2000','2014-10-14',NULL,NULL,NULL,NULL),(2,'T-Shirts','Crocodile','Shirts','mts','2000','300','2014-10-24',NULL,NULL,NULL,NULL),(3,'CrystalCoal','CrystalCoal','RakshasaBoggu','mts','40000','2000','2014-11-11',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_stockitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_sundrystaff`
--

DROP TABLE IF EXISTS `tl_fn_sundrystaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_sundrystaff` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rateofitem` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_sundrystaff`
--

LOCK TABLES `tl_fn_sundrystaff` WRITE;
/*!40000 ALTER TABLE `tl_fn_sundrystaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_fn_sundrystaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_taxdetails`
--

DROP TABLE IF EXISTS `tl_fn_taxdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_taxdetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `vat` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `eduservicetax` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_taxdetails`
--

LOCK TABLES `tl_fn_taxdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_taxdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_taxdetails` VALUES (1,'8','8','9','SVSINFOMATICS','2014-10-20'),(2,'3','4','4','Paramount GS','2014-12-30');
/*!40000 ALTER TABLE `tl_fn_taxdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vochercontra`
--

DROP TABLE IF EXISTS `tl_fn_vochercontra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vochercontra` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `particular` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `currentbalance1` varchar(255) DEFAULT NULL,
  `ammount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vochercontra`
--

LOCK TABLES `tl_fn_vochercontra` WRITE;
/*!40000 ALTER TABLE `tl_fn_vochercontra` DISABLE KEYS */;
INSERT INTO `tl_fn_vochercontra` VALUES (1,'1','2014-11-08','Cash','1500000.0','RaviTravelExp',NULL,'-1.94E7','5000','Amount is Deposited.','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(2,'1','2014-12-19','Cash','','RaviTravelAdv',NULL,'','','','2014-12-19',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vochercontra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vocherdetails`
--

DROP TABLE IF EXISTS `tl_fn_vocherdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vocherdetails` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherdetails`
--

LOCK TABLES `tl_fn_vocherdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_vocherdetails` VALUES (1,'Contra',NULL,'Contra','Automatic','No','No','Yes','No','None','',NULL,'ravi_svs','2014-11-05','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vocherdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vocherpayment`
--

DROP TABLE IF EXISTS `tl_fn_vocherpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vocherpayment` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `reciptno` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `currentbalance` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `currentbalance1` varchar(255) DEFAULT NULL,
  `vouchertype` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherpayment`
--

LOCK TABLES `tl_fn_vocherpayment` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherpayment` DISABLE KEYS */;
INSERT INTO `tl_fn_vocherpayment` VALUES (1,'1','10/14/2014',NULL,'','RaviTravelAdv','','Payment','3000','Amount is paid to Ravi Travel Adv.','2014-10-14',NULL,NULL,NULL,NULL),(2,'2','2014-11-08','Cash','1505000.0','RaviTravelAdv','-1.86E7','Payment','50000','Amount is Paid to Ravi Travel Adv','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(3,'3','2014-11-08','Cash','','RaviTravelAdv','','Payment','','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(4,'4','2014-11-26','Cash','','svsfund','','Payment','4000000','Amout is Paid.','2014-11-26',NULL,NULL,NULL,'SVSINFOMATICS'),(5,'4','2014-11-26','Cash','','svsfund','','Payment','4000000','Amout is Paid.','2014-11-26',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vocherpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vocherpurcahsereturn`
--

DROP TABLE IF EXISTS `tl_fn_vocherpurcahsereturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vocherpurcahsereturn` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherpurcahsereturn`
--

LOCK TABLES `tl_fn_vocherpurcahsereturn` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherpurcahsereturn` DISABLE KEYS */;
INSERT INTO `tl_fn_vocherpurcahsereturn` VALUES (1,'1','1','','Cash','','Coal','CrystalCoal','1000','ton','3000','3000000','Amout to be return.','2014-11-15',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vocherpurcahsereturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vochersales`
--

DROP TABLE IF EXISTS `tl_fn_vochersales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vochersales` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vochersales`
--

LOCK TABLES `tl_fn_vochersales` WRITE;
/*!40000 ALTER TABLE `tl_fn_vochersales` DISABLE KEYS */;
INSERT INTO `tl_fn_vochersales` VALUES (1,'1','1','11/15/2014','Cash','','CoalSales','LeeJeans','2000','mts','500','1000000','The Amount is Paid to the Company.','2014-11-15',NULL,NULL,NULL,'SVSINFOMATICS'),(2,'2','2','11/28/2014','Cash','','CoalSales','CrystalCoal','500','ton','300','150000','Amount is Recived.','2014-11-28',NULL,NULL,NULL,NULL),(3,'3','3','11/28/2014','Cash','','CoalSales','CrystalCoal','500','ton','3000','1500000','Amount is Recived.','2014-11-28',NULL,NULL,NULL,NULL),(4,'4','4','11/28/2014','Cash','','CoalSales','CrystalCoal','500','ton','800','400000','Amount is Recieved.','2014-11-28',NULL,NULL,NULL,NULL),(5,'5','5','11/28/2014','Cash','','CoalSales','LeeJeans','5000','ton','800','4000000','Amout is Recieved.','2014-11-28',NULL,NULL,NULL,'SVSINFOMATICS'),(6,'6','6','11/28/2014','Cash','4000000.0','CoalSales','CrystalCoal','500','ton','800','400000','Amount is Recived.','2014-11-28',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vochersales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_voucher_journal`
--

DROP TABLE IF EXISTS `tl_fn_voucher_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_voucher_journal` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_voucher_journal`
--

LOCK TABLES `tl_fn_voucher_journal` WRITE;
/*!40000 ALTER TABLE `tl_fn_voucher_journal` DISABLE KEYS */;
INSERT INTO `tl_fn_voucher_journal` VALUES (1,'1','10/14/2014','RaviTravelAdv','3000','Pants','600','mts','500','300000','RaviTravelAdv','300000','Amount Paid by RaviTravelAdv.','2014-10-14',NULL,NULL,NULL,NULL),(2,'1','2014-11-07','RaviTravelAdv','-60000.0','Pants','50','mts','1000','50000','RaviTravelAdv','50000','Amount is Transfered.','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(3,'1','2014-11-07','RaviTravelAdv','60000','Pants','5000','mts','5','25000','RaviTravelAdv','25000','Stock is handovered.','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(4,'1','2014-11-07','RaviTravelAdv','35000.085000.0','Pants','500','mts','50','25000','RaviTravelAdv','25000','Stock Recived.','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(5,'1','2014-11-07','RaviTravelAdv','35000.0','Shirts','500','mts','3000','1500000','RaviTravelAdv','1500000','Paid.','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(6,'1','2014-11-07','RaviTravelAdv','60000','Shirts','500','mts','3000','1500000','RaviTravelAdv','1500000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(7,'1','2014-11-07','RaviTravelAdv','-1440000.0','Shirts','500','mts','300','150000','RaviTravelAdv','150000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(8,'1','2014-11-07','RaviTravelAdv','-1290000.0','Shirts','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(9,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','500','mts','3000','1500000','RaviTravelAdv','1500000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(10,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','5000','mts','800','4000000','RaviTravelAdv','4000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(11,'1','2014-11-07','RaviTravelAdv','1500000','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','Amount is Paid.','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(12,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','500','mts','800','400000','RaviTravelAdv','400000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(13,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','500','mts','800','400000','RaviTravelAdv','400000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(14,'1','2014-11-07','RaviTravelAdv','1500000','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(15,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','400','mts','300','120000','RaviTravelAdv','120000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(16,'1','2014-11-07','RaviTravelAdv','1500000','Pants','500','mts','400','200000','RaviTravelAdv','200000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(17,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','5000','mts','800','4000000','RaviTravelAdv','4000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(18,'1','2014-11-07','RaviTravelAdv','1500000','Shirts','5000','mts','800','4000000','RaviTravelAdv','4000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(19,'1','2014-11-07','RaviTravelAdv','1500000','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(20,'1','2014-11-07','RaviTravelAdv','60000','Shirts','500','mts','300','150000','RaviTravelAdv','150000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(21,'1','2014-11-07','RaviTravelAdv','1500000','Pants','500','mts','300','150000','RaviTravelAdv','150000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(22,'1','2014-11-07','RaviTravelExp','60000','Pants','500','mts','800','400000','RaviTravelExp','400000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(23,'1','2014-11-07','RaviTravelAdv','','Pants','500','mts','345','172500','RaviTravelAdv','172500','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(24,'1','2014-11-07','RaviTravelExp','','Shirts','5000','mts','300','1500000','RaviTravelAdv','1500000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(25,'1','2014-11-07','RaviTravelAdv','','Pants','5000','mts','3000','15000000','RaviTravelExp','15000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(26,'1','2014-11-07','RaviTravelExp','1.5E7','Pants','5000','mts','300','1500000','RaviTravelAdv','1500000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(27,'1','2014-11-07','RaviTravelExp','1.35E7','Pants','2','mts','300','600','RaviTravelAdv','600','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(28,'1','2014-11-07','RaviTravelExp','1.35E71.34994E7','Pants','5000','mts','800','4000000','RaviTravelExp','4000000','','2014-11-07',NULL,NULL,NULL,'SVSINFOMATICS'),(29,'1','2014-11-08','RaviTravelAdv','1.35006E7','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(30,'1','2014-11-08','RaviTravelAdv','-1499400.0','Shirts','500','mts','200','100000','RaviTravelAdv','100000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(31,'1','2014-11-08','RaviTravelAdv','0.0','Pants','500','mts','800','400000','RaviTravelAdv','400000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(32,'1','2014-11-08','RaviTravelAdv','60000','Pants','500','mts','20','10000','RaviTravelExp','10000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(33,'1','2014-11-08','RaviTravelAdv','50000.0','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(34,'1','2014-11-08','RaviTravelExp','70000.0','Pants','2','mts','1000','2000','RaviTravelExp','2000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(35,'1','2014-11-08','RaviTravelAdv','','Pants','5000','mts','800','4000000','RaviTravelExp','4000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(36,'1','2014-11-08','RaviTravelExp','4000000.0','Pants','5000','mts','800','4000000','RaviTravelAdv','4000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(37,'1','2014-11-08','RaviTravelExp','','Pants','5000','mts','800','4000000','RaviTravelAdv','4000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(38,'1','2014-11-08','RaviTravelExp','-4000000.0','Pants','5000','mts','3000','15000000','RaviTravelAdv','15000000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS'),(39,'1','2014-11-08','RaviTravelExp','-1.9E7','Pants','500','mts','800','400000','RaviTravelAdv','400000','','2014-11-08',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_voucher_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_fn_vouchertype`
--

DROP TABLE IF EXISTS `tl_fn_vouchertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_fn_vouchertype` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `vouchertype` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vouchertype`
--

LOCK TABLES `tl_fn_vouchertype` WRITE;
/*!40000 ALTER TABLE `tl_fn_vouchertype` DISABLE KEYS */;
INSERT INTO `tl_fn_vouchertype` VALUES (1,'Contra','SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_vouchertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_hr_employee`
--

DROP TABLE IF EXISTS `tl_hr_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_hr_employee` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `pancard` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dateofbirth` varchar(255) DEFAULT NULL,
  `dateofjoining` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `reenterpassword` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_hr_employee`
--

LOCK TABLES `tl_hr_employee` WRITE;
/*!40000 ALTER TABLE `tl_hr_employee` DISABLE KEYS */;
INSERT INTO `tl_hr_employee` VALUES (1,'RaviKiran','Rayaprolu','7702305661','Hyderabad',NULL,NULL,'ravi_svs','123456','SVSINFOMATICS','Employee','1985-03-31','2014-05-12','PostGraduation',NULL,'2014-10-18','123456',NULL),(2,'RaviKiran','Rayaprolu','7702305661','Repalle',NULL,NULL,'ravi_svs','123456','SVSINFOMATICS','Employee','1985-03-31','2014-05-12','PostGraduation',NULL,'2014-10-24','123456',NULL),(3,'Ravi','Rayaprolu','7730123445','Repalle.',NULL,NULL,'ravi@abc.com','123456','abc.com','Employee','1986-02-04','2009-06-03','MSC',NULL,'2014-11-10','123456','ravi@abc.com'),(4,'Ravi','Rayaprolu','7730123445','Repalle',NULL,NULL,'ravi@abc.com','123456','abc.com','Employee','1986-02-04','2009-06-03','MSC',NULL,'2014-11-10','123456','ravi@abc.com'),(5,'Krishnakamak','Rayaprolu','9876543210','hyd',NULL,NULL,'abc@yahoo.com','abc123','Delta Soft Solution','Employee','1992-04-21','2013-06-25','mca',NULL,'2014-11-12','abc123','abc@yahoo.com'),(6,'hari','kolla','8978654321','hyd',NULL,NULL,'hari@delta.com','abc123','Delta Soft Solution','Employee','1992-07-18','2010-08-21','BE',NULL,'2014-11-12','abc123','hari@delta.com'),(7,'Ravi','Rayaprolu','7730123445','Hyderabad.',NULL,NULL,'ravi@pgs.com','123456','PGS','Employee','1986-02-04','2009-06-03','MSc',NULL,'2014-12-12','123456','ravi@pgs.com'),(8,'Ashok','Dabbapati','9876543211','Hyderabad.',NULL,NULL,'ashok.ess@gmail.com','123456','ESS','Employee','1980-01-11','1999-01-10','MSc',NULL,'2014-12-15','123456','ashok.ess@gmail.com'),(9,'kirankumar','nune','7898765432','Hyderabad',NULL,NULL,'kiran.pgs@gmail.com','123456','Paramount GS','Employee','1988-05-02','2013-05-02','MSc',NULL,'2014-12-30','123456','kiran.pgs@gmail.com');
/*!40000 ALTER TABLE `tl_hr_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_hr_login`
--

DROP TABLE IF EXISTS `tl_hr_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_hr_login` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `newpassword` varchar(255) DEFAULT NULL,
  `repassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_hr_login`
--

LOCK TABLES `tl_hr_login` WRITE;
/*!40000 ALTER TABLE `tl_hr_login` DISABLE KEYS */;
INSERT INTO `tl_hr_login` VALUES (19,'svsinfomatics@gmail.com','1234567',NULL,NULL,'SVSINFOMATICS','Admin',NULL,NULL),(20,'hcl.hr@gmail.com','123456',NULL,NULL,'HCL','Admin',NULL,NULL),(21,'ravi_svs','1234567',NULL,NULL,'SVSINFOMATICS','Employee',NULL,NULL),(22,'vsvtn99','sai1212345',NULL,NULL,'ABC Sysytems','Admin',NULL,NULL),(23,'delta.hr@gmail.com','123456',NULL,NULL,'Delta Soft Solutions','Admin',NULL,NULL),(24,'tcs.hr@gmail,com','123456',NULL,NULL,'TCS','Admin',NULL,NULL),(27,'infosys.hr@gmail.com','123456',NULL,NULL,'INFOSYS','Admin',NULL,NULL),(28,'pavan@abc.com','abc123',NULL,NULL,'abc.com','Admin',NULL,NULL),(29,'ravi@abc.com','123456',NULL,NULL,'abc.com','Employee',NULL,NULL),(30,'ravi@abc.com','123456',NULL,NULL,'abc.com','Employee',NULL,NULL),(31,'delta.hr@gmail.com','1234567',NULL,NULL,'Delta Soft Solution','Admin',NULL,NULL),(32,'abc@yahoo.com','abc123',NULL,NULL,'Delta Soft Solution','Employee',NULL,NULL),(33,'hari@delta.com','abc123',NULL,NULL,'Delta Soft Solution','Employee',NULL,NULL),(34,'pavan@pgs.com','123456',NULL,NULL,'PGS','Admin',NULL,NULL),(35,'ravi@pgs.com','123456',NULL,NULL,'PGS','Employee',NULL,NULL),(36,'hr.ess@gmail.com','123456',NULL,NULL,'ESS','Admin',NULL,NULL),(37,'ashok.ess@gmail.com','123456',NULL,NULL,'ESS','Employee',NULL,NULL),(38,'pavan@paramountgs.com','abc123',NULL,NULL,'Paramount GS','Admin',NULL,NULL),(39,'kiran.pgs@gmail.com','123456',NULL,NULL,'Paramount GS','Employee',NULL,NULL);
/*!40000 ALTER TABLE `tl_hr_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_invoice`
--

DROP TABLE IF EXISTS `tl_sl_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_invoice` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `custname` varchar(255) DEFAULT NULL,
  `invoiceid` varchar(255) NOT NULL,
  `invoiceno` varchar(6) NOT NULL,
  `today` varchar(255) DEFAULT NULL,
  `referenceno` varchar(255) NOT NULL,
  `srlno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unitprice` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `servicetax` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `inputdate` varchar(255) DEFAULT NULL,
  `netamount` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `dept1` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `invoiceid` (`invoiceid`),
  UNIQUE KEY `invoiceno` (`invoiceno`),
  UNIQUE KEY `referenceno` (`referenceno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_invoice`
--

LOCK TABLES `tl_sl_invoice` WRITE;
/*!40000 ALTER TABLE `tl_sl_invoice` DISABLE KEYS */;
INSERT INTO `tl_sl_invoice` VALUES (1,'','1','1','10/01/2014','1','1234','Cash','300','3','108','112.5','900','Sales',NULL,'1120.5','2014-10-01','','fn_svs','',NULL),(2,'','2','2','10/01/2014','2','1235','TV','5','20000','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs','',NULL),(3,'','3','3','10/01/2014','3','1236','TV','20000','5','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs','',NULL),(4,'Repalle','4','4','2014-10-20','4','200','TV','2000','8','1920','1280','16000','Sales',NULL,'19200','2014-10-20','','ravi_svs','',NULL),(5,'Hyderabad','5','5','2014-10-20','5','200','TV','2000','8','1920','1280','16000','Finance',NULL,'19200','2014-10-20','','ravi_svs','','SVSINFOMATICS'),(6,'','6','6','2014-12-18','6','34','tv','6','9','4.32','4.32','54','Sales',NULL,'62.64','2014-12-18','','ravi_svs','','SVSINFOMATICS'),(7,'Guntur.','7','7','2014-12-30','7','2','TV','6000','6','1440','1080','36000','Sales',NULL,'38520','2014-12-30','','kiran.pgs@gmail.com','','Paramount GS');
/*!40000 ALTER TABLE `tl_sl_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_orderform`
--

DROP TABLE IF EXISTS `tl_sl_orderform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_orderform` (
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
  `deparment` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_orderform`
--

LOCK TABLES `tl_sl_orderform` WRITE;
/*!40000 ALTER TABLE `tl_sl_orderform` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sl_orderform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_pettycash`
--

DROP TABLE IF EXISTS `tl_sl_pettycash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_pettycash` (
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
  `depart1` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_pettycash`
--

LOCK TABLES `tl_sl_pettycash` WRITE;
/*!40000 ALTER TABLE `tl_sl_pettycash` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sl_pettycash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_purchaseorder`
--

DROP TABLE IF EXISTS `tl_sl_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_purchaseorder` (
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
  `deltby` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deparment` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_purchaseorder`
--

LOCK TABLES `tl_sl_purchaseorder` WRITE;
/*!40000 ALTER TABLE `tl_sl_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sl_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_salsesorder`
--

DROP TABLE IF EXISTS `tl_sl_salsesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_salsesorder` (
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
  `deltby` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deparment` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_salsesorder`
--

LOCK TABLES `tl_sl_salsesorder` WRITE;
/*!40000 ALTER TABLE `tl_sl_salsesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sl_salsesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sl_telephonesalesorder`
--

DROP TABLE IF EXISTS `tl_sl_telephonesalesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sl_telephonesalesorder` (
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
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `login_comp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_telephonesalesorder`
--

LOCK TABLES `tl_sl_telephonesalesorder` WRITE;
/*!40000 ALTER TABLE `tl_sl_telephonesalesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sl_telephonesalesorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-30 10:14:53
