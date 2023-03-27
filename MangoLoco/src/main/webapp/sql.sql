select * from USER_tables;

CREATE TABLE MEMBERS (
	ID VARCHAR2(100) PRIMARY KEY,
	PW VARCHAR2(100),
	NICK VARCHAR2(100) UNIQUE,
	BALANCE NUMBER(10)
)

CREATE TABLE PRODUCT (
	SEQ NUMBER(10) PRIMARY KEY,
	MODEL VARCHAR2(100) UNIQUE,
	CPU VARCHAR2(100),
	GRAPHIC VARCHAR2(100),
    PRICE NUMBER(10),
    DETAIL VARCHAR2(1000)
)

select * from product

DROP TABLE PRODUCT

CREATE TABLE REVIEW (
	SEQ NUMBER(10) PRIMARY KEY,
	MODEL VARCHAR2(100),
	R_DATE DATE DEFAULT SYSDATE,
	TITLE VARCHAR2(100),
	CONTENT VARCHAR2(1000),
	RATING NUMBER(3)
)

create sequence review_seq
	start with 1
	minvalue 1
	nocycle
	nocache
	noorder

CREATE TABLE BOARD (
	SEQ NUMBER(10) PRIMARY KEY,
	ID VARCHAR2(100),
	NICK VARCHAR2(100),
	TITLE VARCHAR2(100),
	CONTENT VARCHAR2(1000),
	B_DATE DATE DEFAULT SYSDATE,
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID),
	FOREIGN KEY (NICK) REFERENCES MEMBERS (NICK)
)

CREATE TABLE REPLY (
	SEQ NUMBER(10) PRIMARY KEY,
	B_SEQ NUMBER(10),
	ID VARCHAR2(100),
	NICK VARCHAR2(100),
	CONTENT VARCHAR2(1000),
	R_DATE DATE DEFAULT SYSDATE,
	FOREIGN KEY (B_SEQ) REFERENCES BOARD (SEQ),
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID),
	FOREIGN KEY (NICK) REFERENCES MEMBERS (NICK)
)

CREATE TABLE GAMES (
	SEQ NUMBER(10) PRIMARY KEY,
	ID VARCHAR2(100),
	G_DATE DATE DEFAULT SYSDATE,
	SALE_PCT NUMBER(3),
	CEILING NUMBER(10),
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID)
)

CREATE TABLE GAME_HISTORY ( -- PASS : 1이면 성공, 0이면 실패
	SEQ NUMBER(10) PRIMARY KEY,
	G_SEQ NUMBER(10),
	ID VARCHAR2(100),
	PASS NUMBER(1),
	G_DATE DATE DEFAULT SYSDATE,
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID),
	FOREIGN KEY (G_SEQ) REFERENCES GAMES (SEQ)
)

CREATE TABLE COUPONS (
	SEQ NUMBER(10) PRIMARY KEY,
	G_SEQ NUMBER(10),
	NAME VARCHAR2(100),
	USE_FROM DATE DEFAULT SYSDATE,
	USE_TO DATE DEFAULT SYSDATE,
	SALE_PCT NUMBER(3),
	CEILING NUMBER(10),
	FOREIGN KEY (G_SEQ) REFERENCES GAMES (SEQ)
)

CREATE TABLE COUPON_HISTORY ( -- 취득, 사용 같이 / CLASSIFICATION이 1이면 취득, 2이면 사용
	SEQ NUMBER(10) PRIMARY KEY,
	C_SEQ NUMBER(10),
	ID VARCHAR2(100),
	CLASSIFICATION NUMBER(1),
	GET_DATE DATE DEFAULT SYSDATE,
	USE_DATE DATE DEFAULT SYSDATE,
	FOREIGN KEY (C_SEQ) REFERENCES COUPONS (SEQ),
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID)
)

CREATE TABLE SHOP_BASKET ( -- 장바구니, 찜 같이 / CLASSIFICATION이 1이면 장바구니, 2이면 찜
	SEQ NUMBER(10) PRIMARY KEY,
	CLASSIFICATION NUMBER(1),
	ID VARCHAR2(100),
	P_SEQ NUMBER(10),
	S_DATE DATE DEFAULT SYSDATE,
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID),
	FOREIGN KEY (P_SEQ) REFERENCES PRODUCT (SEQ)
)

DROP TABLE SHOP_BASKET

CREATE TABLE POINTS ( -- 충전, 지출 같이 / CLASSIFICATION이 1이면 충전, 2이면 지출
	SEQ NUMBER(10) PRIMARY KEY,
	CLASSIFICATION NUMBER(1),
	ID VARCHAR2(100),
	P_DATE DATE DEFAULT SYSDATE,
	PRICE NUMBER(10),
	FOREIGN KEY (ID) REFERENCES MEMBERS (ID)
)

