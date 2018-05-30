-- 承建单位信息表
create table CON_BUILD_UNIT_MESS(
	id char(36) PRIMARY KEY ,		-- uuid
	CON_BUILD_UNIT varchar(128) , 		-- 承建单位
	BUSI_LICENSE_NUM varchar(64),		-- 营业执照编号
	ENTER_LEGAL varchar(32) ,		-- 企业法人
	LINKMAN_IPHONE varchar(16) ,		-- 联系人电话
	ENTER_ADDRESS varchar(256),		-- 企业地址
	REMARK text ,				-- 备注
	ENTER_TYPE char(2) ,			-- 企业性质
	SUPER_SATR varchar(32) ,    -- 企业主管
	ENTER_APTITUDE varchar(128) ,		-- 企业资质
	ENTER_CODE varchar(64) ,		-- 企业代码
	ENTER_HONOR varchar(32) ,		-- 企业联系人
	HONER_EMAIL varchar(128) ,		-- 联系人Email
	DEL_SIGN int ,				-- 删除标志
	CREATE_TIME bigint ,			-- 创建日期
	UPDATE_TIME bigint 			-- 更新日期
);


-- 合同基本信息表
CREATE TABLE CON_BASIC_INFOR(
	id char(36) PRIMARY KEY ,		-- uuid
	CON_SERIAL_NUM varchar(32) ,		-- 合同编号
	CON_TYPE char(2) ,			-- 合同类型
	CON_DATE bigint ,			-- 签订日期
	PROJECT_LINKMAN varchar(63) ,		-- 项目联系人
	REMARK text ,				-- 备注
	CON_NAME varchar(64) ,			-- 合同名称
	CON_BUILD_UNIT char(36) ,		-- 承建单位
	CON_AMOUT Decimal(10,2)	,		-- 合同金额
	SEL_BUDGET varchar(63) ,		-- 选择概算
	CON_ACCESS varchar(255) ,		-- 合同附件
	DEL_SIGN int ,				-- 删除标志
	CREATE_TIME bigint ,			-- 创建日期
	UPDATE_TIME bigint 			-- 更新日期
);

-- 合同追加信息
CREATE TABLE CON_ADD_TO_INFOR(
	id char(36) PRIMARY KEY ,		-- uuid
	CON_BASIC_INFOR char(36) ,		-- 合同信息
	CON_SERIAL_NUM varchar(32) ,		-- 合同编号
	ADD_TO_MONEY Decimal(10,2) ,		-- 追加金额
	CON_ACCESS varchar(255)	,		-- 追加附件目录
	DEL_SIGN int ,				-- 删除标志
	CREATE_TIME bigint ,			-- 创建日期
	UPDATE_TIME bigint 			-- 更新日期
);



-- 数据字典
CREATE TABLE DATA_DICTIONARY(
	id char(36) PRIMARY KEY ,		-- uuid
	name varchar(128) ,			-- 字典对应名称
	field char(2) ,				-- 字典名称对应字段
	descri varchar(255) ,			-- 描述
	type_name varchar(64), 			-- 那一类字段
	DEL_SIGN int ,				-- 删除标志
	CREATE_TIME bigint ,			-- 创建日期
	UPDATE_TIME bigint 			-- 更新日期
);








