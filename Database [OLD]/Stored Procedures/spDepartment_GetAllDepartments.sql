-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all departments from specific room>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_GetAllDepartments

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Department
END