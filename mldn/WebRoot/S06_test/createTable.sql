-- 选择数据库
USE mldn;

-- 删除表
DROP TABLE IF EXISTS emp;

-- 创建表
CREATE TABLE emp(
	empno int(4) primary key,
	ename varchar(10) not null,
	job varchar(10) not null,
	hiredate DATE,
	sal float(7,2),
	comm float(7,2)
);

-- 插入测试数据
insert into emp values(0001,'小李','程序员','2002-10-12',10000.00,0);
insert into emp values(0002,'五月','经理','2003-10-12',12000.00,1);
insert into emp values(0003,'摩卡','员工','2004-10-12',10300.00,2);
insert into emp values(0004,'花香','副经理','2005-10-12',10050.00,0);
insert into emp values(0005,'java','副经理','2006-10-12',10070.00,0);
insert into emp values(0006,'咖啡','负责人','2007-10-12',10080.00,0);
insert into emp values(0007,'太少','检查','2002-1-12',10000.120,45);
insert into emp values(0008,'含量','扫地','2002-3-12',10000.00,123);
insert into emp values(0009,'看看','做饭','2002-4-12',10000.00,34);
insert into emp values(0010,'嗯嗯','送外卖','2002-5-12',10000.1230,0);
insert into emp values(0011,'合适','上网','2012-5-12',10000.00,45);
insert into emp values(0012,'离开','看书','2012-10-12',10000.00,78);
insert into emp values(0013,'配额','歇着','2002-10-3',10034.00,0);
insert into emp values(0014,'尼尔森','需求','2013-10-12',67000.00,0);
insert into emp values(0015,'另外的色彩','测试','2004-10-12',32000.00,0);