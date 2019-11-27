Important Note:

STEP ONE:

Change your database username and password in db.php file.


Create Database Using the following Query:

DROP SCHEMA IF EXISTS witech;
CREATE DATABASE witech;
USE witech;


and Create Table either importing attached sql file (W2021.sql) or using the below SQL query:

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `initialweight` int(10) NOT NULL,
  `trn_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `weight` int(10) NOT NULL,
  `time` int(10) NOT NULL,
  `submittedby` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



STEP TWO (FOR TEAM MEMBERS TESTING):

1. Click on any of the three modules

2. Register following the validations

3. Login with ID and password (which was hashed)

4. Click on any of the modules

5. Enter weight and minutes (minutes are gotten from the timer)

6. Click on "Update" when done

7. Do 5 & 6 as much as you want

8. Click on "Get Progress Report" to view all your records

9. Logout and start again from 2 with different ID and email

10. Check the myphp database