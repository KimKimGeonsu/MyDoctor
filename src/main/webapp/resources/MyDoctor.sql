create user mydoctor identified by 20000

grant connect, resource to mydoctor;

select * from tabs;
select * from members;
create table members(
	id			varchar2(15) primary key,
	password	varchar2(15) not null,
	name		varchar2(20) not null,
	phone		number(12) not null,
	address		varchar2(100),
	email		varchar2(50),
	birth		date,
	gender		number(1),
	userkey		number(1)
);
select * from members;
insert into members values('test', '123', 'testing', 
		01033333333, 'testADDR',
		'dd@dd.com', '1991-02-11', 1, 1)
insert into members values('admin', '20000', 'admin', 
		01032308711, '멤버',
		'd@naver.com', '1991-02-11', 1, 1)
		
select rownum, h.* from hospitals h
select a.*
	 	from (select rownum r, h.*
	 		from hospitals h
	 		order by yadmNm) a

create table adminBoard(
  id varchar2(15) references members(id),
  boardNum number(10) primary key,
  subject varchar2(100) not null,
  content varchar2(4000) not null,
  checking number(1) default 0 not null ,
  reply varchar2(3000),
  reqDate date
)
select * from adminboard;
insert into adminboard values('test', 8, '문의test_sub', '문의 test_con', 0, '문의 답변', sysdate)
insert into adminboard values('test', 9, '문의test_sub2', '문의 test_con2', 0, '문의 답변', sysdate)
alter table adminBoard add(reqDate date)
alter table adminBoard drop(password)

insert into adminBoard values('test', 
	(select nvl(max(boardNum),0)+1 from adminBoard),
	'테스트 제목입니다', '테스트 내용입니다', 0, '',sysdate)
select * from adminboard

create table boards (
  writeId varchar2(15),
  boardsTarget varchar2(15) references hospitals(id),
  boardNum number primary key,
  secret number(1) default 1 not null ,
  head varchar2(30) not null,
  subject varchar2(100) not null,
  content varchar2(4000) not null,
  uploaddate date,
  reply varchar2(3000)
)
select * from members
drop table boards
insert into boards values('test', 'gong1', 1, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
insert into boards values('test', 'gong1', 2, 1,'문의', 'testSub',
'testCont','2019-12-31','ok')
insert into boards values('test', 'gong1', 3, 1,'문의', 'testSub',
'testCont','2019-12-31','')
insert into boards values('test', 'gong1', 5, 1,'문의', 'testSub',
'testCont','2019-12-31','ok')
insert into boards values('test', 'gong1', 6, 1,'문의', 'testSub',
'testCont','2019-12-31','ok')
insert into boards values('test', 'gong1', 7, 1,'문의', 'testSub',
'testCont','2019-12-31','ok')
insert into boards values('test', 'gong1', 8, 1,'문의', 'testSub',
'testCont','2019-12-31','ok')
insert into boards values('test', 'gong1', 9, 1,'문의', 'testSub',
'testCont','2020-02-02','ok')
insert into boards values('test', 'gong1', 10, 1,'문의', 'testSub',
'testCont','2020-02-02','ok')
insert into boards values('test', 'gong1', 11, 1,'문의', 'testSub',
'testCont','2020-02-21','ok')
insert into boards values('test', 'gong1', 12, 0,'문의', 'testSub',
'testCont','2020-02-21','ok')
			insert all 
			into boards values('test', '123', 'testing', 2, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
			into boards values('test', '123', 'testing', 3, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
			into boards values('test', '123', 'testing', 4, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
			into boards values('test', '123', 'testing', 5, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
			into boards values('test', '123', 'testing', 6, 1,'문의', 'testSub',
			'testCont',sysdate,'ok')
			select * from dual;
select * from boards
select count(*) from boards
	 	where boardsTarget = 'nowbi'
	 	
	 	
create table reviews(
  id varchar2(15) references members(id),
  hospital varchar2(15) references hospitals(id),
  reviewNum number(10) primary key,
  subject varchar2(100) not null,
  content varchar2(4000) not null,
  kindness number(2) not null,
  ability number(2) not null,
  price number(2) not null,
  visited date,
  uploaddate date,
  reply varchar2(3000)
)
select * from reviews
drop table reviews
select * from reservation rv
left outer join reviews re
on re.id = rv.id
where re.hospital = 'testing'
and re.id = 'test'
and rv.acceptance =2
and re.visited = rv.reservetime



select * from hospitals
 select * from(select rownum rnum, r.* from
 (select rv.*, h.yadmNm from reviews rv join hospitals h on  rv.hospital=h.id and rv.id='test'
 order by visited desc ) r
		 where rnum &gt;=#{start} and rnum &lt;=#{end}

select 

		 
drop table reviews;
select * from reviews;
select avg(kindness), avg(ability), avg(price) 
	 	from reviews
	 	where hospital = 'gong1'
drop table reviews
alter table reviews add(visited date)
insert into reviews values('test', 'gong1', 1, 'testSub',
	'testCont', 5,5,5,sysdate,sysdate,'ok')
insert into reviews values('test2', 'gong1', 2, 'testSub',
	'testCont', 3,4,5,sysdate,sysdate,'ok')
insert into reviews values('test', 'gong1', 3, 'testSub',
	'testCont', 3,4,5,sysdate,sysdate,'ok')
insert into reviews values('test', 'gong1', 4, 'testSub',
	'testCont', 3,4,5,sysdate,sysdate,'ok')
insert into reviews values('test', 'gong1', 5, 'testSub',
	'testCont', 3,4,5,sysdate,sysdate,'ok')
insert into reviews values('test2', 'gong1', 6, 'testSub',
	'testCont', 3,4,5,sysdate,sysdate,'ok')
update reviews set visited = sysdate
select * from(select rownum rnum, r.* from(select * from reviews where id='test' order by visited desc ) r)
 where rnum>=5 and rnum<=10;
 select * from reviews;
 
create table favorites (
select * from reviews;

create table bookmarks (
  id varchar2(15) references members(id),
  hosid varchar2(15) references hospitals(id),
  hosname varchar2(50)
)

select * from hospitals
		where id = (select hosid from bookmarks where id = 'test')

select * from bookmarks;
drop table bookmarks;

delete members cascade constraints;
delete reviews

drop table hospitals;

select (select count(*) from reservation where acceptance = 1) as yesaccept
		from reservation
		where id = 'test'
    group by id
