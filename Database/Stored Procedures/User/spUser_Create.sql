-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <15-12-2021>
-- Description:	<Creates a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_Create
	@UserId INT, @Name VARCHAR(128), @UserName VARCHAR(128), @Password VARCHAR(512), @Salt VARCHAR(64), @RoleId INT, @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new room
	INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId) VALUES(@Name, @UserName, @Password, @Salt, @RoleId, @DepartmentId)

	--Stores id for new room
	DECLARE
	@NewUserId INT;
	SELECT @NewUserId = MAX(Id) FROM Users

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('
	[CREATED]: 
	UserId="', @NewUserId, '" 
	UserName="', @UserName, '" 
	Name="', @Name, '" 
	Password="', @Password, '" 
	Salt="', @Salt, '" 
	RoleId="', @RoleId, '" 
	DepartmentId="', @DepartmentId,'"'), 
	@UserId, 19)
END

