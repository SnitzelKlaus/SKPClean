-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <15-12-2021>
-- Description:	<Creates a new room>
-- =============================================

CREATE PROCEDURE dbo.spRoom_Create
	@UserId INT, @Name VARCHAR(128),  @DepartmentId INT

AS
BEGIN
	SET NOCOUNT ON;	

	--INSERT new room
	INSERT INTO Room(Name, DepartmentId) VALUES(@Name, @DepartmentId)

	--Stores id for new room
	DECLARE
	@RoomId INT;
	SELECT @RoomId = MAX(Id) FROM Room

	--INSERT data in EventLog
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)
	VALUES(CURRENT_TIMESTAMP, CONCAT('[CREATED]: RoomId="', @RoomId, '" Name="', @Name, '" DepartmentId="', @DepartmentId, '"'), @UserId, 7)


END

