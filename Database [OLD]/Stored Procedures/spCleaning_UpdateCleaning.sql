-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Updates item>
-- =============================================

CREATE PROCEDURE dbo.spCleaning_UpdateCleaning
	@Id INT, @Date DATE, @Intensity INT, @StaffId INT, @ItemId INT

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Cleaning
	SET Date = @Date, Intensity = @Intensity, StaffId = @StaffId, ItemId = @ItemId
	WHERE Id = @Id
END