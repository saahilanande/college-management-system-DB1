-- Query 1: Get the department name and the name of the teacher who teaches course Database Systems

select t.teach_f_name, t.teach_m_name, t.teach_l_name, d.department_name  from F21_S001_19_teacher t , F21_S001_19_department d
where d.department_id = t.dept_id and teacher_id in (
select teach_id from F21_S001_19_teaches where course_no in (select course_id from F21_S001_19_course where course_name = 'Database Systems'));

-- Query 2: Get the name of the student who has enrolled in more than three courses.

select distinct s.stud_f_name, s.stud_l_name from F21_S001_19_student s inner join F21_S001_19_enrolls e on s.student_id in (
select stud_id from F21_S001_19_enrolls group by stud_id having count(*)> 3);

-- Query 3: Get the student ID and balance due of each student and the total amount due of all the student together

SELECT a.stud_account_id, sum(a.balance_due) as total_amount
FROM F21_S001_19_studentaccount a INNER JOIN F21_S001_19_student s on a.stud_account_id = s.account_no
GROUP BY rollup (stud_account_id);

--Query 4: Get the student ID and total number of course enrolled by that student and the grand total of total number of courses enrolled

select stud_id, count(course_no) as Total_course_enrolled from F21_S001_19_enrolls group by rollup (stud_id);

--Query 5: Get the number of teachers teaching a particular course in its respective section

SELECT course_no, section_no, COUNT(*) OVER(PARTITION BY course_no, section_no) as Total_Teachers FROM F21_S001_19_teaches order by Total_Teachers desc ;

--Query 6: Get the total number of student enrolled in each course in its repsective section

SELECT course_no, section, COUNT(*) OVER(PARTITION BY course_no, section) as Total_Student FROM F21_S001_19_enrolls order by Total_Student desc ;

--Query 7 : Get the total number of student in a particular department

select dept_no, count(DISTINCT stud_id) from F21_S001_19_enrolls e inner join  F21_S001_19_course c on e.course_no = c.course_id group by dept_no order by dept_no;


SELECT course_no, section, COUNT(*) OVER(PARTITION BY course_no, section) as Total_Student FROM F21_S001_19_enrolls where course_no ='BIO 5368' and section = 's002' sec order by Total_Student desc ;