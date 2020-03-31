SELECT students.name AS students, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS estimated_assignment_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;
