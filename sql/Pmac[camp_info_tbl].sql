-- ķ���� ���� ���̺� ����
create table camp_info_tbl (
	id 						NUMBER(10),
	camp_name				VARCHAR2(100 char),
	cate1					VARCHAR2(100 char),
	cate2					VARCHAR2(100 char),
	cate3					VARCHAR2(100 char),
	sido_name				VARCHAR2(30 char),
	sigugun_name			VARCHAR2(30 char),
	eupmyundong_name		VARCHAR2(30 char),
	ry_name					VARCHAR2(30 char),
	bunji_name				VARCHAR2(30 char),
	road_name				VARCHAR2(30 char),
	building_num			VARCHAR2(30 char),
	latitude				NUMBER(8,4),
	longitude				NUMBER(8,4),
	zip						VARCHAR2(5 char),
	road_address			VARCHAR2(300 char),
	jibun_address			VARCHAR2(300 char),
	phone					VARCHAR2(20 char),
	homepage				VARCHAR2(300 char),
	vendor					VARCHAR2(100 char),
	weekday_op_status		VARCHAR2(20 char),
	weekend_op_status		VARCHAR2(20 char),
	spring_op_status		VARCHAR2(20 char),
	summer_op_status		VARCHAR2(20 char),
	fall_op_status			VARCHAR2(20 char),
	winter_op_status		VARCHAR2(20 char),
	facil_electricity		VARCHAR2(20 char),
	facil_hot_water			VARCHAR2(20 char),
	facil_wifi				VARCHAR2(20 char),
	facil_campfire			VARCHAR2(20 char),
	facil_trail				VARCHAR2(20 char),
	facil_pool				VARCHAR2(20 char),
	facil_playground		VARCHAR2(20 char),
	facil_mart				VARCHAR2(20 char),
	facil_restroom			VARCHAR2(4 char),
	facil_showerroom		VARCHAR2(4 char),
	facil_sink				VARCHAR2(4 char),
	facil_extinguisher		VARCHAR2(10 char),
	surr_facil_fishing		VARCHAR2(30 char),
	surr_facil_trail		VARCHAR2(30 char),
	surr_facil_beach		VARCHAR2(30 char),
	surr_facil_maritime_leisure	VARCHAR2(30 char),
	surr_facil_valley		VARCHAR2(30 char),
	surr_facil_stream		VARCHAR2(30 char),
	surr_facil_pool			VARCHAR2(30 char),
	surr_facil_youth_experience	VARCHAR2(30 char),
	surr_facil_rural_experience	VARCHAR2(30 char),
	surr_facil_childrens_play	VARCHAR2(30 char),
	glam_bed				VARCHAR2(30 char),
	glam_tv					VARCHAR2(30 char),
	glam_freezer			VARCHAR2(30 char),
	glam_internet			VARCHAR2(30 char),
	glam_restroom			VARCHAR2(30 char),
	glam_aircon				VARCHAR2(30 char),
	glam_heater				VARCHAR2(30 char),
	glam_cookware			VARCHAR2(30 char),
	facil_characteristics	VARCHAR2(1000 char),
	facil_detail			LONG,
	reg_date				CHAR(10)
);

-- ķ���� ���� ���̺� �������� �߰�
ALTER TABLE camp_info_tbl
ADD CONSTRAINT camp_info_tbl_pk PRIMARY KEY(id);


