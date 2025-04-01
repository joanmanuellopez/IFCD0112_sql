/*


�Cu�ntos empleados de la tabla HumanResources.Employee tienen m�s de 17 a�os trabajando en la empresa? 
==> 7

*/

SELECT COUNT(*) AS NumEmpleados
FROM HumanResources.Employee
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 17;