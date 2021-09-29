

--FOR THE FACT TABLE 
SELECT 	count(SR_NUMBER) AS COUNT,
		OWNER_DEPARTMENT, 
		SR_TYPE,
		DATE,
		DUPLICATE,	
		STATUS,
		LOCATION,
		POLICE_SECTOR,
		SUM (CAST( DATEDIFF(MINUTE, convert(datetime, CREATED_DATE, 101), convert(datetime, CLOSED_DATE, 101)) AS decimal(12,2))) AS DURATION
FROM [311].Source_Data_Staging 
group by 
		OWNER_DEPARTMENT, 
		SR_TYPE,
		DATE,
		DUPLICATE,
		STATUS,
		LOCATION,
		POLICE_SECTOR
having LOCATION is not null and LOCATION != ''


--FOR THE FACT TABLE 
SELECT 	count(SR_NUMBER) AS COUNT,
		OWNER_DEPARTMENT, 
		SR_TYPE,
		DATE,
		DUPLICATE,	
		STATUS,
		LOCATION,
		POLICE_SECTOR,
		SUM (CAST( DATEDIFF(MINUTE, convert(datetime, CREATED_DATE, 101), convert(datetime, CLOSED_DATE, 101)) AS decimal(12,2))) AS DURATION
FROM [311].Source_Data_Staging 
group by 
		OWNER_DEPARTMENT, 
		SR_TYPE,
		DATE,
		DUPLICATE,
		STATUS,
		LOCATION,
		POLICE_SECTOR
having LOCATION is not null and LOCATION != '' and POLICE_SECTOR != 0