-- ķ���� ���� ���̺� �ڸ�Ʈ ����
COMMENT ON COLUMN camp_info_tbl.id	is '���̵�';
COMMENT ON COLUMN camp_info_tbl.camp_name	is '�ü���';
COMMENT ON COLUMN camp_info_tbl.cate1	is 'ī�װ�1';
COMMENT ON COLUMN camp_info_tbl.cate2	is 'ī�װ�2';
COMMENT ON COLUMN camp_info_tbl.cate3	is 'ī�װ�3';
COMMENT ON COLUMN camp_info_tbl.sido_name	is '�õ� ��Ī';
COMMENT ON COLUMN camp_info_tbl.sigugun_name	is '�ñ��� ��Ī';
COMMENT ON COLUMN camp_info_tbl.eupmyundong_name	is '�������鵿��Ī';
COMMENT ON COLUMN camp_info_tbl.ry_name	is '�� ��Ī';
COMMENT ON COLUMN camp_info_tbl.bunji_name	is '����';
COMMENT ON COLUMN camp_info_tbl.road_name	is '���θ� �̸�';
COMMENT ON COLUMN camp_info_tbl.building_num	is '�ǹ� ��ȣ';
COMMENT ON COLUMN camp_info_tbl.latitude	is '����';
COMMENT ON COLUMN camp_info_tbl.longitude	is '�浵';
COMMENT ON COLUMN camp_info_tbl.zip	is '�����ȣ';
COMMENT ON COLUMN camp_info_tbl.road_address	is '���θ��ּ�';
COMMENT ON COLUMN camp_info_tbl.jibun_address	is '�����ּ�';
COMMENT ON COLUMN camp_info_tbl.phone	is '��ȭ��ȣ';
COMMENT ON COLUMN camp_info_tbl.homepage	is 'Ȩ������';
COMMENT ON COLUMN camp_info_tbl.vendor	is '�����ü';
COMMENT ON COLUMN camp_info_tbl.weekday_op_status	is '���� � ����';
COMMENT ON COLUMN camp_info_tbl.weekend_op_status	is '�ָ� � ����';
COMMENT ON COLUMN camp_info_tbl.spring_op_status	is '�� � ����';
COMMENT ON COLUMN camp_info_tbl.summer_op_status	is '���� � ����';
COMMENT ON COLUMN camp_info_tbl.fall_op_status	is '���� � ����';
COMMENT ON COLUMN camp_info_tbl.winter_op_status	is '�ܿ� � ����';
COMMENT ON COLUMN camp_info_tbl.facil_electricity	is '�δ�ü� ����';
COMMENT ON COLUMN camp_info_tbl.facil_hot_water	is '�δ�ü� �¼�';
COMMENT ON COLUMN camp_info_tbl.facil_wifi	is '�δ�ü� �������ͳ�';
COMMENT ON COLUMN camp_info_tbl.facil_campfire	is '�δ�ü� �����Ǹ�';
COMMENT ON COLUMN camp_info_tbl.facil_trail	is '�δ�ü� ��å��';
COMMENT ON COLUMN camp_info_tbl.facil_pool	is '�δ�ü� ��������';
COMMENT ON COLUMN camp_info_tbl.facil_playground	is '�δ�ü� ������';
COMMENT ON COLUMN camp_info_tbl.facil_mart	is '�δ�ü� ��Ʈ';
COMMENT ON COLUMN camp_info_tbl.facil_restroom	is '�δ�ü� ȭ��� ��';
COMMENT ON COLUMN camp_info_tbl.facil_showerroom	is '�δ�ü� ������ ��';
COMMENT ON COLUMN camp_info_tbl.facil_sink	is '�δ�ü� ��ũ�� ��';
COMMENT ON COLUMN camp_info_tbl.facil_extinguisher	is '�δ�ü� ��ȭ�� ��';
COMMENT ON COLUMN camp_info_tbl.surr_facil_fishing	is '�ֺ� �ü� ����';
COMMENT ON COLUMN camp_info_tbl.surr_facil_trail	is '�ֺ� �ü� ��å��';
COMMENT ON COLUMN camp_info_tbl.surr_facil_beach	is '�ֺ� �ü� ������(�ؼ���)';
COMMENT ON COLUMN camp_info_tbl.surr_facil_maritime_leisure	is '�ֺ� �ü� ������(������)';
COMMENT ON COLUMN camp_info_tbl.surr_facil_valley	is '�ֺ� �ü� ������(���)';
COMMENT ON COLUMN camp_info_tbl.surr_facil_stream	is '�ֺ� �ü� ������(��)';
COMMENT ON COLUMN camp_info_tbl.surr_facil_pool	is '�ֺ� �ü� ������(������)';
COMMENT ON COLUMN camp_info_tbl.surr_facil_youth_experience	is '�ֺ� �ü� û�ҳ�ü��ü�';
COMMENT ON COLUMN camp_info_tbl.surr_facil_rural_experience	is '�ֺ� �ü� �����ü��ü�';
COMMENT ON COLUMN camp_info_tbl.surr_facil_childrens_play	is '�ֺ� �ü� ��̳��̽ü�';
COMMENT ON COLUMN camp_info_tbl.glam_bed	is '�۷��� ħ��';
COMMENT ON COLUMN camp_info_tbl.glam_tv	is '�۷��� Ƽ��';
COMMENT ON COLUMN camp_info_tbl.glam_freezer	is '�۷��� �����';
COMMENT ON COLUMN camp_info_tbl.glam_internet	is '�۷��� ���������ͳ�';
COMMENT ON COLUMN camp_info_tbl.glam_restroom	is '�۷��� ����ȭ���';
COMMENT ON COLUMN camp_info_tbl.glam_aircon	is '�۷��� ������';
COMMENT ON COLUMN camp_info_tbl.glam_heater	is '�۷��� ����ⱸ';
COMMENT ON COLUMN camp_info_tbl.glam_cookware	is '�۷��� ��絵��';
COMMENT ON COLUMN camp_info_tbl.facil_characteristics	is '�ü� Ư¡';
COMMENT ON COLUMN camp_info_tbl.facil_detail	is '�ü� �Ұ�';
COMMENT ON COLUMN camp_info_tbl.reg_date	is '�����ۼ���';

-- ķ���� ���� ���̺� ������ ����
CREATE SEQUENCE camp_info_tbl_seq
MINVALUE 1
MAXVALUE 9999999999
INCREMENT BY 1
START WITH 1
NOCYCLE;