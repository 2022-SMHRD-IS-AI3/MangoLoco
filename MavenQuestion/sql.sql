create table book_member(
	id varchar2(50) primary key,
	pw varchar2(50) not null,
	nick varchar2(50),
	email varchar2(50),
	tel varchar2(50)
)

select * from BOOK_MEMBER