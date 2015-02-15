/* ==========================================================================================  */
/* =============================  IB_CONF_COMPONENT 业务模块组件管理表    =============================  */
/* ==========================================================================================  */
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0000','designmanage','设计部模块','0','sModule');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0001','designmanage','表存储设计器','designmanage0000','Table');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0002','designmanage','表单设计器','designmanage0000','Form');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0003','designmanage','流程表设计器','designmanage0000','BpmTable');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0004','designmanage','流程表单设计器','designmanage0000','BpmForm');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('designmanage0005','designmanage','流程设计器','designmanage0000','Bpm');
/* ================= 菜单管理表  ==================   */
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('designmanageOne','设计部模块','1','#','URL','7','0');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME, MENUORDER,PARENTID) VALUES('designmanageTwo1','设计','2','#','URL','1','designmanageOne');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME, MENUORDER,PARENTID) VALUES('designmanageThree11','自动报价页面','3','/autoquote/autoquote-input.do','URL','1','designmanageTwo1');

/*===============   菜单和角色模板关联表  =============================*/
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('designmanageOne','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('designmanageTwo1','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('designmanageThree11','2');

/* ================================================================================   */
/* ================================ 自动报价页面   =================================   */
/* ================================================================================   */
/*======= 表单 ==========*/
insert into ib_conf_form(ID,PACKAGENAME,FORMNAME,FORMTITLE,FORMURL, ISEDIT,ISADD,ISDELETE,ISQUERY,ISEXCELEXPORT,ISIMPORTEXPORT,ISBPMFORM) values ('d517fbb9-edbb-439e-a006-5c65523a6aa8','designmanage','AUTOQUOTE','自动报价页面','/autoquote/autoquote-list.do',1,1,1,2,2,2,2);
/*======= 表单对应表 ==========*/
insert into ib_conf_form_table(PACKAGENAME,FORMNAME,TABLENAME,TABLETYPE) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE','main');
/*======= 表单字段 ==========*/
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.CEILINGAREA','吊顶面积','CEILINGAREA','IB_AUTOQUOTE',1,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.TILEAREA','瓷砖面积','TILEAREA','IB_AUTOQUOTE',2,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.FLOORAREA','地板面积','FLOORAREA','IB_AUTOQUOTE',3,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.PAINTAREA','墙漆/涂料面积','PAINTAREA','IB_AUTOQUOTE',4,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.TOTALBUILDAREA','总建筑面积','TOTALBUILDAREA','IB_AUTOQUOTE',5,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.TOTALUSERAREA','总使用面积','TOTALUSERAREA','IB_AUTOQUOTE',6,'5','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('designmanage','AUTOQUOTE','IB_AUTOQUOTE.TOTALAMOUNT','总金额','TOTALAMOUNT','IB_AUTOQUOTE',7,'5','','','1','1','2','1','','');
/*======= 表 ==========*/
insert into ib_conf_table(ID,PACKAGENAME,TABLENAME,TABLENAMECOMMENT,TABLETYPE, PARENTTABLEID,ISBPMTABLE) values ('01cca85e-8738-4c79-b605-9e6dfa7c04ab','designmanage','IB_AUTOQUOTE','自动报价','1','null',2);
/*======= 表字段 ==========*/
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','CEILINGAREA','吊顶面积','NUMBER','12,2','是','',1);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','TILEAREA','瓷砖面积','NUMBER','12,2','是','',2);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','FLOORAREA','地板面积','NUMBER','12,2','是','',3);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','PAINTAREA','墙漆/涂料面积','NUMBER','12,2','是','',4);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','TOTALBUILDAREA','总建筑面积','NUMBER','12,2','是','',5);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','TOTALUSERAREA','总使用面积','NUMBER','12,2','是','',6);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','TOTALAMOUNT','总金额','NUMBER','15,2','是','',7);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','ID','UUID主键','VARCHAR','64','否','',91);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_AUTOQUOTE','SCOPEID','范围','VARCHAR','64','否','',92);
