use mldn;

drop table if exists emp;

create table emp{
	empno int(4) primary key,
	ename varchar(10),
	job varchar(9),
	biredate date,
	sal float(7,2)
}