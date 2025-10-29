CREATE TABLE ClassSection (
    SectionID INT PRIMARY KEY,
    CourseID INT NOT NULL REFERENCES Course(CourseID) ON DELETE CASCADE,
    SemesterID INT NOT NULL REFERENCES Semester(SemesterID) ON DELETE CASCADE,
    Instructor VARCHAR(100) NOT NULL,
    Capacity INT NOT NULL CHECK (Capacity BETWEEN 1 AND 500),
    Room VARCHAR(20),
    Schedule VARCHAR(50)
);
INSERT INTO ClassSection (SectionID, CourseID, SemesterID, Instructor, Capacity, Room, Schedule)
SELECT
    ((c.course_id - 1) * 6 + s.semester_id) AS section_id,   -- 1–246 unique
    c.course_id,
    s.semester_id,
    CONCAT('Dr. ', CASE (c.course_id % 10)
        WHEN 1 THEN 'Adams'
        WHEN 2 THEN 'Brown'
        WHEN 3 THEN 'Chen'
        WHEN 4 THEN 'Davis'
        WHEN 5 THEN 'Evans'
        WHEN 6 THEN 'Garcia'
        WHEN 7 THEN 'Hernandez'
        WHEN 8 THEN 'Lee'
        WHEN 9 THEN 'Nguyen'
        ELSE 'Patel'
    END) AS Instructor,
    25 + (c.course_id % 25) AS Capacity,                      -- between 25–49
    CONCAT('ROOM-', LPAD((c.course_id * 10 + s.semester_id)::TEXT, 3, '0')) AS Room,
    CASE s.semester_id
        WHEN 1 THEN 'MW 8:00-9:15'
        WHEN 2 THEN 'TR 9:30-10:45'
        WHEN 3 THEN 'MW 11:00-12:15'
        WHEN 4 THEN 'TR 1:00-2:15'
        WHEN 5 THEN 'MW 2:30-3:45'
        ELSE 'TR 3:30-4:45'
    END AS Schedule
FROM generate_series(1, 41) AS c(course_id),
     generate_series(1, 6)  AS s(semester_id);
