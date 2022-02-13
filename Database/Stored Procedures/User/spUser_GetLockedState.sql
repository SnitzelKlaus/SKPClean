-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets user lock (used to check if a user is allowed to log in)>
-- =============================================

CREATE PROCEDURE dbo.spUser_GetLockedState
	@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select IsLocked FROM Users WHERE Id = @Id
END