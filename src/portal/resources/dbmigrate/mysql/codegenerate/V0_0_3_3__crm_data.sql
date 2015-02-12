/* =============================  IB_CONF_COMPONENT 业务模块组件管理表 ---  商务管理  =============================  */
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10001','crmmanage','商务管理','0','sModule');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10002','crmmanage','表存储设计器','crmmanage10001','Table');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10003','crmmanage','表单设计器','crmmanage10001','Form');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10004','crmmanage','流程表设计器','crmmanage10001','BpmTable');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10005','crmmanage','流程表单设计器','crmmanage10001','BpmForm');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('crmmanage10006','crmmanage','流程设计器','crmmanage10001','Bpm');

/* ================= 菜单管理表  ==================   */
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageOne','商务管理','1','#','URL','4','0');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageTwo1','客户管理','2','#','URL','1','crmmanageOne');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageTwo2','供应商管理','2','#','URL','1','crmmanageOne');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageThree1','客户信息管理','3','/customer_info/customer_info-list.do','URL','1','crmmanageTwo1');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageThree2','客户分布图','3','/map/init-map-base.do','URL','3','crmmanageTwo1');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageThree3','地图基础信息配置','3','/map/map-conf-input.do','URL','3','crmmanageTwo1');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('crmmanageThree4','供应商管理','3','/supplier/supplier-list.do','URL','2','crmmanageTwo2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageOne','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageTwo1','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageTwo2','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageThree1','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageThree2','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageThree3','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('crmmanageThree4','2');

/* ============================= 业务表管理表 =============================   */
INSERT INTO IB_CONF_TABLE(ID,PACKAGENAME,TABLENAME,TABLENAMECOMMENT,TABLETYPE,ISBPMTABLE) VALUES('ib_supplier10001','crmmanage','IB_SUPPLIER','原材料供应商维护','1',2);

/* ============================= 表列字段管理表  ============================= */
/* ====== 客户信息表 =====  */
/*======= 表单字段 ==========*/
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.CUSTOMERNO','客户编号','CUSTOMERNO','IB_CUSTOMER_INFO',1,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.CUSTOMERSTATE','客户状态','CUSTOMERSTATE','IB_CUSTOMER_INFO',2,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.CUSTOMERADDRESS','客户地址','CUSTOMERADDRESS','IB_CUSTOMER_INFO',5,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.PHONE','手机','PHONE','IB_CUSTOMER_INFO',6,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.TELEPHONE','联系电话','TELEPHONE','IB_CUSTOMER_INFO',7,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.SALESMANAGER','负责经理','SALESMANAGER','IB_CUSTOMER_INFO',8,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.CUSTOMERNAME','客户名称','CUSTOMERNAME','IB_CUSTOMER_INFO',10,'1','','','1','1','1','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.INFOSOURCE','信息来源','INFOSOURCE','IB_CUSTOMER_INFO',11,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.PROVINCE','省','PROVINCE','IB_CUSTOMER_INFO',13,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('crmmanage','customerInfo','IB_CUSTOMER_INFO.CITY','市','CITY','IB_CUSTOMER_INFO',14,'1','','','1','1','2','','','');
/*======= 表 ==========*/
insert into ib_conf_table(ID,PACKAGENAME,TABLENAME,TABLENAMECOMMENT,TABLETYPE, PARENTTABLEID,ISBPMTABLE) values ('ib_customer_info10001','crmmanage','IB_CUSTOMER_INFO','客户信息表','1','null',2);
/*======= 表字段 ==========*/
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','CUSTOMERNO','客户编号','VARCHAR','64','是','',1);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','CUSTOMERSTATE','客户状态','VARCHAR','16','是','',2);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','CUSTOMERADDRESS','客户地址','VARCHAR','512','是','',5);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','PHONE','手机','VARCHAR','32','是','',6);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','TELEPHONE','联系电话','VARCHAR','32','是','',7);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','SALESMANAGER','负责经理','VARCHAR','32','是','',8);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','CUSTOMERNAME','客户名称','VARCHAR','64','是','',10);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','INFOSOURCE','信息来源','VARCHAR','16','是','',11);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','PROVINCE','省','VARCHAR','16','是','',13);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','CITY','市','VARCHAR','16','是','',14);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_CUSTOMER_INFO','ID','UUID主键','VARCHAR','64','否','',91);
/* ====================== 客户信息管理 ======================= */
/* ====================== 客户信息表  初始数据 插入 ======================= */
insert into ib_customer_info(ID,CUSTOMERNO,CUSTOMERSTATE,CUSTOMERNAME,CUSTOMERADDRESS,PHONE,TELEPHONE,SALESMANAGER,INFOSOURCE,PROVINCE,CITY) values ('402880174a1db391014a1db4f6580000','100001','1','哈尔滨第一销售公司','哈尔滨市南岗区XX街道','13333344444','84644444','张经理','1','黑龙江','哈尔滨');
insert into ib_customer_info(ID,CUSTOMERNO,CUSTOMERSTATE,CUSTOMERNAME,CUSTOMERADDRESS,PHONE,TELEPHONE,SALESMANAGER,INFOSOURCE,PROVINCE,CITY) values ('402880174a1db391014a1db4f6c50001','100002','1','哈尔滨第二开发公司','哈尔滨市道理区XX街道1','13333344445','84655555','王经理','2','黑龙江','哈尔滨');


