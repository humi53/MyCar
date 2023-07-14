CREATE DATABASE mycarDB;
USE mycarDB;
DROP TABLE tbl_triplog;
CREATE TABLE tbl_triplog(
	tl_seq	BIGINT		PRIMARY KEY	AUTO_INCREMENT,
	tl_type	VARCHAR(10)	NOT NULL,		
	tl_sdate	VARCHAR(10),			
	tl_stime	VARCHAR(10),			
	tl_sdistance	INT	NOT NULL,		
	tl_edate	VARCHAR(10),			
	tl_etime	VARCHAR(10),			
	tl_edistance	INT,			
	tl_place	VARCHAR(20)	NOT NULL,		
	tl_cost	INT		
);

INSERT INTO tbl_triplog(
	tl_type,
	tl_sdate,	tl_stime,	tl_sdistance,	
    tl_edate,	tl_etime,	tl_edistance,
	tl_place,	tl_cost
)VALUES(
	"퇴근",
    "2023-07-14", "07:29:00", "180022",
    "2023-07-14", "08:10:00", "180044",
    "회사", 500
);

SELECT * FROM tbl_triplog;
commit;