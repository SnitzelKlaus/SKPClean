-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets a departments>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_GetDepartment
@Id INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Department WHERE Id = @Id
END