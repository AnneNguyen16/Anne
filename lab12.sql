-- Thuy Tram Anh Nguyen 

-- 1. Concatenate course_name and semester fields with a hyphen 
SELECT 
    course_name || ' - ' || semester AS course_semester
FROM 
    courses;

-- 2. Find courses with labs on Friday 
SELECT 
    course_id, 
    course_name, 
    lab_time
FROM 
    courses
WHERE 
    lab_day = 'Friday';

-- 3. List assignments with a due_date after the current date
SELECT 
    assignment_id, 
    title, 
    due_date
FROM 
    assignments
WHERE 
    due_date > CURRENT_DATE;

-- 4. Count the number of assignments for each status
SELECT 
    status, 
    COUNT(*) AS assignment_count
FROM 
    assignments
GROUP BY 
    status;

-- 5. Find the course with the longest course_name
SELECT 
    course_id, 
    course_name
FROM 
    courses
ORDER BY 
    LENGTH(course_name) DESC
LIMIT 1;

-- 6. Return a list of all course names in uppercase
SELECT 
    UPPER(course_name) AS uppercase_course_name
FROM 
    courses;

-- 7. List titles of all assignments due in September
SELECT 
    title
FROM 
    assignments
WHERE 
    due_date LIKE '%-09-%';

-- 8. Find assignments with NULL due_date
SELECT 
    assignment_id, 
    title
FROM 
    assignments
WHERE 
    due_date IS NULL;
