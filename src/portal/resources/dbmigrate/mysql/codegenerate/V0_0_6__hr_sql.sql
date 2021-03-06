/* ======================== 行政管理人事模块 ====================  */
/* ====== 合同类型数据表 =====  */
DROP TABLE IF EXISTS IB_CONTRACT_TYPE;
CREATE TABLE IB_CONTRACT_TYPE (TYPENAME VARCHAR(32), TYPEDESCRIBE VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64), PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 人事档案管理 =====  */
DROP TABLE IF EXISTS IB_PERSON_INFO;
CREATE TABLE IB_PERSON_INFO (JOBNUM VARCHAR(32), NAME VARCHAR(32), GENDER VARCHAR(8), BIRTH DATETIME, BIRTHPLACE VARCHAR(32), POLITICSSTATUS VARCHAR(32), IDCARD VARCHAR(18), MARITALSTATUS VARCHAR(32), CULTURESTANDARD VARCHAR(32), GRADUATESCHOOL VARCHAR(32), MAJOR VARCHAR(32), GRADUATEDATE DATETIME, PHONE VARCHAR(32), ADDRESS VARCHAR(32), TEL VARCHAR(32), HKADR VARCHAR(32), ZIPCODE INT(10), ORIGANIZATIONCODE VARCHAR(32), POST VARCHAR(32), POSTTITLE VARCHAR(32), ENTERDATE DATETIME, FULLDATE DATETIME, LEAVEDATE DATETIME, CONTRACTTYPE VARCHAR(32), TREATMENT INT(20), ORIGINALWORKUNIT VARCHAR(32), BONDSMAN VARCHAR(32), RESUME VARCHAR(32), REMARK VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 人员就职管理 =====  */
DROP TABLE IF EXISTS IB_PERSON_JOB_INFO;
CREATE TABLE IB_PERSON_JOB_INFO (NAME VARCHAR(32), DEPARTMENT VARCHAR(32), POST VARCHAR(32), POSTTITLE VARCHAR(32), OBTAINDATE DATETIME, IDENTITY VARCHAR(32), ADMINLEVEL VARCHAR(32), SALARYSTANDARD INT(20), ENTERDATE DATETIME, REMARK VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 人员离职管理 =====  */
DROP TABLE IF EXISTS IB_PERSON_LEAVE;
CREATE TABLE IB_PERSON_LEAVE (NAME VARCHAR(32), LEAVESORT VARCHAR(32), LEAVESTATE VARCHAR(32), LEAVESECTION VARCHAR(32), LEAVEJOB VARCHAR(32), LEAVEDATE DATETIME, STOPDATE DATETIME, REMARK VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 人员调动管理 =====  */
DROP TABLE IF EXISTS IB_PERSON_MOVE;
CREATE TABLE IB_PERSON_MOVE (NAME VARCHAR(32), CATEGORY VARCHAR(32), BEFORESECTION VARCHAR(32), NOWSECTION VARCHAR(32), BEFOREJOB VARCHAR(32), NOWJOB VARCHAR(32), OLDSTANDARD INT(20), NEWSTANDARD INT(20), MOVEDATE DATETIME, REMARK VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 复职登记管理 =====  */
DROP TABLE IF EXISTS IB_PERSON_REMOVE;
CREATE TABLE IB_PERSON_REMOVE (NAME VARCHAR(32), BEFORESECTION VARCHAR(32), BEFORJOB VARCHAR(32), RESUMEDATE DATETIME, SALARYSTANDARD INT(20), REMARK VARCHAR(128), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 奖惩记录管理 =====  */
DROP TABLE IF EXISTS IB_REWARDS_PUNISHMENTS;
CREATE TABLE IB_REWARDS_PUNISHMENTS (NAME VARCHAR(32), DATE DATETIME, TYPE VARCHAR(32), NUM INT(20), SALARY INT(20), ASSESS INT(20), MOTIONMAN VARCHAR(32), REMARK VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 工资录入管理 =====  */
DROP TABLE IF EXISTS IB_SALARY_ENTER;
CREATE TABLE IB_SALARY_ENTER (NAME VARCHAR(32), TIME DATETIME, BASICSALARY INT(20), POSTSALARY INT(20), YEARSSALARY INT(20), PERFORMANCESALARY INT(20), AWARDSALARY INT(20), OUTWORKSALARY INT(20), COUNTSSALARY INT(20), FINALAMOUNTS INT(20), DEDUCTSALARY INT(20), PREMIUM INT(20), INCOMETAX INT(20), DEDUCTAMOUNTS INT(20), ACTUALSALARY INT(20), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ====== 考核记录管理 =====  */
DROP TABLE IF EXISTS IB_ASSESS_RECORD;
CREATE TABLE IB_ASSESS_RECORD (NAME VARCHAR(32), CHECKTIME DATETIME, JOB VARCHAR(32), CHECKPROJECT VARCHAR(32), CHECKRANK VARCHAR(32), CHECKSCORE INT(20), CHECKASSESS VARCHAR(32), CHECKER VARCHAR(32), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
