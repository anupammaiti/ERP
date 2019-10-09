SELECT * FROM tl_login;

SHOW TABLES;

SELECT username,PASSWORD FROM tl_employee;

SELECT * FROM tl_guest_user;

SELECT * FROM tl_customer;

DELETE FROM tl_guest_user;

DESC tl_guest_user;

SELECT designation FROM tl_designation de,tl_department dep WHERE de.department_id=dep.department_id;

SELECT designation FROM tl_designation de,tl_department dep WHERE de.department_id=dep.department_id AND dep.department='TeleMarketing';


SELECT * FROM tl_department;

SELECT * FROM tl_employee;

DESC tl_employee;

SELECT reportingto FROM tl_employee WHERE department="TeleMarketing" AND designation="tele_manager"; 

SELECT designation FROM tl_designation de,tl_department dep WHERE de.department_id=dep.department AND dep.department ="SalesAndMarketing";

SELECT * FROM tl_designation;

DELETE FROM tl_designation WHERE sno=13;

DELETE FROM tl_employee WHERE empno=4;

SELECT designation FROM tl_designation;

SELECT * FROM tl_reportingto;

SELECT reportingto  FROM tl_reportingto WHERE designation='tele_caller' ;

SELECT * FROM tl_designation;

UPDATE  tl_designation SET designation_id='mrm' WHERE sno=14;

SELECT designation_id FROM tl_designation WHERE designation='hr_manager';

SELECT * FROM tl_designation;

SELECT designation_id FROM tl_designation WHERE designation='tele_manager';

SELECT * FROM tl_employee;

SELECT firstname,reportingto FROM tl_employee WHERE department="TeleMarketing" AND designation="tele_caller";

SELECT * FROM tl_login;

DELETE FROM tl_login WHERE sno=4;

SELECT department FROM tl_login WHERE username='tc_2' AND PASSWORD='kiran';

SELECT * FROM tl_guest_user;

SELECT * FROM tl_villatype;

DELETE FROM tl_guest_user;

SHOW TABLES;

SELECT * FROM tl_designation;

SELECT * FROM tl_reportingto;

SELECT reportingto FROM tl_reportingto WHERE department="HumanResources"; 

UPDATE tl_guest_user SET villa_type="2BHK" WHERE guestid=9;

DELETE FROM tl_guest_user WHERE guestid=8;

SELECT * FROM tl_guest_user WHERE STATUS='OPEN';

SELECT * FROM tl_guest_user;

SELECT * FROM tl_reportingto;

SELECT designation FROM tl_reportingto  WHERE reportingto="tele_director";

SELECT firstname,username FROM tl_employee WHERE reportingto='tele_manager' AND department='TeleMarketing';

SELECT * FROM tl_guest_user WHERE STATUS='OPEN' AND refered1='tele_manager';

SELECT * FROM tl_employee;

SELECT designation FROM tl_employee WHERE username='tcm_3';

SELECT * FROM tl_guest_user WHERE STATUS='OPEN' AND refered2='tc_2';

SELECT * FROM tl_guest_user;

DESC tl_guest_user;

ALTER TABLE tl_guest_user MODIFY guest_id VARCHAR DEFAULT AUTO_INCREMENT ;

SHOW KEYS FROM tl_guest_user;

ALTER TABLE tl_guest_user DROP KEY guest_id;

DELETE FROM tl_guest_user;

SELECT * FROM tl_guest_user WHERE designation='tele_manager';

SELECT username FROM tl_employee WHERE reportingto='tele_manager';

SELECT * FROM tl_guest_user;

SELECT guest_name FROM tl_guest_user WHERE reqforcall='2014-02-17';

SELECT MAX(guestid) FROM tl_guest_user;

SELECT guest_name,guest_last_name,reqforcall,requestforcall2,requestforcall3,STATUS FROM tl_guest_user WHERE reqforcall='2014-02-20' AND refered1='tc_7';

UPDATE tl_guest_user SET reqforcall='2014-02-20' WHERE guestid=1;

SELECT guest_name,guest_last_name,reqforcall,requestforcall2,requestforcall3,STATUS FROM tl_guest_user WHERE refered1='tc_2';

SELECT * FROM tl_employee;

SELECT * FROM tl_designation;

UPDATE tl_designation SET designation_id='vmdr' WHERE sno=16;

