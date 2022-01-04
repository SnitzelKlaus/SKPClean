-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all users from a department>
-- =============================================

CREATE PROCEDURE dbo.spUser_GetAllDepartmentUsers
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Users WHERE DepartmentId = @Id
END