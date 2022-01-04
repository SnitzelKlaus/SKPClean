-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_UpdateRoom
	@Id INT, @Name VARCHAR(100), @DepartmentId INT

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Room
	SET Name = @Name, DepartmentId = @DepartmentId
	WHERE Id = @Id
END