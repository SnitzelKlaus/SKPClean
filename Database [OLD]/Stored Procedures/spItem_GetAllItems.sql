-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all items from specific room>
-- =============================================

CREATE PROCEDURE dbo.spItem_GetAllItems
	@RoomId int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Items
	WHERE RoomId = @RoomId
END