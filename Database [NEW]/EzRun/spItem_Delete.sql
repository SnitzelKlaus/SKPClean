-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a item>
-- =============================================

CREATE PROCEDURE dbo.spItem_Delete
	@UserId INT, @Id INT

AS
BEGIN
	SET NOCOUNT ON;

	--Gets RoomId
	DECLARE
	@RoomId INT;
	SELECT @RoomId = RoomId FROM Item WHERE Id = @Id

	--Gets Name
	DECLARE
	@Name VARCHAR(128);
	SELECT @Name = Name From Item WHERE Id = @Id

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[DELETED]: ItemId="', @Id, '" Name="', @Name, '" RoomId="', @RoomId, '"'), @UserId, 12)

	--DELETE data from table
	DELETE FROM Item
	WHERE Id = @Id
END