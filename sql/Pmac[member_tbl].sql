-- ��� ���̺� ����
CREATE TABLE member_tbl(
member_num NUMBER(5),
member_name VARCHAR2(20 CHAR),
member_email VARCHAR2(20 CHAR),
member_nickname VARCHAR2(20 CHAR),
member_provider VARCHAR2(10 CHAR)
)

-- ��� ���̺� �������� �߰�
ALTER TABLE member_tbl
ADD CONSTRAINT mt_member_num_pk PRIMARY KEY(member_num);

ALTER TABLE member_tbl
ADD CONSTRAINT mt_member_nickname_uq UNIQUE(member_nickname);

ALTER TABLE member_tbl
ADD CONSTRAINT mt_member_email_uq UNIQUE(member_email);

ALTER TABLE member_tbl
MODIFY (member_nickname CONSTRAINT mt_member_nickname_nn NOT NULL);

-- ��� ���̺� �ڸ�Ʈ �߰�
COMMENT ON COLUMN member_tbl.member_num IS 'ȸ�� ��ȣ(������)';

COMMENT ON COLUMN member_tbl.member_name IS 'ȸ�� �Ǹ�';

COMMENT ON COLUMN member_tbl.member_email IS 'ȸ�� �̸���(OAuth ID)';

COMMENT ON COLUMN member_tbl.member_nickname IS 'ȸ�� �г���(�츮 ����Ʈ ����)';

COMMENT ON COLUMN member_tbl.member_provider IS 'OAuth ���� ������ü(����, ���̹�)';

-- member_tbl ������ ����
CREATE SEQUENCE member_tbl_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 99999
    NOCYCLE;
