-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Delete a staff member>
-- =============================================

CREATE PROCEDURE dbo.spMessage_DeleteMessage
	@Id INT

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM Message
	WHERE Id = @Id
END