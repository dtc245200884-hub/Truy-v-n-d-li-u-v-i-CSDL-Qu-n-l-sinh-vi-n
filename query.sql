USE QuanLySinhVien;

-- 1. Hiển thị tất cả sinh viên
SELECT *
FROM Student;

-- 2. Hiển thị sinh viên đang học
SELECT *
FROM Student
WHERE Status = true;

-- 3. Hiển thị môn học có thời gian học < 10
SELECT *
FROM Subject
WHERE Credit < 10;

-- 4. Hiển thị sinh viên lớp A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S
JOIN Class C ON S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';

-- 5. Hiển thị điểm môn CF
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M ON S.StudentId = M.StudentId
JOIN Subject Sub ON M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';
