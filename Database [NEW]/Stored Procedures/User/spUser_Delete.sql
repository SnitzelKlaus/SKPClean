-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <21-12-2021>
-- Description:	<Deletes a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets name
	DECLARE
	@Name VARCHAR(128);
	SELECT @Name = Name FROM Users WHERE Id = @Id

	--Gets username
	DECLARE
	@UserName VARCHAR(128);
	SELECT @UserName = UserName FROM Users WHERE Id = @Id

	--Gets password
	DECLARE
	@Password VARCHAR(512);
	SELECT @Password = Password FROM Users WHERE Id = @Id

	--Gets salt
	DECLARE
	@Salt VARCHAR(128);
	SELECT @Salt = Salt FROM Users WHERE Id = @Id

	--Gets roleid
	DECLARE
	@RoleId INT;
	SELECT @RoleId = RoleId FROM Users WHERE Id = @Id

	--Gets departmentid
	DECLARE
	@DepartmentId INT;
	SELECT @DepartmentId = DepartmentId FROM Users WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('
	[DELETED]: 

	UserId="', @Id, '" 
	UserName="', @UserName, '" 
	Name="', @Name, '" 
	Password="', @Password, '" 
	Salt="', @Salt, '" 
	RoleId="', @RoleId, '" 
	DepartmentId="', @DepartmentId,'"'), 
	@UserId, 21)

	--DELETE data from table
	DELETE FROM Users
	WHERE Id = @Id
END