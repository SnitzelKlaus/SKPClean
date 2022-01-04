-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates a room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_CreateRoom
	@Name VARCHAR(100), @DepartmentId INT

AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO Room(Name, DepartmentId)
	VALUES(@Name, @DepartmentId)
END