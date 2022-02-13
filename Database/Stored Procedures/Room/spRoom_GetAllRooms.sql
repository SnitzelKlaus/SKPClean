-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all rooms>
-- =============================================

CREATE PROCEDURE dbo.Room_GetAllRooms
@DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Room WHERE DepartmentId = @DepartmentId
END