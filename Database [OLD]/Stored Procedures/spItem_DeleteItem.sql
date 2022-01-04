-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes an item>
-- =============================================

CREATE PROCEDURE dbo.spItem_DeleteItem
	@Id INT

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM Item
	WHERE Id = @Id
END