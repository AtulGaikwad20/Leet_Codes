CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN  
  DECLARE offset_value INT;

  SET offset_value = N - 1;

  RETURN (
    SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT offset_value, 1
  );
END