-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a user activated state (used to see if a user is already logged in)>
-- =============================================

CREATE PROCEDURE dbo.spUser_GetActivetedState
	@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select IsActivated FROM Users WHERE Id = @Id
END