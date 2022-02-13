-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all notes>
-- =============================================

CREATE PROCEDURE dbo.spNote_GetAllNotes

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Note
END