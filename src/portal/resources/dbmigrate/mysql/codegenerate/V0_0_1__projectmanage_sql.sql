
/*==============================================================*/
/* 项目立项表   */
/*==============================================================*/
DROP TABLE IF EXISTS IB_PROJECT_APPROVAL;
CREATE TABLE IB_PROJECT_APPROVAL (
  ID                             varchar(64) NOT NULL,
  USERNAME             varchar(128) ,
  TASKTITLE              varchar(256) ,
  NODENAME             varchar(128) ,
  EXECUTIONID          varchar(64) ,
  ASSIGNEEUSER       varchar(128) ,
  DONEFLAG              int(11) DEFAULT '0',
  CREATEDATEBPM  datetime ,
  EVENTDATE            varchar(24) ,
  PACTNO                   varchar(64) ,
  CUSTOMERNAME   varchar(64) ,
  PROJECTNO             varchar(64) ,
  PROJECTNAME        varchar(64) ,
  PROJECTTYPE          varchar(16) ,
  SALESUSER              varchar(64) ,
  PROJECTMANAGER varchar(32) ,
  PLANNER                varchar(32) ,
  BUYER                     varchar(32) ,
  PRODUCTMANAGE varchar(32) ,
  PRIMARY KEY (ID)
) ENGINE=INNODB;
/*==============================================================*/
/* 项目立项表 -- 产成品子表   */
/*==============================================================*/
DROP TABLE IF EXISTS IB_PROJECT_PRODUCT_S;
CREATE TABLE IB_PROJECT_PRODUCT_S (
  ID                             varchar(64) NOT NULL,
  PARENTID                varchar(64) ,
  PRODUCTNO            varchar(64) ,
  PRODUCTNAME       varchar(64) ,
  PRODUCTMODEL     varchar(63) ,
  PRODUCTNUMBER   int(10) ,
  PRODUCTUNIT          varchar(12) ,
  UNITPRICE                double(12,2) ,
  AMOUNT                   double(12,2) ,
  PRODUCTTYPE         varchar(32) ,
  PRODUCTFLOWID   varchar(32) ,
  PRIMARY KEY (ID)
) ENGINE=INNODB;
/*==============================================================*/
/* 原料分解表(BOM)   */
/*==============================================================*/
DROP TABLE IF EXISTS IB_BOM;
CREATE TABLE IB_BOM (
  ID varchar(64) NOT NULL DEFAULT '',
  PROJECTNO varchar(64) DEFAULT NULL,
  PROJECTNAME varchar(128) DEFAULT NULL,
  AUDITUSER varchar(64) DEFAULT NULL,
  CUSTOMERNAME varchar(64) DEFAULT NULL,
  DESIGNUSER varchar(64) DEFAULT NULL,
  DRAWBOOK varchar(128) DEFAULT NULL,
  PRODUCTFLOWID varchar(64) DEFAULT NULL,
  PRODUCTMODEL varchar(64) DEFAULT NULL,
  PRODUCTNAME varchar(128) DEFAULT NULL,
  PRODUCTNO varchar(64) DEFAULT NULL,
  PRODUCTNUMBER int(10) DEFAULT NULL,
  PRODUCTTYPE varchar(64) DEFAULT NULL,
  PRODUCTUNIT varchar(8) DEFAULT NULL,
  UNITPRICE double(12,2) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=INNODB;
/*==============================================================*/
/* 原料分解子表 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_BOM_MATERIALS;
CREATE TABLE IB_BOM_MATERIALS (
  COMMENTS varchar(512) DEFAULT NULL,
  ID varchar(64) NOT NULL DEFAULT '',
  MATERIALNAME varchar(128) DEFAULT NULL,
  MATERIALNO varchar(64) DEFAULT NULL,
  MATERIALNUM varchar(10) DEFAULT NULL,
  MATERIALPRICE double(12,2) DEFAULT NULL,
  MATERIALTYPENO varchar(64) DEFAULT NULL,
  MATERIALUNIT varchar(8) DEFAULT NULL,
  MODEL varchar(64) DEFAULT NULL,
  PARENTID varchar(64) DEFAULT NULL,
  STOCKTYPE varchar(16) DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=INNODB;

/*==============================================================*/
/* 项目生产计划表 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_PRODUCTION_PLAN;
CREATE TABLE IB_PRODUCTION_PLAN (PROJECTNO VARCHAR(64), PROJECTNAME VARCHAR(64), PROJECTTYPE VARCHAR(16), CUSTOMERNAME VARCHAR(64), PRODUCTMANAGE VARCHAR(64), WORKINGDAY INT(8), STARTTIME DATETIME, ENDTIME DATETIME, BUYSTARTTIME DATETIME, BUYENDTIME DATETIME, PRODSTARTTIME DATETIME, PRODENDTIME DATETIME, PRODOUTSTARTTIME DATETIME, PRODOUTENDTIME DATETIME, ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_PRODUCTION_PLAN_S;
CREATE TABLE IB_PRODUCTION_PLAN_S (PROJECTNO VARCHAR(64), PROJECTNAME VARCHAR(128), BATCHNO VARCHAR(64), PRODUCTIONTYPE VARCHAR(64), PRODUCTIONMODE VARCHAR(64), PRODUCTIONADDRESS VARCHAR(128), PRODUCTTYPE VARCHAR(64), PRODUCTFLOWID VARCHAR(64), PRODUCTNO VARCHAR(64), PRODUCTNAME VARCHAR(128), PRODUCTMODEL VARCHAR(64), PRODUCTNUM INT(10), WORKINGDAY INT(8), STARTTIME DATETIME, ENDTIME DATETIME, ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;

/*==============================================================*/
/* 材料采购计划申请表 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_BUY_PLAN;
CREATE TABLE IB_BUY_PLAN (PROJECTNO VARCHAR(64), BATCHNO VARCHAR(64), PROJECTNAME VARCHAR(64), CUSTOMERNAME VARCHAR(64), PRODUCTMANAGE VARCHAR(64), EVENTDATE DATETIME, BUYER VARCHAR(64), APPLICANT VARCHAR(64), DIRECTFLAG VARCHAR(64), RECEIPTUSER VARCHAR(128), RECEIPTADDRESS VARCHAR(512), STOCKTYPE VARCHAR(8), DOCUMENTTYPE VARCHAR(16), PLANNER VARCHAR(64), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_MATERIAL_BUY_PLAN;
CREATE TABLE IB_MATERIAL_BUY_PLAN (MATERIALNO VARCHAR(64), MATERIALNAME VARCHAR(128), MODEL VARCHAR(64), MATERIALNUM VARCHAR(10), DELIVERYDATE DATETIME, ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/*==============================================================*/
/* 项目生产进度表 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_PRODUCTION_SCHEDULE;
CREATE TABLE IB_PRODUCTION_SCHEDULE (PROJECTNO VARCHAR(64), PROJECTNAME VARCHAR(64), PRODUCTMANAGE VARCHAR(64), CUSTOMERNAME VARCHAR(64), PLANSTATUS VARCHAR(32), ENDCONFIRM VARCHAR(8), POSITION VARCHAR(64), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_PRODUCTION_SCHEDULE_S;
CREATE TABLE IB_PRODUCTION_SCHEDULE_S (PARENTID VARCHAR(64), BATCHNO VARCHAR(64), PRODUCTTYPE VARCHAR(64), PRODUCTFLOWID VARCHAR(64), PRODUCTNO VARCHAR(64), PRODUCTNAME VARCHAR(128), PRODUCTMODEL VARCHAR(64), MATERIALNUM VARCHAR(10), STARTTIME DATETIME, ENDTIME DATETIME, PRODUCTIONADDRESS VARCHAR(128), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/*==============================================================*/
/* 产品质监任务表 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_PROJECT_QUALITY;
CREATE TABLE IB_PROJECT_QUALITY (PROJECTNO VARCHAR(64), BATCHNO VARCHAR(64), PRODUCTTYPE VARCHAR(64), PRODUCTFLOWID VARCHAR(64), PRODUCTNO VARCHAR(64), PRODUCTNAME VARCHAR(128), PRODUCTMODEL VARCHAR(64), MATERIALNUM INT(10), QUALITYDATE DATETIME, QUALITYRESULT VARCHAR(16), QUALITYUSER VARCHAR(64), QUALITYREPORT VARCHAR(512), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/*==============================================================*/
/* 作废产品原料清单 */
/*==============================================================*/
DROP TABLE IF EXISTS IB_MATERIAL_WASTE;
CREATE TABLE IB_MATERIAL_WASTE (MATERIALNO VARCHAR(32), MATERIALNAME VARCHAR(64), MODEL VARCHAR(32), MATERIALNUM INT(10), CURRENTSTATUS VARCHAR(10), PROCESSINGRESULTS VARCHAR(512), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;