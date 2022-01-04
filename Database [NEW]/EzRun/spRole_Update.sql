-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <09-12-2021>
-- Description:	<Updates a role>
-- =============================================

CREATE PROCEDURE dbo.spRole_Update
	@UserId INT, @Id INT, @Name VARCHAR(128)

AS
BEGIN
	SET NOCOUNT ON;

	--Stores the previous values of the table entity
	DECLARE
	@PrevName VARCHAR(128);
	SELECT @PrevName = Name FROM Roles WHERE Id = @Id

	--INSERT old and new data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[ALTERED]: RoleId="', @Id, '" [PREV]: Name="', @PrevName, '" [NEW]: Name="', @Name, '"'), @UserId, 5)

	--Update role with new data
	UPDATE Roles
	SET Name = @Name
	WHERE Id = @Id
END