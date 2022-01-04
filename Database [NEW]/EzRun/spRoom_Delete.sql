-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets DepartmentId
	DECLARE
	@DepartmentId INT;
	SELECT @DepartmentId = Id FROM Room WHERE Id = @Id

	--Gets Name
	DECLARE
	@Name VARCHAR(128);
	SELECT @Name = Name From Room WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: RoomId="', @Id, '" Name="', @Name, '" DepartmentId="', @DepartmentId, '"'), @UserId, 9)

	--DELETE data from table
	DELETE FROM Room
	WHERE Id = @Id
END