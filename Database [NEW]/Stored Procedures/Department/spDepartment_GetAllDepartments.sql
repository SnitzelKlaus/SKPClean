-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all departments>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_GetAllDepartments

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Department
END