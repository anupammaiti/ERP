INSERT INTO tl_fn_groups SELECT * FROM resort.groups;

SELECT * FROM tl_fn_groups;

DELETE FROM tl_fn_groups WHERE sno=47;

SHOW TABLES;

SELECT * FROM  tl_fn_ledgerdetails;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup FROM tl_fn_groupmapping WHERE primarygroup='Loans&Advances(Asset)');

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM groupdetails ;

SELECT * FROM tl_fn_groups;

delete from tl_fn_groupdetails ;

delete from tl_fn_groups where sno=51;

SELECT * FROM groupdetails WHERE NAME='TravelAdv';

SELECT * FROM tl_fn_inventory;

SELECT * FROM tl_sl_invoice;

SELECT * FROM tl_fn_autoexpencestravel;

SELECT * FROM tl_fn_recipt;

SELECT * FROM tl_fn_vocherpayment;

DESC `tl_fn_voucher_journal`;

SELECT * from finance.tl_hr_login;

select * from tl_fn_companyregistration where sno=(select MAX(sno) from tl_fn_companyregistration);

show procedure status;

show procedure code totalIndirectExp;



show procedure status like 'totalIndirectExp';

select * from tl_fn_advertisementexp where noofseconds='120' or landno='044234561' and amount='1000';

call totalIndirectExp('SVSINFOMATICS',@total);


select * from tl_fn_taxdetails;

select * from tl_sl_invoice;

select * from  tl_sl_invoice where name='TV' and login_comp='SVSINFOMATICS';
select * from tl_fn_advertisementexp;
select * from tl_fn_autoexpencestravel;

select * from tl_fn_hotelexpenses;

select logopath from tl_fn_companyregistration where companyname='SVSINFOMATICS';

select * from tl_fn_companyregistration;

delete from tl_fn_companyregistration where sno=17;

select * from tl_hr_login;

SELECT * FROM tl_fn_current_asserts;

delete from tl_hr_login where sno=10;

truncate groupdetails;

truncate tl_fn_groupmapping;

select * from tl_fn_ledgerdetails;

truncate tl_fn_ledgerdetails;

select * from tl_fn_taxdetails;

delete from tl_fn_taxdetails where sno=2;

select * from tl_fn_aggingaccountpayble;

select * from tl_fn_aggingaccountreceivable;

truncate tl_fn_aggingaccountpayble;
	
truncate tl_fn_aggingaccountreceivable;

call totalIndirectExp('Paramount GS',@total);

select * from tl_fn_autoexpencestravel where (gendate='2014-11-04' and auditedby='Kirshna' and ledgername='RaviTravelAdv') and login_comp='SVSINFOMATICS';

select * from tl_fn_autoexpencestravel; 

select * from tl_fn_phonebillexpences;

select * from tl_fn_hotelexpenses;

select * from tl_fn_internetexp;

select * from tl_fn_advertisementexp;

select * from tl_fn_officeexp;

select * from tl_fn_repairmaintenance;

select * from tl_fn_entertainmentexpenceses where ( ledgername='RaviTravelAdv' or gendate='2014-11-02') and login_comp='';

select * from tl_fn_internetexp;

select * from tl_fn_stockgroup;

select * from tl_fn_ledgerdetails where login_comp='SVSINFOMATICS' and ledgername='RaviTravelAdv' and under='TravelAdv' and getdate='2014-11-03';

select * from groupdetails;

select * from tl_fn_vouchertype;

select * from tl_fn_stockgroupdetails;

select * from tl_fn_stockitem;

call totalIndirectExp('SVSINFOMATICS',@total);

