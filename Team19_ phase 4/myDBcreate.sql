CREATE TABLE F21_S001_19_department (
    department_id int NOT NULL PRIMARY KEY,
    department_name varchar(50) NOT NULL
);

CREATE TABLE F21_S001_19_teacher (
    teacher_id int NOT NULL PRIMARY KEY,
    teach_phone varchar(50) NOT NULL,
    teach_add varchar(100),
    teach_f_name varchar(50),
    teach_m_name varchar(50),
    teach_l_name varchar(50),
    dept_id int,
    CONSTRAINT fk_department FOREIGN KEY (dept_id) REFERENCES F21_S001_19_department(department_ID)    
); 

CREATE TABLE F21_S001_19_studentaccount (
    stud_account_id int NOT NULL PRIMARY KEY,
    due_date DATE ,
    balance_due int
); 

CREATE TABLE F21_S001_19_student (
    student_id int NOT NULL PRIMARY KEY,
    stud_phone varchar(50) NOT NULL,
    stud_add varchar(100),
    stud_f_name varchar(50),
    stud_l_name varchar(50),
    stud_gf_name varchar(50),
    stud_gl_name varchar(50),
    account_no int,
    CONSTRAINT fk_studentaccount FOREIGN KEY (account_no) REFERENCES F21_S001_19_studentaccount(stud_account_id)     
); 

CREATE TABLE F21_S001_19_course (
    course_id varchar(50) NOT NULL,
    section_id varchar(50) NOT NULL,
    course_name varchar(100),
    dept_no int ,
    constraint pk_course primary key (course_id, section_id),
    CONSTRAINT fk_departments FOREIGN KEY (dept_no) REFERENCES F21_S001_19_department(department_ID) 
); 

CREATE TABLE F21_S001_19_teaches (
    teach_id int,
    course_no varchar(50),
    section_no varchar(50),
    CONSTRAINT fk_teacher FOREIGN KEY (teach_id) REFERENCES F21_S001_19_teacher(teacher_id),  
    CONSTRAINT FK_teaches FOREIGN KEY (course_no,section_no) REFERENCES F21_S001_19_course(course_id,section_id)
); 

CREATE TABLE F21_S001_19_enrolls (
    course_no varchar(50),
    section varchar(50),
    stud_id int,
    CONSTRAINT fk_stud FOREIGN KEY (stud_id) REFERENCES F21_S001_19_student(student_id),
    CONSTRAINT FK_enrolls FOREIGN KEY (course_no,section) REFERENCES F21_S001_19_course(course_id,section_id)
); 


select c.course_id, c.section_id, c.course_name from F21_S001_19_course c INNER JOIN ON c.course_id = e.course_no;

describe F21_S001_19_department;
describe F21_S001_19_teacher;
describe F21_S001_19_studentaccount;
describe F21_S001_19_student;
describe F21_S001_19_course;
describe F21_S001_19_teaches;
describe F21_S001_19_enrolls;

