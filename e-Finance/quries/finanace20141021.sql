CREATE DATABASE  IF NOT EXISTS `finance` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `finance`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: finance
-- ------------------------------------------------------
-- Server version	5.5.20

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupdetails`
--

LOCK TABLES `groupdetails` WRITE;
/*!40000 ALTER TABLE `groupdetails` DISABLE KEYS */;
INSERT INTO `groupdetails` VALUES (1,'TravelAdv','TravelAdv1','Loans&Advances(Asset)','Advances for Travel','Yes','No','No','NotApplicable','','','fn_svs','2014-09-29',NULL,NULL),(2,'TravelExp','TravelExp','IndirectExpenses','TravelExp','No','No','No','NotApplicable','','','fn_svs','2014-09-30',NULL,NULL);
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_advertisementexp`
--

LOCK TABLES `tl_fn_advertisementexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_advertisementexp` DISABLE KEYS */;
INSERT INTO `tl_fn_advertisementexp` VALUES (1,'Delta Soft Solutions','RealEstate','Selling the Plot','120','9876543212','044234561','10000',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_fn_advertisementexp` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_autoexpencestravel`
--

LOCK TABLES `tl_fn_autoexpencestravel` WRITE;
/*!40000 ALTER TABLE `tl_fn_autoexpencestravel` DISABLE KEYS */;
INSERT INTO `tl_fn_autoexpencestravel` VALUES (1,'','Sun','Ravi','Kiran','Hyd','Kishore','Repalle','Official','Mumbai','Pavan','Telangana','5222201','9963514955','Finance','','Hyd','2000','4000','2000','7','14000','2014-10-01',NULL,NULL,NULL,NULL,NULL),(2,'2014-10-20','Sun','RaviKiran','Kirshna','Hyderabad','Krishna','Repalle','Demo','Hyderabad','Kumar','AndhraPradesh','5222515','040-223874','Finance','2014-10-20','Repalle','09873','09987','114','7','798','2014-10-20',NULL,NULL,NULL,NULL,NULL),(3,'2014-10-20','Sun',NULL,'Kirshna','Hyderabad','Krishna','Repalle','Demo','Hyderabad','Kumar','AndhraPradesh','5222515','040-223874','Sales','2014-10-20','Repalle','09873','09987','114','7','798','2014-10-20','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS');
/*!40000 ALTER TABLE `tl_fn_autoexpencestravel` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_closingstock`
--

LOCK TABLES `tl_fn_closingstock` WRITE;
/*!40000 ALTER TABLE `tl_fn_closingstock` DISABLE KEYS */;
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_companyregistration`
--

LOCK TABLES `tl_fn_companyregistration` WRITE;
/*!40000 ALTER TABLE `tl_fn_companyregistration` DISABLE KEYS */;
INSERT INTO `tl_fn_companyregistration` VALUES (9,'SVSINFOMATICS','svs_vsvtn','123456','123456','Admin','2014-10-17',NULL,'7702305661','040-27600006','vsvtn99@yahoo.com','Hyderabad',NULL,NULL,NULL),(10,'KWC Softwares','kwc_naresh','123456','123456','Admin','2014-10-18',NULL,'9989942212','040-2345678','naresh.volgot@gmail.com','Hyderabad.',NULL,NULL,NULL),(11,'HCL','siva_hcl','123456','123456','Admin','2014-10-18',NULL,'9989934414','040-654321','sivakumar@gmail.com','Hyderabad.',NULL,NULL,NULL),(12,'TCS','tcs_krishna','123456','123456','Admin','2014-10-18',NULL,'9392912312','040-34567898','krishnakumar@gmail.com','Hyderabad',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_current_asserts`
--

LOCK TABLES `tl_fn_current_asserts` WRITE;
/*!40000 ALTER TABLE `tl_fn_current_asserts` DISABLE KEYS */;
INSERT INTO `tl_fn_current_asserts` VALUES (2,'Cash','20000.0',NULL,NULL),(3,'RaviTravelAdv','280000.0','Loans&Advances(Asset)',NULL);
/*!40000 ALTER TABLE `tl_fn_current_asserts` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_entertainmentexpenceses`
--

LOCK TABLES `tl_fn_entertainmentexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_entertainmentexpenceses` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_foodexpenses`
--

LOCK TABLES `tl_fn_foodexpenses` WRITE;
/*!40000 ALTER TABLE `tl_fn_foodexpenses` DISABLE KEYS */;
INSERT INTO `tl_fn_foodexpenses` VALUES (1,NULL,'040-223874','Hyderabad','Kumar','Finance','2014-10-20','Sun','798','2014-10-20','RaviTravelAdv',NULL,NULL,NULL,'SVSINFOMATICS');
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_groupmapping`
--

LOCK TABLES `tl_fn_groupmapping` WRITE;
/*!40000 ALTER TABLE `tl_fn_groupmapping` DISABLE KEYS */;
INSERT INTO `tl_fn_groupmapping` VALUES (1,'Loans&Advances(Asset)','TravelAdv',NULL),(2,'IndirectExpenses','TravelExp',NULL);
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_groups`
--

LOCK TABLES `tl_fn_groups` WRITE;
/*!40000 ALTER TABLE `tl_fn_groups` DISABLE KEYS */;
INSERT INTO `tl_fn_groups` VALUES (3,'BankAccounts'),(4,'BankOCC-A/c'),(5,'BankOD-A/c'),(6,'Branch/Divisions'),(7,'CapitalAccount'),(8,'Cash-in-Hand'),(9,'CurrentAssets'),(10,'CurrentLiabilities'),(11,'Deposits(Asset)'),(12,'DirectExpenses'),(13,'DirectIncomes'),(14,'Duties&Taxes'),(15,'Expenses(Direct)'),(16,'Expenses(InDirect)'),(17,'FixedAssets'),(18,'Income(Direct)'),(19,'Income(InDirect)'),(20,'IndirectExpenses'),(21,'IndirectIncomes'),(22,'Investments'),(23,'Loans&Advances(Asset)'),(24,'Loans(Liability)'),(25,'Misc.Expenses(ASSET)'),(26,'Provisions'),(27,'PurchaseAccounts'),(28,'Reverse&Surplus'),(29,'RetainedEarnings'),(30,'SalesAccounts'),(31,'SecuredLoans'),(32,'Stock-in-hand'),(33,'SundryCreditors'),(34,'SundryDebtors'),(35,'Suspense-A/c'),(36,'UnsecuredLoans'),(48,'TravelAdv'),(49,'TravelExp');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_hotelexpenses`
--

LOCK TABLES `tl_fn_hotelexpenses` WRITE;
/*!40000 ALTER TABLE `tl_fn_hotelexpenses` DISABLE KEYS */;
INSERT INTO `tl_fn_hotelexpenses` VALUES (1,NULL,'040-223874','Hyderabad','Kumar','Finance','2014-10-21','Sun','4','Taj','Hyderabad','5000','20000',NULL,NULL,NULL,'2014-10-21','RaviTravelAdv','SVSINFOMATICS');
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_internetexp`
--

LOCK TABLES `tl_fn_internetexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_internetexp` DISABLE KEYS */;
INSERT INTO `tl_fn_internetexp` VALUES (1,'Delta Soft Solutions','ComboPack','3000','2',NULL,'6000','044-654321','181818187171717','3000','9876543212','50000','2014-09-29',NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_ledgerdetails`
--

LOCK TABLES `tl_fn_ledgerdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_ledgerdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_ledgerdetails` VALUES (1,'RaviTravelAdv','RaviTravelAdv1','TravelAdv','No','RaviKiran','Repalle.','AndhraPradesh','522265','KCJD20010','12332329989','','Dr','','','fn_svs','2014-09-29',NULL),(2,'RaviTravelExp','RaviTravelExp','TravelExp','No','TravelExp','Repalle','AndhraPradesh','522265','KCJD20010','12332329989','','Dr','','','fn_svs','2014-09-30',NULL),(5,'Cash','cash','Cash-in-Hand','No','Repalle','Repalle.','AndhraPradesh','522265','KCJD20012','12332329989','','Dr','','','fn_svs','2014-10-14',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_measures`
--

LOCK TABLES `tl_fn_measures` WRITE;
/*!40000 ALTER TABLE `tl_fn_measures` DISABLE KEYS */;
INSERT INTO `tl_fn_measures` VALUES (1,'Simple','mts','meters','2',NULL,NULL,NULL,NULL),(2,'Simple','ton','tonnes','3',NULL,NULL,NULL,NULL),(3,'Simple','kg','KiloGram','2',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_misleniousexpenceses`
--

LOCK TABLES `tl_fn_misleniousexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_misleniousexpenceses` DISABLE KEYS */;
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_nontradingexpenceses`
--

LOCK TABLES `tl_fn_nontradingexpenceses` WRITE;
/*!40000 ALTER TABLE `tl_fn_nontradingexpenceses` DISABLE KEYS */;
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_officeexp`
--

LOCK TABLES `tl_fn_officeexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_officeexp` DISABLE KEYS */;
INSERT INTO `tl_fn_officeexp` VALUES (1,'TV','1','100000','100000','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL);
/*!40000 ALTER TABLE `tl_fn_officeexp` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_phonebillexpences`
--

LOCK TABLES `tl_fn_phonebillexpences` WRITE;
/*!40000 ALTER TABLE `tl_fn_phonebillexpences` DISABLE KEYS */;
INSERT INTO `tl_fn_phonebillexpences` VALUES (1,'2014-10-02','Sun','BSNL','9963514955','Repalle','Pavan','Sales','Jan','14000','2014-10-02',NULL,NULL,NULL,NULL,NULL),(2,'2014-10-02','Sun','Airtel','9989942212','Hyd','Pavan','Finance','Feb','14000','2014-10-02',NULL,NULL,NULL,NULL,NULL),(3,'2014-10-20','Sun','BSNL','040-223874','Hyderabad','Kumar','Sales','Jan','798','2014-10-20','RaviTravelExp',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_postageexp`
--

LOCK TABLES `tl_fn_postageexp` WRITE;
/*!40000 ALTER TABLE `tl_fn_postageexp` DISABLE KEYS */;
INSERT INTO `tl_fn_postageexp` VALUES (1,'HCL','Delhi','SpeedPost','200','300','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_purchase`
--

LOCK TABLES `tl_fn_purchase` WRITE;
/*!40000 ALTER TABLE `tl_fn_purchase` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_recipt`
--

LOCK TABLES `tl_fn_recipt` WRITE;
/*!40000 ALTER TABLE `tl_fn_recipt` DISABLE KEYS */;
INSERT INTO `tl_fn_recipt` VALUES (1,'1','10/14/2014','Cash','','RaviTravelAdv','300000','20000','Amount paid by Ravi Travel Adv.',NULL,NULL,NULL,NULL,'2014-10-14',NULL);
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_repairmaintenance`
--

LOCK TABLES `tl_fn_repairmaintenance` WRITE;
/*!40000 ALTER TABLE `tl_fn_repairmaintenance` DISABLE KEYS */;
INSERT INTO `tl_fn_repairmaintenance` VALUES (1,'Wiring','2','300','600','2014-09-30',NULL,NULL,NULL,'RaviTravelExp',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_salesreturn`
--

LOCK TABLES `tl_fn_salesreturn` WRITE;
/*!40000 ALTER TABLE `tl_fn_salesreturn` DISABLE KEYS */;
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockgroup`
--

LOCK TABLES `tl_fn_stockgroup` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockgroup` DISABLE KEYS */;
INSERT INTO `tl_fn_stockgroup` VALUES (1,'Pants');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockgroupdetails`
--

LOCK TABLES `tl_fn_stockgroupdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockgroupdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_stockgroupdetails` VALUES (1,'Pants','pants','','No','2014-10-14',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_stockitem`
--

LOCK TABLES `tl_fn_stockitem` WRITE;
/*!40000 ALTER TABLE `tl_fn_stockitem` DISABLE KEYS */;
INSERT INTO `tl_fn_stockitem` VALUES (1,'LeeJeans','LeeJeans','Pants','mts','3000','2000','2014-10-14',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_taxdetails`
--

LOCK TABLES `tl_fn_taxdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_taxdetails` DISABLE KEYS */;
INSERT INTO `tl_fn_taxdetails` VALUES (1,'8','12','9','SVSINFOMATICS','2014-10-20');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vochercontra`
--

LOCK TABLES `tl_fn_vochercontra` WRITE;
/*!40000 ALTER TABLE `tl_fn_vochercontra` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherdetails`
--

LOCK TABLES `tl_fn_vocherdetails` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherdetails` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherpayment`
--

LOCK TABLES `tl_fn_vocherpayment` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherpayment` DISABLE KEYS */;
INSERT INTO `tl_fn_vocherpayment` VALUES (1,'1','10/14/2014',NULL,'','RaviTravelAdv','','Payment','3000','Amount is paid to Ravi Travel Adv.','2014-10-14',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vocherpurcahsereturn`
--

LOCK TABLES `tl_fn_vocherpurcahsereturn` WRITE;
/*!40000 ALTER TABLE `tl_fn_vocherpurcahsereturn` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vochersales`
--

LOCK TABLES `tl_fn_vochersales` WRITE;
/*!40000 ALTER TABLE `tl_fn_vochersales` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_voucher_journal`
--

LOCK TABLES `tl_fn_voucher_journal` WRITE;
/*!40000 ALTER TABLE `tl_fn_voucher_journal` DISABLE KEYS */;
INSERT INTO `tl_fn_voucher_journal` VALUES (1,'1','10/14/2014','RaviTravelAdv','3000','Pants','600','mts','500','300000','RaviTravelAdv','300000','Amount Paid by RaviTravelAdv.','2014-10-14',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_fn_vouchertype`
--

LOCK TABLES `tl_fn_vouchertype` WRITE;
/*!40000 ALTER TABLE `tl_fn_vouchertype` DISABLE KEYS */;
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_hr_employee`
--

LOCK TABLES `tl_hr_employee` WRITE;
/*!40000 ALTER TABLE `tl_hr_employee` DISABLE KEYS */;
INSERT INTO `tl_hr_employee` VALUES (1,'RaviKiran','Rayaprolu','7702305661','Hyderabad',NULL,NULL,'ravi_svs','123456','SVSINFOMATICS','Employee','1985-03-31','2014-05-12','PostGraduation',NULL,'2014-10-18','123456');
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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_hr_login`
--

LOCK TABLES `tl_hr_login` WRITE;
/*!40000 ALTER TABLE `tl_hr_login` DISABLE KEYS */;
INSERT INTO `tl_hr_login` VALUES (1,'svs_vsvtn','123456',NULL,NULL,'SVSINFOMATICS','Admin'),(2,'kwc_naresh','123456',NULL,NULL,'KWC Softwares','Admin'),(3,'siva_hcl','123456',NULL,NULL,'HCL','Admin'),(4,'ravi_svs','123456',NULL,NULL,'SVSINFOMATICS','Employee'),(5,'tcs_krishna','123456',NULL,NULL,'TCS','Admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sl_invoice`
--

LOCK TABLES `tl_sl_invoice` WRITE;
/*!40000 ALTER TABLE `tl_sl_invoice` DISABLE KEYS */;
INSERT INTO `tl_sl_invoice` VALUES (1,'','1','1','10/01/2014','1','1234','Cash','300','3','108','112.5','900','Sales',NULL,'1120.5','2014-10-01','','fn_svs','',NULL),(2,'','2','2','10/01/2014','2','1235','TV','5','20000','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs','',NULL),(3,'','3','3','10/01/2014','3','1236','TV','20000','5','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs','',NULL),(4,'Repalle','4','4','2014-10-20','4','200','TV','2000','8','1920','1280','16000','Sales',NULL,'19200','2014-10-20','','ravi_svs','',NULL),(5,'Hyderabad','5','5','2014-10-20','5','200','TV','2000','8','1920','1280','16000','Finance',NULL,'19200','2014-10-20','','ravi_svs','','SVSINFOMATICS');
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

-- Dump completed on 2014-10-21 21:37:23
