-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a role>
-- =============================================

CREATE PROCEDURE dbo.spRole_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets Name
	DECLARE
	@Name VARCHAR(128);
	SELECT @Name = Name From Roles WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: RoleId="', @Id, '" Name="', @Name, '"'), @UserId, 6)

	--DELETE data from table
	DELETE FROM Roles
	WHERE Id = @Id
END