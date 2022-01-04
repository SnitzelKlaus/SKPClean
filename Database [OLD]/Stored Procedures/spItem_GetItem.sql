-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific item>
-- =============================================

CREATE PROCEDURE dbo.spœtem_GetItem
	@Id int

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * 
	FROM Item 
	WHERE Id = @Id
END