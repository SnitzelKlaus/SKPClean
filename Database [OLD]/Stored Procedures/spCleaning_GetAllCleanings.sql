-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all cleanings from an item>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_GetAllCleanings
	@ItemId int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Cleanings
	WHERE ItemId = @ItemId
END