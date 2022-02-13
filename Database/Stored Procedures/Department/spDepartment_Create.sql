-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <08-12-2021>
-- Description:	<Creates a new department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_Create
	@UserId INT, @Name VARCHAR(128)

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new department
	INSERT INTO Department(Name) VALUES(@Name)

	--Stores id for new department
	DECLARE
	@DepartmentId INT;
	SELECT @DepartmentId = MAX(Id) FROM Department

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: DepartmentId="', @DepartmentId, '" Name="', @Name, '"'), @UserId, 1)
END