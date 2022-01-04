-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_GetRoom
	@Id int

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * 
	FROM Room 
	WHERE Id = @Id
END