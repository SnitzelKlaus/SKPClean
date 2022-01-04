-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Deletes a department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_DeleteDepartment
	@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Department
	WHERE Id = @Id
END