-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all cleanings>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_GetAllCleanings
@ItemId INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Cleaning WHERE ItemId = @ItemId
END