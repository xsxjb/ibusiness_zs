/* ======================== 业务模块组件管理表 ====================  */
/*======= 创建表 ==========*/
DROP TABLE IF EXISTS IB_CUSTOMER_INFO;
CREATE TABLE IB_CUSTOMER_INFO (CUSTOMERNO VARCHAR(64), CUSTOMERSTATE VARCHAR(16), CUSTOMERADDRESS VARCHAR(512), PHONE VARCHAR(32), TELEPHONE VARCHAR(32), SALESMANAGER VARCHAR(32), CUSTOMERNAME VARCHAR(64), INFOSOURCE VARCHAR(16), PROVINCE VARCHAR(16), CITY VARCHAR(16), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
/* ===================== 材料供应商维护表 ========================  */
DROP TABLE IF EXISTS IB_SUPPLIER;
CREATE TABLE IB_SUPPLIER (INFORMATION VARCHAR(32), SUPPLIERNUMBER VARCHAR(32), CATEGORY VARCHAR(8), UNITNAME VARCHAR(128), USERADDRESS VARCHAR(128), UNITCHARACTER VARCHAR(16), REGISTERED VARCHAR(16), ENROLLTIME VARCHAR(16), URL VARCHAR(32), COMPANYPHONE VARCHAR(16), COMPANYFAX VARCHAR(16), PRODUCT VARCHAR(32), USERPERSON VARCHAR(16), USERPHONE VARCHAR(16), USERMOBILEPHONE VARCHAR(16), USERFAX VARCHAR(16), BUSINESSCONTACTS VARCHAR(16), CONTACTTELEPHONE VARCHAR(16), CONTACTMOBILEPHONE VARCHAR(16), CONTACTFAX VARCHAR(16), FINANCIALCONTACTS VARCHAR(16), FINANCIALCALL VARCHAR(16), FINANCIALPHONE VARCHAR(16), FINANCIALFAX VARCHAR(16), REMITTANCENAME VARCHAR(128), BENEFICIARY VARCHAR(128), TAXNO VARCHAR(32), ACCOUNTNO VARCHAR(32), YOURCOMPANY VARCHAR(128), YOURADDRESS VARCHAR(128), YOURNAME VARCHAR(32), YOURPHONE VARCHAR(16), TELEPHONE VARCHAR(16), ESTINATIONCITY VARCHAR(128), UPDATAS VARCHAR(256), ID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;

