-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets last cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_GetLastCleaning
	@ItemId int

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * 
	FROM Cleaning 
	WHERE ItemId = (SELECT max(@ItemId) FROM Cleaning);
END