/* ======================== 设计部模块 ====================  */
/* ====== 自动报价表 =====  */
DROP TABLE IF EXISTS IB_AUTOQUOTE;
CREATE TABLE IB_AUTOQUOTE (CEILINGAREA DOUBLE(12,2), TILEAREA DOUBLE(12,2), FLOORAREA DOUBLE(12,2), PAINTAREA DOUBLE(12,2), TOTALBUILDAREA DOUBLE(12,2), TOTALUSERAREA DOUBLE(12,2), TOTALAMOUNT DOUBLE(15,2), CEILINGUPRICE DOUBLE(12,2), CEILINGAMOUNT DOUBLE(12,2), TILEUPRICE DOUBLE(12,2), TILEAMOUNT DOUBLE(12,2), FLOORUPRICE DOUBLE(12,2), FLOORAMOUNT DOUBLE(12,2), PAINTUPRICE DOUBLE(12,2), PAINTAMOUNT DOUBLE(12,2), ARTIFICIALAMOUNT DOUBLE(12,2), ID VARCHAR(64), SCOPEID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_AUTOQUOTE_BATH;
CREATE TABLE IB_AUTOQUOTE_BATH (BATHAREA DOUBLE(12,2), DOORAREA DOUBLE(12,2), BATHDEPTH DOUBLE(12,2), BATHWIDTH DOUBLE(12,2), BATHHEIGHT DOUBLE(12,2), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_AUTOQUOTE_BEDROOM;
CREATE TABLE IB_AUTOQUOTE_BEDROOM (BEDROOMAREA DOUBLE(12,2), DOORAREA DOUBLE(12,2), BEDROOMDEPTH DOUBLE(12,2), BEDROOMWIDTH DOUBLE(12,2), BEDROOMHEIGHT DOUBLE(12,2), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_AUTOQUOTE_HALL;
CREATE TABLE IB_AUTOQUOTE_HALL (HALLAREA DOUBLE(12,2), DOORAREA DOUBLE(12,2), HALLDEPTH DOUBLE(12,2), HALLWIDTH DOUBLE(12,2), HALLHEIGHT DOUBLE(12,2), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_AUTOQUOTE_KITCHEN;
CREATE TABLE IB_AUTOQUOTE_KITCHEN (KITCHENAREA DOUBLE(12,2), DOORAREA DOUBLE(12,2), KITCHENDEPTH DOUBLE(12,2), KITCHENWIDTH DOUBLE(12,2), KITCHENHEIGHT DOUBLE(12,2), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;
DROP TABLE IF EXISTS IB_AUTOQUOTE_VERANDA;
CREATE TABLE IB_AUTOQUOTE_VERANDA (VERANDAAREA DOUBLE(12,2), DOORAREA DOUBLE(12,2), VERANDADEPTH DOUBLE(12,2), VERANDAWIDTH DOUBLE(12,2), VERANDAHEIGHT DOUBLE(12,2), ID VARCHAR(64), PARENTID VARCHAR(64),  PRIMARY KEY (ID)) ENGINE=INNODB;