UPDATE tl_designation SET department_id='TeleMarketing' WHERE sno=19;

UPDATE tl_employee SET username='vmdr_11' WHERE empno=11;

SELECT * FROM tl_login;

UPDATE tl_login SET username='vmdr_11' WHERE sno=12;

SELECT *FROM tl_guest_user;

DESC tl_guest_user;

SELECT * FROM tl_employee;

SELECT * FROM tl_department;

UPDATE tl_department SET department='Administrator' WHERE sno=7;

SELECT firstname FROM tl_employee WHERE designation='tele_agent';

UPDATE tl_guest_user SET agent_name='tag_12' WHERE guestid=8;

SELECT * FROM tl_guest_user;

SELECT * FROM tl_guest_user WHERE agent_name="tag_12";

SHOW TABLES;

SELECT * FROM tl_vehicledetails;

SELECT username FROM tl_employee WHERE designation="Driver";

SELECT * FROM tl_login;

SELECT vehicle_no FROM tl_vehicledetails;

SELECT * FROM tl_vehicle_allotment;

SELECT designation_id FROM tl_designation de,tl_department dep WHERE de.department_id=dep.department AND dep.department='TeleMarketing';

SELECT *  FROM tl_reportingto;

SELECT * FROM tl_login;

SELECT * FROM tl_employee WHERE department='TeleMarketing' AND reportingto='tele_director';

SELECT * FROM tl_employee WHERE department='TeleMarketing';

SELECT username FROM tl_employee WHERE department='TeleMarketing' AND designation='tele_manager';

UPDATE tl_employee SET username="tcm_1" , PASSWORD="123456" WHERE empno=3;

DESC tl_employee;

SELECT * FROM tl_login;

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='tcm_3');

SELECT username FROM tl_employee WHERE designation='tele_caller';

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='tcd6'));

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='tcd6');

SELECT * FROM tl_employee;

SELECT designation FROM tl_designation de,tl_department dep WHERE de.department_id=dep.department AND dep.department ='TeleMarketing';

SELECT username FROM tl_employee WHERE manager='tcm_3';

SELECT username FROM tl_login;

SELECT * FROM tl_employee;

SELECT designation_id FROM tl_designation;

SELECT username FROM tl_employee WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='sld_21'));

SELECT firstname FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='sld_21');

SELECT designation FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='sld_21');

SELECT * FROM tl_employee WHERE manager='slm_19';

SHOW TABLES;

SELECT * FROM tl_villatype;

SELECT username FROM tl_employee WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE username='fnd_22');

SELECT * FROM tl_guest_user;

SELECT * FROM tl_login;


SELECT * FROM tl_imagecoordinates;

DELETE FROM tl_imagecoordinates;

SELECT * FROM tl_guest_user;

SELECT * FROM tl_guest_user WHERE STATUS='OPEN';

SELECT * FROM tl_designation;

DELETE FROM tl_designation WHERE sno=29;

SELECT * FROM tl_reportingto;

SHOW TABLES;

SELECT * FROM tl_employee ; 

SELECT * FROM tl_vehicledetails;

SELECT driver_name FROM tl_vehicledetails;

SELECT * FROM tl_guest_user;

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='tcd6');

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE department='TeleMarketing' AND reportingto='CEO');

SELECT designation FROM tl_employee WHERE reportingto='tele_director';

SELECT firstname FROM tl_employee WHERE username="tcm_3";

SELECT * FROM tl_guest_user WHERE STATUS='OPEN';

SELECT * FROM tl_guest_user WHERE STATUS='OPEN' AND designation='tcm_3';

SELECT * FROM tl_employee WHERE manager='tcm_3';

SELECT * FROM tl_employee;

SHOW TABLES;

SELECT * FROM tl_vehicledetails;

SELECT company_name,vehicle_model,vehicle_type FROM tl_vehicledetails WHERE vehicle_no='AP9HD3434';

SELECT * FROM tl_vm_insurence;

SELECT * FROM tl_vehicledetails;

SELECT * FROM tl_vehicle_allotment;

SELECT * FROM tl_employee WHERE designation='tele_agent';

DELETE FROM tl_vehicle_allotment;

SELECT * FROM tl_vehicledetails WHERE driver_name='vmdr_27';

SELECT * FROM tl_vm_insurence;

