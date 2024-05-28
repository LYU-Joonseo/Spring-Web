CREATE TABLE t_board(
	NO NUMBER PRIMARY KEY,
	title varchar(20) NOT NULL,
	writer varchar(10) NOT NULL,
	content varchar(200) NOT NULL,
	view_cnt number(10) DEFAULT 0,
	reg_date DATE DEFAULT sysdate
);

CREATE SEQUENCE seq_t_board_no NOcache;