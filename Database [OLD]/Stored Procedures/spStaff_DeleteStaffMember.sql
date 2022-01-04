-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Delete a staff member>
-- =============================================

CREATE PROCEDURE dbo.spStaff_DeleteStaffMember
	@Id INT

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM Staff
	WHERE Id = @Id
END