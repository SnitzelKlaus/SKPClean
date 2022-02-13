-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all items>
-- =============================================

CREATE PROCEDURE dbo.spItem_GetAllItems
@RoomId INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Item WHERE RoomId = @RoomId
END