-- DROP FUNCTION [Table_of_new_pacients]

CREATE FUNCTION [Table_of_new_pacients]
(
	@names varchar(max)
)
RETURNS TABLE


AS

RETURN 
(
	SELECT VALUE AS new_names_table
	FROM STRING_SPLIT(@names, ',')
)

-- Использование

DECLARE @test_val varchar(max) = 'pacient_1, pacient_2, pacient_3'

SELECT [new_names_table] FROM dbo.[Table_of_new_pacients](@test_val)


--PRINT @test_val