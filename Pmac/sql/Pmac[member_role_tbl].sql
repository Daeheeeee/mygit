-- member_role_tbl 생성
CREATE TABLE member_role_tbl(
member_role_num NUMBER(5),
member_email VARCHAR2(20 CHAR),
member_role VARCHAR2(20 CHAR)
)

-- member_role_tbl 제약조건 추가
ALTER TABLE member_role_tbl
ADD CONSTRAINT mrt_member_role_num_pk PRIMARY KEY(member_role_num);

ALTER TABLE member_role_tbl
ADD CONSTRAINT mrt_member_email_fk FOREIGN KEY(member_email)
REFERENCES member_tbl(member_email) ON DELETE CASCADE;

-- member_role_tbl 코멘트 생성
COMMENT ON COLUMN member_role_tbl.member_role_num IS '회원 등급 번호(시퀀스)';

COMMENT ON COLUMN member_role_tbl.member_role_num IS '회원 이메일(외래키)';

COMMENT ON COLUMN member_role_tbl.member_role_num IS '회원 등급';

-- member_role_tbl 시퀀스 생성
CREATE SEQUENCE member_role_tbl_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE;