-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <15-12-2021>
-- Description:	<Creates a new item>
-- =============================================

CREATE PROCEDURE dbo.spItem_Create
	@UserId INT, @Name VARCHAR(128), @CleaningInterval INT,  @RoomId INT

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new room
	INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES(@Name, @CleaningInterval, @RoomId)

	--Stores id for new room
	DECLARE
	@ItemId INT;
	SELECT @ItemId = MAX(Id) FROM Item

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: ItemId="', @ItemId, '" Name="', @Name, '" CleaningInterval="', @CleaningInterval, '" RoomId="', @RoomId, '"'), @UserId, 10)
END

