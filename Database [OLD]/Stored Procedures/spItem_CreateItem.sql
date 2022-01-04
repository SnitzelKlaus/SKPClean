-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates an item within a room>
-- =============================================

CREATE PROCEDURE dbo.spItem_CreateItem
	@Name VARCHAR(100), @CleaningInterval INT, @RoomId INT

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Item(Name, CleaningInterval, RoomId)
	VALUES(@Name, @CleaningInterval, @RoomId)
END