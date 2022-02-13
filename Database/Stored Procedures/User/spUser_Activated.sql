-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Activates and deactivates a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_Activated
	@Id INT, @UserId INT, @IsActivated BIT

AS
BEGIN
	SET NOCOUNT ON;

	--GETS current @IsActivated Value (used to determine if writing in log and updating is necessary)
	DECLARE
	@PrevIsActivated BIT;
	SELECT @PrevIsActivated = IsActivated FROM Users WHERE Id = @Id

	--IF the activated state is the same as previous, an error has occurred and will do nothing
	IF @IsActivated = @PrevIsActivated
	BEGIN
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)VALUES(CURRENT_TIMESTAMP, CONCAT('[ERROR]: UserId="', @Id, '" Text="Activation/Deactivaion of user has failed. Was the last session closed correctly? Please contact your administrator.'), @UserId, 26)
	GOTO Finish
	END


	--IF @IsActivated = True, write "ACTIVATED" in EventLog
	IF @IsActivated = 1
	BEGIN
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)VALUES(CURRENT_TIMESTAMP, CONCAT('[ACTIVATED]: UserId="', @Id, '"'), @UserId, 24)

	--Sets LockedDateTime
	UPDATE Users
	SET ActivatedDateTime = CURRENT_TIMESTAMP
	WHERE Id = @Id

	GOTO Update_User
	END

	--IF @IsActivated = False, wirte "DEACTIVATED" in EventLog
	IF @IsActivated = 0
	BEGIN
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)VALUES(CURRENT_TIMESTAMP, CONCAT('[DEACTIVATED]: UserId="', @Id, '"'), @UserId, 25)
	
	--Updates DeactivatedDateTime
	UPDATE Users
	SET DeactivatedDateTime = CURRENT_TIMESTAMP
	WHERE Id = @Id

	GOTO Update_User
	END

	--Updates user active status
	Update_User:
	UPDATE Users
	SET IsActivated = @IsActivated
	WHERE Id = @Id

	Finish:
END