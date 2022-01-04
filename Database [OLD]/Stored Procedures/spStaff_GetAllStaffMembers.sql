-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all staff members from specific department>
-- =============================================

CREATE PROCEDURE dbo.spStaff_GetAllStaffMembers
	@DepartmentId int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Staff
	WHERE DepartmentId = @DepartmentId
END