/*
SQLyog Community v8.82 
MySQL - 5.1.30-community : Database - resort
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`resort` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resort`;

/*Table structure for table `tl_customer` */

DROP TABLE IF EXISTS `tl_customer`;

CREATE TABLE `tl_customer` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_first_name` varchar(255) DEFAULT NULL,
  `customer_last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `typeofvilla` varchar(255) DEFAULT NULL,
  `pricelimit` varchar(255) DEFAULT NULL,
  `facingofvilla` varchar(255) DEFAULT NULL,
  `flatinfeet` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `deltby` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_customer` */

/*Table structure for table `tl_department` */

DROP TABLE IF EXISTS `tl_department`;

CREATE TABLE `tl_department` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_id` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tl_department` */

insert  into `tl_department`(`sno`,`department_id`,`department`,`gendate`) values (1,'dept_1','HumanResources',NULL),(2,'dept_2','Finance',NULL),(3,'dept_3','TeleMarketing',NULL),(4,'dept_4','SalesAndMarketing',NULL),(5,'dept_5','HouseKeeping',NULL);

/*Table structure for table `tl_designation` */

DROP TABLE IF EXISTS `tl_designation`;

CREATE TABLE `tl_designation` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `designation_id` varchar(255) NOT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `designation_id` (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tl_designation` */

insert  into `tl_designation`(`sno`,`designation`,`designation_id`,`gendate`,`department_id`) values (1,'tele_caller','tc_01','2014-02-10','dept_3'),(2,'tele_manager','tcm_1','2014-02-10','dept_3'),(3,'Manager-HR','HR_01','2014-02-11','dept_1');

/*Table structure for table `tl_employee` */

DROP TABLE IF EXISTS `tl_employee`;

CREATE TABLE `tl_employee` (
  `empno` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dateofbirth` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `pannumber` varchar(255) DEFAULT NULL,
  `passportnumber` varchar(255) DEFAULT NULL,
  `expectedsalary` varchar(255) DEFAULT NULL,
  `maritualstatus` varchar(255) DEFAULT NULL,
  `maritualdate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `hintquestion` varchar(255) DEFAULT NULL,
  `reenterpassword` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `land_line` varchar(255) DEFAULT NULL,
  `bankaccountno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_employee` */

insert  into `tl_employee`(`empno`,`firstname`,`lastname`,`dateofbirth`,`gender`,`qualification`,`address`,`city`,`state`,`pincode`,`pannumber`,`passportnumber`,`expectedsalary`,`maritualstatus`,`maritualdate`,`department`,`manager`,`username`,`password`,`designation`,`gendate`,`hintquestion`,`reenterpassword`,`email`,`mobile`,`land_line`,`bankaccountno`) values (1,'','','','','','','','','','','','','','',NULL,'','tcm_1_1','','tcm_1','2014-02-11','','',NULL,NULL,NULL,NULL);

/*Table structure for table `tl_guest_user` */

DROP TABLE IF EXISTS `tl_guest_user`;

CREATE TABLE `tl_guest_user` (
  `guestid` bigint(20) NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(255) DEFAULT NULL,
  `guest_last_name` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `telecallerid` varchar(255) DEFAULT NULL,
  `reqforcall` varchar(255) DEFAULT NULL,
  `reqforquote` varchar(255) DEFAULT NULL,
  `reqforvisit` varchar(255) DEFAULT NULL,
  `guest_id` varchar(255) NOT NULL,
  `villa_type` varchar(255) DEFAULT NULL,
  `facing_villa` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guestid`),
  UNIQUE KEY `mobileno` (`mobileno`),
  UNIQUE KEY `guest_id` (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tl_guest_user` */

/*Table structure for table `tl_login` */

DROP TABLE IF EXISTS `tl_login`;

CREATE TABLE `tl_login` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `newpassword` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `hintquestion` varchar(255) DEFAULT NULL,
  `conformpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_login` */

insert  into `tl_login`(`sno`,`username`,`password`,`department`,`status`,`newpassword`,`gendate`,`hintquestion`,`conformpassword`) values (1,'tcm_1_1','',NULL,NULL,NULL,'2014-02-11','',NULL);

/*Table structure for table `tl_villatype` */

DROP TABLE IF EXISTS `tl_villatype`;

CREATE TABLE `tl_villatype` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `villa_name` varchar(255) DEFAULT NULL,
  `villa_id` varchar(255) DEFAULT NULL,
  `villa_facing` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `villa_type` varchar(255) DEFAULT NULL,
  `villa_price` varchar(255) DEFAULT NULL,
  `sqrtfeet` varchar(255) DEFAULT NULL,
  `total_villas` varchar(255) DEFAULT NULL,
  `villas_left` varchar(255) DEFAULT NULL,
  `villa_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tl_villatype` */

insert  into `tl_villatype`(`sno`,`villa_name`,`villa_id`,`villa_facing`,`gendate`,`villa_type`,`villa_price`,`sqrtfeet`,`total_villas`,`villas_left`,`villa_size`) values (10,'Samba','vill_2','East','2014-02-11','1BHK','1000000','1002','150','0','180');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
