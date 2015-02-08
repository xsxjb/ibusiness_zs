/* ======================== 预算管理 ====================  */
/* ====== 经营预算年度数据表 =====  */
DROP TABLE IF EXISTS IB_OPERATBUDGETYEAR;
CREATE TABLE IB_OPERATBUDGETYEAR (PLANYEAR VARCHAR(32), PROJECTTYPE VARCHAR(128), PROJECTNAME VARCHAR(256), CHANGEPLANAM DOUBLE(12,2), ADDPLANAMOUNT DOUBLE(12,2), PLANAMOUNT DOUBLE(12,2), YEARPLANBALANCE DOUBLE(12,2), AMOUNT DOUBLE(12,2), DEPT VARCHAR(128), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 经营预算年度计划申报流程 =====  */
DROP TABLE IF EXISTS IB_OPERATBUDGETPLAN;
CREATE TABLE IB_OPERATBUDGETPLAN (PLANYEAR VARCHAR(32), PLANNAME VARCHAR(256), DEPT VARCHAR(128), EVENTTIME DATETIME, NO VARCHAR(64), PLANAMOUNT DOUBLE(12,2), DEPTLEADER VARCHAR(512), DIRECTORMANAGER VARCHAR(512), GENERALMANAGER VARCHAR(512), PLANNER VARCHAR(512), PROJECTTYPESUM DOUBLE(12,2), PROJECTNAMESUM DOUBLE(12,2), ISGM VARCHAR(16), ISDM VARCHAR(16), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_OPERATBUDGETPLAN_S;
CREATE TABLE IB_OPERATBUDGETPLAN_S (PROJECTTYPE VARCHAR(128), PROJECTNAME VARCHAR(256), MATERIALTYPE VARCHAR(128), MATERIALNAME VARCHAR(128), SPEC VARCHAR(64), UNIT VARCHAR(64), PRICE DOUBLE(12,2), NUMB INT(10), PLANAMOUNTS DOUBLE(12,2), REASON VARCHAR(128), INFO VARCHAR(512), DEPT VARCHAR(128), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 经营预算年度计划增补、变更流程 =====  */
DROP TABLE IF EXISTS IB_ANNUALCHANGEPLAN;
CREATE TABLE IB_ANNUALCHANGEPLAN (PLANYEAR VARCHAR(32), PLANNAME VARCHAR(256), DEPTNAME VARCHAR(64), EVENTTIME DATETIME, PLANNO VARCHAR(64), PROJECTTYPE VARCHAR(64), PROJECTNAME VARCHAR(128), OLDPLANAMOUNT DOUBLE(12,2), CHANGEPLANAM DOUBLE(12,2), CHANGEAFTERPLANAM DOUBLE(12,2), ADDPLANAM DOUBLE(12,2), PLANAMOUNT DOUBLE(12,2), DEPTUSER VARCHAR(512), DEPTLEADER VARCHAR(512), GENERALMANAGER VARCHAR(512), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_ANNUALCHANGEPLAN_S;
CREATE TABLE IB_ANNUALCHANGEPLAN_S (PROJECTTYPE VARCHAR(32), PROJECTNAME VARCHAR(256), MATERIALTYPE VARCHAR(128), MATERIALNAME VARCHAR(64), MATERIALSPEC VARCHAR(64), MATERIALUNIT VARCHAR(64), MATERIALPRICE DOUBLE(12,2), MATERIALNUM INT(10), CHANGEPLANAM DOUBLE(12,2), CHANGEAFTERPLANAM DOUBLE(12,2), ADDPLANAM DOUBLE(12,2), DEPTNAME VARCHAR(64), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 年度经营预算材料计划汇总流程 =====  */
DROP TABLE IF EXISTS IB_ANNUALMATERIALPLAN;
CREATE TABLE IB_ANNUALMATERIALPLAN (PLANYEAR VARCHAR(32), DEPTNAME VARCHAR(128), EVENTTIME DATETIME, PLANNO VARCHAR(64), PLANAMOUNT DOUBLE(12,2), PLANNER VARCHAR(512), DEPTLEADER VARCHAR(512), FINANCIALLEADER VARCHAR(512), GENERALMANAGER VARCHAR(512), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_ANNUALMATERIALPLAN_S;
CREATE TABLE IB_ANNUALMATERIALPLAN_S (PROJECTTYPE VARCHAR(128), PROJECTNAME VARCHAR(128), MATERIALTYPE VARCHAR(128), MATERIALNAME VARCHAR(128), PLANAMOUNTS DOUBLE(12,2), DEPTNAME VARCHAR(128), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 经营预算月计划流程 =====  */
DROP TABLE IF EXISTS IB_MONTHBUDGETPLAN;
CREATE TABLE IB_MONTHBUDGETPLAN (PLANYEAR VARCHAR(32), PLANMONTH VARCHAR(32), DEPTNAME VARCHAR(128), EVENTTIME DATETIME, PLANNO VARCHAR(64), PROJECTTYPE VARCHAR(64), PROJECTNAME VARCHAR(64), PLANNAME VARCHAR(64), MONTHPLANAMOUNT DOUBLE(12,2), ANNUALPLANAMOUNT DOUBLE(12,2), ANNUALPLANBALANCE DOUBLE(12,2), DEPTLEADER VARCHAR(512), DIRECTORMANAGER VARCHAR(512), PLANNER VARCHAR(512), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_MONTHBUDGETPLAN_S;
CREATE TABLE IB_MONTHBUDGETPLAN_S (PLANYEAR VARCHAR(8), PLANMONTH VARCHAR(4), PROJECTTYPE VARCHAR(64), PROJECTNAME VARCHAR(64), MATERIALTYPE VARCHAR(64), MATERIALNAME VARCHAR(64), MATERIALSPEC VARCHAR(64), MATERIALUNIT VARCHAR(8), MATERIALPRICE DOUBLE(12,2), MATERIALNUM INT(10), YEARPLANAMOUNT DOUBLE(12,2), PLANAMOUNT DOUBLE(12,2), DEPTNAME VARCHAR(64), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 经营预算月计划执行流程 =====  */
DROP TABLE IF EXISTS IB_MONTHBUDGETREAL;
CREATE TABLE IB_MONTHBUDGETREAL (PLANYEAR VARCHAR(8), PLANMONTH VARCHAR(4), PLANNAME VARCHAR(256), DEPTNAME VARCHAR(64), EVENTTIME DATETIME, PLANNO VARCHAR(64), PROJECTTYPE VARCHAR(32), PROJECTNAME VARCHAR(32), MONTHPLANAMOUNT DOUBLE(12,2), AMOUNT DOUBLE(12,2), DEPTLEADER VARCHAR(512), PLANNER VARCHAR(512), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_MONTHBUDGETREAL_S;
CREATE TABLE IB_MONTHBUDGETREAL_S (PLANYEAR VARCHAR(8), PLANMONTH VARCHAR(4), PROJECTTYPE VARCHAR(32), PROJECTNAME VARCHAR(128), MATERIALTYPE VARCHAR(64), MATERIALNAME VARCHAR(64), MATERIALSPEC VARCHAR(64), MATERIALUNIT VARCHAR(64), MATERIALPRICE DOUBLE(12,2), MATERIALNUM INT(10), PLANAMOUNT DOUBLE(12,2), AMOUNT DOUBLE(12,2), DEPTNAME VARCHAR(64), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 预算月度计划执行情况分析汇总流程 =====  */
DROP TABLE IF EXISTS IB_MONTHPLANANALYSIS;
CREATE TABLE IB_MONTHPLANANALYSIS (PLANYEAR VARCHAR(8), PLANMONTH VARCHAR(4), PLANNAME VARCHAR(128), DEPTNAME VARCHAR(64), EVENTTIME DATETIME, PLANNO VARCHAR(64), ANNUALPLANAMOUNT DOUBLE(12,2), ANNUALPLANBALANCE DOUBLE(12,2), MONTHPLANAMOUNT DOUBLE(12,2), MONTHAMOUNT DOUBLE(12,2), SUMPLANAMOUNT DOUBLE(12,2), SUMAMOUNT DOUBLE(12,2), DEPTLEADER VARCHAR(512), PLANNER VARCHAR(512), ID VARCHAR(64), EXECUTIONID VARCHAR(64), CREATEDATEBPM DATETIME, NODENAME VARCHAR(128), USERNAME VARCHAR(128), ASSIGNEEUSER VARCHAR(64), DONEFLAG INT(4), TASKTITLE VARCHAR(256),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_MONTHPLANANALY_S;
CREATE TABLE IB_MONTHPLANANALY_S (PROJECTTYPE VARCHAR(32), PROJECTNAME VARCHAR(128), MATERIALTYPE VARCHAR(64), MATERIALNAME VARCHAR(64), MATERIALSPEC VARCHAR(64), MATERIALUNIT VARCHAR(64), MATERIALPRICE DOUBLE(12,2), MATERIALNUM INT(10), PLANAMOUNT DOUBLE(12,2), AMOUNT DOUBLE(12,2), DEPTNAME VARCHAR(64), REMARK VARCHAR(512), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;

