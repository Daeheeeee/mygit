-- ķ�� �̹��� ���̺� ����
CREATE TABLE camp_image_tbl(
camp_image_num NUMBER(5),
camp_name VARCHAR2(100 CHAR),
camp_image_main VARCHAR2(300 CHAR),
camp_image_sub VARCHAR2(1000 CHAR)
)

-- ķ�� �̹��� ���̺� �������� �߰�
ALTER TABLE camp_image_tbl
ADD CONSTRAINT cit_camp_image_num_pk PRIMARY KEY(camp_image_num);

--ALTER TABLE camp_image_tbl
--ADD CONSTRAINT cit_camp_name_fk FOREIGN KEY(camp_name)
--REFERENCES camp_info_tbl(camp_name) ON DELETE CASCADE;

-- ķ�� �̹��� ���̺� �ڸ�Ʈ ����
COMMENT ON COLUMN camp_image_tbl.camp_image_num IS 'ķ���� �̹��� ��ȣ(������)';

COMMENT ON COLUMN camp_image_tbl.camp_name IS 'ķ���� �̸�(�ܷ�Ű)';

COMMENT ON COLUMN camp_image_tbl.camp_image_main IS 'ķ���� �̹��� ����';

COMMENT ON COLUMN camp_image_tbl.camp_image_sub IS 'ķ���� �̹��� ����';

-- ķ�� �̹��� ���̺� ������ ����
CREATE SEQUENCE camp_image_tbl_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE;