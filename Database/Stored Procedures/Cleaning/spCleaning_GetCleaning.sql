-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_GetCleaning
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Cleaning WHERE Id = @Id
END