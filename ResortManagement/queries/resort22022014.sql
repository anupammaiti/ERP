/*
SQLyog Community v8.82 
MySQL - 5.5.30 : Database - resort
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tl_department` */

insert  into `tl_department`(`sno`,`department_id`,`department`,`gendate`) values (1,'dept_1','HumanResources',NULL),(2,'dept_2','Finance',NULL),(3,'dept_3','TeleMarketing',NULL),(4,'dept_4','SalesAndMarketing',NULL),(5,'dept_5','HouseKeeping',NULL),(6,'dept_6','VehicleMaintenence',NULL),(7,'dept_7','Administrator',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tl_designation` */

insert  into `tl_designation`(`sno`,`designation`,`designation_id`,`gendate`,`department_id`) values (6,'hr_executive','hr_ex','2014-02-13','HumanResources'),(7,'hr_manager','hrm','2014-02-13','HumanResources'),(8,'tele_caller','tc','2014-02-13','TeleMarketing'),(9,'tele_manager','tcm','2014-02-13','TeleMarketing'),(10,'sales_executive','slex','2014-02-13','SalesAndMarketing'),(11,'sales_manager','slm','2014-02-13','SalesAndMarketing'),(12,'marketing_exicutive','mre','2014-02-13','SalesAndMarketing'),(14,'marketing_manager','mrm','2014-02-13','SalesAndMarketing'),(15,'tele_director','tcd','2014-02-14','TeleMarketing'),(16,'Driver','vmdr','2014-02-20','VehicleMaintenence'),(17,'Sweeping','hksw','2014-02-20','HouseKeeping'),(18,'OfficeBoy','hkob','2014-02-20','HouseKeeping'),(19,'tele_agent','tag','2014-02-20','TeleMarketing'),(20,'admin_manager','adm','2014-02-21','Administrator');

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
  `passportexpirydate` varchar(255) DEFAULT NULL,
  `reportingto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tl_employee` */

insert  into `tl_employee`(`empno`,`firstname`,`lastname`,`dateofbirth`,`gender`,`qualification`,`address`,`city`,`state`,`pincode`,`pannumber`,`passportnumber`,`expectedsalary`,`maritualstatus`,`maritualdate`,`department`,`manager`,`username`,`password`,`designation`,`gendate`,`hintquestion`,`reenterpassword`,`email`,`mobile`,`land_line`,`bankaccountno`,`passportexpirydate`,`reportingto`) values (3,'RaviKiran','Rayaprolu','1986-04-02','male','PostGraduation','s/o SivaRamaKrishnaSastry,\r\nVikhanasa Street,Repalle.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Single',NULL,'TeleMarketing',NULL,'tele_manager_1','','tele_manager','2014-02-13',NULL,NULL,'rayaprolu.ravikiran@gmail.com','7702305661','08648-223874','0987281928172','2024-09-12','Director'),(4,'KrishnaKishore','Punnavargula','1986-06-12','male','PostGraduation','besides Venkateswara Temple,Repalle.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Single',NULL,'TeleMarketing',NULL,'tc_2','kiran','tele_caller','2014-02-14',NULL,NULL,'kishore.msc@gmail.com','9963514955','08648-223874','0987281928172','2024-09-12','tele_manager'),(5,'Gopinath','Puppala','1985-06-08','male','PostGraduation','JeediMetla,Hyderabad.',NULL,NULL,'500020','YKTU21125','876019876542','80000','Single',NULL,'TeleMarketing',NULL,'tcm_3','gopinath','tele_manager','2014-02-14',NULL,NULL,'gopinathpuppala@gmail.com','8099905611','08648-223874','0987281928172','2024-09-12','tele_director'),(6,'Poornima','Rayaprolu','1988-12-28','female','Graduation','c/o Sandeep ,Neelagiri Appartments,Bradipet,Guntur',NULL,NULL,'522265','YKTU21124','876019876541','20000','Married',NULL,'HumanResources',NULL,'hr_ex_4','bangarampoornima','hr_executive','2014-02-14',NULL,NULL,'bangaram.poornima@gmail.com','8106349875','08648-223874','0987281928172','2024-09-12','hr_manager'),(7,'Sandeep','Khambampati','1984-04-21','male','PostGraduation','c/o Seshu Murhti,\r\nBradipet,Guntur.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Married',NULL,'HumanResources',NULL,'hrm_5','sandeepkhambampati','hr_manager','2014-02-14',NULL,NULL,'khambampati.sandeep@gmail.com','812345687','08648-223874','0987281928172','2024-09-12','Director'),(8,'PavanKumar','Valluri','1970-06-15','male','Graduation','c/o mothinagar,Hyd',NULL,NULL,'500020','YKTU21123','876019876542','90000','Married',NULL,'TeleMarketing',NULL,'tcd6','123456','tele_director','2014-02-14',NULL,NULL,'vsvtn@yahoo.com','8978462137','040-27600006','0987281928172','2024-09-12','CEO'),(9,'SaiRamesh','Pulakesi','1988-12-28','male','PostGraduation','Hyderabad.',NULL,NULL,'500020','YKTU21123','876019876542','80000','Married',NULL,'TeleMarketing',NULL,'tc_7','123456','tele_caller','2014-02-14',NULL,NULL,'sairamesh@gmail.com','89765787521','040-27600987','0987281928172','2024-09-12','tele_manager'),(10,'Rattaya','Sannivarapu','1988-12-24','male','Graduation','KavadiGuda,Hyd.',NULL,NULL,'5000024','KYKD987654','--','18000','Single',NULL,'SalesAndMarketing',NULL,'slm_10','123456','sales_manager','2014-02-20',NULL,NULL,'rattaya.sannivarapu@gmail.com','9876787687','--','7898765432123','--','sales_director'),(11,'Yadayya','kannerapu','1989-04-28','male','UnderGraduation','Mahedipatnam,Hyd',NULL,NULL,'5000024','KYKD987653','--','6000','Married',NULL,'VehicleMaintenence',NULL,'vmdr_11','123456','Driver','2014-02-20',NULL,NULL,'--','9987545568','--','7898765432124','--',NULL),(12,'SatyaNarayana','Bothsa','1940-03-12','male','SSC','Panjaguuta Center,HYD.',NULL,NULL,'5000024','KYKD987652','--','10000','Divorced',NULL,'TeleMarketing',NULL,'tag_12','123456','tele_agent','2014-02-21',NULL,NULL,'bothsa.sattibabu@gmail.com','9876543211','--','7898765432125','--','tele_manager');

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
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `refered1` varchar(255) DEFAULT NULL,
  `refered2` varchar(255) DEFAULT NULL,
  `requestforcall2` varchar(255) DEFAULT NULL,
  `requestforcall3` varchar(255) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guestid`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tl_guest_user` */

insert  into `tl_guest_user`(`guestid`,`guest_name`,`guest_last_name`,`mobileno`,`email`,`status`,`telecallerid`,`reqforcall`,`reqforquote`,`reqforvisit`,`guest_id`,`villa_type`,`facing_villa`,`gendate`,`department`,`designation`,`refered1`,`refered2`,`requestforcall2`,`requestforcall3`,`agent_name`,`driver_name`) values (1,'RaviKiran','Rayaprolu','7702305661','rayaprolu.ravikiran@gmail.com','OPEN',NULL,'2014-02-20',NULL,'2014-02-20','gu_0','2BHK',NULL,'2014-02-20','TeleMarketing','tele_manager','tc_7',NULL,NULL,NULL,NULL,NULL),(2,'Kishore','Punnavargula','9963514955','kishore.msc@gmail.com','OPEN',NULL,'2014-02-20',NULL,'2014-02-20','gu_2','2BHK',NULL,'2014-02-20','TeleMarketing','tele_manager','tc_2',NULL,NULL,NULL,NULL,NULL),(3,'Gopinath','Puppala','807653218','gopinath.puppala@gmail.com','NEW',NULL,'2014-02-21',NULL,'2014-02-21','gu_3','1BHK',NULL,'2014-02-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Poornima','Rayaprolu','809876568','bangaram.poornima@gmail.com','NEW',NULL,'2014-02-20',NULL,'2014-02-20','gu_4','2BHK',NULL,'2014-02-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sandeep','Kambhampati','8098765432','khambampati.sandeep@gmail.com','NEW',NULL,'2014-02-20',NULL,'2014-02-20','gu_5','2BHK',NULL,'2014-02-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'SaiRamesh','BussinessMan','7098765412','sairamesh@gmail.com','NEW',NULL,'2014-02-20',NULL,'2014-02-20','gu_6','2BHK',NULL,'2014-02-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'KumaraSwamy','Punnavargula','9876543231','kumarswamy.punnavargula@gmail.com','OPEN',NULL,'2014-02-21',NULL,'2014-02-24','gu_7','1BHK',NULL,'2014-02-21','TeleMarketing','tele_manager','tc_2',NULL,NULL,NULL,'tag_12','vmdr_11'),(8,'GopalRao','Ravuri','9876564321','gopalrao.ravuri@gmail.com','OPEN',NULL,'2014-02-20',NULL,'2014-02-21','gu_8','3BHK',NULL,'2014-02-21','TeleMarketing','tele_manager','tc_2',NULL,NULL,NULL,'tag_12',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tl_login` */

insert  into `tl_login`(`sno`,`username`,`password`,`department`,`status`,`newpassword`,`gendate`,`hintquestion`,`conformpassword`) values (5,'tc_2','123456','TeleMarketing',NULL,NULL,'2014-02-14',NULL,NULL),(6,'tcm_3','123456','TeleMarketing',NULL,NULL,'2014-02-14',NULL,NULL),(7,'hr_ex_4','bangarampoornima','HumanResources',NULL,NULL,'2014-02-14',NULL,NULL),(8,'hrm_5','sandeepkhambampati','HumanResources',NULL,NULL,'2014-02-14',NULL,NULL),(9,'tcd6','pavankumar','TeleMarketing',NULL,NULL,'2014-02-14',NULL,NULL),(10,'tc_7','123456','TeleMarketing',NULL,NULL,'2014-02-14',NULL,NULL),(11,'slm_10','123456','SalesAndMarketing',NULL,NULL,'2014-02-20',NULL,NULL),(12,'vmdr_11','123456','VehicleMaintenence',NULL,NULL,'2014-02-20',NULL,NULL),(13,'tag_12','123456','TeleMarketing',NULL,NULL,'2014-02-21',NULL,NULL);

/*Table structure for table `tl_reportingto` */

DROP TABLE IF EXISTS `tl_reportingto`;

CREATE TABLE `tl_reportingto` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `reportingto` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tl_reportingto` */

insert  into `tl_reportingto`(`sno`,`designation`,`reportingto`,`gendate`,`department`) values (1,'hr_executive','hr_manager',NULL,'HumanResources'),(2,'hr_manager','Director',NULL,'HumanResources'),(3,'tele_caller','tele_manager',NULL,'TeleMarketing'),(4,'tele_manager','tele_director',NULL,'TeleMarketing'),(5,'sales_executive','sales_manager',NULL,'SalesAndMarketing'),(6,'sales_manager','sales_director',NULL,'SalesAndMarketing'),(7,'marketing_exicutive','marketing_manager',NULL,'SalesAndMarketing'),(8,'marketing_manager','marketing_director',NULL,'SalesAndMarketing'),(9,'tele_director','CEO',NULL,'TeleMarketing'),(10,'tele_agent','tele_manager',NULL,'TeleMarketing');

/*Table structure for table `tl_vehicle_allotment` */

DROP TABLE IF EXISTS `tl_vehicle_allotment`;

CREATE TABLE `tl_vehicle_allotment` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tl_vehicle_allotment` */

insert  into `tl_vehicle_allotment`(`sno`,`vehicle_no`,`driver_name`,`status`,`gendate`) values (1,'AP9HD3434','vmdr_11',NULL,NULL),(2,'AP9HD3434','vmdr_11',NULL,'2014-02-22'),(3,'AP9HD3434','vmdr_11','Alloted','2014-02-22'),(4,'AP9HD3434','vmdr_11','','2014-02-22'),(5,'AP9HD3434','vmdr_11','Alloted','2014-02-22');

/*Table structure for table `tl_vehicledetails` */

DROP TABLE IF EXISTS `tl_vehicledetails`;

CREATE TABLE `tl_vehicledetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `vehicle_model` varchar(255) DEFAULT NULL,
  `tank_capacity` varchar(255) DEFAULT NULL,
  `fuel_type` varchar(255) DEFAULT NULL,
  `vehicle_milage` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `gendate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tl_vehicledetails` */

insert  into `tl_vehicledetails`(`sno`,`company_name`,`vehicle_no`,`vehicle_model`,`tank_capacity`,`fuel_type`,`vehicle_milage`,`vehicle_type`,`service`,`gendate`) values (1,'Mruthi-Suzuki','AP9HD3434','maruthi800','34','Pertrol','60','Car','Yes',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tl_villatype` */

insert  into `tl_villatype`(`sno`,`villa_name`,`villa_id`,`villa_facing`,`gendate`,`villa_type`,`villa_price`,`sqrtfeet`,`total_villas`,`villas_left`,`villa_size`) values (10,'Samba','vill_2','East','2014-02-11','1BHK','1000000','1002','150','0','180'),(11,'Samba','vill_3','East','2014-02-14','2BHK','20000','105','5','3','105'),(12,'Samba','vill_4','East','2014-02-14','3BHK','3000000','105','5','3','105'),(13,'2121','vill_14','North','2014-02-20','4BHK','4000000','102','10','4','1024');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
