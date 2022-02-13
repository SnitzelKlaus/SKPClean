-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <09-12-2021>
-- Description:	<Updates a cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_Update
	@UserId INT, @Id INT, @Intensity INT

AS
BEGIN
	SET NOCOUNT ON;

	--Stores the previous values of the table entity
	DECLARE
	@PrevIntensity INT;
	SELECT @PrevIntensity = Intensity FROM Cleaning WHERE Id = @Id

	--INSERT old and new data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[ALTERED]: CleaningId="', @Id, '" [PREV]: Intensity="', @PrevIntensity, '" [NEW]: Intensity="', @Intensity, '"'), @UserId, 14)

	--UPDATE department with new data
	UPDATE Cleaning
	SET Intensity = @Intensity
	WHERE Id = @Id
END