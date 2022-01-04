-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Gets a specific staff member>
-- =============================================

CREATE PROCEDURE dbo.spStaff_GetStaffMember
	@Id int

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * 
	FROM Staff 
	WHERE Id = @Id
END