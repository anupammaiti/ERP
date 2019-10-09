/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.1.30-community : Database - finance
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`finance` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `finance`;

/*Table structure for table `groupdetails` */

DROP TABLE IF EXISTS `groupdetails`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `groupdetails` */

insert  into `groupdetails`(`sno`,`name`,`alias`,`under`,`natureofgroup`,`grpbeh`,`netrep`,`usecal`,`metall`,`department`,`manager`,`deltby`,`getdate`,`ledgername`) values (1,'TravelAdv','TravelAdv1','Loans&Advances(Asset)','Advances for Travel','Yes','No','No','NotApplicable','','','fn_svs','2014-09-29',NULL),(2,'TravelExp','TravelExp','IndirectExpenses','TravelExp','No','No','No','NotApplicable','','','fn_svs','2014-09-30',NULL);

/*Table structure for table `tl_fn_advertisementexp` */

DROP TABLE IF EXISTS `tl_fn_advertisementexp`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_advertisementexp` */

insert  into `tl_fn_advertisementexp`(`sno`,`companyname`,`onissues`,`typeofaddess`,`noofseconds`,`mobileno`,`landno`,`amount`,`gendate`,`department`,`manager`,`deltby`,`ledgername`) values (1,'Delta Soft Solutions','RealEstate','Selling the Plot','120','9876543212','044234561','10000',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tl_fn_autoexpencestravel` */

DROP TABLE IF EXISTS `tl_fn_autoexpencestravel`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_autoexpencestravel` */

insert  into `tl_fn_autoexpencestravel`(`sno`,`date1`,`day1`,`empname`,`completedby`,`location`,`auditedby`,`address`,`purposeoftrip`,`city`,`approvedby`,`state`,`zipno`,`phoneno`,`department`,`date2`,`travelfrom`,`odometerstart`,`odometerend`,`totalmileage`,`rate`,`amountdue`,`gendate`,`ledgername`) values (1,'','Sun','Ravi','Kiran','Hyd','Kishore','Repalle','Official','Mumbai','Pavan','Telangana','5222201','9963514955','Finance','','Hyd','2000','4000','2000','7','14000','2014-10-01',NULL);

/*Table structure for table `tl_fn_cashreciptjournal` */

DROP TABLE IF EXISTS `tl_fn_cashreciptjournal`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_cashreciptjournal` */

/*Table structure for table `tl_fn_closingstock` */

DROP TABLE IF EXISTS `tl_fn_closingstock`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_closingstock` */

/*Table structure for table `tl_fn_current_asserts` */

DROP TABLE IF EXISTS `tl_fn_current_asserts`;

CREATE TABLE `tl_fn_current_asserts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `ledgername` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_current_asserts` */

insert  into `tl_fn_current_asserts`(`sno`,`ledgername`,`balance`,`under`) values (2,'Cash','20000.0',NULL),(3,'RaviTravelAdv','280000.0','Loans&Advances(Asset)');

/*Table structure for table `tl_fn_entertainmentexpenceses` */

DROP TABLE IF EXISTS `tl_fn_entertainmentexpenceses`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_entertainmentexpenceses` */

/*Table structure for table `tl_fn_foodexpenses` */

DROP TABLE IF EXISTS `tl_fn_foodexpenses`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_foodexpenses` */

/*Table structure for table `tl_fn_groupmapping` */

DROP TABLE IF EXISTS `tl_fn_groupmapping`;

CREATE TABLE `tl_fn_groupmapping` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `primarygroup` varchar(255) DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_groupmapping` */

insert  into `tl_fn_groupmapping`(`sno`,`primarygroup`,`subgroup`,`gendate`) values (1,'Loans&Advances(Asset)','TravelAdv',NULL),(2,'IndirectExpenses','TravelExp',NULL);

/*Table structure for table `tl_fn_groups` */

DROP TABLE IF EXISTS `tl_fn_groups`;

