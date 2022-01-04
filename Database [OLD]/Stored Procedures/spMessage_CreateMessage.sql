-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates a message>
-- =============================================

CREATE PROCEDURE dbo.spMessage_CreateMessage
	@Id INT, @Date DATE, @Content VARCHAR(500), @StaffId INT, @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Message(Date, Content, StaffId, DepartmentId)
	VALUES(@Date, @Content, @StaffId, @DepartmentId)
END