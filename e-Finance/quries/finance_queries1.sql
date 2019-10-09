INSERT INTO tl_fn_groups SELECT * FROM resort.groups;

SELECT * FROM tl_fn_groups;

DELETE FROM tl_fn_groups WHERE sno=47;

SHOW TABLES;

SELECT * FROM  tl_fn_ledgerdetails;

SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup FROM tl_fn_groupmapping WHERE primarygroup='Loans&Advances(Asset)');

SELECT * FROM tl_fn_groupmapping;

SELECT * FROM groupdetails WHERE NAME="TravelAdv";

SELECT * FROM tl_fn_groups;

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

call totalIndirectExp(@total);

select * from tl_fn_taxdetails;

select * from tl_sl_invoice;

select * from  tl_sl_invoice where name='TV' and login_comp='SVSINFOMATICS';
select * from tl_fn_advertisementexp;
select * from tl_fn_autoexpencestravel;

select * from tl_fn_hotelexpenses;

select logopath from tl_fn_companyregistration where companyname='SVSINFOMATICS';

select * from tl_fn_companyregistration;

delete from tl_fn_companyregistration where sno=25;

select * from tl_hr_login;

delete from tl_hr_login where sno=18;

select * from tl_fn_phonebillexpences;

select * from tl_fn_foodexpenses;

select * from tl_fn_hotelexpenses;

select * from tl_fn_entertainmentexpenceses;

select * from tl_fn_misleniousexpenceses;

select * from tl_fn_nontradingexpenceses;

select * from tl_fn_groupmapping;

select * from tl_fn_groups;

select * from tl_fn_groups where login_comp='SVSINFOMATICS' order by groupname;

select ledgername from tl_fn_ledgerdetails where login_comp='SVSINFOMATICS' and  under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c' ;

select * from tl_fn_ledgerdetails;

select * from tl_fn_vouchertype where login_comp='SVSINFOMATICS';

select SUM(balance) from tl_fn_current_asserts where under='Cash-in-Hand' and login_comp='SVSINFOMATICS';

select * from tl_fn_cashdisbursementsjournal where gendate between '2014-10-21' and '2014-10-31';

select * from tl_fn_cashdisbursementsjournal;

update tl_fn_cashdisbursementsjournal set login_comp='SVSINFOMATICS' where sno=1;

select * from tl_fn_dailycashreport;

select * from tl_fn_pettycashjournal where login_comp ='SVSINFOMATICS' and gendate between '2014-10-01' and '2014-10-31';

select * from tl_fn_pettycashvoucher;

select * from tl_fn_groups where login_comp is null or login_comp='SVSINFOMATICS'; 

select * from tl_fn_groupmapping;

select * from groupdetails;

select * from tl_fn_companyregistration;

delete from tl_fn_companyregistration where sno=32;

select * from tl_hr_login;

delete from tl_hr_login where sno=26;

select * from tl_student;