CREATE TABLE `tl_fn_groups` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_groups` */

insert  into `tl_fn_groups`(`sno`,`groupname`) values (3,'BankAccounts'),(4,'BankOCC-A/c'),(5,'BankOD-A/c'),(6,'Branch/Divisions'),(7,'CapitalAccount'),(8,'Cash-in-Hand'),(9,'CurrentAssets'),(10,'CurrentLiabilities'),(11,'Deposits(Asset)'),(12,'DirectExpenses'),(13,'DirectIncomes'),(14,'Duties&Taxes'),(15,'Expenses(Direct)'),(16,'Expenses(InDirect)'),(17,'FixedAssets'),(18,'Income(Direct)'),(19,'Income(InDirect)'),(20,'IndirectExpenses'),(21,'IndirectIncomes'),(22,'Investments'),(23,'Loans&Advances(Asset)'),(24,'Loans(Liability)'),(25,'Misc.Expenses(ASSET)'),(26,'Provisions'),(27,'PurchaseAccounts'),(28,'Reverse&Surplus'),(29,'RetainedEarnings'),(30,'SalesAccounts'),(31,'SecuredLoans'),(32,'Stock-in-hand'),(33,'SundryCreditors'),(34,'SundryDebtors'),(35,'Suspense-A/c'),(36,'UnsecuredLoans'),(48,'TravelAdv'),(49,'TravelExp');

/*Table structure for table `tl_fn_hotelexpenses` */

DROP TABLE IF EXISTS `tl_fn_hotelexpenses`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_hotelexpenses` */

/*Table structure for table `tl_fn_internetexp` */

DROP TABLE IF EXISTS `tl_fn_internetexp`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_internetexp` */

insert  into `tl_fn_internetexp`(`sno`,`companyname`,`package1`,`rate`,`installments`,`repairs`,`amount`,`phoneno`,`complientno`,`paymentplan`,`mobileno`,`totalamount`,`gendate`,`department`,`manager`,`deltby`,`ledgername`,`paiddate`) values (1,'Delta Soft Solutions','ComboPack','3000','2',NULL,'6000','044-654321','181818187171717','3000','9876543212','50000','2014-09-29',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tl_fn_ledger` */

DROP TABLE IF EXISTS `tl_fn_ledger`;

CREATE TABLE `tl_fn_ledger` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `ledgername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_ledger` */

/*Table structure for table `tl_fn_ledgerdetails` */

DROP TABLE IF EXISTS `tl_fn_ledgerdetails`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_ledgerdetails` */

insert  into `tl_fn_ledgerdetails`(`sno`,`ledgername`,`alias`,`under`,`inventoryvalues`,`name`,`address`,`state`,`pincode`,`panno`,`salestax`,`openingbalance`,`type`,`department`,`manager`,`deltby`,`getdate`) values (1,'RaviTravelAdv','RaviTravelAdv1','TravelAdv','No','RaviKiran','Repalle.','AndhraPradesh','522265','KCJD20010','12332329989','','Dr','','','fn_svs','2014-09-29'),(2,'RaviTravelExp','RaviTravelExp','TravelExp','No','TravelExp','Repalle','AndhraPradesh','522265','KCJD20010','12332329989','','Dr','','','fn_svs','2014-09-30'),(5,'Cash','cash','Cash-in-Hand','No','Repalle','Repalle.','AndhraPradesh','522265','KCJD20012','12332329989','','Dr','','','fn_svs','2014-10-14');

/*Table structure for table `tl_fn_measures` */

DROP TABLE IF EXISTS `tl_fn_measures`;

CREATE TABLE `tl_fn_measures` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `formalname` varchar(255) DEFAULT NULL,
  `numofdec` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_measures` */

insert  into `tl_fn_measures`(`sno`,`type`,`symbol`,`formalname`,`numofdec`) values (1,'Simple','mts','meters','2'),(2,'Simple','ton','tonnes','3'),(3,'Simple','kg','KiloGram','2');

/*Table structure for table `tl_fn_misleniousexpenceses` */

DROP TABLE IF EXISTS `tl_fn_misleniousexpenceses`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_misleniousexpenceses` */

/*Table structure for table `tl_fn_nontradingexpenceses` */

DROP TABLE IF EXISTS `tl_fn_nontradingexpenceses`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_nontradingexpenceses` */

/*Table structure for table `tl_fn_officeexp` */

DROP TABLE IF EXISTS `tl_fn_officeexp`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_officeexp` */

insert  into `tl_fn_officeexp`(`sno`,`itemname`,`quantity`,`amountperitem`,`total`,`gendate`,`department`,`manager`,`deltby`,`ledgername`) values (1,'TV','1','100000','100000','2014-09-30',NULL,NULL,NULL,'RaviTravelExp');

/*Table structure for table `tl_fn_phonebillexpences` */

DROP TABLE IF EXISTS `tl_fn_phonebillexpences`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_phonebillexpences` */