SELECT * FROM tl_vm_insurence WHERE vhno=(SELECT vehicle_no FROM tl_vehicledetails WHERE driver_name='vmdr_27');

SHOW TABLES;

SELECT * FROM tl_vm_maintanence WHERE vehno=(SELECT vehicle_no FROM tl_vehicledetails WHERE driver_name='vmdr_27');

SELECT * FROM tl_vm_maintanence;

SELECT * FROM tl_login;

SELECT * FROM tl_customer;

SELECT * FROM tl_guest_user; 

UPDATE tl_guest_user SET STATUS='Proceed'; 

DELETE FROM tl_guest_user;

SELECT username FROM tl_employee WHERE department='Finance';

SELECT username,PASSWORD FROM tl_employee WHERE department='SalesAndMarketing';

SELECT username,PASSWORD,department FROM tl_login;

SELECT * FROM tl_customer ;

SELECT * FROM tl_customer WHERE sno=1;

SELECT * FROM tl_department;

SELECT * FROM tl_employee WHERE department="Finance" AND reportingto='CEO';

SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE department='VehicleManagement ' AND reportingto='CEO');

SELECT reportingto  FROM tl_employee WHERE username='tcm_3';

SELECT * FROM tl_reportingto;

SELECT * FROM tl_designation;

SELECT designation_id FROM tl_designation WHERE designation=(SELECT DISTINCT(designation) FROM tl_reportingto WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE username='tcm_3'));

SELECT designation_id FROM tl_designation WHERE designation=(SELECT DISTINCT(designation) FROM tl_reportingto WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE username="tcm_3"));

SELECT DISTINCT(designation) FROM tl_reportingto WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE username="tcm_3");

SELECT designation FROM tl_designation WHERE department_id="TeleMarketing"; 

SELECT username FROM tl_employee WHERE designation=(SELECT reportingto FROM tl_reportingto WHERE designation='tele_manager');

SELECT * FROM tl_employee WHERE designation="Driver";

SELECT * FROM tl_guest_user;

SELECT * FROM tl_employee WHERE reportingto=(SELECT DISTINCT(designation) FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE username='tcd6'));

SELECT * FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE department='TeleMarketing' AND reportingto='CEO');

SELECT * FROM tl_customer;

UPDATE tl_customer SET manager='tcm_3', dept='TeleMarketing';

SELECT * FROM tl_customer WHERE manager='tcm_3';


SELECT username FROM tl_employee WHERE designation='Driver';


SELECT * FROM tl_customer ;

DELETE FROM tl_customer WHERE sno=3;

SELECT * FROM tl_employee;

SELECT * FROM tl_vehicledetails;

SELECT * FROM tl_guest_user;

UPDATE tl_guest_user SET reqforquote='3000000' WHERE guestid=38;

SELECT villa_facing FROM tl_villatype;

SELECT * FROM tl_login;


SHOW TABLES;

SELECT * FROM tl_vm_insurence;

DELETE FROM tl_vm_insurence;

SELECT * FROM tl_employee WHERE username="fnm_28";

UPDATE tl_employee SET reportingto='fnd_22' WHERE username='fnm_28';

SELECT * FROM tl_employee WHERE department='Finance';

SELECT * FROM tl_customer;

SELECT * FROM tl_sl_customer;

SHOW TABLES;

SELECT * FROM tl_sl_invoice;

DELETE FROM tl_sl_invoice;

DESC tl_sl_invoice;

SELECT MAX(invoiceid),MAX(invoiceid),MAX(referenceno) FROM tl_sl_invoice;

SELECT * FROM tl_sl_purchaseorder;

SELECT * FROM tl_login;

SELECT * FROM tl_customer;

SELECT username FROM tl_employee WHERE department='SalesAndMarketing' AND reportingto='sales_director';

SELECT * FROM tl_customer;

UPDATE tl_customer SET dept='TeleMarketing', sldept='SalesAndMarketing' WHERE slm_id='slm_10';

SELECT * FROM tl_employee WHERE department='Finance';

SELECT * FROM tl_customer;

SELECT * FROM tl_sl_customer;

UPDATE tl_sl_customer SET noofinstallments='3' WHERE custid='cus_4';


SELECT * FROM tl_sl_customer WHERE fnexecutive='fnex_17';

SHOW TABLES;

SELECT * FROM tl_fn_customer;

