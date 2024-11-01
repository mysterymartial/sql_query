use hadobo;
    

CREATE TABLE STUDENT (
	Id				Integer		NOT NULL,
	StudentName  	char(16) 	NOT NULL,
	age 			Integer 	NOT NULL,
	gender  		Char(10)  	NOT NULL
	-- CONSTRAINT 		stundent_PK 	PRIMARY KEY (Id)
	);

CREATE TABLE COURSE (
	Id				Integer		NOT NULL,
	Title  			char(20) 	NOT NULL,
	Faciliator 		Char(20) 	NOT NULL,
	NoOfStundent  	Integer  	NOT NULL
-- 	CONSTRAINT 		Course_PK 	PRIMARY KEY (Id)
 	);
    
--     
    CREATE TABLE GRADE (
	CourseId		Integer		NOT NULL,
	StudentId  		Integer 	NOT NULL,
	Score 			Integer 	NOT NULL
-- 	CONSTRAINT 		Grade_PK 	PRIMARY KEY (CourseId)
 	);
--     
-- ALTER TABLE Grade_SKU AUTO_INCREMENT = 1;
--     