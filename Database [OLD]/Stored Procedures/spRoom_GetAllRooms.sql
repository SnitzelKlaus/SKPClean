-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets all rooms within a specific department>
-- =============================================

CREATE PROCEDURE dbo.spRoom_GetAllRooms
	@DepartmentId int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * 
	FROM Room 
	WHERE DepartmentId = @DepartmentId
END