SELECT SUM(amountdue)  FROM tl_fn_autoexpencestravel where login_comp='SVSINFOMATICS' and amountdue is not Null;

 SELECT SUM(totalamount) from tl_fn_postageexp where login_comp='SVSINFOMATICS' and totalamount is not Null;
 
 select amountdue from tl_fn_autoexpencestravel where login_comp='SVSINFOMATICS';
 
 SELECT SUM(amountdue) FROM tl_fn_phonebillexpences where login_comp='SVSINFOMATICS';
 
 SELECT * FROM tl_fn_entertainmentexpenceses;
 
 SELECT SUM(amount) FROM tl_fn_misleniousexpenceses where login_comp='SVSINFOMATICS';
 
 select * from tl_fn_ledgerdetails;
 
 select balance from tl_fn_current_asserts where ledgername='Cash' and login_comp='SVSINFOMATICS';
 
 select * from tl_fn_current_asserts;
 
 truncate tl_fn_current_asserts;
 
 delete from tl_fn_current_asserts where sno=2;
 
 select * from tl_fn_groupmapping;
 
 insert into tl_fn_groupmapping (primarygroup,subgroup) values('UnsecuredLoans','UnsecuredLoans');
 
 select * from  tl_fn_current_asserts where ledgername='RaviTravelAdv' and under='IndirectExpenses' and login_comp='SVSINFOMATICS';
 
 select * from tl_fn_current_asserts where login_comp='SVSINFOMATICS' and ledgername='RaviTravelAdv' and under='IndirectExpenses';
 
 SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap WHERE gmap.subgroup=(SELECT under FROM tl_fn_ledgerdetails WHERE ledgername='RaviTravelExp');
 
 select SUM(balance)  from tl_fn_current_asserts where under='Duties&Taxes';
 
 select * from tl_hr_login;
 
 update tl_fn_current_asserts set login_comp='SVSINFOMATICS' where sno=4;
 
 select * from tl_fn_purchase;
 
 desc tl_fn_purchase;
 
 truncate tl_fn_purchase;
 
 
 SELECT SUM(amount) FROM tl_fn_purchase where login_comp='SVSINFOMATICS';
 
 call drTotal('SVSINFOMATICS',@total);
 
 select * from tl_fn_groups;
 
 select * from tl_hr_employee;
 
 select * from tl_fn_aggingaccountreceivable;
 
 select * from tl_sl_invoice;
 
 select * from tl_fn_entertainmentexpenceses;
 
 truncate tl_fn_entertainmentexpenceses;
 
 select * from tl_fn_misleniousexpenceses;
 
 select * from tl_fn_internetexp;
 
 select * from tl_fn_officeexp;
 select * from tl_fn_cashdisbursementsjournal;
 
 select * from tl_fn_dailycashreport;
 
 select * from tl_fn_pettycashjournal;
 
 select * from tl_fn_pettycashvoucher;
 
 
 select * from tl_fn_stockgroup where login_comp='SVSINFOMATICS';
 
 SELECT groupname FROM tl_fn_stockgroup where login_comp='SVSINFOMATICS';
 
 update tl_fn_stockgroup set login_comp='SVSINFOMATICS' where sno=3;
 
 select * from tl_fn_stockgroupdetails;
 
 update tl_fn_stockgroupdetails set login_comp='SVSINFOMATICS' where sno=1;
 
 select name from tl_fn_stockitem;
 
 select * from tl_fn_purchase;
 
 select * from tl_fn_vochersales;
 
 select * from tl_fn_current_asserts;
 
 update tl_fn_vochersales set login_comp='SVSINFOMATICS' where sno=1;
 
 select * from tl_fn_salesreturn;
 
 update tl_fn_salesreturn set login_comp='SVSINFOMATICS' where sno=1;
 
 select * from tl_hr_employee;
 select * from tl_fn_groups;
 SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='FixedAssets' and login_comp='SVSINFOMATICS';
 
 select * from tl_fn_current_asserts;
 
 update tl_fn_current_asserts set under='Loans&Advances(Asset)' where sno=2;
 
 SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp='SVSINFOMATICS';
 
 select * from tl_fn_groups;
 
 insert into tl_fn_groups (groupname) values('Other CurrentLiabilites');
 
 select * from tl_fn_groupmapping;
 
 select * from `tl_fn_foodexpenses` where login_comp='SVSINFOMATICS' and ledgername=(select Distinct(ledgername) from `tl_fn_ledgerdetails` where under=(select DISTINCT(subgroup) from tl_fn_groupmapping where primarygroup='IndirectExpenses'));
 
 select ledgername,sum(total) from `tl_fn_repairmaintenance` where login_comp='SVSINFOMATICS' ;
 
 
 select * from tl_fn_vochersales;
 
 
 select ledgername,sum(amountdue) from `tl_fn_hotelexpenses` where login_comp='SVSINFOMATICS' ;
 
 select * from tl_fn_groupmapping;
 
 select * from tl_fn_ledgerdetails;
 
 update tl_fn_ledgerdetails set under='CapitalAccount' where sno=6;
 
 select * from tl_fn_recipt;
 
 truncate tl_fn_recipt;
 
 select * from tl_fn_current_asserts;
 
 delete from tl_fn_current_asserts where sno=16;
 
 SELECT SUM(balance) FROM tl_fn_current_asserts where under='CapitalAccount' and login_comp='SVSINFOMATICS';
 
 SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp='SVSINFOMATICS';
 
 SELECT DISTINCT(gmap.primarygroup) FROM tl_fn_groupmapping gmap WHERE gmap.subgroup=(SELECT under FROM tl_fn_ledgerdetails WHERE ledgername='CoalSales');
 select * from  tl_fn_vochersales ;
 
 select * from tl_fn_ledgerdetails;
 
 select ledgername from tl_fn_ledgerdetails where (under='CurrentAsset' or under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c' or under='SundryCreditors' or under='SundryDebtors') and login_comp='SVSINFOMATICS';
 
 select * from tl_fn_stockitem;
 
 select * from tl_fn_measures;
 
 update tl_fn_measures set login_comp='SVSINFOMATICS' where sno=2;
 
 select ledgername from tl_fn_ledgerdetails;
 
 select * from tl_fn_companyregistration;

select * from tl_hr_login;
 
 call test1('Paramount GS',@total);
  
 select 1=0;
 
 select 3=5;
 
 SELECT ISNULL(SUM(amount)) INTO advertisement from tl_fn_advertisementexp where login_comp=comp and amount is not Null;
 
 call totalIndirectExp('Paramount GS',@total);

select * from tl_fn_postageexp;

SELECT SUM(totalamount)  from tl_fn_postageexp where login_comp='Paramount GS';

select * from tl_fn_entertainmentexpenceses;

select * from  tl_sl_invoice where (today='' or name='' ) and login_comp='SVSINFOMATICS' and deltby='ravi_svs';


select * from tl_hr_employee where designation='Employee' and companyname='SVSINFOMATICS';

select designation,companyname from tl_hr_employee;


select database();

select * from  tl_sl_invoice where (today='' or name='') or login_comp='SVSINFOMATICS' and designation = 'Employee';

select * from tl_fn_autoexpencestravel where (gendate='' or auditedby='' or ledgername='RaviTravelAdv' or deltby='ravi_svs') or login_comp='SVSINFOMATICS';

select * from tl_fn_autoexpencestravel;

SELECT * FROM tl_fn_phonebillexpences where (ledgername='' or provider='' or approvedby='' or gendate='' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_hotelexpenses where( ledgername='' or approvedby='' or date1='' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_entertainmentexpenceses where (empname='' or approvedby='' or gendate='' or ledgername='RaviTravelExp' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_entertainmentexpenceses where (empname='' or approvedby='' or gendate='' or ledgername='RaviTravelExp' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_misleniousexpenceses where (ledgername='RaviTravelExp' or gendate='' or empname='' or approvedby='' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_nontradingexpenceses where (ledgername='' or itemname='' or approvedby='' or gendate='' or deltby='ravi_svs') and login_comp='SVSINFOMATICS';

select * from tl_fn_nontradingexpenceses;

select * from tl_fn_aggingaccountpayble;

select * from tl_fn_cashreceiptsjournal where  login_comp='SVSINFOMATICS' and  (gendate between '' and '' or ledgerno='' or deltby='ravi_svs');

select * from tl_fn_dailycashreport;

select SUM(totalpaid),SUM(paid),sum(balance) from tl_student where entrollno='MCA01010';

select * from tl_finalpayslip;

select * from tl_hr_employee  where companyname='SriVinayakaCollege';

select * from tl_sub_balancesheet where supgroup='CapitalAccount';

select * from tl_fn_balancesheet;

select * from tl_sub_balancesheet;

select * from tl_fn_bs_innerLedger;

select subgroup,subamount from tl_sub_balancesheet subbal,tl_fn_balancesheet fnbs where subbal.supgroup=fnbs.e1 ;




