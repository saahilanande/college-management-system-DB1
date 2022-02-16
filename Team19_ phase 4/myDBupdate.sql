--Query

select teach_f_name, teach_phone from F21_S001_19_teacher where teacher_id= 5001;

UPDATE F21_S001_19_teacher
SET teach_f_name = 'upname', teach_phone= 1111111111
WHERE teacher_id = 5001;

select teach_f_name, teach_phone from F21_S001_19_teacher where teacher_id= 5001;

select teach_add, teach_l_name from F21_S001_19_teacher where teacher_id= 5005;

UPDATE F21_S001_19_teacher
SET teach_add = '1002 greek row drive', teach_l_name= 'drive'
WHERE teacher_id = 5005;

select teach_add, teach_l_name from F21_S001_19_teacher where teacher_id= 5005;

select dept_id from F21_S001_19_teacher where teacher_id= 6005;

UPDATE F21_S001_19_teacher
SET dept_id = 1
WHERE teacher_id = 6005;

select dept_id from F21_S001_19_teacher where teacher_id= 6005;

--Query

select course_name from F21_S001_19_course WHERE course_id = 'CSE 5330' and section_id = 's001';

UPDATE F21_S001_19_course
SET course_name = 'Aero 1'
WHERE course_id = 'CSE 5330' and section_id = 's001';

select course_name from F21_S001_19_course WHERE course_id = 'CSE 5330' and section_id = 's001';

select course_name from F21_S001_19_course WHERE course_id = 'CHE 5368' and section_id = 's001';

UPDATE F21_S001_19_course
SET course_name = 'reaction'
WHERE course_id = 'CHE 5368' and section_id = 's001';

select course_name from F21_S001_19_course WHERE course_id = 'CHE 5368' and section_id = 's001';

select dept_no from F21_S001_19_course WHERE course_id = 'CSE 5330' and section_id = 's001';

UPDATE F21_S001_19_course
SET dept_no = 10
WHERE course_id = 'CSE 5330' and section_id = 's001';

select dept_no from F21_S001_19_course WHERE course_id = 'CSE 5330' and section_id = 's001';

--Query

select stud_phone from F21_S001_19_student WHERE student_id= 1111;

UPDATE F21_S001_19_student
SET stud_phone = 9969122233
WHERE student_id= 1111;

select stud_phone from F21_S001_19_student WHERE student_id= 1111;

select stud_f_name,stud_gf_name  from F21_S001_19_student WHERE student_id= 1111;

UPDATE F21_S001_19_student
SET stud_f_name = 'etan', stud_gf_name ='grand'
WHERE student_id= 1111;

select stud_f_name,stud_gf_name  from F21_S001_19_student WHERE student_id= 1111;


select stud_add  from F21_S001_19_student WHERE student_id= 1116;

UPDATE F21_S001_19_student
SET stud_add = '936 Walnut Avenue'
WHERE student_id= 1116;

select stud_add  from F21_S001_19_student WHERE student_id= 1116;

--Query

select course_no,section_no from F21_S001_19_teaches WHERE teach_id= 5003;

UPDATE F21_S001_19_teaches
SET course_no = 'BIO 5369',section_no = 's002'
WHERE teach_id= 5003;

select course_no,section_no from F21_S001_19_teaches WHERE teach_id= 5003;

UPDATE F21_S001_19_teaches
SET course_no = 'CHE 5366',section_no = 's001'
WHERE teach_id= 5001;

select course_no,section_no from F21_S001_19_teaches WHERE teach_id= 5003;

select course_no,section_no from F21_S001_19_teaches WHERE teach_id= 5002;

UPDATE F21_S001_19_teaches
SET course_no = 'INF 5333',section_no = 's001'
WHERE teach_id= 5002;

select course_no,section_no from F21_S001_19_teaches WHERE teach_id= 5002;

--Query

DELETE FROM F21_S001_19_teaches WHERE teach_id= 6001 and course_no='INF 5334' and section_no = 's002';

DELETE FROM F21_S001_19_teaches WHERE teach_id= 6003 and course_no='ELE 5365' and section_no = 's002';

DELETE FROM F21_S001_19_teaches WHERE teach_id= 6005 and course_no='MEC 5364' and section_no = 's002';

DELETE FROM F21_S001_19_enrolls WHERE stud_id= 1111 and course_no='CSE 5330' and section = 's001';

DELETE FROM F21_S001_19_enrolls WHERE stud_id= 1112 and course_no='CSE 5332' and section = 's001';

DELETE FROM F21_S001_19_enrolls WHERE stud_id= 1114 and course_no='CSE 5330' and section = 's001';


