CREATE TABLE Semester (
    SemesterID SERIAL PRIMARY KEY,
    Year INT NOT NULL CHECK (Year BETWEEN 2000 AND 2100),
    Term VARCHAR(10) NOT NULL CHECK (Term IN ('Spring', 'Summer', 'Fall')),
    StartDate DATE,
    EndDate DATE
);
INSERT INTO Semester (Year, Term, StartDate, EndDate)
VALUES
(2025, 'Spring', '2025-01-13', '2025-05-10'),
(2025, 'Summer', '2025-06-02', '2025-07-28'),
(2025, 'Fall',   '2025-08-18', '2025-12-10'),
(2026, 'Spring', '2026-01-12', '2026-05-09'),
(2026, 'Summer', '2026-06-01', '2026-07-27'),
(2026, 'Fall',   '2026-08-17', '2026-12-09');
