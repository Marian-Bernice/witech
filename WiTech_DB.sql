DROP SCHEMA IF EXISTS WITECH;
CREATE DATABASE WITECH;
USE WITECH;

CREATE TABLE Person (
    PersonID int,
    Gender enum('Male','Female'),
    LastName varchar(25) NOT NULL,
    FirstName varchar(25) NOT NULL,
    EmailAddress varchar(25) NOT NULL,
    MobileNo int(10) NOT NULL,
    PRIMARY KEY (PersonID)
);

CREATE TABLE Instructor (
    InstructorID int,
    FOREIGN KEY (InstructorID) REFERENCES Person(PersonID),    
    OfficeAddress varchar(25) NOT NULL,
    Allowance int NOT NULL    
);

CREATE TABLE Cafeteria (
    CafeteriaID int NOT NULL,
	DietGroup varchar(25),
    CafeteriaName varchar(25) NOT NULL,   
    PRIMARY KEY (CafeteriaID)    
);

CREATE TABLE Members (
	MemberID int,
    FOREIGN KEY (MemberID) REFERENCES Person(PersonID),
    Hieght varchar(10) NOT NULL,
    Weight varchar(10) NOT NULL,
    DietType varchar(25), 
    CafeteriaNo int,
    FOREIGN KEY (CafeteriaNo) REFERENCES Cafeteria(CafeteriaID),
    DateOfBirth date NOT NULL,
    Password varchar(255) NOT NULL
    );

CREATE TABLE Activity (
    ActivityID int,
	ActivityName varchar(25) NOT NULL,
    DateIntroduced date,
    Capacity int NOT NULL,
    PRIMARY KEY (ActivityID)
);


CREATE TABLE Member_Activity (
    MemberNO int NOT NULL,
	FOREIGN KEY (MemberNO) REFERENCES Person(PersonID),
    ActivityNO int NOT NULL,
	FOREIGN KEY (ActivityNO) REFERENCES Activity(ActivityID),
    DateOfRegistration datetime NOT NULL
    
);

CREATE TABLE Workoutroutine (    
    ActivityNo int NOT NULL,
    FOREIGN KEY (ActivityNo) REFERENCES Activity(ActivityID),
    MemberNo int NOT NULL,
    FOREIGN KEY (MemberNo) REFERENCES Person(PersonID),
    Scheduled_date date NOT NULL,
    Scheduled_time time NOT NULL
);

CREATE TABLE Gym_equipment (
    EquipmentID int,
    EquipmentName varchar(25) NOT NULL,
    MaintananceFee varchar(25) NOT NULL,
    EngagementTimes time NOT NULL,
    PRIMARY KEY (EquipmentID)
);

CREATE TABLE Equipment_activity (
    EquipmentNO int NOT NULL,
    FOREIGN KEY (EquipmentNO) REFERENCES Gym_equipment(EquipmentID),
	ActivityNO int NOT NULL,
    FOREIGN KEY (ActivityNO) REFERENCES Activity(ActivityID),
    Date_inuse date NOT NULL,
    Time_inuse time NOT NULL
);