DELETE FROM tl_fn_customer;

SELECT * FROM tl_fn_customer;

SELECT custid,totalamount,totalinstallments,installmentspaid,installment_date,SUM(amountpaid) paidamount FROM tl_fn_customer WHERE id=5;

SELECT username FROM tl_employee;

SELECT * FROM tl_sl_apprisialform;

SHOW TABLES;

SELECT * FROM tl_sl_orderform;

SELECT * FROM tl_sl_apprisialform;

SELECT SUM(amountpaid) FROM tl_fn_customer WHERE custid='cus_10';


SELECT MAX(installmentspaid),SUM(amountpaid) FROM tl_fn_customer WHERE custid='cus_4';

SELECT MAX(installmentspaid),SUM(amountpaid) FROM tl_fn_customer WHERE custid='cus_4';

SELECT * FROM tl_villatype;

SELECT * FROM tl_guest_user;

SELECT * FROM tl_sl_invoice;

SELECT * FROM tl_fn_autoexpencestravel;

SELECT clientname FROM tl_sl_manager_task WHERE date1='2014-07-16';

SELECT * FROM tl_login;

SELECT * FROM tl_sl_manager_task WHERE deltby='slm_10';

SELECT * FROM tl_employee;

SELECT * FROM tl_employee WHERE department='SalesAndMarketing' AND designation='sales_manager';

SELECT clientname,dateofmeeting,time1 FROM tl_sl_manager_task WHERE dateofmeeting LIKE '2014-8-7';

SELECT clientname,dateofmeeting,time1 FROM tl_sl_manager_task WHERE dateofmeeting LIKE '2014-8-7';

SELECT * FROM tl_sl_manager_task;

DELETE FROM tl_sl_manager_task;

SELECT * FROM tl_login;

SELECT * FROM tl_fn_ledger;

SELECT * FROM groups;

SELECT * FROM tl_fn_ledger;

INSERT INTO groups (groupname) (SELECT ledgername FROM tl_fn_ledger);

SELECT * FROM groups ORDER BY groupname;

SELECT * FROM tl_fn_ledgerdetails;

SHOW TABLES;

SELECT ledgername FROM tl_ledgerdetails WHERE  under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c';

SELECT * FROM tl_fn_vocherpayment;

SELECT * FROM tl_fn_phonebillexpences;

SELECT * FROM tl_fn_foodexpences;

SELECT * FROM tl_fn_hotelexpenses;

SELECT * FROM entertainmentexpenceses;

SELECT * FROM tl_sl_invoice;

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM groupdetails;

SELECT * FROM tl_fn_ledgerdetails;

