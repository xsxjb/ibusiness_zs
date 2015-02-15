/* ==========================================================================================  */
/* =============================  IB_CONF_COMPONENT 业务模块组件管理表    =============================  */
/* ==========================================================================================  */
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0000','worksmanage','工程部管理','0','sModule');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0001','worksmanage','表存储设计器','worksmanage0000','Table');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0002','worksmanage','表单设计器','worksmanage0000','Form');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0003','worksmanage','流程表设计器','worksmanage0000','BpmTable');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0004','worksmanage','流程表单设计器','worksmanage0000','BpmForm');
INSERT INTO IB_CONF_COMPONENT(ID,PACKAGENAME,MODULENAME,PARENTID,TYPEID) VALUES('worksmanage0005','worksmanage','流程设计器','worksmanage0000','Bpm');
/* ================= 菜单管理表  ==================   */
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('worksmanageOne','工程部管理','1','#','URL','6','0');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME,MENUORDER,PARENTID) VALUES('worksmanageTwo2','施工管理','2','#','URL','1','worksmanageOne');
INSERT INTO IB_MENU(ID,MENUNAME,MENULEVEL,MENUURL,MENUIFRAME, MENUORDER,PARENTID) VALUES('worksmanageThree21','工程施工计划','3','/works_plan/works_plan-list.do','URL','1','worksmanageTwo2');

