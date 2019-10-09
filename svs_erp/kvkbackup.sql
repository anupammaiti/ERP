-- MySQL dump 10.11
--
-- Host: localhost    Database: kvk
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

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
-- Table structure for table `bill_generate`
--

DROP TABLE IF EXISTS `bill_generate`;
CREATE TABLE `bill_generate` (
  `id` mediumint(9) NOT NULL auto_increment,
  `time` char(50) default NULL,
  `customer` char(50) default NULL,
  `price` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_generate`
--

LOCK TABLES `bill_generate` WRITE;
/*!40000 ALTER TABLE `bill_generate` DISABLE KEYS */;
INSERT INTO `bill_generate` VALUES (1,'Tue-May-13-11:31:06-2008','','');
/*!40000 ALTER TABLE `bill_generate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_generate1`
--

DROP TABLE IF EXISTS `bill_generate1`;
CREATE TABLE `bill_generate1` (
  `no` char(20) default NULL,
  `time` char(50) default NULL,
  `customer` char(40) default NULL,
  `price` char(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_generate1`
--

LOCK TABLES `bill_generate1` WRITE;
/*!40000 ALTER TABLE `bill_generate1` DISABLE KEYS */;
INSERT INTO `bill_generate1` VALUES ('1','Tue-May-13-11:31:53-2008','ajay','100');
/*!40000 ALTER TABLE `bill_generate1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `closing_stock`
--

DROP TABLE IF EXISTS `closing_stock`;
CREATE TABLE `closing_stock` (
  `stock_item` varchar(30) default NULL,
  `qty` int(11) default NULL,
  `units` varchar(20) default NULL,
  `rate` double(15,2) default NULL,
  `balance` double(15,2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closing_stock`
--

LOCK TABLES `closing_stock` WRITE;
/*!40000 ALTER TABLE `closing_stock` DISABLE KEYS */;
INSERT INTO `closing_stock` VALUES ('coal',0,'tonn',12.00,0.00);
/*!40000 ALTER TABLE `closing_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyinformation`
--

DROP TABLE IF EXISTS `companyinformation`;
CREATE TABLE `companyinformation` (
  `companyname` char(60) default NULL,
  `mailingaddress` char(100) default NULL,
  `statutory` char(30) default NULL,
  `state` char(50) default NULL,
  `pincode` char(40) default NULL,
  `telephonenumber` char(30) default NULL,
  `email` char(50) default NULL,
  `currencysymbol` char(10) default NULL,
  `Maintain` char(30) default NULL,
  `financialyear` date default NULL,
  `booksbeginning` date default NULL,
  `numberofdecimalpalces` int(3) default NULL,
  `symbolfordecimalportion` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyinformation`
--

LOCK TABLES `companyinformation` WRITE;
/*!40000 ALTER TABLE `companyinformation` DISABLE KEYS */;
INSERT INTO `companyinformation` VALUES ('pranam','hyd','india','AndhraPradesh','46465','244654','defasd','Rs.','Accounts','2008-04-01','2008-04-01',2,'paise');
/*!40000 ALTER TABLE `companyinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_assets`
--

DROP TABLE IF EXISTS `current_assets`;
CREATE TABLE `current_assets` (
  `ledgername` char(50) default NULL,
  `balance` double(15,2) default NULL,
  `under` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_assets`
--

LOCK TABLES `current_assets` WRITE;
/*!40000 ALTER TABLE `current_assets` DISABLE KEYS */;
INSERT INTO `current_assets` VALUES ('Cash',2920.00,'Cash-in-hand'),('Ajaycapital',5000.00,'CapitalAccount'),('icici',2000.00,'BankAccounts'),('fan',100.00,'IndirectExpenses'),('purchase',120.00,'PurchaseAccounts'),('sales',140.00,'SalesAccounts');
/*!40000 ALTER TABLE `current_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_assets1`
--

DROP TABLE IF EXISTS `current_assets1`;
CREATE TABLE `current_assets1` (
  `toaccount` char(50) default NULL,
  `fromaccount` char(50) default NULL,
  `amount` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_assets1`
--

LOCK TABLES `current_assets1` WRITE;
/*!40000 ALTER TABLE `current_assets1` DISABLE KEYS */;
INSERT INTO `current_assets1` VALUES ('Cash','Ajaycapital','1000'),('icici','Cash','2000'),('purchase','Cash','1000'),('fan','Cash','1000');
/*!40000 ALTER TABLE `current_assets1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_liabilities`
--

DROP TABLE IF EXISTS `current_liabilities`;
CREATE TABLE `current_liabilities` (
  `toaccount` char(50) default NULL,
  `fromaccount` char(50) default NULL,
  `amount` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_liabilities`
--

LOCK TABLES `current_liabilities` WRITE;
/*!40000 ALTER TABLE `current_liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empno` char(20) NOT NULL,
  `name` char(50) default NULL,
  `nameinhris` char(40) default NULL,
  `fathername` char(40) default NULL,
  `dob` date default NULL,
  `sex` char(10) default NULL,
  `joiningdate` date default NULL,
  `designation` char(30) default NULL,
  `department` char(40) default NULL,
  `reportingto` char(30) default NULL,
  `joblevel` char(40) default NULL,
  `location` char(50) default NULL,
  `entrymanner` char(10) default NULL,
  `nomination` char(40) default NULL,
  `birthpalce` char(50) default NULL,
  `maritalstatus` char(20) default NULL,
  `marriagedate` date default NULL,
  `religion` char(20) default NULL,
  `pannumber` char(30) default NULL,
  `passportnumber` char(40) default NULL,
  `issuedateandplace` char(50) default NULL,
  `validity` char(30) default NULL,
  `companyname` char(30) default NULL,
  `qualification` char(20) default NULL,
  PRIMARY KEY  (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1001','ajay','ajay','ajay','1985-04-08','Male','2008-12-12','jr','acct','pavan','s1','hyd','Campus','','','','1985-01-01','','','',NULL,'','pranam',NULL),('1002','ravi kumar','ravi','ravi','1985-04-08','Male','2008-12-12','cep','finance','asd','asd','asdf','Placement','asdf','asa','','1985-01-01','','','',NULL,'','kvk',NULL),('10221','Ravi Kumar M','Ravi Kumar','Rao','2007-02-19','Male','2008-02-19','EDP Executive','Finance','Pavan','s1','Hyderabad','Direct','none','hyderabad','married','2007-03-19','comunist','ap225599xz','z646488311',NULL,'50 years','kvk','Professionals'),('10222','Kishore Kumar M','Kishore Kumar','Rao','2007-02-19','Male','2008-02-19','EDP Executive','Finance','Pavan','s1','Hyderabad','Direct','none','hyderabad','married','2007-03-19','comunist','ap225599xz','z646488311',NULL,'50 years','kvk','Professionals'),('121213','asd','asdf','adsf','1985-04-08','Male','2008-12-12','afs3','finnace','asd','asd','asdf','Direct','asd','ads','ad','1985-01-01','ads','ads','ad',NULL,'asdf','asd','Doctorities'),('12234','ajay',NULL,'ajay','1985-01-12','Male','2000-10-10','jr','developer','ceo','jr','hyd','Placement','indian','vij','never married','1985-12-12','hindu','asdf2134','sdf23',NULL,'nov','kvk',NULL),('123a','ajay','ajay','ajay','1985-04-08','Male','2008-12-12','dep','java','ceo','jr','hyd','Placement','i','vij','unmarried','1985-01-01','hi','asdf23','asdf23',NULL,'asdf','ajay','Technical'),('21','asd','asdf','adsf','1985-04-08','Male','2008-12-12','afs3','finnace','asd','asd','asdf','Direct','asd','ads','ad','1985-01-01','ads','ads','ad',NULL,'asdf','asd','Doctorities'),('23a','asd','ad','asdf','1985-04-08','Male','2008-12-12','asdf','asdf','asdf','asdf','asdf','Placement','a','asdf','sdf','1985-01-01','asd','asdf','asdf',NULL,'asdf','ajay','Doctorities'),('23sedf','ajy','ajay','ajay','1985-04-08','Male','2008-12-12','developer','cse','ceo','prog','hyd','Direct','indian','vij','unmarried','1985-01-01','h','asdf23','a',NULL,'nov','kvk',NULL),('asd','sda',NULL,'asd','1985-04-08','Male','2008-12-12','asd','asdf','asdf','asdf','asdf','Placement','asdf','asdf','asdf','1985-12-12','asdf','asdf','ads',NULL,'asdf','asdf',NULL),('asd23','ajay',NULL,'ajay','1985-04-08','Male','2008-12-12','pr','ces','ceo','aas','asd','Placement','as','asd','asd','1985-12-12','asdf','asdf','asd',NULL,'23ed','pranam',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeerequsition`
--

DROP TABLE IF EXISTS `employeerequsition`;
CREATE TABLE `employeerequsition` (
  `position` char(20) default NULL,
  `company` char(20) default NULL,
  `department` char(30) default NULL,
  `location` char(30) default NULL,
  `joblevel` char(30) default NULL,
  `jobresponsibilities` char(100) default NULL,
  `specificaccountabilities` char(100) default NULL,
  `skillsrequired` char(100) default NULL,
  `qulification` char(20) default NULL,
  `experience` char(20) default NULL,
  `targettime` char(30) default NULL,
  `industryspecific` char(30) default NULL,
  `age` int(10) default NULL,
  `ageto` int(10) default NULL,
  `personalitytraits` char(100) default NULL,
  `mobility` char(50) default NULL,
  `organizationspecific` char(100) default NULL,
  `computerliteracy` char(100) default NULL,
  `leadershipqualitiesa` char(100) default NULL,
  `leadershipqualitiesb` char(100) default NULL,
  `leadershipqualitiesc` char(100) default NULL,
  `leadershipqualitiesd` char(50) default NULL,
  `locationspecifica` char(50) default NULL,
  `locationspecificb` char(50) default NULL,
  `locationspecific` char(50) default NULL,
  `genderspecific` char(10) default NULL,
  `indentername` char(30) default NULL,
  `functionalheadname` char(30) default NULL,
  `unithead` char(30) default NULL,
  `date1` date default NULL,
  `date2` date default NULL,
  `date3` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeerequsition`
--

LOCK TABLES `employeerequsition` WRITE;
/*!40000 ALTER TABLE `employeerequsition` DISABLE KEYS */;
INSERT INTO `employeerequsition` VALUES (NULL,'ajay','dev','vij','jr','asdf','asdf',NULL,'b.tech','2',NULL,NULL,21,23,'asdf','ADSF','asd',NULL,'asdf','asdf','asd','asd','asdf','asdf','asdf','Male','ajay','ajay',NULL,'2008-01-02','2008-02-02','2008-01-01'),('on','kvk','development','hyd','jr','adsf','asdf','asdf','b.tech','2','ads','Same Nature',21,24,'sdf','asdf','asdf',NULL,'asdf','asdf','asdf','asdf','asdf','hyd','vij','Male','ajay','ajay',NULL,'2008-01-02','2008-02-02','2008-01-01'),('on','ajay','finance','hyd','jr','asdf','dsf','asdf','b.tech','3','asdf','Same Nature',21,23,'asdf','fdfs','asdf','ad','sdaf','asdf','asdf','asdf','asdf','asdf','asdf','Male','ajay','ajay',NULL,'2008-01-02','2008-02-02','2008-01-01'),('New','asdf','dsf','asd','asd','asd','asd','asd','ds','f','f','Same Nature',21,22,'asd','as','asd','asd','asd','asd','asdas','asd','asd','asd','asd','Male','asd','asd','asd','2008-01-02','2008-02-02','2008-01-01'),('New','asdf','dsf','asd','asd','asd','asd','asd','ds','f','f','Same Nature',21,22,'asd','as','asd','asd','asd','asd','asdas','asd','asd','asd','asd','Male','asd','asd','asd','2008-01-02','2008-02-02','2008-01-01');
/*!40000 ALTER TABLE `employeerequsition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_expenses`
--

DROP TABLE IF EXISTS `enter_expenses`;
CREATE TABLE `enter_expenses` (
  `empname` char(30) default NULL,
  `phone` char(30) default NULL,
  `location` char(30) default NULL,
  `approvedby` char(50) default NULL,
  `date1` date default NULL,
  `totalamount` char(30) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enter_expenses`
--

LOCK TABLES `enter_expenses` WRITE;
/*!40000 ALTER TABLE `enter_expenses` DISABLE KEYS */;
INSERT INTO `enter_expenses` VALUES ('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','MON'),('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','TUE'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','TUE'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','MON'),('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','SUN'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','SUN'),('ajay98','897','y','yi','2008-03-14','987','Sales','WED'),('ajay','3545','8uytuy','ahay','2008-03-14','978','Sales','THU'),('jaay','9878','yhjh','98798','2008-03-14','8987','Sales','FRI'),('ajay','3545','8uytuy','98798','2008-03-14','8987','Sales','SAT');
/*!40000 ALTER TABLE `enter_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_accvoucher_contra`
--

DROP TABLE IF EXISTS `fn_accvoucher_contra`;
CREATE TABLE `fn_accvoucher_contra` (
  `no` mediumint(9) NOT NULL auto_increment,
  `date1` date default NULL,
  `account` char(50) default NULL,
  `particulars` char(50) default NULL,
  `amount` char(20) default NULL,
  `narration` char(200) default NULL,
  `id` char(10) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fn_accvoucher_contra`
--

LOCK TABLES `fn_accvoucher_contra` WRITE;
/*!40000 ALTER TABLE `fn_accvoucher_contra` DISABLE KEYS */;
INSERT INTO `fn_accvoucher_contra` VALUES (1,'2008-11-11','icici','Cash','2000','','1');
/*!40000 ALTER TABLE `fn_accvoucher_contra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_accvoucher_payment`
--

DROP TABLE IF EXISTS `fn_accvoucher_payment`;
CREATE TABLE `fn_accvoucher_payment` (
  `no` mediumint(9) NOT NULL auto_increment,
  `date1` date default NULL,
  `account` char(50) default NULL,
  `particulars` char(50) default NULL,
  `amount` char(20) default NULL,
  `narration` char(200) default NULL,
  `id` char(10) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fn_accvoucher_payment`
--

LOCK TABLES `fn_accvoucher_payment` WRITE;
/*!40000 ALTER TABLE `fn_accvoucher_payment` DISABLE KEYS */;
INSERT INTO `fn_accvoucher_payment` VALUES (1,'2008-11-11','Cash','fan','1000','','1');
/*!40000 ALTER TABLE `fn_accvoucher_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_accvoucher_purchase`
--

DROP TABLE IF EXISTS `fn_accvoucher_purchase`;
CREATE TABLE `fn_accvoucher_purchase` (
  `no` mediumint(9) NOT NULL auto_increment,
  `refno` char(50) default NULL,
  `date1` date default NULL,
  `partyaccname` char(50) default NULL,
  `salesledger` char(50) default NULL,
  `nameofitem` char(50) default NULL,
  `quantity` char(50) default NULL,
  `rate` char(50) default NULL,
  `units` char(50) default NULL,
  `amount` char(50) default NULL,
  `id` char(30) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fn_accvoucher_purchase`
--

LOCK TABLES `fn_accvoucher_purchase` WRITE;
/*!40000 ALTER TABLE `fn_accvoucher_purchase` DISABLE KEYS */;
INSERT INTO `fn_accvoucher_purchase` VALUES (1,'12','2008-11-11','Cash','purchase','coal','10','100','kilorams','1000','1');
/*!40000 ALTER TABLE `fn_accvoucher_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_accvoucher_reciept`
--

DROP TABLE IF EXISTS `fn_accvoucher_reciept`;
CREATE TABLE `fn_accvoucher_reciept` (
  `no` mediumint(9) NOT NULL auto_increment,
  `date1` date default NULL,
  `account` char(50) default NULL,
  `particulars` char(50) default NULL,
  `amount` char(20) default NULL,
  `narration` char(200) default NULL,
  `id` char(10) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fn_accvoucher_reciept`
--

LOCK TABLES `fn_accvoucher_reciept` WRITE;
/*!40000 ALTER TABLE `fn_accvoucher_reciept` DISABLE KEYS */;
INSERT INTO `fn_accvoucher_reciept` VALUES (1,'2008-11-11','Cash','Ajaycapital','5000','','1');
/*!40000 ALTER TABLE `fn_accvoucher_reciept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_accvoucher_sales`
--

DROP TABLE IF EXISTS `fn_accvoucher_sales`;
CREATE TABLE `fn_accvoucher_sales` (
  `no` mediumint(9) NOT NULL auto_increment,
  `refno` char(50) default NULL,
  `date1` date default NULL,
  `partyaccname` char(50) default NULL,
  `salesledger` char(50) default NULL,
  `nameofitem` char(50) default NULL,
  `quantity` char(50) default NULL,
  `rate` char(50) default NULL,
  `units` char(50) default NULL,
  `amount` char(50) default NULL,
  `id` char(30) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fn_accvoucher_sales`
--

LOCK TABLES `fn_accvoucher_sales` WRITE;
/*!40000 ALTER TABLE `fn_accvoucher_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_accvoucher_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_expenses`
--

DROP TABLE IF EXISTS `food_expenses`;
CREATE TABLE `food_expenses` (
  `empname` char(30) default NULL,
  `phone` char(30) default NULL,
  `location` char(30) default NULL,
  `approvedby` char(50) default NULL,
  `date1` date default NULL,
  `totalamount` char(30) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_expenses`
--

LOCK TABLES `food_expenses` WRITE;
/*!40000 ALTER TABLE `food_expenses` DISABLE KEYS */;
INSERT INTO `food_expenses` VALUES ('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','THU'),('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','FRI'),('ajay','3545','hyd','ahay','2008-03-14','1000','Sales','SAT'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','THU'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','FRI'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','SAT'),('ajay','3545','hyd','ahay','2008-03-14','1000','Finance','TUE'),('ajay','3545','8uytuy','ahay','2008-03-14','500','Sales','TUE');
/*!40000 ALTER TABLE `food_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupdata`
--

DROP TABLE IF EXISTS `groupdata`;
CREATE TABLE `groupdata` (
  `name` char(50) default NULL,
  `type` char(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupdata`
--

LOCK TABLES `groupdata` WRITE;
/*!40000 ALTER TABLE `groupdata` DISABLE KEYS */;
INSERT INTO `groupdata` VALUES ('BankAccounts','CurrentAssets'),('Cash-in-Hand','CurrentAssets'),('Deposits(Assets)','CurrentAssets'),('Loans&Advances(Assets)','CurrentAssets'),('Stock-in-hand','CurrentAssets'),('IntegratedAccounts-cum-Inventory','CurrentAssets'),('Non-IntegratedAccounts-cum-Inventory','CurrentAssets'),('SundryDebtors','CurrentAssets');
/*!40000 ALTER TABLE `groupdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupdetails`
--

DROP TABLE IF EXISTS `groupdetails`;
CREATE TABLE `groupdetails` (
  `name` varchar(30) default NULL,
  `alias` varchar(30) default NULL,
  `under` varchar(30) default NULL,
  `nameofgrp` varchar(30) default NULL,
  `grpbehave` varchar(5) default NULL,
  `nettreport` varchar(5) default NULL,
  `caluse` varchar(5) default NULL,
  `metallo` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupdetails`
--

LOCK TABLES `groupdetails` WRITE;
/*!40000 ALTER TABLE `groupdetails` DISABLE KEYS */;
INSERT INTO `groupdetails` VALUES ('BankAccounts','','null','','no','no','',''),('BankOCC-A/C','','Loans(Liabilities)','','no','no','',''),('BankOD-A/C','BankOcc-A/C','Loans(Liabilities)','','no','no','',''),('Branch/Divisions','','Primary','Liabilities','no','no','',''),('CapitalAccount','','Primary','Liabilities','no','no','',''),('Cash-in-Hand','','CurrentAssets','','no','no','',''),('CurrentAssets','','Primary','Assets','no','no','',''),('CurrentLiabilities','','Primary','Liabilities','no','no','',''),('Deposits(asset)','','CurrentAssets','','no','no','',''),('null','null','null','null','null','null','null','null'),('DirectIncome','Income(direct)','Primary','Income','no','no','',''),('Duties&taxes','','CurrentLiabilities','','no','no','',''),('Expenses(direct)','','Primary','Expenses','no','no','',''),('Expenses(Indirect)','','Primary','Expenses','no','no','',''),('FixedAssets','','Primary','Assets','no','no','',''),('Income(Direct)','','Primary','Income','no','no','',''),('Income(InDirect)','','Primary','Income','no','no','',''),('IncomeExpenses','Expenses(Indirect)','Primary','Expenses','no','no','',''),('IncomeIncomes','Income(Indirect)','Primary','Income','no','no','',''),('Investments','','Primary','Assets','no','no','',''),('Loans&Advances(Asset)','','CurrentAssets','','no','no','',''),('Loans(Liabilitie)','','Primary','Liabilities','no','no','',''),('Misc.Expenses(Asset)','','Primary','Assets','no','no','',''),('Provisions','','CurrentLiabilities','','no','no','',''),('PurchaseAccounts','','Primary','Expenses','no','no','',''),('Reverse&Surplus','RetainedEarnings','CapitalAccount','','no','no','',''),('RetainedEarnings','','CapitalAccount','','no','no','',''),('SalesAccounts','','null','Income','no','no','',''),('SecuredLoans','','Loans(Liabilities)','','no','no','',''),('Stock-in-Hand','','CurrentAssets','','no','no','',''),('SundryCreditors','','CurrentLiabilities','','Yes','no','',''),('SundryDebtors','','CurrentAssets','','Yes','no','',''),('Suspense-A/C','','Primary','Liabilities','No','no','',''),('UnSecuredLoans','','Loans(Liabilities)','','No','no','',''),('grp1','grp','BankAccounts','payments','No','No','No','Not Applicable');
/*!40000 ALTER TABLE `groupdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `groupname` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('BankAccounts'),('BankOCC-A/c'),('BankOD-A/c'),('Branch/Divisions'),('CapitalAccount'),('Cash-in-Hand'),('CurrentAssets'),('CurrentLiabilities'),('Deposits(Asset)'),('DirectExpenses'),('DirectIncomes'),('Duties&Taxes'),('Expenses(Direct)'),('Expenses(InDirect)'),('FixedAssets'),('Income(Direct)'),('Income(InDirect)'),('IndirectExpenses'),('IndirectIncomes'),('Investments'),('Loans&Advances(Asset)'),('Loans(Liability)'),('Misc.Expenses(ASSET)'),('Provisions'),('PurchaseAccounts'),('Reverse&Surplus'),('RetainedEarnings'),('SalesAccounts'),('SecuredLoans'),('Stock-in-hand'),('SundryCreditors'),('SundryDebtors'),('Suspense-A/c'),('UnsecuredLoans'),('grp1');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_expenses`
--

DROP TABLE IF EXISTS `hotel_expenses`;
CREATE TABLE `hotel_expenses` (
  `empname` char(30) default NULL,
  `phone` char(30) default NULL,
  `location` char(30) default NULL,
  `approvedby` char(50) default NULL,
  `date1` date default NULL,
  `noofdays` char(10) default NULL,
  `hotelname` char(30) default NULL,
  `hotellocation` char(50) default NULL,
  `amountperday` char(50) default NULL,
  `totalamount` char(30) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_expenses`
--

LOCK TABLES `hotel_expenses` WRITE;
/*!40000 ALTER TABLE `hotel_expenses` DISABLE KEYS */;
INSERT INTO `hotel_expenses` VALUES ('ajay','3545','hyd','ahay','2008-03-14','3','swagat','hyd','1000','3000','Sales','SUN'),('ajay','3545','hyd','ahay','2008-03-14','3','swagat','hyd','1000','3000','Sales','MON'),('ajay','3545','hyd','ahay','2008-03-14','3','swagat','hyd','1000','3000','Finance','SUN'),('ajay','3545','hyd','ahay','2008-03-14','3','swagat','hyd','1000','3000','Finance','MON'),('JHGJH','798','jkh','jhjk','2008-03-14','78','6','7678','78','6084','Sales','MON'),('ajay','876','8uytuy','uyt','2008-03-14','56','hg','h','76','4256','Sales','WED'),('ajay','3545','8uytuy','ahay','2008-03-14','12','j','iuy','1221','14652','Sales','THU'),('jfg','ghf','yut','hjg','2008-03-14','76','hg','8','87','6612','Sales','FRI'),('ajay','3545','8uytuy','ahay','2008-03-14','12','6','7678','1000','12000','Sales','SAT'),('ajay','3545','8uytuy','ahay','2008-03-14','12','6','7678','1000','12000','Sales','TUE'),('ajay','3545','8uytuy','ahay','2008-03-14','12','6','7678','1221','14652','Sales','FRI');
/*!40000 ALTER TABLE `hotel_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_purchase_returns`
--

DROP TABLE IF EXISTS `in_purchase_returns`;
CREATE TABLE `in_purchase_returns` (
  `v_date` date default NULL,
  `partyname` varchar(30) default NULL,
  `quotationno` varchar(20) default NULL,
  `itemcode` varchar(20) default NULL,
  `nameofitem` varchar(30) default NULL,
  `qty` int(11) default NULL,
  `units` varchar(10) default NULL,
  `rate` double default NULL,
  `amount` double default NULL,
  `narration` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_purchase_returns`
--

LOCK TABLES `in_purchase_returns` WRITE;
/*!40000 ALTER TABLE `in_purchase_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `in_purchase_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_purchases`
--

DROP TABLE IF EXISTS `in_purchases`;
CREATE TABLE `in_purchases` (
  `v_date` date default NULL,
  `partyname` varchar(30) default NULL,
  `quotationno` varchar(20) default NULL,
  `itemcode` varchar(20) default NULL,
  `nameofitem` varchar(30) default NULL,
  `qty` int(11) default NULL,
  `units` varchar(10) default NULL,
  `rate` double default NULL,
  `amount` double default NULL,
  `narration` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_purchases`
--

LOCK TABLES `in_purchases` WRITE;
/*!40000 ALTER TABLE `in_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `in_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewevaluationreport`
--

DROP TABLE IF EXISTS `interviewevaluationreport`;
CREATE TABLE `interviewevaluationreport` (
  `candidatename` char(40) default NULL,
  `date` date default NULL,
  `position` char(30) default NULL,
  `company` char(40) default NULL,
  `appearance` char(32) default NULL,
  `qualification` char(30) default NULL,
  `experience` char(30) default NULL,
  `jobstability` char(32) default NULL,
  `attitude` char(32) default NULL,
  `communicationskills` char(32) default NULL,
  `jobknowledge` char(32) default NULL,
  `jobskills` char(32) default NULL,
  `jobpotential` char(32) default NULL,
  `careerachievements` char(32) default NULL,
  `workdedication` char(32) default NULL,
  `abilitytolearn` char(32) default NULL,
  `openmindness` char(32) default NULL,
  `overallsuitability` char(32) default NULL,
  `finalassessment` char(10) default NULL,
  `othercomments` char(150) default NULL,
  `interviewedby` char(30) default NULL,
  `executivename` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewevaluationreport`
--

LOCK TABLES `interviewevaluationreport` WRITE;
/*!40000 ALTER TABLE `interviewevaluationreport` DISABLE KEYS */;
INSERT INTO `interviewevaluationreport` VALUES ('ajay','2008-01-10','jr','kv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Selected','','','pranam'),('ajay','2008-01-01','jr','kvk','appearanceex','qualificationex','jobstabilityex',NULL,'communicationskillsex','jobknowledgeex','jobskillsex','jobpotentialex','careerachievementsex','workdedicationex','abilitytolearnex','openmindnessex','maturitylevelex','overallsuitabilityex','Selected','asf','ajay','pranam'),('ajay','2008-01-01','jr','kvk','appearancevg','qualificationvg','jobstabilityex',NULL,'communicationskillsvg','jobknowledgevg','jobskillsvg','jobpotentialvg','careerachievementsvg','workdedicationvg','abilitytolearnex','openmindnessvg','maturitylevelvg','overallsuitabilityvg','Selected','asf','ajay','pranam'),('pranam','2008-01-01','jr','kvk','appearanceex','qualificationex','jobstabilityvg',NULL,'communicationskillsp','jobknowledgevg','jobskillsvg','jobpotentialvg','careerachievementsp','workdedicationp','abilitytolearng','openmindnessvg','maturitylevelvg','overallsuitabilityvg','Selected','no','ajay','pranam'),('vinay','2008-01-01','asd','asd','appearanceg','qualificationex','jobstabilityg',NULL,'communicationskillsex','jobknowledgeex','jobskillsex','jobpotentialex','careerachievementsex','workdedicationex','abilitytolearnex','openmindnessex','maturitylevelex','overallsuitabilityex','Selected','as','ajay','pranam'),('vinay','2008-01-01','asd','asd','appearanceg','qualificationex','jobstabilityg',NULL,'communicationskillsex','jobknowledgeex','jobskillsex','jobpotentialex','careerachievementsex','workdedicationex','abilitytolearnex','openmindnessex','maturitylevelex','overallsuitabilityex','Selected','as','ajay','pranam');
/*!40000 ALTER TABLE `interviewevaluationreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewevaluationreport1`
--

DROP TABLE IF EXISTS `interviewevaluationreport1`;
CREATE TABLE `interviewevaluationreport1` (
  `candidatename` char(40) default NULL,
  `date` date default NULL,
  `position` char(30) default NULL,
  `company` char(40) default NULL,
  `appearance` char(32) default NULL,
  `qualification` char(30) default NULL,
  `experience` char(30) default NULL,
  `jobstability` char(32) default NULL,
  `attitude` char(32) default NULL,
  `communicationskills` char(32) default NULL,
  `jobknowledge` char(32) default NULL,
  `jobskills` char(32) default NULL,
  `jobpotential` char(32) default NULL,
  `careerachievements` char(32) default NULL,
  `workdedication` char(32) default NULL,
  `abilitytolearn` char(32) default NULL,
  `openmindness` char(32) default NULL,
  `maturitylevel` char(40) default NULL,
  `overallsuitability` char(32) default NULL,
  `finalassessment` char(10) default NULL,
  `othercomments` char(150) default NULL,
  `interviewedby` char(30) default NULL,
  `executivename` char(20) default NULL,
  `presentsalary` char(30) default NULL,
  `exceptedsalary` char(30) default NULL,
  `salaryoffered` char(30) default NULL,
  `joiningtimerequired` char(30) default NULL,
  `department` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewevaluationreport1`
--

LOCK TABLES `interviewevaluationreport1` WRITE;
/*!40000 ALTER TABLE `interviewevaluationreport1` DISABLE KEYS */;
INSERT INTO `interviewevaluationreport1` VALUES ('ajay','2008-01-01','jr','pranam','appearanceex','qualificationex','experienceex','jobstabilityex',NULL,'communicationskillsex','jobknowledgeex','jobskillsex','jobpotentialex','careerachievementsex','workdedicationex','abilitytolearnex','openmindnessex','maturitylevelex','overallsuitabilityex','Selected','no','ajay','pranam',NULL,NULL,NULL,NULL,NULL),('prasad','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','no','ajay','pranam',NULL,NULL,NULL,NULL,NULL),('prasad','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','no','ajay','pranam',NULL,NULL,NULL,NULL,NULL),('prasad','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asdf','pranam',NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asdf','pranam',NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asdf','pranam',NULL,NULL,NULL,NULL,NULL),('asdfasdfasdf','2008-01-01','jr','kvk','Excellent','Excellent','Excellent','Excellent',NULL,'Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asdf','pranam',NULL,NULL,NULL,NULL,NULL),('pavan','2008-01-01','asdf','asd','Excellent','Excellent','Excellent','Excellent','Excellent','VeryGood','VeryGood','Excellent','Excellent','VeryGood','VeryGood','VeryGood','Excellent','VeryGood','VeryGood','Selected','as','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asd','2008-01-01','asd','asfd','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','as','pranam',NULL,NULL,NULL,NULL,NULL),('asd','2008-01-01','sad','sdaf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','no','ajay','pranam',NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','asd','asd','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected',' lasd','asdf','pranam',NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','asd','sadf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asdf','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','asd','sadf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asdf','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asdf','2008-01-01','asd','sadf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asdf','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asd','2008-01-01','asd','asdf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asd','2008-01-01','asd','asdf','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','asd','asd','pranam',NULL,NULL,NULL,NULL,NULL),('asd','2008-01-01','asd','as','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','sd','s','pranam','10000','15000','20000',NULL,'a'),('asd','2008-01-01','asd','as','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','sd','s','pranam','10000','15000','20000',NULL,'a'),('asd','2008-01-01','asd','as','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','sd','s','pranam','10000','15000','20000',NULL,'a'),('asd','2008-01-01','asd','as','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Selected','sd','s','pranam','10000','15000','20000',NULL,'a'),('Appa Rao','2008-02-19','executive','kvk','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Excellent','Rejected','too much Excellence','ajay','pranam','100','105','102.5',NULL,'finance');
/*!40000 ALTER TABLE `interviewevaluationreport1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `customername` char(50) default NULL,
  `id` char(50) default NULL,
  `invoiceno` char(40) default NULL,
  `date` date default NULL,
  `refferenceno` char(20) default NULL,
  `srlno` char(30) default NULL,
  `name` char(30) default NULL,
  `unitprice` float default NULL,
  `numberofpieces` int(10) default NULL,
  `servicetax` char(30) default NULL,
  `vat` char(20) default NULL,
  `educesstax` char(20) default NULL,
  `total` char(20) default NULL,
  `dept` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('ajay,hyd','1021','1111','2008-03-16','100','111','PEN',10,10,'12.0','12.5','124.5','ajay','Sales'),('aj','1001','1110','2008-03-17','1001','113','table',300,10,'360.0','375.0','3735.0','ajay','Sales');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaveapplications`
--

DROP TABLE IF EXISTS `leaveapplications`;
CREATE TABLE `leaveapplications` (
  `name` char(30) default NULL,
  `company` char(20) default NULL,
  `employeecode` char(30) default NULL,
  `designation` char(30) default NULL,
  `purposeofleave` char(30) default NULL,
  `addressonleave` char(100) default NULL,
  `fromdate` date default NULL,
  `todate` date default NULL,
  `cl` char(20) default NULL,
  `sl` char(20) default NULL,
  `el` char(20) default NULL,
  `lop` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaveapplications`
--

LOCK TABLES `leaveapplications` WRITE;
/*!40000 ALTER TABLE `leaveapplications` DISABLE KEYS */;
INSERT INTO `leaveapplications` VALUES (NULL,'pranam','asd23','afs3','fever',NULL,'2008-12-12','2008-12-13','asd','sdf',NULL,'asd'),('vijay','kvk','asd23','developer','fever','vij','2008-01-12','2008-12-13','asd','as','a','a'),('asdfasfd','asfd','asd','asdf','asdf','a','2008-01-12','2008-12-13','asd','as','a','sa'),('asdfasfd','asfd','asd','asdf','asdf','a','2008-01-12','2008-12-13','asd','as','a','sa'),('asdfasfd','asfd','asd','asdf','asdf','a','2008-01-12','2008-12-13','asd','as','a','sa'),('ajay','pranm','12','as','fever','sa','2008-01-12','2008-12-13','asd','a','a','a'),('appa Rao','kvk','10002','executive','death','hell','2008-02-19','2008-02-21','','','','');
/*!40000 ALTER TABLE `leaveapplications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgers`
--

DROP TABLE IF EXISTS `ledgers`;
CREATE TABLE `ledgers` (
  `name` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ledgers`
--

LOCK TABLES `ledgers` WRITE;
/*!40000 ALTER TABLE `ledgers` DISABLE KEYS */;
INSERT INTO `ledgers` VALUES ('Cash'),('Profit&LossA/c');
/*!40000 ALTER TABLE `ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgersdata`
--

DROP TABLE IF EXISTS `ledgersdata`;
CREATE TABLE `ledgersdata` (
  `ledgername` char(50) default NULL,
  `aliasname` char(60) default NULL,
  `under` char(50) default NULL,
  `inventoryvalues` char(10) default NULL,
  `name` char(50) default NULL,
  `address` char(120) default NULL,
  `state` char(50) default NULL,
  `pincode` char(50) default NULL,
  `panoritno` char(50) default NULL,
  `salestaxno` char(50) default NULL,
  `openingbalance` char(30) default NULL,
  `type` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ledgersdata`
--

LOCK TABLES `ledgersdata` WRITE;
/*!40000 ALTER TABLE `ledgersdata` DISABLE KEYS */;
INSERT INTO `ledgersdata` VALUES ('Cash','','Cash-in-hand','Yes','','','','','','','0','Dr'),('Ajaycapital','asfd','CapitalAccount','Yes','ajay','hyd','ap','520007','12','12','0','Dr'),('icici','','BankAccounts','Yes','ajay','hyd','ap','6454','4654','2316','','Dr'),('fan','','IndirectExpenses','Yes','aj','hyd','ap','520007','12','12','0','Dr'),('sales','','SalesAccounts','Yes','aj','hyd','ap','520007','12','12','0','Dr'),('purchase','','PurchaseAccounts','Yes','aj','hyd','ap','','','','0','Dr'),('raj','raj','CapitalAccount','No','raj','hyd','ap','500044','','','0','Dr'),('station','','Expenses(Direct)','No','','','','','','','0','Dr');
/*!40000 ALTER TABLE `ledgersdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgertypes`
--

DROP TABLE IF EXISTS `ledgertypes`;
CREATE TABLE `ledgertypes` (
  `type` char(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ledgertypes`
--

LOCK TABLES `ledgertypes` WRITE;
/*!40000 ALTER TABLE `ledgertypes` DISABLE KEYS */;
INSERT INTO `ledgertypes` VALUES ('Cash'),('Profit&LossA/c');
/*!40000 ALTER TABLE `ledgertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_expenses`
--

DROP TABLE IF EXISTS `misc_expenses`;
CREATE TABLE `misc_expenses` (
  `empname` char(30) default NULL,
  `phone` char(30) default NULL,
  `location` char(30) default NULL,
  `approvedby` char(50) default NULL,
  `date1` date default NULL,
  `purpose` char(70) default NULL,
  `totalamount` char(30) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `misc_expenses`
--

LOCK TABLES `misc_expenses` WRITE;
/*!40000 ALTER TABLE `misc_expenses` DISABLE KEYS */;
INSERT INTO `misc_expenses` VALUES ('ajay','3545','hyd','ahay','2008-03-14','auto','100','Sales','SUN'),('ajay','3545','hyd','ahay','2008-03-14','auto','100','Sales','MON'),('ajay','3545','hyd','ahay','2008-03-14','auto','100','Finance','SUN'),('ajay','3545','hyd','ahay','2008-03-14','auto','100','Finance','MON'),('ajay','798','hysdq','aja','2008-03-15','auto','200','Sales','WED'),('ajay','3545','8uytuy','aja','2008-03-14','auto','200','Sales','THU'),('ajay','3545','8uytuy','98798','2008-03-14','auto','100','Sales','SAT'),('ajay','3545','8uytuy','98798','2008-03-14','auto','100','Sales','TUE'),('ajay','3545','8uytuy','98798','2008-03-14','auto','100','Sales','FRI');
/*!40000 ALTER TABLE `misc_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pettycashjournal`
--

DROP TABLE IF EXISTS `pettycashjournal`;
CREATE TABLE `pettycashjournal` (
  `dept` char(20) default NULL,
  `date1` date default NULL,
  `vocher1` char(30) default NULL,
  `payee1` char(40) default NULL,
  `approvedby1` char(30) default NULL,
  `total1` char(40) default NULL,
  `balence1` char(40) default NULL,
  `auditedby` char(40) default NULL,
  `approvedby` char(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pettycashjournal`
--

LOCK TABLES `pettycashjournal` WRITE;
/*!40000 ALTER TABLE `pettycashjournal` DISABLE KEYS */;
INSERT INTO `pettycashjournal` VALUES ('Sales','2008-03-14','11','ajay','ajay','150','100','ajay','pavan'),('Sales','2008-03-14','11','ajay','ajay','150','100','ajay','pavan'),('Finance','2008-03-18','101','ajay','ajay','100','50','ajay','pavan'),('Finance','2008-03-18','101','ajay','ajay','100','50','ajay','pavan');
/*!40000 ALTER TABLE `pettycashjournal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_bill`
--

DROP TABLE IF EXISTS `phone_bill`;
CREATE TABLE `phone_bill` (
  `currentdate` date default NULL,
  `provider` char(30) default NULL,
  `location` char(30) default NULL,
  `approvedby` char(50) default NULL,
  `phone` char(20) default NULL,
  `billmonth` char(50) default NULL,
  `amount` char(50) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_bill`
--

LOCK TABLES `phone_bill` WRITE;
/*!40000 ALTER TABLE `phone_bill` DISABLE KEYS */;
INSERT INTO `phone_bill` VALUES ('2008-03-14','BSNL','hyd','ravi','5558195','Mar','500',NULL,NULL),(NULL,NULL,'hyd','ravi','5558195',NULL,'500',NULL,NULL),('2008-03-14','Airtel','hyd','ravi','5558195','Apr','500',NULL,NULL),('2008-03-14','BSNL','hyd','ahay','3545','Jan','500','sales',NULL),('2008-03-14','BSNL','hyd','ahay','3545','Jan','1000','finance',NULL),('2008-03-14','BSNL','hyd','ahay','3545','Jan','1000','finance','SUN');
/*!40000 ALTER TABLE `phone_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sl_sales`
--

DROP TABLE IF EXISTS `sl_sales`;
CREATE TABLE `sl_sales` (
  `v_date` date default NULL,
  `partyname` varchar(30) default NULL,
  `quotationno` varchar(20) default NULL,
  `itemcode` varchar(20) default NULL,
  `nameofitem` varchar(30) default NULL,
  `qty` int(11) default NULL,
  `units` varchar(10) default NULL,
  `rate` double default NULL,
  `amount` double default NULL,
  `checkno` varchar(20) default NULL,
  `bankname` varchar(30) default NULL,
  `narration` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_sales`
--

LOCK TABLES `sl_sales` WRITE;
/*!40000 ALTER TABLE `sl_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sl_sales_returns`
--

DROP TABLE IF EXISTS `sl_sales_returns`;
CREATE TABLE `sl_sales_returns` (
  `v_date` date default NULL,
  `partyname` varchar(30) default NULL,
  `quotationno` varchar(20) default NULL,
  `itemcode` varchar(20) default NULL,
  `nameofitem` varchar(30) default NULL,
  `qty` int(11) default NULL,
  `units` varchar(10) default NULL,
  `rate` double default NULL,
  `amount` double default NULL,
  `checkno` varchar(20) default NULL,
  `bankname` varchar(30) default NULL,
  `narration` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_sales_returns`
--

LOCK TABLES `sl_sales_returns` WRITE;
/*!40000 ALTER TABLE `sl_sales_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sl_sales_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_items`
--

DROP TABLE IF EXISTS `stock_items`;
CREATE TABLE `stock_items` (
  `itemname` char(50) default NULL,
  `aliasname` char(50) default NULL,
  `under` char(50) default NULL,
  `units` char(50) default NULL,
  `rateofduty` char(70) default NULL,
  `quantity` char(50) default NULL,
  `rateperunit` char(70) default NULL,
  `total` char(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_items`
--

LOCK TABLES `stock_items` WRITE;
/*!40000 ALTER TABLE `stock_items` DISABLE KEYS */;
INSERT INTO `stock_items` VALUES ('coal','c','RawMaterial','tonn','10','10','1000','coal'),('abc','a','RawMaterial','tonn','1','10','100','1000');
/*!40000 ALTER TABLE `stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockgroup`
--

DROP TABLE IF EXISTS `stockgroup`;
CREATE TABLE `stockgroup` (
  `name` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockgroup`
--

LOCK TABLES `stockgroup` WRITE;
/*!40000 ALTER TABLE `stockgroup` DISABLE KEYS */;
INSERT INTO `stockgroup` VALUES ('Primary');
/*!40000 ALTER TABLE `stockgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockgroupdetails`
--

DROP TABLE IF EXISTS `stockgroupdetails`;
CREATE TABLE `stockgroupdetails` (
  `name` varchar(30) default NULL,
  `alias` varchar(20) default NULL,
  `under` varchar(20) default NULL,
  `qtyadd` varchar(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockgroupdetails`
--

LOCK TABLES `stockgroupdetails` WRITE;
/*!40000 ALTER TABLE `stockgroupdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockgroupdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockgroups`
--

DROP TABLE IF EXISTS `stockgroups`;
CREATE TABLE `stockgroups` (
  `name` char(50) default NULL,
  `aliasname` char(30) default NULL,
  `under` char(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockgroups`
--

LOCK TABLES `stockgroups` WRITE;
/*!40000 ALTER TABLE `stockgroups` DISABLE KEYS */;
INSERT INTO `stockgroups` VALUES ('ajay','a','Primary'),('ajay1','a','Primary'),('RawMaterial','a','Primary');
/*!40000 ALTER TABLE `stockgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockitems`
--

DROP TABLE IF EXISTS `stockitems`;
CREATE TABLE `stockitems` (
  `name` varchar(30) default NULL,
  `alias` varchar(10) default NULL,
  `under` varchar(30) default NULL,
  `units` varchar(30) default NULL,
  `tax_rateof` varchar(10) default NULL,
  `tax_traffic` varchar(20) default NULL,
  `qty` int(11) default NULL,
  `rate` double(15,2) default NULL,
  `per` varchar(20) default NULL,
  `value` double(15,2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockitems`
--

LOCK TABLES `stockitems` WRITE;
/*!40000 ALTER TABLE `stockitems` DISABLE KEYS */;
INSERT INTO `stockitems` VALUES ('coal','coal','Primary','tonn',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `stockitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_expenses`
--

DROP TABLE IF EXISTS `travel_expenses`;
CREATE TABLE `travel_expenses` (
  `currentdate` date default NULL,
  `empname` char(30) default NULL,
  `completedby` char(40) default NULL,
  `location` char(30) default NULL,
  `auditedby` char(30) default NULL,
  `address` char(100) default NULL,
  `purpose` char(50) default NULL,
  `city` char(40) default NULL,
  `approvedby` char(50) default NULL,
  `state` char(40) default NULL,
  `zip` char(20) default NULL,
  `phone` char(20) default NULL,
  `date1` date default NULL,
  `travelfrom` char(50) default NULL,
  `totalmileage` char(50) default NULL,
  `ratepermile` char(20) default NULL,
  `amount` char(50) default NULL,
  `dept` char(30) default NULL,
  `day` char(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_expenses`
--

LOCK TABLES `travel_expenses` WRITE;
/*!40000 ALTER TABLE `travel_expenses` DISABLE KEYS */;
INSERT INTO `travel_expenses` VALUES ('2008-03-14','ajay','ajay','hyd','ajay','hyd','exp','vij','pavan','ap','520007','9985123282','2008-03-14','vij','50','50','2500','Sales','SUN'),('2008-03-14','ajay','ajay','hyd','ajay','hyd','exp','vij','pavan','ap','520007','3545','2008-03-14','vij','50','50','2500','Sales','MON'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','50','50','2500','Sales','TUE'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','50','50','2500','Finance','SUN'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','33','44','1452','Finance','MON'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','33','44','1452','Accounts','MON'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','9985123282','2008-03-14','vij','1312','12','15744','Sales','WED'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','1312','44','57728','Sales','THU'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','ahay','ap','520007','3545','2008-03-14','vij','1312','12','15744','Sales','FRI'),('2008-03-14','ajay','ajay','hyd','ajay','as','as','as','aja','ap','520007','3545','2008-03-14','vij','1312','12','15744','Sales','SAT');
/*!40000 ALTER TABLE `travel_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitofmeasures`
--

DROP TABLE IF EXISTS `unitofmeasures`;
CREATE TABLE `unitofmeasures` (
  `symbol` char(50) default NULL,
  `formalname` char(50) default NULL,
  `decimalplaces` char(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitofmeasures`
--

LOCK TABLES `unitofmeasures` WRITE;
/*!40000 ALTER TABLE `unitofmeasures` DISABLE KEYS */;
INSERT INTO `unitofmeasures` VALUES ('kilorams','kg','2'),('tonn','tn','3');
/*!40000 ALTER TABLE `unitofmeasures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitsofmeasure`
--

DROP TABLE IF EXISTS `unitsofmeasure`;
CREATE TABLE `unitsofmeasure` (
  `type` varchar(20) default NULL,
  `symbol` varchar(30) default NULL,
  `formalname` varchar(20) default NULL,
  `noofdecimal` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitsofmeasure`
--

LOCK TABLES `unitsofmeasure` WRITE;
/*!40000 ALTER TABLE `unitsofmeasure` DISABLE KEYS */;
INSERT INTO `unitsofmeasure` VALUES ('Simple','tonn','Tonn',2);
/*!40000 ALTER TABLE `unitsofmeasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernames`
--

DROP TABLE IF EXISTS `usernames`;
CREATE TABLE `usernames` (
  `username` char(30) default NULL,
  `password` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usernames`
--

LOCK TABLES `usernames` WRITE;
/*!40000 ALTER TABLE `usernames` DISABLE KEYS */;
INSERT INTO `usernames` VALUES ('ajay','ajay');
/*!40000 ALTER TABLE `usernames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocherdata`
--

DROP TABLE IF EXISTS `vocherdata`;
CREATE TABLE `vocherdata` (
  `name` char(30) default NULL,
  `typeofvocher` char(30) default NULL,
  `abbr` char(30) default NULL,
  `numberingmethod` char(10) default NULL,
  `useadvconfiguration` char(30) default NULL,
  `useeffectivedates` char(10) default NULL,
  `usecommonnarrition` char(10) default NULL,
  `narrationsforeachentry` char(10) default NULL,
  `nameofclass` char(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vocherdata`
--

LOCK TABLES `vocherdata` WRITE;
/*!40000 ALTER TABLE `vocherdata` DISABLE KEYS */;
INSERT INTO `vocherdata` VALUES ('Contra','Contra','Ctra','Automatic','No','No','Yes','No',''),('CreditNote','CreditNote','C/Note','Automatic','No','No','Yes','No',''),('DebitNote','DebitNote','D/Note','Automatic','No','No','Yes','No',''),('DeliveryNote','DeliveryNote','D/Note','Automatic','No','No','Yes','No',''),('Journal','Journal','Jrnl','Automatic','No','No','Yes','No',''),('Memorandom','Memorandom','Memo','Automatic','No','No','Yes','No',''),('Payment','Payment','Pymt','Automatic','No','No','Yes','No',''),('PhysicalStock','PhysicalStock','PhyStk','Automatic','No','No','Yes','No',''),('Purchase','Purchase','Purc','Automatic','No','No','Yes','No',''),('PurchaseOrder','PurchaseOrder','PurcOrder','Automatic','No','No','Yes','No',''),('Receipt','Receipt','Rcpt','Automatic','No','No','Yes','No',''),('ReceiptNote','ReceiptNote','RcptNote','Automatic','No','No','Yes','No',''),('RejectionsIn','RejectionIn','RejIn','Automatic','No','No','Yes','No',''),('RejectionsOut','RejectionOut','RejOut','Automatic','No','No','Yes','No',''),('ReversingJournal','ReversingJournal','RevJrnl','Automatic','No','No','Yes','No',''),('Sales','Sales','Sale','Automatic','No','No','Yes','No',''),('SalesOrder','SalesOrder','SalesOrder','Automatic','No','No','Yes','No',''),('StockJournal','StockJournal','StkJrnl','Automatic','No','No','Yes','No',''),('sales1','Sales','sasle','Automatic','No','No','Yes','No','None');
/*!40000 ALTER TABLE `vocherdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vochertypes`
--

DROP TABLE IF EXISTS `vochertypes`;
CREATE TABLE `vochertypes` (
  `name` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vochertypes`
--

LOCK TABLES `vochertypes` WRITE;
/*!40000 ALTER TABLE `vochertypes` DISABLE KEYS */;
INSERT INTO `vochertypes` VALUES ('contra'),('CreditNote'),('DebitNote'),('DeliveryNote'),('Journal'),('Memorandum'),('Payment'),('PhysicalStock'),('Purchase'),('PurchaseOrder'),('Receipt'),('ReceiptNote'),('RejectionsIn'),('RejectionsOut'),('ReversingJournal'),('Sales'),('SalesOrder'),('StockJournal');
/*!40000 ALTER TABLE `vochertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_contra`
--

DROP TABLE IF EXISTS `voucher_contra`;
CREATE TABLE `voucher_contra` (
  `no` int(11) NOT NULL auto_increment,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `account` varchar(30) default NULL,
  `particulars` varchar(30) default NULL,
  `amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_contra`
--

LOCK TABLES `voucher_contra` WRITE;
/*!40000 ALTER TABLE `voucher_contra` DISABLE KEYS */;
INSERT INTO `voucher_contra` VALUES (1,'2008-06-04','Contra','icici','Cash',2000.00,'null');
/*!40000 ALTER TABLE `voucher_contra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_journal`
--

DROP TABLE IF EXISTS `voucher_journal`;
CREATE TABLE `voucher_journal` (
  `no` int(11) NOT NULL auto_increment,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `by_parti` varchar(30) default NULL,
  `nameofitem` varchar(30) default NULL,
  `quantity` int(11) default NULL,
  `rate` double default NULL,
  `units` varchar(20) default NULL,
  `by_amount` double(15,2) default NULL,
  `to_parti` varchar(30) default NULL,
  `to_amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_journal`
--

LOCK TABLES `voucher_journal` WRITE;
/*!40000 ALTER TABLE `voucher_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_payment`
--

DROP TABLE IF EXISTS `voucher_payment`;
CREATE TABLE `voucher_payment` (
  `no` int(11) NOT NULL auto_increment,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `account` varchar(30) default NULL,
  `particulars` varchar(30) default NULL,
  `amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_payment`
--

LOCK TABLES `voucher_payment` WRITE;
/*!40000 ALTER TABLE `voucher_payment` DISABLE KEYS */;
INSERT INTO `voucher_payment` VALUES (1,'2008-06-04','Payment','Cash','fan',100.00,'null');
/*!40000 ALTER TABLE `voucher_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_purchase`
--

DROP TABLE IF EXISTS `voucher_purchase`;
CREATE TABLE `voucher_purchase` (
  `no` int(11) NOT NULL auto_increment,
  `refno` char(50) default NULL,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `partyaccname` varchar(30) default NULL,
  `purchaseledger` varchar(30) default NULL,
  `nameofitem` varchar(30) default NULL,
  `quantity` int(11) default NULL,
  `rate` double default NULL,
  `units` varchar(20) default NULL,
  `amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_purchase`
--

LOCK TABLES `voucher_purchase` WRITE;
/*!40000 ALTER TABLE `voucher_purchase` DISABLE KEYS */;
INSERT INTO `voucher_purchase` VALUES (1,'','2008-06-04','Purchase','Cash','purchase','coal',10,12,'tonn',120.00,'');
/*!40000 ALTER TABLE `voucher_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_receipt`
--

DROP TABLE IF EXISTS `voucher_receipt`;
CREATE TABLE `voucher_receipt` (
  `no` int(11) NOT NULL auto_increment,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `account` varchar(30) default NULL,
  `particulars` varchar(30) default NULL,
  `amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_receipt`
--

LOCK TABLES `voucher_receipt` WRITE;
/*!40000 ALTER TABLE `voucher_receipt` DISABLE KEYS */;
INSERT INTO `voucher_receipt` VALUES (1,'2008-06-04','Receipt','Cash','Ajaycapital',5000.00,'null');
/*!40000 ALTER TABLE `voucher_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_sales`
--

DROP TABLE IF EXISTS `voucher_sales`;
CREATE TABLE `voucher_sales` (
  `no` int(11) NOT NULL auto_increment,
  `refno` char(50) default NULL,
  `v_date` date default NULL,
  `vouchertype` varchar(30) default NULL,
  `partyaccname` varchar(30) default NULL,
  `salesledger` varchar(30) default NULL,
  `nameofitem` varchar(30) default NULL,
  `quantity` int(11) default NULL,
  `rate` double default NULL,
  `units` varchar(20) default NULL,
  `amount` double(15,2) default NULL,
  `narration` varchar(300) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_sales`
--

LOCK TABLES `voucher_sales` WRITE;
/*!40000 ALTER TABLE `voucher_sales` DISABLE KEYS */;
INSERT INTO `voucher_sales` VALUES (1,'','2008-06-04','Sales','Cash','sales','coal',10,14,'tonn',140.00,'');
/*!40000 ALTER TABLE `voucher_sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-02-18  5:51:55
