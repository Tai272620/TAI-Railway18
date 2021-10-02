
CREATE DATABASE Testing_System_Assignment_1;

USE Testing_System_Assignment_1;

/* Department */
DROP TABLE IF EXISTS Department;

CREATE TABLE department (
	DepartmentID	TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    DepartmentName	VARCHAR(50) NOT NULL UNIQUE
);

/* Position */
DROP TABLE IF EXISTS Position;

CREATE TABLE Position (
	PositionID 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    PositionName 	ENUM ('Dev1', 'Dev2', 'PM', 'Leader', 'Scrum Master', 'Tester')
    );

/* Account */
DROP TABLE IF EXISTS Account;
CREATE TABLE `Account` (
    AccountID 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Email 			VARCHAR(50) UNIQUE,
    Username 		VARCHAR(50) NOT NULL,
    Fullname 		VARCHAR(50),
    DepartmentID 	TINYINT UNSIGNED,
    PositionID 		TINYINT UNSIGNED,
    CreatedDate 		DATETIME,
    CONSTRAINT fk_account_department	FOREIGN KEY (DepartmentID)	REFERENCES department (DepartmentID)	ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_account_position		FOREIGN KEY (PositionID)	REFERENCES position (PositionID)		ON DELETE SET NULL ON UPDATE CASCADE
    );
    
/* group */
DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
	GroupID		MEDIUMINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    GroupName	VARCHAR(50) NOT NULL,
    CreatorID	MEDIUMINT UNSIGNED,
    CreatedDate DATETIME
);

/* groupaccount */
DROP TABLE IF EXISTS groupaccount;

CREATE TABLE groupaccount (
	GroupID		MEDIUMINT,
    AccountID	MEDIUMINT,
    JoinDate 	DATETIME DEFAULT NOW()
);

/* typequestion */
DROP TABLE IF EXISTS typequestion;

CREATE TABLE typequestion (
	TypeID 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    TypeName	VARCHAR(50)
);

/* categoryquestion */
DROP TABLE IF EXISTS categoryquestion;

CREATE TABLE categoryquestion (
	CategoryID 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    CategoryName	ENUM ('Java', 'SQL', '.NET', 'Ruby', 'Python', 'NodeJS', 'HTML', 'CSS', 'JavaScript')
);

/* question */
DROP TABLE IF EXISTS question;

