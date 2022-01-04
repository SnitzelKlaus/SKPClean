-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a role>
-- =============================================

CREATE PROCEDURE dbo.spRoles_GetRole
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Roles WHERE Id = @Id
END