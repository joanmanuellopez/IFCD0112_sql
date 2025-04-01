/*


�Cu�ntos empleados diferentes tienen m�s de 17 a�os trabajando en la empresa? ==> 7

*/

SELECT COUNT(*) AS NumEmpleados
FROM HumanResources.Employee
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 17;