CREATE TABLE question (
	QuestionID 	TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Content 	VARCHAR(50),
    CategoryID	TINYINT UNSIGNED,
    TypeID		TINYINT UNSIGNED,
    CreatorID	MEDIUMINT UNSIGNED,
    CreatedDate	DATETIME,
    CONSTRAINT fk_question_categoryquestion FOREIGN KEY (CategoryID) REFERENCES categoryquestion (CategoryID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_question_typequestion FOREIGN KEY (typeID) REFERENCES typequestion (TypeID) ON DELETE SET NULL ON UPDATE CASCADE
    );

/* answer */
DROP TABLE IF EXISTS answer;

CREATE TABLE answer (
	AnswerID 	TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Content 	VARCHAR(50),
    QuestionID 	TINYINT UNSIGNED,
    IsCorrect	BIT,
    CONSTRAINT fk_answer_question FOREIGN KEY (QuestionID) REFERENCES question (QuestionID) ON DELETE SET NULL ON UPDATE CASCADE
    );
    
/* exam */
DROP TABLE IF EXISTS exam;

CREATE TABLE exam (
	ExamID 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Code` 		VARCHAR(20) NOT NULL,
    Title		VARCHAR(50) NOT NULL,
    CategoryID 	TINYINT UNSIGNED,
    Duration 	TINYINT,
    CreatorID 	MEDIUMINT UNSIGNED,
    CreatedDate	DATETIME,
    CONSTRAINT fk_exam_categoryquestion FOREIGN KEY (CategoryID) REFERENCES categoryquestion (CategoryID) ON DELETE SET NULL ON UPDATE CASCADE
    );

/* examquestion */
DROP TABLE IF EXISTS examquestion;

CREATE TABLE examquestion (
	ExamID 	TINYINT UNSIGNED,
    QuestionID TINYINT UNSIGNED,
     CONSTRAINT fk_examquestion_exam FOREIGN KEY (ExamID) REFERENCES exam (ExamID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_examquestion_question FOREIGN KEY (QuestionID) REFERENCES question (QuestionID) ON DELETE SET NULL ON UPDATE CASCADE
    );

INSERT INTO department (DepartmentName)
    VALUES 	('Phong Ke Toan'),
			('Phong Hanh Chinh'),
            ('Phong Cham Soc Khach Hang'),
            ('Phong Nhan Su'),
            ('Phong Cong Nghe Thong Tin'),
            ('Phong Marketing'),
            ('Phong Sale'),
            ('Phong Thu Mua'),
            ('Phong Nghien Cuu Va Phat Trien San Pham'),
            ('Phong Giam Doc')
;

INSERT INTO position (PositionName)
    VALUES	('Dev1'),
			('Dev2'),
            ('Tester'),
            ('PM'),
            ('Leader'),
            ('Scrum Master')
;

INSERT INTO `account` (Email, Username, Fullname, DepartmentID, PositionID, CreatedDate)
    VALUES 	('Apple_account1@gmail.com', 'Apple1', 'Do Thanh Tai', 1, 1, '2020-11-11'),
			('Apple_account2@gmail.com', 'Apple2', 'Nguyen Trong Chien', 1, 2, '2020-11-12'),
            ('Apple_account3@gmail.com', 'Apple3', 'Nguyen Van Khoi', 3, 2, '2019-11-12'),
            ('Apple_account4@gmail.com', 'Apple4', 'Nguyen Minh Quan', 4, 3, '2019-5-10'),
            ('Apple_account5@gmail.com', 'Apple5', 'Doan Cong Hau', 6, 1, '2019-6-10'),
            ('Apple_account6@gmail.com', 'Apple6', 'Huynh Mai Bao Lam', 1, 1, '2019-6-15'),
            ('Apple_account7@gmail.com', 'Apple7', 'Nguyen Thi Hoai Xuan', 7, 4, '2020-6-15'),
            ('Apple_account8@gmail.com', 'Apple8', 'Nguyen Minh An', 2, 1, '2020-4-1'),
            ('Apple_account9@gmail.com', 'Apple9', 'Tran Quoc Bao', 2, 1, '2020-5-1'),
            ('Apple_account10@gmail.com', 'Apple10', 'Tran Quoc Linh', 2, 1, '2020-6-1')
;

INSERT INTO `account` (Email, Username, Fullname, DepartmentID, PositionID, CreatedDate)
   VALUE ('Apple_account11@gmail.com', 'Apple11', 'Tran Quoc Thinh', 2, 1, NOW())
;

INSERT INTO `group` (GroupName, CreatorID, Createddate)
    VALUES 	('Nhom 1', '1', '2021-12-1'),
			('Nhom 2', '2', '2021-6-1'),
            ('Nhom 3', '3', '2019-3-5'),
            ('Nhom 4', '4', '2020-4-2'),
            ('Nhom 5', '5', '2019-1-1'),
            ('Nhom 6', '6', '2021-10-10'),
            ('Nhom 7', '7', '2021-3-26'),
            ('Nhom 8', '8', '2021-5-25'),
            ('Nhom 9', '9', NOW()),
            ('Nhom 10', '10', NOW())
;

INSERT INTO groupaccount (GroupID, AccountID, JoinDate)
    VALUES 	('1', '1', '2020-8-8'),
			('2', '3', '2021-9-8'),
            ('1', '2', '2020-10-8'),
            ('5', '1', '2020-1-2'),
            ('4', '5', '2021-7-8'),
            ('2', '1', '2020-5-29'),
            ('3', '1', '2021-3-14'),
            ('2', '2', '2021-9-12'),
            ('3', '3', '2020-2-8'),
            ('4', '3', NOW())
;

INSERT INTO typequestion (TypeName)
    VALUES 	('Trac Nghiem'),
			('Tu Luan')
;

INSERT INTO categoryquestion (CategoryName)
    VALUES  ('Java'),
		   ('SQL'),
		   ('HTML'),
		   ('CSS '),
		   ('.NET'),
		   ('Python'),
		   ('Ruby'),
		   ('JavaScript')
;

INSERT INTO `question` (Content, CategoryID, TypeID, CreatorID, CreatedDate)
	VALUES ('Câu hỏi SQL 1', 2, 2, 1, '2021-04-01'),
		   ('Câu hỏi SQL 2', 2, 2, 2, '2020-01-01'),
		   ('Câu hỏi JAVA 1', 1, 1, 10, '2021-07-01'),
		   ('Câu hỏi JAVA 2', 1, 2, 5, '2021-06-01'),
		   ('Câu hỏi HTML 1', 3, 1, 2, NOW()),
		   ('Câu hỏi HTML 2', 3, 2, 2, NOW())
;

INSERT INTO answer (Content, QuestionID, IsCorrect)
	VALUES ('Câu trả lời 1 - question SQL 1', 1, 1),
		   ('Câu trả lời 2 - question SQL 1', 1, 0),
		   ('Câu trả lời 3 - question SQL 1', 1, 0),
		   ('Câu trả lời 4 - question SQL 1', 1, 1),
		   ('Câu trả lời 1 - question SQL 2', 2, 0),
		   ('Câu trả lời 2 - question SQL 2', 2, 0),
		   ('Câu trả lời 3 - question SQL 2', 2, 0),
		   ('Câu trả lời 4 - question SQL 2', 2, 1),
		   ('Câu trả lời 1 - question JAVA 1', 3, 0),
		   ('Câu trả lời 2 - question JAVA 1', 3, 1),
		   ('Câu trả lời 1 - question JAVA 2', 4, 0),
		   ('Câu trả lời 2 - question JAVA 2', 4, 0),
		   ('Câu trả lời 3 - question JAVA 2', 4, 0),
		   ('Câu trả lời 4 - question JAVA 2', 4, 1),
		   ('Câu trả lời 1 - question HTML 1', 5, 1),
		   ('Câu trả lời 2 - question HTML 2', 5, 0)
;

INSERT INTO exam (Code, Title, CategoryID, Duration, CreatorID, CreatedDate)
    VALUES  ('MS_01', 'De thi 01', 1, 90, 1, NOW()),
		   ('MS_02', 'De thi 02', 1, 60, 5, NOW()),
		   ('MS_03', 'De thi 03', 2, 60, 9, '2019-11-11'),
		   ('MS_04', 'De thi 04', 2, 90, 1, NOW()),
		   ('MS_05', 'De thi 05', 1, 60, 2, NOW()),
		   ('MS_06', 'De thi 06', 2, 90, 2, ),
		   ('MS_07', 'De thi 07', 1, 60, 1, NOW())
;

INSERT INTO examquestion
   VALUES (1, 1),
		   (2, 1),
		   (3, 1),
		   (4, 1),
		   (5, 2),
		   (6, 2),
		   (7, 2)
;


            
            
            
			
            
		





    


