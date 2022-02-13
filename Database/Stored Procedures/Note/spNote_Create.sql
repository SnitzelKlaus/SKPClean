-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <21-12-2021>
-- Description:	<Creates a note>
-- =============================================

CREATE PROCEDURE dbo.spNote_Create
	@UserId INT, @Content VARCHAR(512), @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new note
	INSERT INTO Note(NoteDateTime, Content, UserId, DepartmentId) VALUES(CURRENT_TIMESTAMP, @Content, @UserId, @DepartmentId)

	--Stores id for new note
	DECLARE
	@NoteId INT;
	SELECT @NoteId = MAX(Id) FROM Note

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: NoteId="', @NoteId, '" DepartmentId="', @DepartmentId, '" Content="', @Content, '"'), @UserId, 16)
END

