-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets an item>
-- =============================================

CREATE PROCEDURE dbo.spItem_GetItem
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Item WHERE Id = @Id
END