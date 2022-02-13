-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <15-12-2021>
-- Description:	<Creates a new cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_Create
	@UserId INT, @ItemId INT, @Intensity INT

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new room
	INSERT INTO Cleaning(CleaningDateTime, Intensity, UserId, ItemId) VALUES(CURRENT_TIMESTAMP, @Intensity, @UserId, @ItemId)

	--Stores id for new room
	DECLARE
	@CleaningId INT;
	SELECT @CleaningId = MAX(Id) FROM Cleaning

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: CleaningId="', @CleaningId, '" ItemId="', @ItemId, '" Intensity="', @Intensity, '"'), @UserId, 13)
END