/* ====== 原材料供应商维护表 =====  */
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','ACCOUNTNO','帐号','VARCHAR','32','是','',28);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','BENEFICIARY','开户行','VARCHAR','128','是','',26);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','BUSINESSCONTACTS','业务联系人','VARCHAR','16','是','',17);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','CATEGORY','类别','VARCHAR','8','是','',3);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','UNITCHARACTER','企业性质','VARCHAR','16','是','',6);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','COMPANYFAX','公司传真','VARCHAR','16','是','',11);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','COMPANYPHONE','公司电话','VARCHAR','16','是','',10);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','CONTACTFAX','联系人传真','VARCHAR','16','是','',20);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','CONTACTMOBILEPHONE','联系人手机','VARCHAR','16','是','',19);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','CONTACTTELEPHONE','联系人电话','VARCHAR','16','是','',18);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','ENROLLTIME','注册时间','VARCHAR','16','是','',8);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','ESTINATIONCITY','目的地城市','VARCHAR','128','是','',35);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','FINANCIALCALL','财务电话','VARCHAR','16','是','',22);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','FINANCIALCONTACTS','财务联系人','VARCHAR','16','是','',21);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','FINANCIALFAX','财务传真','VARCHAR','16','是','',24);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','FINANCIALPHONE','财务手机','VARCHAR','16','是','',23);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','ID','UUID主键','VARCHAR','64','否',NULL,91);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','INFORMATION','填表人','VARCHAR','32','是','',1);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','PRODUCT','供应产品','VARCHAR','32','是','',12);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','REGISTERED','注册资本','VARCHAR','16','是','',7);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','REMITTANCENAME','汇款单位名称','VARCHAR','128','是','',25);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','SUPPLIERNUMBER','供应商编号','VARCHAR','32','是','',2);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','TAXNO','税号','VARCHAR','32','是','',27);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','TELEPHONE','固定电话','VARCHAR','16','是','',33);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','UNITNAME','企业名称','VARCHAR','128','是','',4);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','UPDATAS','上传资料','VARCHAR','256','是','',36);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','URL','网址','VARCHAR','32','是','',9);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','USERADDRESS','企业地址','VARCHAR','128','是','',5);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','USERFAX','负责人传真','VARCHAR','16','是','',16);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','USERMOBILEPHONE','负责人手机','VARCHAR','16','是','',15);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','USERPERSON','企业负责人','VARCHAR','16','是','',13);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','USERPHONE','负责人电话','VARCHAR','16','是','',14);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','YOURADDRESS','收件地址','VARCHAR','128','是','',30);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','YOURCOMPANY','收件公司','VARCHAR','128','是','',29);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','YOURNAME','收件人姓名','VARCHAR','32','是','',31);
INSERT INTO ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize,isNull,defaultValue,columnNo) VALUES ('IB_SUPPLIER','YOURPHONE','联系电话','VARCHAR','16','是','',32);

/* ============================= 表单管理表 =============================  */
INSERT INTO ib_conf_form(ID,PACKAGENAME,FORMNAME,FORMTITLE,ISEDIT,ISADD,ISDELETE,ISQUERY,ISEXCELEXPORT,ISIMPORTEXPORT,ISBPMFORM,FORMURL) VALUES('customerInfo001','crmmanage','customerInfo','客户信息管理',1,1,1,1,1,1,2,'/customer_info/customer_info-list.do');
INSERT INTO ib_conf_form(ID,PACKAGENAME,FORMNAME,FORMTITLE,ISEDIT,ISADD,ISDELETE,ISQUERY,ISEXCELEXPORT,ISIMPORTEXPORT,ISBPMFORM,FORMURL) VALUES('supplierInfo001','crmmanage','supplierInfo','供应商管理',1,1,1,1,1,1,2,'/supplier/supplier-list.do');

