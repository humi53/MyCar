CREATE DATABASE mycarDB;
USE mycarDB;
CREATE TABLE tbl_triplog(
	tl_seq	BIGINT		PRIMARY KEY	AUTO_INCREMENT,
	tl_type	INT	NOT NULL,		
	tl_sdate	VARCHAR(10),			
	tl_stime	VARCHAR(10),			
	tl_sdistance	INT	NOT NULL,		
	tl_edate	VARCHAR(10),			
	tl_etime	VARCHAR(10),			
	tl_edistance	INT,			
	tl_place	VARCHAR(20)	NOT NULL,		
	tl_cost	INT		
);