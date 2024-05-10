-- member_role_tbl ����
CREATE TABLE member_role_tbl(
member_role_num NUMBER(5),
member_email VARCHAR2(20 CHAR),
member_role VARCHAR2(20 CHAR)
)

-- member_role_tbl �������� �߰�
ALTER TABLE member_role_tbl
ADD CONSTRAINT mrt_member_role_num_pk PRIMARY KEY(member_role_num);

ALTER TABLE member_role_tbl
ADD CONSTRAINT mrt_member_email_fk FOREIGN KEY(member_email)
REFERENCES member_tbl(member_email) ON DELETE CASCADE;

-- member_role_tbl �ڸ�Ʈ ����
COMMENT ON COLUMN member_role_tbl.member_role_num IS 'ȸ�� ��� ��ȣ(������)';

COMMENT ON COLUMN member_role_tbl.member_role_num IS 'ȸ�� �̸���(�ܷ�Ű)';

COMMENT ON COLUMN member_role_tbl.member_role_num IS 'ȸ�� ���';

-- member_role_tbl ������ ����
CREATE SEQUENCE member_role_tbl_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE;