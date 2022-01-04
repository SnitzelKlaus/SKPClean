-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Updates a staff member>
-- =============================================

CREATE PROCEDURE dbo.spStaff_UpdateStaffMember
	@Id INT, @Name VARCHAR(100), @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Staff
	SET Name = @Name, DepartmentId = @DepartmentId
	WHERE Id = @Id
END