-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets latest note>
-- =============================================

CREATE PROCEDURE dbo.spNote_GetLatestNote

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Note WHERE Id = (SELECT max(Id) FROM Note)
END