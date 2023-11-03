-- DROP PROCEDURE [pacient_age_check_procedure]

CREATE PROCEDURE [pacient_age_check_procedure]
	@age INT,
	@pacient_name VARCHAR(100)

AS

BEGIN	
	IF @age > 15
		begin	
			DECLARE @ward_max_index INT = (SELECT COUNT(*) FROM Wards)
			PRINT '@ward_max_index' 
			PRINT @ward_max_index		
			DECLARE @new_ward_random_number INT = RAND() * (@ward_max_index+1)
			PRINT '@new_ward_random_number'
			PRINT @new_ward_random_number
			INSERT INTO Pacients VALUES (@pacient_name, @new_ward_random_number)
		end
END

exec [pacient_age_check_procedure] @age = 16, @pacient_name = 'Vasily_YYY'