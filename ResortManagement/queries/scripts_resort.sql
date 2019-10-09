select * from tl_hr_leaveform where empid='hr_ex_4';

update tl_hr_leaveform set totalcl='20', totalsl='20' ,totalpl='20';

ALTER TABLE tl_hr_leaveform ALTER COLUMN totalpl SET DEFAULT '20';

update tl_hr_leaveform set totalleaves=totalcl+totalsl+totalpl;

select * from tl_hr_leaveform where empid='hr_ex_4';

select * from tl_employee;

select (lf.totalcl-lf.cl) ,(lf.totalsl-lf.sl) ,(lf.totalpl-lf.pl)  from tl_employee emp,tl_hr_leaveform lf where emp.username=lf.empid and emp.username='hr_ex_4';

select (totalcl-cl) ,(totalsl-sl) ,(totalpl-pl)  from tl_hr_leaveform where empid='hr_ex_4';



