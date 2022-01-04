-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_DeleteRoom
	@Id INT

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM Room
	WHERE Id = @Id
END