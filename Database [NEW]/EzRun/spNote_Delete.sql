-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <21-12-2021>
-- Description:	<Deletes a note>
-- =============================================

CREATE PROCEDURE dbo.spNote_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets NoteDateTime
	DECLARE
	@NoteDateTime DATETIME;
	SELECT @NoteDateTime = NoteDateTime FROM Note WHERE Id = @Id

	--Gets Content
	DECLARE
	@Content VARCHAR(512);
	SELECT @Content = Content FROM Note WHERE Id = @Id

	--Gets DepartmentId
	DECLARE
	@DepartmentId INT;
	SELECT @DepartmentId = DepartmentId From Note WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: NoteId="', @Id, '" DepartmentId="', @DepartmentId, '" Content="', @Content, '" NoteDateTime="', @NoteDateTime, '"'), @UserId, 18)

	--DELETE data from table
	DELETE FROM Note
	WHERE Id = @Id
END