create table tl_manager(sno int(6) primary key, manager_id varchar(70) UNIQUE,manager_name varchar(70),emp_id varchar(30));

create table tl_department(sno int(6) primary key,department varchar(70), department_id varchar(40) UNIQUE);

create table tl_villatype(villa_id varchar(70) primary key,villa_type varchar(70),facing_villa varchar(70),villa_prize varchar(70));


