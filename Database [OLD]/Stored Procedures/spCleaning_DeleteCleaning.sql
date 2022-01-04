-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a cleaning>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_DeleteCleaning
	@Id INT

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM Cleaning
	WHERE Id = @Id
END