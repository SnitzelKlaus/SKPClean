-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates a cleaning for an item>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_CreateCleaning
	@Date DATE, @Intensity INT, @StaffId INT, @ItemId INT

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Cleaning(Date, Intensity, StaffId, ItemId)
	VALUES(@Date, @Intensity, @StaffId, @ItemId)
END