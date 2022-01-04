-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Updates department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_UpdateDepartment
	@Id INT, @Name VARCHAR(100)

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Department
	SET Name = @Name
	WHERE Id = @Id
END