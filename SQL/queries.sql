-- Gets all students with grades A or A+ in the midterm, ordered by course CRN

SELECT Students.Name
FROM Students
INNER JOIN Grades
ON Students.ID=Grades.StudentID AND (Grades.Midterm = 'A' OR Grades.Midterm = 'A+')
ORDER BY Grades.CourseCRN ASC

-- Gets the ID of all students graded in some Course CRN = 21996

SELECT Students.Name
FROM Students
INNER JOIN Grades
ON Students.ID=Grades.StudentID AND Grades.CourseCRN = 21996

-- Updates all student's grades to 'A' at Course CRN = 21996

UPDATE Grades
SET Midterm='A',Final='A'
WHERE CourseCRN=21996