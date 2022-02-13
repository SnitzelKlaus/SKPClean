-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <21-12-2021>
-- Description:	<Updates a note>
-- =============================================

CREATE PROCEDURE dbo.spNote_Update
	@UserId INT, @Id INT, @Content VARCHAR(512)

AS
BEGIN
	SET NOCOUNT ON;

	--Gets old Content
	DECLARE
	@PrevContent VARCHAR(512);
	SELECT @PrevContent = Content FROM Note WHERE Id = @Id

	--INSERT old and new data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[ALTERED]: NoteId="', @Id, '" [PREV]: Content="', @PrevContent, '" [NEW]: Content="', @Content, '"'), @UserId, 17)

	--UPDATE department with new data
	UPDATE Note
	SET Content = @Content,
	NoteDateTime = CURRENT_TIMESTAMP
	WHERE Id = @Id
END