SELECT students.name AS student, COUNT(assistance_requests.*) AS total_assistances
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY student;