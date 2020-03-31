SELECT cohorts.name, COUNT(students.id) as student_count
FROM students JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY COUNT(students.id) ASC, cohorts.name;


