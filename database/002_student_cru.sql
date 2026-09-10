 -- student Query #1
 SELECT * FROM student;

 -- Student Query #2 - Select student order by id ASC
 SELECT * FROM student
    ORDER BY student_id ASC;

 -- Student Query #3 - Select student order by DESC
 SELECT * FROM student
    ORDER BY student_id DESC;

 -- Student Query #4 - Select student order by student_first_name ASC
 SELECT
    student_last_name,
    student_first_name
FROM students
    ORDER BY student_first_name ASC;

 -- Student Query #5 - Select student order by sutudent_last_name DESC
 SELECT
    student_last_name,
    student_first_name
FROM students
    ORDER BY student_last_name DESC;

 -- Student Query #6 - Select student order by student_first_name ASC
 SELECT
    student_last_name,
    student_first_name
FROM students
    ORDER BY student_first_name ASC;

 -- Student Query #7 - Select student order by student_last_name DESC
 SELECT
    student_last_name,
    student_first_name
FROM students
    ORDER BY student_last_name DESC;

 -- Student Query #5 - Select student with specific id number
 SELECT
    student_last_name,
    student_first_name
FROM students
WHERE student_id = 1
LIMIT 1;

-- Student Query #9 - update student firstname,lastname using specific id number
UPDATE students
SET
    student_first_name = 'Cinthiaaa'
    student_last_name = 'Macalos'
WHERE student_id = 1;