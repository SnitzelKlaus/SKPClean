-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_GetRoom
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Room WHERE Id = @Id
END