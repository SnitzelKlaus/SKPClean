-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_GetDepartment
	@Id int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Department
	WHERE Id = @Id
END