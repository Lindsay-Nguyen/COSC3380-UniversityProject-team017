CREATE TABLE Prerequisite (
    CourseID INT NOT NULL,
    PrereqCourseID INT NOT NULL,
    PRIMARY KEY (CourseID, PrereqCourseID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE,
    FOREIGN KEY (PrereqCourseID) REFERENCES Course(CourseID) ON DELETE CASCADE,
    CHECK (CourseID <> PrereqCourseID)
);
-- Computer Science prerequisites
INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Data Structures' AND c2.Title = 'Computer Science and Programming';

INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Database Systems' AND c2.Title = 'Data Structures';

INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Algorithms and Complexity' AND c2.Title = 'Data Structures';

-- Mathematics prerequisites
INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Calculus II' AND c2.Title = 'Calculus I';

INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Linear Algebra' AND c2.Title = 'Calculus I';

-- Biology prerequisites
INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Cell Biology' AND c2.Title = 'General Biology I';

INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Genetics' AND c2.Title = 'General Biology II';

-- Chemistry prerequisites
INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Organic Chemistry I' AND c2.Title = 'General Chemistry II';

INSERT INTO Prerequisite (CourseID, PrereqCourseID)
SELECT c1.CourseID, c2.CourseID FROM Course c1, Course c2
WHERE c1.Title = 'Organic Chemistry II' AND c2.Title = 'Organic Chemistry I';
