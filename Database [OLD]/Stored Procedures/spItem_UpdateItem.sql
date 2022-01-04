-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Updates item>
-- =============================================

CREATE PROCEDURE dbo.spItem_UpdateItem
	@Id INT, @Name VARCHAR(100), @CleaningInterval INT, @RoomId INT

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Item
	SET Name = @Name, CleaningInterval = @CleaningInterval, RoomId = @RoomId
	WHERE Id = @Id
END