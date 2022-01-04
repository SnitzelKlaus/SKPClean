-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all messages from specific department>
-- =============================================

CREATE PROCEDURE dbo.spMessage_GetAllMessages
	@Id int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Message
	WHERE Id = @Id
END