-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <09-12-2021>
-- Description:	<Updates a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_Update
	@Id INT, @UserId INT, @Name VARCHAR(128), @UserName VARCHAR(128), @Password VARCHAR(512), @Salt VARCHAR(128), @RoleId INT, @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets name
	DECLARE
	@PrevName VARCHAR(128);
	SELECT @PrevName = Name FROM Users WHERE Id = @Id

	--Gets username
	DECLARE
	@PrevUserName VARCHAR(128);
	SELECT @PrevUserName = UserName FROM Users WHERE Id = @Id

	--Gets password
	DECLARE
	@PrevPassword VARCHAR(512);
	SELECT @PrevPassword = Password FROM Users WHERE Id = @Id

	--Gets salt
	DECLARE
	@PrevSalt VARCHAR(128);
	SELECT @PrevSalt = Salt FROM Users WHERE Id = @Id

	--Gets roleid
	DECLARE
	@PrevRoleId INT;
	SELECT @PrevRoleId = RoleId FROM Users WHERE Id = @Id

	--Gets departmentid
	DECLARE
	@PrevDepartmentId INT;
	SELECT @PrevDepartmentId = DepartmentId FROM Users WHERE Id = @Id

	--INSERT old and new data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('
	[ALTERED]: 
	UserId="', @Id, '" 

	[PREV]: 
	UserName="', @PrevUserName, '" 
	Name="', @PrevName, '" 
	Password="', @PrevPassword, '" 
	Salt="', @PrevSalt, '" 
	RoleId="', @PrevRoleId, '" 
	DepartmentId="', @PrevDepartmentId, '" 
	[NEW]: 
	UserName="', @UserName, '" 
	Name="', @Name, '" 
	Password="', @Password, '" 
	Salt="', @Salt, '" 
	RoleId="', @RoleId, '" 
	DepartmentId="', @DepartmentId,'"'),
	
	@UserId, 20)

	--UPDATE department with new data
	UPDATE Users
	SET UserName = @UserName,
	Name = @Name,
	Password = @Password,
	Salt = @Salt,
	RoleId = @RoleId,
	DepartmentId = @DepartmentId

	WHERE Id = @Id
END