insert  into `tl_fn_phonebillexpences`(`sno`,`date1`,`day1`,`provider`,`phoneno`,`location`,`approvedby`,`department`,`billmonth`,`amountdue`,`gendate`,`ledgername`) values (1,'2014-10-02','Sun','BSNL','9963514955','Repalle','Pavan','Sales','Jan','14000','2014-10-02',NULL),(2,'2014-10-02','Sun','Airtel','9989942212','Hyd','Pavan','Finance','Feb','14000','2014-10-02',NULL);

/*Table structure for table `tl_fn_postageexp` */

DROP TABLE IF EXISTS `tl_fn_postageexp`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_postageexp` */

insert  into `tl_fn_postageexp`(`sno`,`to_name`,`address`,`typeofpost`,`rate`,`totalamount`,`gendate`,`department`,`manager`,`deltby`,`ledgername`) values (1,'HCL','Delhi','SpeedPost','200','300','2014-09-30',NULL,NULL,NULL,'RaviTravelExp');

/*Table structure for table `tl_fn_purchase` */

DROP TABLE IF EXISTS `tl_fn_purchase`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_purchase` */

/*Table structure for table `tl_fn_recipt` */

DROP TABLE IF EXISTS `tl_fn_recipt`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_recipt` */

insert  into `tl_fn_recipt`(`sno`,`reciptno`,`date`,`account`,`currentbalance`,`particulars`,`currentbalance1`,`amount`,`narration`,`under`,`department`,`manager`,`deltby`,`gendate`) values (1,'1','10/14/2014','Cash','','RaviTravelAdv','300000','20000','Amount paid by Ravi Travel Adv.',NULL,NULL,NULL,NULL,'2014-10-14');

/*Table structure for table `tl_fn_repairmaintenance` */

DROP TABLE IF EXISTS `tl_fn_repairmaintenance`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_repairmaintenance` */

insert  into `tl_fn_repairmaintenance`(`sno`,`itemname`,`quantity`,`amount`,`total`,`gendate`,`department`,`manager`,`deltby`,`ledgername`) values (1,'Wiring','2','300','600','2014-09-30',NULL,NULL,NULL,'RaviTravelExp');

/*Table structure for table `tl_fn_salaryexp` */

DROP TABLE IF EXISTS `tl_fn_salaryexp`;

CREATE TABLE `tl_fn_salaryexp` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `noofemployee` varchar(255) DEFAULT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_salaryexp` */

/*Table structure for table `tl_fn_salesreturn` */

DROP TABLE IF EXISTS `tl_fn_salesreturn`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_salesreturn` */

/*Table structure for table `tl_fn_stockgroup` */

DROP TABLE IF EXISTS `tl_fn_stockgroup`;

CREATE TABLE `tl_fn_stockgroup` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_stockgroup` */

insert  into `tl_fn_stockgroup`(`sno`,`groupname`) values (1,'Pants');

/*Table structure for table `tl_fn_stockgroupdetails` */

DROP TABLE IF EXISTS `tl_fn_stockgroupdetails`;

CREATE TABLE `tl_fn_stockgroupdetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `qtyadd` varchar(255) DEFAULT NULL,
  `getdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_stockgroupdetails` */

insert  into `tl_fn_stockgroupdetails`(`sno`,`name`,`alias`,`under`,`qtyadd`,`getdate`) values (1,'Pants','pants','','No','2014-10-14');

/*Table structure for table `tl_fn_stockitem` */

DROP TABLE IF EXISTS `tl_fn_stockitem`;

CREATE TABLE `tl_fn_stockitem` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `rateofduty` varchar(255) DEFAULT NULL,
  `trafficclassification` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_stockitem` */

insert  into `tl_fn_stockitem`(`sno`,`name`,`alias`,`under`,`units`,`rateofduty`,`trafficclassification`,`gendate`) values (1,'LeeJeans','LeeJeans','Pants','mts','3000','2000','2014-10-14');

/*Table structure for table `tl_fn_sundrystaff` */

DROP TABLE IF EXISTS `tl_fn_sundrystaff`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_sundrystaff` */

/*Table structure for table `tl_fn_vochercontra` */

DROP TABLE IF EXISTS `tl_fn_vochercontra`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vochercontra` */

/*Table structure for table `tl_fn_vocherdetails` */

DROP TABLE IF EXISTS `tl_fn_vocherdetails`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vocherdetails` */

