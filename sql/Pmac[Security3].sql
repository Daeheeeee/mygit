-- Spring Session JDBC (이 라이브러리를 사용하면 기본적으로 생성해야 됩니다)

CREATE TABLE SPRING_SESSION (
	PRIMARY_ID CHAR(36) NOT NULL,
	SESSION_ID CHAR(36) NOT NULL,
	CREATION_TIME NUMBER(19,0) NOT NULL,
	LAST_ACCESS_TIME NUMBER(19,0) NOT NULL,
	MAX_INACTIVE_INTERVAL NUMBER(10,0) NOT NULL,
	EXPIRY_TIME NUMBER(19,0) NOT NULL,
	PRINCIPAL_NAME VARCHAR2(100 CHAR),
	CONSTRAINT SPRING_SESSION_PK PRIMARY KEY (PRIMARY_ID)
);

CREATE UNIQUE INDEX SPRING_SESSION_IX1 ON SPRING_SESSION (SESSION_ID);
CREATE INDEX SPRING_SESSION_IX2 ON SPRING_SESSION (EXPIRY_TIME);
CREATE INDEX SPRING_SESSION_IX3 ON SPRING_SESSION (PRINCIPAL_NAME);

CREATE TABLE SPRING_SESSION_ATTRIBUTES (
	SESSION_PRIMARY_ID CHAR(36) NOT NULL,
	ATTRIBUTE_NAME VARCHAR2(200 CHAR) NOT NULL,
	ATTRIBUTE_BYTES BLOB NOT NULL,
	CONSTRAINT SPRING_SESSION_ATTRIBUTES_PK PRIMARY KEY (SESSION_PRIMARY_ID, ATTRIBUTE_NAME),
	CONSTRAINT SPRING_SESSION_ATTRIBUTES_FK FOREIGN KEY (SESSION_PRIMARY_ID) REFERENCES SPRING_SESSION(PRIMARY_ID) ON DELETE CASCADE
);


CREATE TABLE persistent_logins (
   username varchar(64) not null, 
   series varchar(64) primary key, 
   token varchar(64) not null, 
   last_used timestamp not null
); 