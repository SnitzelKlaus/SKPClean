-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Updates a message>
-- =============================================

CREATE PROCEDURE dbo.spMessage_UpdateMessage
	@Id INT, @Date DATE, @Content VARCHAR(500), @StaffId INT, @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Message
	SET Date = @Date, Content = @Content, @DepartmentId
	WHERE Id = @Id
END