-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_GetUser
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Users WHERE Id = @Id
END