-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Locks and unlocks a user>
-- =============================================

CREATE PROCEDURE dbo.spUser_Locked
	@Id INT, @UserId INT, @IsLocked BIT

AS
BEGIN
	SET NOCOUNT ON;

	--GETS current @IsLocked Value (used to determine if writing in log and updating is necessary)
	DECLARE
	@PrevIsLocked BIT;
	SELECT @PrevIsLocked = IsLocked FROM Users WHERE Id = @Id

	--IF new locked status is the same as current lock skip to finish
	IF @IsLocked = @PrevIsLocked
	BEGIN
	GOTO Finish
	END

	--IF @IsLocked = True, write "LOCKED" in EventLog
	IF @IsLocked = 1
	BEGIN
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)VALUES(CURRENT_TIMESTAMP, CONCAT('[LOCKED]: UserId="', @Id, '"'), @UserId, 22)

	--Sets LockedDateTime
	UPDATE Users
	SET LockedDateTime = CURRENT_TIMESTAMP
	WHERE Id = @Id

	GOTO Update_User
	END

	--IF @IsLocked = False, wirte "UNLOCKED" in EventLog
	IF @IsLocked = 0
	BEGIN
	INSERT INTO EventLog(EventDateTime, Content, UserId, TaskId)VALUES(CURRENT_TIMESTAMP, CONCAT('[UNLOCKED]: UserId="', @Id, '"'), @UserId, 23)
	
	--Resets LockedDateTime
	UPDATE Users
	SET LockedDateTime = NULL
	WHERE Id = @Id

	GOTO Update_User
	END

	--Updates user locked status
	Update_User:
	UPDATE Users
	SET IsLocked = @IsLocked
	WHERE Id = @Id

	Finish:
END