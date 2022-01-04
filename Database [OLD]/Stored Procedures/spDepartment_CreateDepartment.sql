-- =============================================
-- Author:		<Benjamin Hoffmeyer>
-- Create date: <24-11-2021>
-- Description:	<Creates a new department>
-- =============================================

CREATE PROCEDURE dbo.spDepartment_CreateDepartment
	@Name VARCHAR(100)

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Department(Name)
	VALUES(@Name)
END