/*===============   菜单和角色模板关联表  =============================*/
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('worksmanageOne','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('worksmanageTwo2','2');
INSERT INTO IB_MENU_ROLE_DEF(MENU_ID,ROLE_DEF_ID) VALUES('worksmanageThree21','2');

/* ================================================================================   */
/* ================================ 工程施工计划表  =================================   */
/* ================================================================================   */
/*======= 表单 ==========*/
 insert into ib_conf_form(ID,PACKAGENAME,FORMNAME,FORMTITLE,FORMURL, ISEDIT,ISADD,ISDELETE,ISQUERY,ISEXCELEXPORT,ISIMPORTEXPORT,ISBPMFORM) values ('worksmanage-worksPlan0001','worksmanage','worksPlan','工程施工计划','/works_plan/works_plan-list.do',1,1,1,1,1,2,2);
/*======= 表单对应表 ==========*/
insert into ib_conf_form_table(PACKAGENAME,FORMNAME,TABLENAME,TABLETYPE) values ('worksmanage','worksPlan','IB_WORKS_PLAN','main');
insert into ib_conf_form_table(PACKAGENAME,FORMNAME,TABLENAME,TABLETYPE) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S','sub');
/*======= 表单字段 ==========*/
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PROJECTNO','项目编号','PROJECTNO','IB_WORKS_PLAN',1,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.SCOPEID','范围ID','SCOPEID','IB_WORKS_PLAN',2,'1','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PROJECTNAME','项目名称','PROJECTNAME','IB_WORKS_PLAN',2,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PROJECTTYPE','项目类型','PROJECTTYPE','IB_WORKS_PLAN',3,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.CUSTOMERNAME','客户名称','CUSTOMERNAME','IB_WORKS_PLAN',4,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PRODUCTMANAGE','项目负责人','PRODUCTMANAGE','IB_WORKS_PLAN',5,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.WORKINGDAY','工作日','WORKINGDAY','IB_WORKS_PLAN',15,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.STARTTIME','开始时间','STARTTIME','IB_WORKS_PLAN',16,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.ENDTIME','总结束时间','ENDTIME','IB_WORKS_PLAN',17,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.BUYSTARTTIME','采购开始时间','BUYSTARTTIME','IB_WORKS_PLAN',18,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.BUYENDTIME','采购结束时间','BUYENDTIME','IB_WORKS_PLAN',19,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PRODSTARTTIME','生产开始时间','PRODSTARTTIME','IB_WORKS_PLAN',20,'3','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PRODENDTIME','生产结束时间','PRODENDTIME','IB_WORKS_PLAN',21,'3','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PRODOUTSTARTTIME','生产外协开始时间','PRODOUTSTARTTIME','IB_WORKS_PLAN',22,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN.PRODOUTENDTIME','生产外协结束时间','PRODOUTENDTIME','IB_WORKS_PLAN',23,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.PROJECTNAME','项目名称','PROJECTNAME','IB_WORKS_PLAN_S',2,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.PRODUCTIONMODE','生产方式','PRODUCTIONMODE','IB_WORKS_PLAN_S',5,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.PRODUCTIONADDRESS','生产场地','PRODUCTIONADDRESS','IB_WORKS_PLAN_S',6,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.WORKINGDAY','工作日','WORKINGDAY','IB_WORKS_PLAN_S',13,'1','','','1','1','2','','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.STARTTIME','计划开始时间','STARTTIME','IB_WORKS_PLAN_S',14,'3','','','1','1','2','1','','');
insert into ib_conf_form_table_colums(PACKAGENAME,FORMNAME,FORMCOLUMN,FORMCOLUMNTITLE,TABLECOLUMN, TABLENAME,COLUMNNO,FCTYPE,FCWIDTH,FCHEIGHT,FCDISPLAY,FCEDIT,FCQUERY,FCMUST,FCDEFAULT, CONFSELECTINFO) values ('worksmanage','worksPlan','IB_WORKS_PLAN_S.ENDTIME','计划结束时间','ENDTIME','IB_WORKS_PLAN_S',15,'3','','','1','1','2','1','','');
/*======= 表 ==========*/
insert into ib_conf_table(ID,PACKAGENAME,TABLENAME,TABLENAMECOMMENT,TABLETYPE, PARENTTABLEID,ISBPMTABLE) values ('IB_WORKS_PLAN001','worksmanage','IB_WORKS_PLAN','工程施工计划表','1','null',2);
insert into ib_conf_table(ID,PACKAGENAME,TABLENAME,TABLENAMECOMMENT,TABLETYPE, PARENTTABLEID,ISBPMTABLE) values ('IB_WORKS_PLAN_S0001','worksmanage','IB_WORKS_PLAN_S','工程施工计划子表','2','null',2);
/*======= 表字段 ==========*/
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PROJECTNO','项目编号','VARCHAR','64','是','',1);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PROJECTNAME','项目名称','VARCHAR','64','是','',2);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PROJECTTYPE','项目类型','VARCHAR','16','是','',3);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','CUSTOMERNAME','客户名称','VARCHAR','64','是','',4);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PRODUCTMANAGE','项目负责人','VARCHAR','64','是','',5);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','WORKINGDAY','工作日','NUMBER','8','是','',15);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','STARTTIME','总开始时间','DATE','0','是','',16);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','ENDTIME','总结束时间','DATE','0','是','',17);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','BUYSTARTTIME','采购开始时间','DATE','0','是','',18);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','BUYENDTIME','采购结束时间','DATE','0','是','',19);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PRODSTARTTIME','施工开始时间','DATE','0','是','',20);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PRODENDTIME','施工结束时间','DATE','0','是','',21);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PRODOUTSTARTTIME','施工外协开始时间','DATE','0','是','',22);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','PRODOUTENDTIME','施工外协结束时间','DATE','0','是','',23);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','ID','UUID主键','VARCHAR','64','否','',91);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN','SCOPEID','范围ID','VARCHAR','64','是','',92);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','PROJECTNAME','施工科目名称','VARCHAR','128','是','',2);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','PRODUCTIONMODE','施工方式','VARCHAR','64','是','',5);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','PRODUCTIONADDRESS','施工场地','VARCHAR','128','是','',6);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','WORKINGDAY','工作日','NUMBER','8','是','',13);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','STARTTIME','计划开始时间','DATE','0','是','',14);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','ENDTIME','计划结束时间','DATE','0','是','',15);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','ID','UUID主键','VARCHAR','64','否','',91);
insert into ib_conf_table_columns(tableName,columnValue,columnName,columnType,columnSize, isNull,defaultValue,columnNo) values ('IB_WORKS_PLAN_S','PARENTID','主表UUID','VARCHAR','64','否','',92);

