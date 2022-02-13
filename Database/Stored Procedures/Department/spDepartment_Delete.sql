-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <14-12-2021>
-- Description:	<Deletes a department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Find value of name
	DECLARE
	@Name VARCHAR(128);
	SELECT @Name = Name From Department WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: DepartmentId="', @Id, '" Name="', @Name, '"'), @UserId, 3)

	--DELETE data from table
	DELETE FROM Department
	WHERE Id = @Id
END