/*Table structure for table `tl_fn_vocherpayment` */

DROP TABLE IF EXISTS `tl_fn_vocherpayment`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vocherpayment` */

insert  into `tl_fn_vocherpayment`(`sno`,`reciptno`,`date`,`under`,`currentbalance`,`particulars`,`currentbalance1`,`vouchertype`,`amount`,`narration`,`getdate`) values (1,'1','10/14/2014',NULL,'','RaviTravelAdv','','Payment','3000','Amount is paid to Ravi Travel Adv.','2014-10-14');

/*Table structure for table `tl_fn_vocherpurcahsereturn` */

DROP TABLE IF EXISTS `tl_fn_vocherpurcahsereturn`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vocherpurcahsereturn` */

/*Table structure for table `tl_fn_vochersales` */

DROP TABLE IF EXISTS `tl_fn_vochersales`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vochersales` */

/*Table structure for table `tl_fn_voucher_journal` */

DROP TABLE IF EXISTS `tl_fn_voucher_journal`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_voucher_journal` */

insert  into `tl_fn_voucher_journal`(`sno`,`reciptno`,`date`,`paricularby`,`currentbalance`,`nameofitem`,`quantity`,`units`,`rate`,`amount`,`particulars`,`amount2`,`narration`,`gendate`) values (1,'1','10/14/2014','RaviTravelAdv','3000','Pants','600','mts','500','300000','RaviTravelAdv','300000','Amount Paid by RaviTravelAdv.','2014-10-14');

/*Table structure for table `tl_fn_vouchertype` */

DROP TABLE IF EXISTS `tl_fn_vouchertype`;

CREATE TABLE `tl_fn_vouchertype` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `vouchertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_fn_vouchertype` */

/*Table structure for table `tl_hr_login` */

DROP TABLE IF EXISTS `tl_hr_login`;

CREATE TABLE `tl_hr_login` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_hr_login` */

/*Table structure for table `tl_sl_invoice` */

DROP TABLE IF EXISTS `tl_sl_invoice`;

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
  PRIMARY KEY (`sno`),
  UNIQUE KEY `invoiceid` (`invoiceid`),
  UNIQUE KEY `invoiceno` (`invoiceno`),
  UNIQUE KEY `referenceno` (`referenceno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_invoice` */

insert  into `tl_sl_invoice`(`sno`,`custname`,`invoiceid`,`invoiceno`,`today`,`referenceno`,`srlno`,`name`,`unitprice`,`quantity`,`servicetax`,`vat`,`totalamount`,`department`,`inputdate`,`netamount`,`gendate`,`manager`,`deltby`,`dept1`) values (1,'','1','1','10/01/2014','1','1234','Cash','300','3','108','112.5','900','Sales',NULL,'1120.5','2014-10-01','','fn_svs',''),(2,'','2','2','10/01/2014','2','1235','TV','5','20000','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs',''),(3,'','3','3','10/01/2014','3','1236','TV','20000','5','12000','12500','100000','Finance',NULL,'124500','2014-10-01','','fn_svs','');

/*Table structure for table `tl_sl_orderform` */

DROP TABLE IF EXISTS `tl_sl_orderform`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_orderform` */

/*Table structure for table `tl_sl_pettycash` */

DROP TABLE IF EXISTS `tl_sl_pettycash`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_pettycash` */

/*Table structure for table `tl_sl_purchaseorder` */

DROP TABLE IF EXISTS `tl_sl_purchaseorder`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_purchaseorder` */

/*Table structure for table `tl_sl_salsesorder` */

DROP TABLE IF EXISTS `tl_sl_salsesorder`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_salsesorder` */

/*Table structure for table `tl_sl_telephonesalesorder` */

DROP TABLE IF EXISTS `tl_sl_telephonesalesorder`;

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_sl_telephonesalesorder` */

/* Procedure structure for procedure `totalProfitAmount` */

/*!50003 DROP PROCEDURE IF EXISTS  `totalProfitAmount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `totalProfitAmount`(OUT totalamount INT)
BEGIN 
	DECLARE autoexp int(6);
	DECLARE phonebillexp int(6);
	
	SELECT SUM(amountdue) INTO phonebillexp FROM tl_fn_phonebillexpences;	
	SELECT SUM(amountdue) INTO autoexp FROM tl_fn_autoexpencestravel;

END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
