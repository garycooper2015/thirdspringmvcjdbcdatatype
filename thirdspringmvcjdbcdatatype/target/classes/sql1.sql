/*
 * 
 */

create table t2(
`id` int(11) not null auto_increment,
`i1` smallint(5) not null default 0,
`i2` tinyint(1) not null default 0,
`s1` varchar(40),
`s2` varchar(255),
`s3` text,
`date1` date,
`datetime1` datetime,
`datetime2` timestamp not null default now(),
`decimal1` decimal(12,4) not null default 0,
`double1` double(12,4) not null default 0,
`f1` float(12,4) not null default 0,
primary key(`id`)
)engine=innodb default charset=utf8;

insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) 
values(20,2,'中文abc11','中文abc22','中文abc33',str_to_date('2018-01-13','%Y-%m-%d')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,24.5423,25.1115,26.8888);

insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) 
values(20,2,'中文abc11','中文abc22','中文abc33',str_to_date('2018-01-13','%Y-%m-%d')
,str_to_date('2018-01-13 14:32','%Y-%m-%d %H:%i:%s')
,str_to_date('2018-01-13 14:32','%Y-%m-%d %H:%i:%s')
,24.54,25.111,26.8888);



insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) 
values(-9998,2,'中文abc11','中文abc22','中文abc33',str_to_date('2018-01-13','%Y-%m-%d')
,str_to_date('2018-01-13 14:32','%Y-%m-%d %H:%i:%s')
,str_to_date('2018-01-13 14:32','%Y-%m-%d %H:%i:%s')
,24.54,25.111,26.8888);


insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) 
values(20,10,'中文abc11','中文abc22','中文abc33',str_to_date('2018-01-13','%Y-%m-%d')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,24.5423,25.1115,26.8888);


insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) 
values(20,120,'中文abc11','中文abc22','中文abc33',str_to_date('2018-01-13','%Y-%m-%d')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,str_to_date('2018-01-13 14:32:12','%Y-%m-%d %H:%i:%s')
,24.5423,25.1115,26.8888);