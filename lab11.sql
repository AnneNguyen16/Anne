-- Thuy Tram Anh Nguyen --

-- Assignments for a Specific Course -- 
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Earliest Assignment Due Date -- 
SELECT min(due_date) 
FROM assignments
WHERE course_id

-- Latest Assignment Due Date --
SELECT max(due_date)
FROM assignments
WHERE course_id

-- Assignments Due on a Specific Date -- 
SELECT title, course_id
FROM assignments
WHERE due_date < '2024-10-08';

-- Find All Assignments Due in October -- 
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%'

-- Find the Most Recent Completed Assignment -- 
SELECT due_date
FROM assignments
WHERE status != 'Completed';

