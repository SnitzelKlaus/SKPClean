-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates an staff member>
-- =============================================

CREATE PROCEDURE dbo.spStaff_CreateStaffMember
	@Name VARCHAR(100), @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Staff(Name, DepartmentId)
	VALUES(@Name, @DepartmentId)
END