/* ============================= 表单对应数据表管理表 =============================  */
INSERT INTO ib_conf_form_table(PACKAGENAME,FORMNAME,TABLENAME,TABLETYPE) VALUES('crmmanage','customerInfo','IB_CUSTOMER_INFO','main');
INSERT INTO ib_conf_form_table(PACKAGENAME,FORMNAME,TABLENAME,TABLETYPE) VALUES('crmmanage','supplierInfo','IB_SUPPLIER','main');

/* ============================= 表单对应字段管理表 =============================  */
/* ====================== 供应商管理 ======================= */
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.ACCOUNTNO','帐号','ACCOUNTNO','IB_SUPPLIER',28,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.BENEFICIARY','开户行','BENEFICIARY','IB_SUPPLIER',26,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.INFORMATION','填表人','INFORMATION','IB_SUPPLIER',1,'1',NULL,NULL,'1','2','2',NULL,'@USERNAME',NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.UNITNAME','企业名称','UNITNAME','IB_SUPPLIER',4,'1',NULL,NULL,'1','1','1',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.BUSINESSCONTACTS','业务联系人','BUSINESSCONTACTS','IB_SUPPLIER',17,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.CATEGORY','类别','CATEGORY','IB_SUPPLIER',3,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.COMPANYFAX','公司传真','COMPANYFAX','IB_SUPPLIER',11,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.COMPANYPHONE','公司电话','COMPANYPHONE','IB_SUPPLIER',10,'1','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.CONTACTFAX','联系人传真','CONTACTFAX','IB_SUPPLIER',20,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.CONTACTMOBILEPHONE','联系人手机','CONTACTMOBILEPHONE','IB_SUPPLIER',19,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.CONTACTTELEPHONE','联系人电话','CONTACTTELEPHONE','IB_SUPPLIER',18,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.ENROLLTIME','注册时间','ENROLLTIME','IB_SUPPLIER',8,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.ESTINATIONCITY','目的地城市','ESTINATIONCITY','IB_SUPPLIER',35,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.FINANCIALCALL','财务电话','FINANCIALCALL','IB_SUPPLIER',22,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.FINANCIALCONTACTS','财务联系人','FINANCIALCONTACTS','IB_SUPPLIER',21,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.FINANCIALFAX','财务传真','FINANCIALFAX','IB_SUPPLIER',24,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.FINANCIALPHONE','财务手机','FINANCIALPHONE','IB_SUPPLIER',23,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.PRODUCT','供应产品','PRODUCT','IB_SUPPLIER',12,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.REGISTERED','注册资本','REGISTERED','IB_SUPPLIER',7,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.REMITTANCENAME','汇款单位名称','REMITTANCENAME','IB_SUPPLIER',25,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.SUPPLIERNUMBER','供应商编号','SUPPLIERNUMBER','IB_SUPPLIER',2,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.TAXNO','税号','TAXNO','IB_SUPPLIER',27,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.TELEPHONE','固定电话','TELEPHONE','IB_SUPPLIER',33,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.UNITCHARACTER','企业性质','UNITCHARACTER','IB_SUPPLIER',6,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.UPDATAS','上传资料','UPDATAS','IB_SUPPLIER',36,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.URL','网址','URL','IB_SUPPLIER',9,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.USERADDRESS','企业地址','USERADDRESS','IB_SUPPLIER',5,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.USERFAX','负责人传真','USERFAX','IB_SUPPLIER',16,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.USERMOBILEPHONE','负责人手机','USERMOBILEPHONE','IB_SUPPLIER',15,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.USERPERSON','企业负责人','USERPERSON','IB_SUPPLIER',13,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.USERPHONE','负责人电话','USERPHONE','IB_SUPPLIER',14,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.YOURADDRESS','收件地址','YOURADDRESS','IB_SUPPLIER',30,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.YOURCOMPANY','收件公司','YOURCOMPANY','IB_SUPPLIER',29,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.YOURNAME','收件人姓名','YOURNAME','IB_SUPPLIER',31,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN,TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT,CONFSELECTINFO) values ('crmmanage','supplierInfo','IB_SUPPLIER.YOURPHONE','联系电话','YOURPHONE','IB_SUPPLIER',32,'1',NULL,NULL,'1','1','2',NULL,NULL,NULL);
