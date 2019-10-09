select * from tl_university;

update tl_university set collegename='SVSINFOMATICS' where sno=5;

select * from tl_courierDispath;

select * from tl_courie	rReciept;

select * from tl_student;

select * from tl_hr_employee;

update tl_hr_employee set salary='2000000' where companyname="SriVinayakaCollege" and sno=10;

select * from tl_companypayslip;

select filename,memoimg from tl_student where entrollno='MCA01010';

select * from tl_student where entrollno='MCA01010';

select sno,filename from tl_student where entrollno='MSc01010';

delete from tl_student where sno=10;

select *from tl_student where entrollno='MSc01010';

update tl_student set studentImage='Men-short-hairstyle4.jpeg' where entrollno='MSc01010';

select studentImage from tl_student where entrollno='MSc01010';