-- Table: ADDRESS
CREATE TABLE [311_prod].ADDRESS_pr (
	ID_ADDRESS int PRIMARY KEY IDENTITY,
	LOCATION varchar(200)  NULL,
    WARD_NUM varchar(200)  NULL,
    ZIP_CODE varchar(200)  NULL,
    STREET_NAME varchar(200)  NULL,
    LATITUDE varchar(200)  NULL,
    LONGITUDE varchar(200)  NULL,
);

-- Table: DATE
CREATE TABLE [311_prod].DATE_pr (
	ID_DATE int PRIMARY KEY IDENTITY,
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
CREATE TABLE [311_prod].POLICE_pr (
	ID_POLICE int PRIMARY KEY IDENTITY,
	POLICE_SECTOR int NULL,
    District int  NOT NULL,
    Beat int  NOT NULL,
    Precints int  NOT NULL,
);

-- Table: OWNER_DEPARTMENT
CREATE TABLE [311_prod].OWNER_DEPARTMENT_pr (
	ID_OWNER_DEPARTMENT int PRIMARY KEY IDENTITY,
    DEP_NAME varchar(200)  NOT NULL,
);


-- Table: SR_TYPE
CREATE TABLE [311_prod].SR_TYPE_pr (
    ID_SR_TYPE int PRIMARY KEY IDENTITY,
	SR_SHORT_CODE [varchar](200) NOT NULL,
    SR_TYPE varchar(200)  NOT NULL,
);

-- Table: STATUS
CREATE TABLE [311_prod].STATUS_pr (
	ID_STATUS int PRIMARY KEY IDENTITY,
    Status varchar(200)  NOT NULL,
);

CREATE TABLE [311_prod].DUPLICATE_pr (
	ID_DUPLICATE int PRIMARY KEY IDENTITY,
    REPEATED varchar(200)  NOT NULL,
);


-- Table: SERVICE_REQUEST_FactSt
CREATE TABLE [311_prod].SERVICE_REQUEST_FactSt_pr (
		ID_SERVICE_REQUEST int PRIMARY KEY IDENTITY,
		COUNT int NULL,
		DURATION int NULL,
		ID_DATE int NULL,
		ID_OWNER_DEPARTMENT int NULL, 
		ID_SR_TYPE int NULL,		
		ID_DUPLICATE int NULL,	
		ID_STATUS int NULL,
		ID_LOCATION int NULL,
		ID_POLICE int NULL,
);

