/* CREATE THESE TABLES IN ORDER. */
create table Staff(
    staffID bigint auto_increment(0),
    firstname varchar(20) not null,
    surname varchar(20) not null,
    dateOfBirth varchar(10) not null, 
    gender varchar(10) not null,
    username varchar(15) not null unique,
    password varchar(20) not null,
    email varchar(30) not null unique, 
    phoneNumber varchar(20) not null,
    description varchar(300) not null,
    address varchar(30) not null,
    category varchar(30) not null,
    searching boolean,
    constraint staff_PK primary key (staffID)
);

create table Student(
    studentID integer not null unique,
    firstname varchar(20) not null,
    surname varchar(20) not null,
    dateOfBirth varchar(10) not null, 
    gender varchar(10) not null, 
    username varchar(15) not null unique,
    password varchar(20) not null,
    email varchar(30) not null unique,
    phoneNumber varchar(20) not null,
    description varchar(300) not null,
    address varchar(30) not null, 
    category varchar(30) not null,
    searching boolean,
    constraint student_PK primary key (studentID)
);

create table ContactRequest(
    contactrequestid bigint auto_increment(0),
    studentID integer not null,
    staffID integer not null,
    staffFirstname varchar(20) not null,
    staffLastname varchar(20) not null,
    studentFirstname varchar(20) not null,
    studentLastname varchar(20) not null,
    message varchar(300) not null,
    staffemail varchar(30) not null,
    studentemail varchar(30) not null,
    staffphonenumber varchar(20) not null,
    studentphonenumber varchar(20) not null,
    studenttoprofessor boolean not null,
    constraint CR_PK primary key (contactrequestid),
    constraint CR_FK_Student foreign key (studentID) references Student,
    constraint CR_FK_Staff foreign key (staffID) references Staff
);

/* 
 * CREATE THESE INSERT STATEMENTS IN ORDER.
 * IF YOU ADD A NEW ACCOUNT TO THIS, MAKE SURE USERNAME IS ALL LOWERCASE. 
 */
insert into Student (studentID, firstname, surname, dateOfBirth, gender, username, password, email,phoneNumber,description,address, category, searching) 
values (1143134, 'Leon', 'Hoogenraad','20/05/1998','Male', 'lhoogenraad', 'password', 'le.o.n@outlook.com','(+64)021 0261 1321','Hi there, I am looking for a lecturer to pair with for my PhD.','16 Some Street, Dunedin','Computer Science', false);
insert into Student (studentID, firstname, surname, dateOfBirth, gender, username, password, email,phoneNumber,description,address, category, searching)  
values (2423423, 'Hugo', 'Baird','12/03/1999','Male', 'hbaird', 'password','hugo.baird@gmail.com','(+64)021 0812 0097','I am here to find a supportive staff member to help me complete my post-graduate research.','153 Park Street, dunedin','Computer Science', false);
insert into Student (studentID, firstname, surname, dateOfBirth, gender, username, password, email,phoneNumber,description,address, category, searching)  
values (3345345, 'Julia', 'McDowell','17/05/1999','Female', 'jmcdowell', 'password', 'julia@student.otago.ac.nz','(+64)021 0278 8182','I am smart, send me a message!','13 North Street, Dunedin', 'Information Science', false);
insert into Student (studentID, firstname, surname, dateOfBirth, gender, username, password, email,phoneNumber,description,address, category, searching)  
values (4866788, 'Cedric', 'Stephani','19/10/1998','Male', 'cstephani', 'password', 'cedric.wanaka@gmail.com','(+64)021 0278 9143','Please message me if you are looking for student taking Computer Science for post-grad.','23 Forth Street, Dunedin', 'Computer Science', false);
insert into Student (studentID, firstname, surname, dateOfBirth, gender, username, password, email,phoneNumber,description,address, category, searching)  
values (2422335, 'Carly', 'Ryan','7/09/1998','Female', 'carlyryan', 'password', 'carlyryan@outlook.com','(+64)021 0271 56881','I am a hard-working student, who is interested in completing a PhD in Information Science.','123 Four Street, Dunedin', 'Information Science', false);

insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching) 
values ('Cathie', 'Williams','20/03/1990','Female', 'imdaniel', 'password', 'dcosta@outlook.com','(+64)021 0261 4628','I am providing an opportunity for an Information Science student to undero research for their PhD or Masters.','31 Grove Street, Dunedin', 'Information Science', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching) 
values ('Caitlin', 'Owen','20/03/1990','Female', 'imdaniel', 'password', 'dcosta@outlook.com','(+64)021 0261 4628','I am providing an opportunity for an Information Science student to undero research for their PhD or Masters.','31 Grove Street, Dunedin', 'Information Science', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching) 
values ('Dione', 'Barratt','20/03/1990','Female', 'imdaniel', 'password', 'dcosta@outlook.com','(+64)021 0261 4628','I am providing an opportunity for an Information Science student to undero research for their PhD or Masters.','31 Grove Street, Dunedin', 'Information Science', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching) 
values ('Mark', 'George','20/03/1990','Male', 'mgeorge', 'password', 'dcosta@outlook.com','(+64)021 0261 4628','I am providing an opportunity for an Information Science student to undero research for their PhD or Masters.','31 Grove Street, Dunedin', 'Information Science', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching) 
values ('Daniel', 'Alencar da Costa','20/03/1990','Male', 'imdaniel', 'password', 'dcosta@outlook.com','(+64)021 0261 4628','I am providing an opportunity for an Information Science student to undero research for their PhD or Masters.','31 Grove Street, Dunedin', 'Information Science', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching)
values ('Andrew', 'Trotman','10/09/1970','Male', 'andrewtrotman', 'password', 'andrew@cs.otago.ac.nz','(+64)021 0279 0163','I am here to search for a research project partner','130 Smith Street, dunedin', 'Biology', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching)
values ('Steven', 'Livingstone','09/12/1980','Male', 'slivingstone', 'password', 's.livingstone@otago.com','(+64)021 0261 3761','I am here to search for a research project partner','100 smooth street dunedin', 'Marketing', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching)
values ('Sanjay', 'Gupta','01/01/1978','male', 'sanjaygupta', 'password', 'sajay@gmail.com','02102563721','I am here to search for a research project partner','60 baldwin street dunedin', 'Medical Studies', false);
insert into Staff (firstname, surname,dateOfBirth,gender, username, password, email,phoneNumber,description,address, category, searching)
values ('Jacinda', 'Ardern','12/07/1988','female', 'primeminister', 'password', 'jacinda@minister.com','02102272431','I am here to search for a research project partner','17 park street dunedin', 'Politics', false);

/* REMEMBER: if you add more contact requests like that, ensure the ID's and names match otherwise the program may break! */
insert into ContactRequest (studentID, staffID, studentFirstname, studentLastname, staffFirstname, staffLastname, message, staffemail, studentemail, staffphonenumber, studentphonenumber, studenttoprofessor)
values (1143134, 4, 'Leon', 'Hoogenraad', 'Jacinda', 'Ardern', 'Hello Jacinda', 'jacinda@minister.com', 'le.o.n@outlook.com', '021026111321', '02102272431', true);
insert into ContactRequest (studentID, staffID, studentFirstname, studentLastname, staffFirstname, staffLastname, message, staffemail, studentemail, staffphonenumber, studentphonenumber, studenttoprofessor)
values (2423423, 4, 'Hugo', 'Baird', 'Jacinda', 'Ardern', 'Hello Jacinda from Hugo at 02/05/2020', 'jacinda@minister.com', 'hugo@outlook.com', '021026111321', '02102788182', true);
insert into ContactRequest (studentID, staffID, studentFirstname, studentLastname, staffFirstname, staffLastname, message, staffemail, studentemail, staffphonenumber, studentphonenumber, studenttoprofessor)
values (4866788, 4, 'Cedric', 'Stephani', 'Jacinda', 'Ardern', 'Hello Cedric', 'jacinda@minister.com', 'cedric@outlook.com', '021026111321', '02102789143', false);
insert into ContactRequest (studentID, staffID, studentFirstname, studentLastname, staffFirstname, staffLastname, message, staffemail, studentemail, staffphonenumber, studentphonenumber, studenttoprofessor)
values (2423423, 4, 'Hugo', 'Baird', 'Jacinda', 'Ardern', 'Hello Hugo', 'jacinda@minister.com', 'hugo@outlook.com', '021026111321', '02102788182',false);