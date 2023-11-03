-- DROP FUNCTION [CalculateSquare]

CREATE FUNCTION [CalculateSquare]
(
	@Number INT
)
RETURNS INT

AS

BEGIN
	DECLARE @Square INT
	SET @Square = @Number * @Number
	RETURN @Square
END

--

DECLARE @test_val INT = dbo.[CalculateSquare](5)
PRINT @test_val