CREATE TABLE AMAN(
      AMAN INT PRIMARY KEY,
	  MANAGERID INT,
	  JoinDate DATE,
	  Dept NVARCHAR(50),
	  Salary INT
); 

-- Insert sample data
INSERT INTO AMAN(AMAN, ManagerID, JoinDate, Dept, Salary)
VALUES 
(1, NULL, '2023-01-10', 'HR', 5000),
(2, 1, '2023-02-15', 'Finance', 6000),
(3, 2, '2023-03-20', 'IT', 7000),
(4, 2, '2023-04-25', 'IT', 7000),
(5, 3, '2023-05-30', 'HR', 8000);

--FINDING 3RD HIGHEST 
SELECT DISTINCT Salary
FROM AMAN s1
WHERE 3 = (
    SELECT COUNT(DISTINCT Salary)
    FROM AMAN s2
    WHERE s2.Salary > s1.Salary 
); 

--FINDING 2ND & 3RD & 4TH & 5TH HIGHEST  
WITH RankedSalaries AS (
    SELECT Salary,
           DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
    FROM AMAN
)
SELECT Salary
FROM RankedSalaries
WHERE Rank = 5; 
   



 