CREATE PROCEDURE [311].[InsertTime]
AS
DECLARE @korektor INT
DECLARE @data DATE
DECLARE @pnm VARCHAR(30), @anm VARCHAR(30),  @ant VARCHAR(30), @pnt VARCHAR(30)
SELECT @korektor = 0
 
WHILE @korektor < 1460 -- dwa lata
BEGIN
        SELECT @data = DATEADD(DAY, @korektor, '2018-01-01')
       
        IF DATEPART(MM, @data) = 1 SELECT @anm = 'January'
        ELSE IF DATEPART(MM, @data) = 2 SELECT @anm = 'February'
        ELSE IF DATEPART(MM, @data) = 3 SELECT @anm = 'March'
        ELSE IF DATEPART(MM, @data) = 4 SELECT @anm = 'April'
        ELSE IF DATEPART(MM, @data) = 5 SELECT @anm = 'May'
        ELSE IF DATEPART(MM, @data) = 6 SELECT @anm = 'June'
        ELSE IF DATEPART(MM, @data) = 7 SELECT @anm = 'July'
        ELSE IF DATEPART(MM, @data) = 8 SELECT @anm = 'August'
        ELSE IF DATEPART(MM, @data) = 9 SELECT @anm ='September'
        ELSE IF DATEPART(MM, @data)=10 SELECT @anm ='October'
        ELSE IF DATEPART(MM, @data) = 11 SELECT @anm='November'
        ELSE SELECT @anm = 'December'
       
        IF DATEPART(W, @data) = 1 SELECT @ant = 'Sunday'
        ELSE IF DATEPART(W, @data) = 2 SELECT @ant='Monday'
        ELSE IF DATEPART(W, @data) = 3 SELECT @ant = 'Tuesday'
        ELSE IF DATEPART(W, @data) = 4 SELECT @ant = 'Wednesday'
        ELSE IF DATEPART(W, @data) = 5 SELECT @ant ='Thursday'
        ELSE IF DATEPART(W, @data) = 6 SELECT @ant = 'Friday'
	ELSE SELECT @ant = 'Saturday'
       
        INSERT INTO DATE_ST VALUES(@data, DATEPART(DAY, @data), DATEPART(MM, @data),  DATEPART(QQ, @data),DATEPART(YEAR, @data), DATEPART(W, @data), @anm, @ant)
        SELECT @korektor = @korektor + 1
END




