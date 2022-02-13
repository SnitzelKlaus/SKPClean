-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all roles>
-- =============================================

CREATE PROCEDURE dbo.Roles_GetAllRoles

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Roles
END