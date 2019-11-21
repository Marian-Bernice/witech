CREATE TABLE IF NOT EXISTS users (
  id int(8) NOT NULL,
  email varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  initialweight int(10) NOT NULL,
  initialheight int(10) NOT NULL,
  dateofbirth varchar(50) NOT NULL,
  trn_date datetime NOT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE progress (
  id int(50) NOT NULL AUTO_INCREMENT,
  module varchar(255) NOT NULL,
  date datetime NOT NULL,
  weight int(10) NOT NULL,
  time int(10) NOT NULL,
  submittedby varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE food (
  id int(50) NOT NULL AUTO_INCREMENT,
  foodintake varchar(255) NOT NULL,
  date datetime NOT NULL,
  submittedby varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Person (
    PersonID int(8) Auto_increment NOT NULL,
    Gender enum('Male','Female'),
    LastName varchar(25) NOT NULL,
    FirstName varchar(25) NOT NULL,
    EmailAddress varchar(25) NOT NULL,
    MobileNo int(10) NOT NULL,
    PRIMARY KEY (PersonID)
);

CREATE TABLE Instructor (
    InstructorID int(8) Auto_increment NOT NULL,
    FOREIGN KEY (InstructorID) REFERENCES Person(PersonID),    
    OfficeAddress varchar(25) NOT NULL,
    Allowance int NOT NULL    
);

CREATE TABLE Cafeteria (
    CafeteriaID int(4) Auto_increment NOT NULL,
	DietGroup varchar(25),
    CafeteriaName varchar(25) NOT NULL,   
    PRIMARY KEY (CafeteriaID)    
);

CREATE TABLE Module (
    ModuleID Int(4) Auto_increment NOT NULL,
	ModuleName varchar(25) NOT NULL,
    InstructorNo int(8),
    DateIntroduced date,
    Capacity int NOT NULL,
    PRIMARY KEY (ModuleID)
);


CREATE TABLE User_Module (
    UserNum int(8) Auto_increment NOT NULL,
	FOREIGN KEY (UserNum) REFERENCES Person(PersonID),
    ModuleNumb int NOT NULL,
	FOREIGN KEY (ModuleNumb) REFERENCES Module(ModuleID),
    DateOfRegistration datetime NOT NULL    
);

CREATE TABLE Workoutroutine (    
    ModuleNum int(4) NOT NULL,
    FOREIGN KEY (ModuleNum) REFERENCES Module(ModuleID),
    UserNumb int(8) NOT NULL,
    FOREIGN KEY (UserNumb) REFERENCES Person(PersonID),
    Scheduled_date date NOT NULL,
    Scheduled_time time NOT NULL
);

CREATE TABLE Gym_Equipment (
    EquipmentID int(4) Auto_increment NOT NULL,
    EquipmentName varchar(25) NOT NULL,
    MaintananceState varchar(25) NOT NULL,
    EngagementTimes time NOT NULL,
    PRIMARY KEY (EquipmentID)
);

CREATE TABLE Module_Equipment (
    EquipmentNO int(4) NOT NULL,
	ModuleNom int(4) NOT NULL,
    FOREIGN KEY (ModuleNom) REFERENCES Module(ModuleID),
    Date_inuse date NOT NULL,
    Time_inuse time NOT NULL
);