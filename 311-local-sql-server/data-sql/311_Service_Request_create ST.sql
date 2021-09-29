-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-06-04 14:29:37.566
CREATE SCHEMA 300;
CREATE SCHEMA 311_prod;

-- tables
-- Table: ADDRESS
CREATE TABLE [311].ADDRESS_ST (
	LOCATION [varchar](200) NULL,
    WARD_NUM [varchar](200) NULL,
    ZIP_CODE varchar(200)  NULL,
    STREET_NAME varchar(200)  NULL,
    LATITUDE varchar(200)  NULL,
    LONGITUDE varchar(200)  NULL,
);

-- Table: DATE
CREATE TABLE [311].DATE_ST (
    Date date  NOT NULL,
    Day numeric(2)  NOT NULL,
    Month numeric(2)  NOT NULL,
    Quarter numeric(1)  NOT NULL,
    Year numeric(4)  NOT NULL,
    DayOfTheWeek numeric(1)  NOT NULL,
    MonthName varchar(50)  NOT NULL,
    DayOfTheWeekName varchar(50)  NOT NULL,
);

-- Table: POLICE
CREATE TABLE [311].POLICE_ST (
	POLICE_SECTOR int NULL,
    District int  NOT NULL,
    Beat int  NOT NULL,
    Precints int  NOT NULL,
);

-- Table: OWNER_DEPARTMENT
CREATE TABLE [311].OWNER_DEPARTMENT_ST (
    DEP_NAME varchar(200)  NOT NULL,
);


-- Table: SR_TYPE
CREATE TABLE [311].SR_TYPE_ST (
	SR_SHORT_CODE [varchar](200) NOT NULL,
    SR_TYPE varchar(200)  NOT NULL,
);

-- Table: STATUS
CREATE TABLE [311].STATUS_ST (
    Status varchar(200)  NOT NULL,
);

CREATE TABLE [311].DUPLICATE_ST (
    REPEATED varchar(200)  NOT NULL,
);


-- Table: SERVICE_REQUEST_FactSt
CREATE TABLE [311].SERVICE_REQUEST_FactSt_ST (
		COUNT int NULL,
		DURATION int NULL,
		DATE date NULL,
		OWNER_DEPARTMENT [varchar](200) NULL, 
		SR_TYPE [varchar](200) NULL,		
		DUPLICATE [varchar](200) NULL,	
		STATUS [varchar](200) NULL,
		LOCATION [varchar](200) NULL,
		POLICE_SECTOR int NULL,
);



CREATE TABLE [311].[Source_Data_Staging](
	[SR_NUMBER] [varchar](200) NULL,
	SR_TYPE [varchar](200) NULL,
	SR_SHORT_CODE [varchar](200) NULL,
	OWNER_DEPARTMENT [varchar](200) NULL,
	STATUS [varchar](200) NULL,
	CREATED_DATE datetime NULL,
	LAST_MODIFIED_DATE datetime NULL,
	CLOSED_DATE datetime NULL,
	STREET_ADDRESS [varchar](200) NULL,
	CITY [varchar](200) NULL,
	STATE [varchar](200) NULL,
	ZIP_CODE [varchar](200) NULL,
	STREET_NUMBER [varchar](200) NULL,
	STREET_DIRECTION [varchar](200) NULL,
	STREET_NAME [varchar](200) NULL,
	STREET_TYPE [varchar](200) NULL,
	DUPLICATE [varchar](200) NULL,
	LEGACY_RECORD [varchar](200) NULL,
	LEGACY_SR_NUMBER [varchar](200) NULL,
	PARENT_SR_NUMBER [varchar](200) NULL,
	COMMUNITY_AREA int NULL,
	WARD [varchar](200) NULL,
	ELECTRICAL_DISTRICT [varchar](200) NULL,
	ELECTRICITY_GRID [varchar](200) NULL,
	POLICE_SECTOR int NULL,
	POLICE_DISTRICT int NULL,
	POLICE_BEAT int NULL,
	PRECINCT int NULL,
	SANITATION_DIVISION_DAYS [varchar](200) NULL,
	CREATED_HOUR int NULL,
	CREATED_DAY_OF_WEEK int NULL,
	CREATED_MONTH int NULL,
	CREATED_QUARTER numeric(1) NULL,
    CREATED_YEAR numeric(4) NULL,
    DATE date NULL,
	X_COORDINATE [varchar](200) NULL,
	Y_COORDINATE [varchar](200) NULL,
	LATITUDE [varchar](200) NULL,
	LONGITUDE [varchar](200) NULL,
	LOCATION [varchar](200) NULL
);



