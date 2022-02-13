-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets CleaningDateTime
	DECLARE
	@CleaningDateTime DATETIME;
	SELECT @CleaningDateTime = CleaningDateTime FROM Cleaning WHERE Id = @Id

	--Gets Intensity
	DECLARE
	@Intensity INT;
	SELECT @Intensity = Intensity FROM Cleaning WHERE Id = @Id

	--Gets ItemId
	DECLARE
	@ItemId INT;
	SELECT @ItemId = ItemId FROM Cleaning WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: CleaningId="', @Id, '" ItemId="', @ItemId, '" Intensity="', @Intensity, '" CleaningDateTime="', @CleaningDateTime, '"'), @UserId, 15)

	--DELETE data from table
	DELETE FROM Cleaning
	WHERE Id = @Id
END