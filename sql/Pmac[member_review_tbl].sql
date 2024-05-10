-- ��� ���� ���̺� ����
CREATE TABLE member_review_tbl(
member_review_num NUMBER(5),
camp_id NUMBER(10),
member_nickname VARCHAR2(20 CHAR),
member_review_content VARCHAR2(500 CHAR),
member_review_image VARCHAR2(500 CHAR),
member_review_og_image VARCHAR2(500 CHAR)
)

-- ��� ���� ���̺� �������� �߰�
ALTER TABLE member_review_tbl
ADD CONSTRAINT mrt_member_review_num_pk PRIMARY KEY(member_review_num);

--ALTER TABLE member_review_tbl
--ADD CONSTRAINT mrt_camp_id_fk FOREIGN KEY(camp_id) 
--REFERENCES camp_info_tbl(camp_id) ON DELETE CASCADE;

ALTER TABLE member_review_tbl
MODIFY (member_nickname CONSTRAINT mrt_member_nickname_nn NOT NULL);

ALTER TABLE member_review_tbl
MODIFY (member_review_content CONSTRAINT mrt_member_review_content_nn NOT NULL);

-- ��� ���� ���̺� �ڸ�Ʈ ����
COMMENT ON COLUMN member_review_tbl.member_review_num IS 'ȸ�� ���� ��� ��ȣ(������)';

COMMENT ON COLUMN member_review_tbl.camp_id IS 'ķ���� ���̵�(�ܷ�Ű)';

COMMENT ON COLUMN member_review_tbl.member_nickname IS 'ȸ�� �г���';

COMMENT ON COLUMN member_review_tbl.member_review_content IS 'ȸ�� ���� ���� ����';

COMMENT ON COLUMN member_review_tbl.member_review_image IS 'ȸ�� ���� �̹���(��ȣȭ)';

COMMENT ON COLUMN member_review_tbl.member_review_og_image IS 'ȸ�� ���� �̹���(����)';

-- member_review_tbl ������ ����
CREATE SEQUENCE member_review_tbl_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 99999
    NOCYCLE;