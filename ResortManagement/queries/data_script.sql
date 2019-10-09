select  MAX(guestid) from tl_guest_user LIMIT 1;

select maX(guestid) from tl_guest_user;

ALTER TABLE tl_department AUTO_INCREMENT = 1;

INSERT INTO tl_reportingto  VALUES (1,'hr_executive','hr_manager',NULL,'HumanResources');
INSERT INTO tl_reportingto  VALUES(2,'hr_manager','Director',NULL,'HumanResources');
INSERT INTO tl_reportingto  VALUES (3,'tele_caller','tele_manager',NULL,'TeleMarketing');
INSERT INTO tl_reportingto  VALUES (4,'tele_manager','tele_director',NULL,'TeleMarketing');
INSERT INTO tl_reportingto  VALUES (5,'sales_executive','sales_manager',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (6,'sales_manager','sales_director',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (7,'marketing_exicutive','marketing_manager',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (8,'marketing_manager','marketing_director',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (9,'tele_director','CEO',NULL,'TeleMarketing');
INSERT INTO tl_reportingto  VALUES (10,'tele_agent','tele_manager',NULL,'TeleMarketing');
INSERT INTO tl_reportingto  VALUES (11,'finance_executive','finance_manager',NULL,'Finance');
INSERT INTO tl_reportingto  VALUES (12,'finance_manager','finance_director',NULL,'Finance');
INSERT INTO tl_reportingto  VALUES (13,'finance_director','CEO',NULL,'Finance');
INSERT INTO tl_reportingto  VALUES (14,'sales_director','CEO',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (15,'hr_director','CEO',NULL,'HumanResources');
INSERT INTO tl_reportingto  VALUES (16,'marketing_director','CEO',NULL,'SalesAndMarketing');
INSERT INTO tl_reportingto  VALUES (17,'Driver','CEO',NULL,'VehicleMaintenence');

--Department
INSERT INTO tl_department  VALUES (1,'dept_1','HumanResources',NULL);
INSERT INTO tl_department  VALUES(2,'dept_2','Finance',NULL);
INSERT INTO tl_department  VALUES(3,'dept_3','TeleMarketing',NULL);
INSERT INTO tl_department VALUES(4,'dept_4','SalesAndMarketing',NULL);
INSERT INTO tl_department  VALUES(5,'dept_5','HouseKeeping',NULL);
INSERT INTO tl_department VALUES(6,'dept_6','VehicleMaintenence',NULL);
INSERT INTO tl_department VALUES(7,'dept_7','Administrator',NULL);

--Employeee

INSERT INTO  tl_employee  VALUES (3,'RaviKiran','Rayaprolu','1986-04-02','male','PostGraduation','s/o SivaRamaKrishnaSastry,\r\nVikhanasa Street,Repalle.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Single',NULL,'TeleMarketing',NULL,'tcm_1','123456','tele_manager','2014-02-13',NULL,NULL,'rayaprolu.ravikiran@gmail.com','7702305661','08648-223874','0987281928172','2024-09-12','Director',NULL);
INSERT INTO tl_employee VALUES (3,'RaviKiran','Rayaprolu','1986-04-02','male','PostGraduation','s/o SivaRamaKrishnaSastry,\r\nVikhanasa Street,Repalle.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Single',NULL,'TeleMarketing',NULL,'tcm_1','123456','tele_manager','2014-02-13',NULL,NULL,'rayaprolu.ravikiran@gmail.com','7702305661','08648-223874','0987281928172','2024-09-12','Director',NULL)
(4,'KrishnaKishore','Punnavargula','1986-06-12','male','PostGraduation','besides Venkateswara Temple,Repalle.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Single',NULL,'TeleMarketing','tcm_3','tc_2','kiran','tele_caller','2014-02-14',NULL,NULL,'kishore.msc@gmail.com','9963514955','08648-223874','0987281928172','2024-09-12','tele_manager','Alloted'),
(5,'Gopinath','Puppala','1985-06-08','male','PostGraduation','JeediMetla,Hyderabad.',NULL,NULL,'500020','YKTU21125','876019876542','80000','Single',NULL,'TeleMarketing',NULL,'tcm_3','gopinath','tele_manager','2014-02-14',NULL,NULL,'gopinathpuppala@gmail.com','8099905611','08648-223874','0987281928172','2024-09-12','tele_director',NULL)
(6,'Poornima','Rayaprolu','1988-12-28','female','Graduation','c/o Sandeep ,Neelagiri Appartments,Bradipet,Guntur',NULL,NULL,'522265','YKTU21124','876019876541','20000','Married',NULL,'HumanResources',NULL,'hr_ex_4','bangarampoornima','hr_executive','2014-02-14',NULL,NULL,'bangaram.poornima@gmail.com','8106349875','08648-223874','0987281928172','2024-09-12','hr_manager',NULL)
(7,'Sandeep','Khambampati','1984-04-21','male','PostGraduation','c/o Seshu Murhti,\r\nBradipet,Guntur.',NULL,NULL,'522265','YKTU21123','876019876542','20000','Married',NULL,'HumanResources',NULL,'hrm_5','sandeepkhambampati','hr_manager','2014-02-14',NULL,NULL,'khambampati.sandeep@gmail.com','812345687','08648-223874','0987281928172','2024-09-12','Director',NULL)
(8,'PavanKumar','Valluri','1970-06-15','male','Graduation','c/o mothinagar,Hyd',NULL,NULL,'500020','YKTU21123','876019876542','90000','Married',NULL,'TeleMarketing',NULL,'tcd6','123456','tele_director','2014-02-14',NULL,NULL,'vsvtn@yahoo.com','8978462137','040-27600006','0987281928172','2024-09-12','CEO',NULL)
(9,'SaiRamesh','Pulakesi','1988-12-28','male','PostGraduation','Hyderabad.',NULL,NULL,'500020','YKTU21123','876019876542','80000','Married',NULL,'TeleMarketing','tcm_14','tc_7','123456','tele_caller','2014-02-14',NULL,NULL,'sairamesh@gmail.com','89765787521','040-27600987','0987281928172','2024-09-12','tele_manager','Alloted')
(10,'Rattaya','Sannivarapu','1988-12-24','male','Graduation','KavadiGuda,Hyd.',NULL,NULL,'5000024','KYKD987654','--','18000','Single',NULL,'SalesAndMarketing',NULL,'slm_10','123456','sales_manager','2014-02-20',NULL,NULL,'rattaya.sannivarapu@gmail.com','9876787687','--','7898765432123','--','sales_director',NULL)
(11,'Yadayya','kannerapu','1989-04-28','male','UnderGraduation','Mahedipatnam,Hyd',NULL,NULL,'5000024','KYKD987653','--','6000','Married',NULL,'VehicleMaintenence',NULL,'vmdr_11','123456','Driver','2014-02-20',NULL,NULL,'--','9987545568','--','7898765432124','--',NULL,NULL)
(12,'SatyaNarayana','Bothsa','1940-03-12','male','SSC','Panjaguuta Center,HYD.',NULL,NULL,'5000024','KYKD987652','--','10000','Divorced',NULL,'TeleMarketing',NULL,'tag_12','123456','tele_agent','2014-02-21',NULL,NULL,'bothsa.sattibabu@gmail.com','9876543211','--','7898765432125','--','tele_manager',NULL)
(13,'RaviKiran','Rayaprolu','1986-04-02','male','PostGraduation','BoyaGuda,HYD',NULL,NULL,'','KJUY231223','9876543218987654','30000','Single',NULL,'HumanResources',NULL,'hr_ex_13','123456','hr_executive','2014-02-23',NULL,NULL,'rrkravikiranrrk@gmail.com','7702305661','040223874','89098765432112','2020-12-31','hr_manager',NULL)
(14,'Chidambaram','Yelakala','1960-12-02','male','Graduation','c/o TNagar,Chennai.',NULL,NULL,'','KJYIU34567','98721233445667890','25000','Divorced',NULL,'TeleMarketing',NULL,'tcm_14','123456','tele_manager','2014-02-25',NULL,NULL,'chidambaram.yelakla@gmail.com','8987766554','011-2345678','89876543210987','2014-05-11','tele_director',NULL)
(15,'Ramayya','Vetludi','1980-12-03','male','Graduation','MaredPalli,Hyd',NULL,NULL,'','ASDFK78908','--','10000','Married',NULL,'SalesAndMarketing','slm_10','slex_15','123456','sales_executive','2014-02-25',NULL,NULL,'ramayya.vetludi@gmail.com','8976543212','040-2345678','00987654321','--','sales_manager','Alloted')
(16,'Stayanarayana','Bodugula','1960-12-12','male','Graduation','Mumbai',NULL,NULL,'','ASDFK78909','98721233445667890','25000','Married',NULL,'SalesAndMarketing',NULL,'slm_16','123456','sales_manager','2014-02-25',NULL,NULL,'satyanarayana.bodugula','9876543210','022-28888181','00987654321','2014-05-15','sales_director',NULL)
(17,'Madhu','Paruchuri','1970-02-12','male','Graduation','Repalle.',NULL,NULL,'','ASDFK78909','--','25000','Married',NULL,'Finance','fnm_18','fnex_17','123456','finance_executive','2014-02-25',NULL,NULL,'madhu.paruchuri','8789898776','0848-234567','00987654322','--','finance_manager','Alloted')
(18,'ChandraShekar','Guntur','1970-04-21','male','Graduation','Kakinada.',NULL,NULL,'','ASDFK78908','--','10000','Single',NULL,'Finance',NULL,'fnm_18','123456','finance_manager','2014-02-25',NULL,NULL,'chandrashekar.guntur@gmail.com','987654321','044-23334567','00987654322','--','finance_director',NULL)
(19,'VenkateswaraRao','Yelamanchi','1980-02-01','male','UnderGraduation','Repalle',NULL,NULL,'','KYJH12345','--','10000','Married',NULL,'SalesAndMarketing',NULL,'slm_19','123456','sales_manager','2014-02-27',NULL,NULL,'venkateswararao.yelamanchi@gmail.com','9989876543','08648-223874','09876543211234','--','sales_director',NULL)
(20,'Srinivas','Chilaka','1978-12-03','male','Graduation','Guntur',NULL,NULL,'','KYJH12343','--','100000','Single',NULL,'SalesAndMarketing','slm_16','slex_20','123456','sales_executive','2014-02-27',NULL,NULL,'srinivas.chilaka@gmail.com','9987654321','0864-234567','09876543211233','--','sales_manager','Alloted')
(21,'GovindaRaju','Padamata','1978-10-03','male','Graduation','Vijayawada',NULL,NULL,'','KYJH12344','--','50000','Married',NULL,'SalesAndMarketing',NULL,'sld_21','123456','sales_director','2014-02-27',NULL,NULL,'govindaraju.padamta@gmail.com','9987654323','0864-234568','09876543211232','--','CEO',NULL)
(22,'Srinivas','Malladi','1970-05-04','male','PostGraduation','Vijayawada',NULL,NULL,'500002','KYJH12342','--','50000','Married',NULL,'Finance',NULL,'fnd_22','123456','finance_director','2014-03-01',NULL,NULL,'srinivas.malladi@gmail.com','9876543219','0862','09876543211237','--','CEO',NULL)
(23,'Narendra','Paruchuri','1976-04-02','male','Graduation','Hyd',NULL,NULL,'500002','KYJH12345','--','10000','Married',NULL,'Finance',NULL,'fnm_23','123456','finance_manager','2014-03-01',NULL,NULL,'narendra.paruchuri@gmail.com','9809876543','040-69098765','09876543211231','--','finance_director',NULL)
(24,'BahavaniShankar','Paruchuri','1984-11-05','male','PostGraduation','Calacatta',NULL,NULL,'500002','KYJH12345','--','10000','Married',NULL,'Finance','fnm_23','fnex_24','123456','finance_executive','2014-03-01',NULL,NULL,'bhavani.paruchuri@gmail.com','9876543219','040-69098765','09876543211231','--','finance_manager','Alloted')
(25,'Sandeep','Mukkamala','1988-03-02','male','PostGraduation','Kakinada',NULL,NULL,'5000021','KYJH12342','--','10000','Single',NULL,'Finance','fnm_18','fnex_25','123456','finance_executive','2014-03-01',NULL,NULL,'sandeep.mukkamala@gmail.com','70987654321','044-23456789','09876543211232','--','finance_manager','Alloted')
(26,'Rajanikanth','Atluri','1955-12-12','male','Graduation','Chennai',NULL,NULL,'30000321','KJHR123456','09876543212345','15000','Married',NULL,'HumanResources',NULL,'hrm_26','123456','hr_manager','2014-03-07',NULL,NULL,'rajanikath.atluri@yahoo.com','98765432112','033-23456789','09876543211234','2020-12-01','Director',NULL)
(27,'RamaRao','Nandamuri','1920-04-12','male','SSC','Hyd',NULL,NULL,'5000002','KJHR123457','--','5000','Married',NULL,'VehicleMaintenence',NULL,'vmdr_27','123456','Driver','2014-03-07',NULL,NULL,'ramarao.nandamuri@yahoo.com','99876543211','040-2199219','09876543211236','--',NULL,NULL)
(28,'SivaRamaPrasanna','Koppula','1988-03-12','male','PHD','Ongole.',NULL,NULL,'5222261','KJHR123451','--','15000','Married',NULL,'Finance',NULL,'fnm_28','123456','finance_manager','2014-03-14',NULL,NULL,'sivaramprasanna.koppula@gmail.com','95003212345','0873-23456789','09876543211231','--','fnd_22',NULL);



--entertainmentexpenceses

INSERT INTO entertainmentexpenceses  VALUES (1,'ravi','7702305661','Chikadapalli','Krishna','Sales','2014-08-08','Sun','1399937','2014-08-20');
;