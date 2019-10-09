SELECT DATABASE();

USE erp;


SHOW TABLES;

SELECT 
    *
FROM
    companypayslip;

SELECT 
    *
FROM
    employee;

DESC employee;

SELECT 
    *
FROM
    temppayslip;

DELETE FROM temppayslip 
WHERE
    sno = 20;

TRUNCATE TABLE temppayslip;

SELECT 
    *
FROM
    temppayslip;

SELECT 
    *
FROM
    employee;


TRUNCATE TABLE temppayslip;

DELETE FROM temppayslip;

TRUNCATE TABLE temppayslip;

TRUNCATE TABLE temppayslip;

SELECT 
    *
FROM
    employee;

DESC employee;

SELECT 
    NAME
FROM
    employee;

SELECT 
    NAME
FROM
    companypayslip
WHERE
    gendate BETWEEN '12/12/10' AND '12/12/13';

SELECT 
    *
FROM
    purchase_accounts;


SHOW TABLES;

SELECT 
    *
FROM
    purchase;

DESC purchase;

DESC current_assets;

SELECT 
    *
FROM
    vochertype;

SELECT 
    *
FROM
    groups;

DROP TABLE groups;

CREATE TABLE groups LIKE kvk.groups;

INSERT INTO groups SELECT * FROM kvk.groups;

SELECT 
    *
FROM
    groups;

DESC ledger;

select 
    *
from
    ledger;

select 
    *
from
    vocherdetails;

alter table vocherdetails drop column gendate;

alter table groups drop column grouptype;

select balance from currentasserts where ledgername='ICICI';

select 
    *
from
    stockgroup;


select * from ledger;


select ledgername from ledger where  under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c';

select * from currentasserts;

select * from recipt;

delete from recipt where sno=1;

truncate  table currentasserts;

select amount from currentassets where ledgername='ICICI';

show tables;

select * from purchase;

select * from vochersales;

select * from vocherpurcahsereturn;

select * from ApprisialForm;

select * from ledger;

show tables;

select * from leaveapplications;

desc leaveapplications;

drop table leaveapplications;

drop database erp;

create database erp;

use erp;

show tables;

alter table leaveapplications MODIFY COLUMN totalleaves varchar(255) DEFAULT '63'; 

select cl,sl,el from leaveapplications;

select sum(cl),sum(sl),sum(el) from leaveapplications;

select * from login;

select * from employee;

select empno from employee;

select *from groups;

drop table groups;

insert into groups (groupname) select groupname from kvk.groups;

select * from kvk.groups;

select * from kvk.vochertypes;

select * from vochertype;

insert into vochertype (vochername) select name from kvk.vochertypes;

show tables;

drop database erp;

create database erp;

use erp;

show tables;

select * from Ledger;

select * from vocherdetails;


create table employee like kvk.employee;

select * from employee;

insert into employee select * from kvk.employee;

desc employee;

select * from Purchase_Entry;

select * from ApprisialForm;

select * from currentasserts;

select * from vochercontra;

select * from employee;
