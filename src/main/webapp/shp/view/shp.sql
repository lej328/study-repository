create table luck_shp_board (
	no number(4) primary key,
	title varchar2(100) not null,
	content varchar2(500) not null,
	reg_date date default sysdate
);

create sequence luck_shp_board_no;