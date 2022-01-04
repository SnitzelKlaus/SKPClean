-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <15-12-2021>
-- Description:	<Creates a new role>
-- =============================================

CREATE PROCEDURE dbo.spRole_Create
	@UserId INT, @Name VARCHAR(128)

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new role
	INSERT INTO Roles(Name) VALUES(@Name)

	--Stores id for new role
	DECLARE
	@RoleId INT;
	SELECT @RoleId = MAX(Id) FROM Roles

	--INSERT new data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: RoleId="', @RoleId, '" Name="', @Name, '"'), @UserId, 4)
END

