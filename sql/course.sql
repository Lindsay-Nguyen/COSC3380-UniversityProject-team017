-- Enable serial if not already
CREATE TABLE Course (
    CourseID SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Credits INT NOT NULL CHECK (Credits BETWEEN 1 AND 5),
    Dept VARCHAR(10) NOT NULL
);
-- General Education
INSERT INTO Course (Title, Credits, Dept) VALUES
('English Composition I', 3, 'ENGL'),
('Public Speaking', 3, 'COMM'),
('U.S. History I', 3, 'HIST'),
('Introduction to Psychology', 3, 'PSYC'),
('College Algebra', 3, 'MATH'),
('Introduction to Computing', 3, 'COSC'),
('Principles of Microeconomics', 3, 'ECON'),
('Introduction to Philosophy', 3, 'PHIL'),
('Art Appreciation', 3, 'ARTS'),
('Statistics', 3, 'MATH');

-- Computer Science
INSERT INTO Course (Title, Credits, Dept) VALUES
('Computer Science and Programming', 3, 'COSC'),
('Data Structures', 3, 'COSC'),
('Database Systems', 3, 'COSC'),
('Algorithms and Complexity', 3, 'COSC'),
('Operating Systems', 3, 'COSC'),
('Software Engineering', 3, 'COSC'),
('Machine Learning', 3, 'COSC'),
('Web Application Development', 3, 'COSC');

-- Mathematics
INSERT INTO Course (Title, Credits, Dept) VALUES
('Calculus I', 4, 'MATH'),
('Calculus II', 4, 'MATH'),
('Discrete Mathematics', 3, 'MATH'),
('Linear Algebra', 3, 'MATH'),
('Probability and Statistics', 3, 'MATH');

-- Biology
INSERT INTO Course (Title, Credits, Dept) VALUES
('General Biology I', 4, 'BIOL'),
('General Biology II', 4, 'BIOL'),
('Genetics', 4, 'BIOL'),
('Cell Biology', 4, 'BIOL'),
('Microbiology', 4, 'BIOL');

-- Chemistry
INSERT INTO Course (Title, Credits, Dept) VALUES
('General Chemistry I', 3, 'CHEM'),
('General Chemistry II', 3, 'CHEM'),
('Organic Chemistry I', 3, 'CHEM'),
('Organic Chemistry II', 3, 'CHEM');

-- Business
INSERT INTO Course (Title, Credits, Dept) VALUES
('Introduction to Business', 3, 'BUSI'),
('Financial Accounting', 3, 'ACCT'),
('Managerial Accounting', 3, 'ACCT'),
('Principles of Marketing', 3, 'MKTG'),
('Principles of Finance', 3, 'FINA'),
('Organizational Behavior', 3, 'MGMT'),
('Business Communication', 3, 'BUSI'),
('Business Law', 3, 'BUSI'),
('International Business', 3, 'BUSI');