SELECT * FROM tl_fn_vocherpayment WHERE particulars=(SELECT legername FROM tl_fn_ledgerdetails WHERE under LIKE (SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses'));

SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses';

SELECT * FROM tl_fn_groupmapping;

UPDATE tl_fn_groupmapping SET subgroup='Telephone Exp' WHERE subgroup='TelephoneExp';

DELETE FROM tl_fn_groupmapping WHERE sno=2; 

SELECT * FROM tl_fn_vocherpayment WHERE particulars='CottonCloths';

SELECT * FROM tl_fn_vocherpayment,SELECT ledgername FROM tl_fn_ledgerdetails WHERE under LIKE (SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses') ;

SELECT * FROM tl_fn_vocherpayment WHERE particulars=(SELECT DISTINCT(ledgername) FROM tl_fn_ledgerdetails WHERE under LIKE (SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses'));

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under LIKE (SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses');

SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup LIKE 'IndirectExpenses';

SELECT vp.reciptno,vp.date,vp.under,vp.particulars FROM tl_fn_ledgerdetails ld,tl_fn_groupmapping groupmap,tl_fn_vocherpayment vp WHERE ld.under=groupmap.subgroup  AND vp.particulars=ld.ledgername;

SELECT vp.particulars,vp.amount FROM tl_fn_ledgerdetails ld,tl_fn_groupmapping groupmap,tl_fn_vocherpayment vp WHERE ld.under=groupmap.subgroup  AND vp.particulars=ld.ledgername AND vp.particulars='RaviExp';

SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap,tl_fn_ledgerdetails ld WHERE gmap.subgroup=ld.ledgername='RaviExp';

SELECT * FROM tl_fn_vocherpayment;

SELECT ledgername FROM tl_fn_ledgerdetails;

SELECT * FROM tl_fn_current_asserts;

DELETE FROM tl_fn_current_asserts WHERE sno=2;

DELETE FROM tl_fn_current_asserts;

SELECT balance FROM tl_fn_current_asserts WHERE under='IndirectExpenses';

SELECT v.* FROM tl_fn_vocherpayment v ,tl_fn_ledgerdetails WHERE ledgername=v.particulars; 

SELECT v.reciptno,v.under,v.particulars,v.amount FROM tl_fn_vocherpayment v,tl_fn_ledgerdetails ld,tl_fn_groupmapping gmap  WHERE ld.ledgername= v.particulars AND gmap.subgroup=ld.under AND gmap.primarygroup='IndirectExpenses';

SELECT * FROM tl_fn_vocherpayment;

DELETE FROM tl_fn_vocherpayment;

SELECT v.reciptno,v.under,v.particulars,v.amount FROM tl_fn_vocherpayment v,tl_fn_ledgerdetails ld,tl_fn_groupmapping gmap  WHERE ld.ledgername= v.particulars AND gmap.subgroup=ld.under AND gmap.primarygroup='IndirectExpenses';

SELECT * FROM groups;

SELECT * FROM tl_fn_current_asserts;

SELECT * FROM tl_fn_groupmapping;

DELETE FROM tl_fn_current_asserts WHERE sno=10;

SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)';

SELECT balance FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)';

SELECT balance FROM tl_fn_current_asserts WHERE ledgername='RaviTravelAdv';

SELECT balance FROM tl_fn_current_asserts WHERE ledgername='CASH';

SELECT * FROM tl_fn_groupmapping;

UPDATE tl_fn_ledgerdetails SET under='Cash-in-Hand' WHERE sno=5;

SELECT * FROM tl_fn_ledgerdetails WHERE ledgername='Cash';

SELECT balance FROM tl_fn_current_asserts WHERE ledgername='Cash';

INSERT INTO tl_fn_current_asserts VALUES("Cash","3000","Cash-in-Hand"); 

SELECT * FROM tl_fn_current_asserts;

SHOW TABLES;

SELECT * FROM tl_login;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE  ledgername!='Cash' AND under!='BankAccounts' AND under!='BankOCC-A/c' AND under!='BankOD-A/c';

SELECT * FROM tl_fn_stockgroup;

SELECT * FROM tl_fn_stockitem;

SELECT * FROM tl_fn_measures;

SELECT * FROM tl_fn_vocherpayment;

SELECT * FROM tl_fn_vochercontra;

SELECT * FROM tl_fn_recipt;

SELECT * FROM tl_employee WHERE username='fnex_24';

SELECT * FROM tl_fn_ledgerdetails;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE  ledgername!='Cash';

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='SundryDebtors'; 

SELECT * FROM tl_fn_ledgerdetails ld,tl_fn_groupmapping gm WHERE ld.under=gm.subgroup AND gm.primarygroup='SundryDebtors';

DESC tl_fn_groupmapping;

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM tl_fn_ledgerdetails WHERE ledgername='RaviTravelAdv';

UPDATE tl_fn_groupmapping SET primarygroup='Cash-in-Hand' WHERE sno=3;

SELECT * FROM tl_fn_current_asserts;

UPDATE tl_fn_current_asserts SET under='IndirectExpenses' WHERE ledgername='RaviExp';

SELECT * FROM groupdetails;

UPDATE groupdetails SET under='Cash-in-Hand' WHERE sno=17;

DELETE FROM tl_fn_vocherpayment;

SELECT * FROM tl_fn_vocherpayment;

SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap,tl_fn_ledgerdetails ld WHERE gmap.subgroup=ld.ledgername='RaviTravelAdv';

DELETE FROM tl_fn_current_asserts; 

DELETE FROM tl_fn_groupmapping;

DELETE FROM groupdetails;

DELETE FROM tl_fn_ledgerdetails;

SELECT * FROM groupdetails;

SHOW TABLES;

SELECT * FROM groups;

DELETE FROM groups WHERE sno=43;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE ledgername!='Cash';

SELECT ledgername FROM tl_fn_ledgerdetails WHERE  under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c';

SELECT * FROM tl_fn_ledgerdetails;

DELETE FROM tl_fn_ledgerdetails;

SELECT * FROM groups;

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM tl_fn_closingstock;

SELECT * FROM tl_fn_purchase;

SELECT SUM(quantity),SUM(amount) FROM tl_fn_purchase;

SELECT * FROM tl_fn_current_asserts;

DELETE FROM tl_fn_current_asserts;

UPDATE tl_fn_current_asserts SET under='Cash-in-Hand' WHERE sno=26;

SELECT * FROM tl_fn_vocherpayment;

SELECT gmap.primarygroup FROM tl_fn_groupmapping gmap,tl_fn_ledgerdetails ld WHERE ld.ledgername=gmap.subgroup;

SELECT * FROM tl_fn_groupmapping gmap,tl_fn_ledgerdetails ld WHERE gmap.subgroup=ld.ledgername;

SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap WHERE gmap.subgroup=(SELECT under FROM tl_fn_ledgerdetails WHERE ledgername='Cash');

DELETE FROM tl_fn_vocherpayment;

INSERT INTO tl_fn_current_asserts (ledgername,balance,under) VALUES('Cash','','Cash-in-Hand');

SELECT SUM(amountdue) FROM tl_fn_autoexpencestravel;

SELECT SUM(amountdue) FROM tl_fn_phonebillexpences;

SELECT SUM(totalamount) FROM tl_fn_hotelexpenses;

SELECT SUM(amountdue) FROM tl_fn_foodexpenses;

SELECT SUM(amountdue) FROM entertainmentexpenceses;

SELECT SUM(amount) FROM tl_fn_misleniousexpenceses;

SELECT * FROM tl_fn_current_asserts;

UPDATE tl_fn_current_asserts SET under='Cash-in-Hand' WHERE sno=26;

SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Cash-in-Hand'

SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap WHERE gmap.subgroup=(SELECT under FROM tl_fn_ledgerdetails WHERE ledgername='Cash');

SELECT * FROM tl_fn_groupmapping;

INSERT INTO tl_fn_groupmapping (primarygroup,subgroup) VALUE('Cash-in-Hand','Cash');

SHOW TABLES;

SELECT villa_name,villa_facing,villa_type,total_villas,villas_left FROM tl_villatype;

SELECT username FROM tl_login;

SELECT username FROM tl_employee WHERE designation="tele_agent";

SELECT * FROM tl_customer;

SHOW TABLES;

SELECT * FROM tl_fn_misleniousexpenceses;

SELECT * FROM tl_fn_internetexp;

SELECT * FROM tl_fn_advertisementexp;

SELECT * FROM tl_fn_officeexp;

SELECT * FROM tl_fn_repairmaintenance;

SELECT * FROM tl_fn_postageexp;

SELECT * FROM tl_fn_salaryexp;

SELECT * FROM tl_fn_sundrystaff;

SELECT * FROM tl_fn_current_asserts;

SELECT * FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)';

SELECT * FROM groups;

SELECT username FROM tl_login;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='CurrentAsset' OR under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c' OR under='SundryCreditors' OR under='SundryDebtors';

SELECT * FROM tl_fn_stockitem;

SELECT symbol FROM `tl_fn_measures`;

SELECT * FROM `tl_fn_purchase`;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='SalesAccounts';

SELECT * FROM groups WHERE groupname='SalesAccounts'; 

SELECT * FROM groups;

SELECT * FROM tl_fn_vochersales;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='CurrentAsset' OR under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c' OR under='SundryCreditors' OR under='SundryDebtors' ;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='CurrentAsset' OR under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c' OR under='SundryCreditors' OR under='SundryDebtors' ;

SELECT * FROM tl_fn_salesreturn;

SELECT * FROM tl_fn_closingstock WHERE stockitem='Coal';

SHOW TABLES;

SELECT * FROM tl_fn_purchase;

SELECT * FROM tl_fn_closingstock;

SELECT * FROM tl_fn_current_asserts;

SELECT under FROM tl_fn_ledgerdetails WHERE ledgername=''; 

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM tl_fn_ledgerdetails;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup FROM tl_fn_groupmapping WHERE primarygroup='PurchaseAccounts');

UPDATE tl_fn_current_asserts SET under='SalesAccounts' WHERE sno=28;

SELECT SUM(amount) FROM tl_fn_vochersales;

SELECT SUM(remainingamount) FROM tl_fn_customer;

SELECT * FROM tl_fn_customer;
SELECT * FROM tl_sl_customer;

SELECT username FROM tl_login;



UPDATE tl_fn_customer SET amountpaid='', remainingamount='', installmentspaid='';

DELETE FROM tl_fn_customer  WHERE id=8;

SELECT custid,totalamount,amountpaid,remainingamount,totalinstallments,installmentspaid FROM tl_fn_customer WHERE deltby='fnex_17' AND STATUS='NEW' AND custid='cus_4';

UPDATE tl_fn_customer SET STATUS='NEW';

SELECT * FROM tl_fn_customer WHERE custid='cus_10' AND STATUS='NEW' OR STATUS='Paying';

SELECT totalamount,amountpaid,remainingamount,totalinstallments,installmentspaid FROM tl_fn_customer WHERE deltby='' AND STATUS='' AND custid='cust_17';

SELECT SUM(amountdue) FROM tl_fn_phonebillexpences;

SELECT SUM(totalamount)  FROM tl_fn_hotelexpenses;

SELECT SUM(amountdue) FROM entertainmentexpenceses;

select * from tl_login;

select * from tl_sl_invoice;

select * from tl_fn_advertisementexp;


select * from tl_fn_autoexpencestravel;

select * from tl_fn_phonebillexpences;

SELECT * FROM tl_fn_phonebillexpences where (provider='BSNL' or approvedby='') and department='Finance' and manager='fnm_23';

select * from tl_hr_login;

select * from tl_fn_autoexpencestravel;

select * from tl_sl_invoice;

select * from tl_sl_invoice where (custname='RaviKiran,Hyd' or gendate between '' and '') and deltby='fnex_17' and dept1='Finance' ;

select * from tl_employee;

select * from tl_employee where department='Finance' and manager='fnm_18';

select username from tl_employee where manager='fnm_18';

select * from tl_fn_autoexpencestravel where (empname='' or location='' or gendate between '' and '' or deltby='') or manager='fnm_23' and department='Finance';

select * from tl_fn_autoexpencestravel where manager='fnm_23';

SELECT * FROM tl_fn_phonebillexpences where (provider='' or phoneno='' or gendate between '' and '' or deltby='') or manager='fnm_23';

select * from tl_fn_phonebillexpences;

select * from tl_fn_foodexpenses;

select * from tl_login;

select * from tl_sl_customer;

select * from tl_guest_user where status='OPEN' and refered1='tc_2';

select * from tl_customer where slm_id='slm_10' and status='New';

select * from tl_sl_invoice;

select * from tl_sl_apprisialform;

select * from tl_fn_autoexpencestravel;

select * from tl_fn_ledgerdetails;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup='IndirectExpenses');

select * from tl_fn_groupmapping;

insert into tl_fn_groupmapping (primarygroup,subgroup) values ('IndirectExpenses','IndirectExpenses');

select * from tl_fn_hotelexpenses;

select * from tl_fn_entertainmentexpenceses;

select * from leaveapplications;

select * from tl_login;

select * from tl_employee;

select * from tl_reportingto;

SELECT reportingto FROM tl_reportingto WHERE designation='hr_director';

delete  from tl_reportingto where sno=21;

select * from tl_login where username="hr_ex_4" and password="123456";

SELECT username FROM tl_employee WHERE designation=(SELECT reportingto FROM tl_reportingto WHERE designation='club_director');

select * from tl_sl_apprisialform;

select * from tl_sl_orderform;

select * from tl_sl_telephonesalesorder;

select * from tl_sl_salescalllog;

select * from tl_fn_recipt;

select * from tl_fn_recipt;

select ledgername from tl_fn_ledgerdetails where deltby='fnex_24';

select * from tl_employee where manager="fnm_23";

select name from groupdetails where manager="fnm_23";

select * from tl_fn_stockgroupdetails;

SELECT * FROM resort.tl_leaveopen;

desc tl_leaveopen;

insert into resort.tl_leaveopen select * from hrerp.leaveopen;

drop table resort.tl_leaveopen;

create table tl_leaveopen as select * from hrerp.leaveopen;

delete from tl_leaveopen;

alter table tl_leaveopen alter plopen set default 18;

select clopen,slopen,plopen from tl_leaveopen;

select * from tl_employee where username='hr_ex_4';

