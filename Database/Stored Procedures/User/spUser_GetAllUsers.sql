-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <04-01-2021>
-- Description:	<Gets all users>
-- =============================================

CREATE PROCEDURE dbo.spUser_GetAllUsers

AS
BEGIN
	SET NOCOUNT ON;

	Select * FROM Users
END