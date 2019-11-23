# witech

Ashesi University is a private, not-for-profit, non-sectarian institution with an educational experience proven to prepare students for gratifying lives and professions adequately. 
Ashesi University, with the aim of improving student life and engagement despite its demanding educational model,recently opened a gym stocked with many exercise equipment. 
The equipment in the gym ranges from Power rack, barbell, dumbbell, exercise benches, smith machine, squat rack, lat pulldown machines, among others. 
The gym serves members of the Ashesi community who are fitness enthusiasts and conscious of their health and body type, the menu of losing weight, building muscles and enhancing strength.

Witech created the AshFit web application to provide tools and resources needed to improve body, keep track of body statistics, time activities and monitor nutritional intake


Using the three tier architecture;
- Front-End. We began with a low fidelity prototype to be sure of how exactly we want our application to look like. After, we tried using AdobeXD, which was a bit difficult to learn
We then went ahead to use HTML, CSS and JavaScript with the Bootsrap framework, to create the view of the application that the user interacts with.
We implemented the Homepage, Login Page, SignUp Page, Modules Page & Report Page.

- Database. An Entity Relationship Diagram was created using visual paradigm to see the structure of the DB. we then coded our entities using MySQL and imported it to myPhpMyAdmin. 
The database stores and fetches data being used by the AshFit Application.

- Back-End. To connect the front-end to the database we incorporated classes, ajax, functions, form validations and unit testing in the back-end using php and jquery. 
The classes was for the Login and Sign up pages because it is the most important algorithm that allows users to access the AshFit features. 
The Ajax was to discover the previous workout features a user has done, so when you are searching for a module, whatever letter you type brings those options out. 
Form validations using Regex and Jquery was done for all the forms.
The unit test was done for the User class, which has the Sign Up and Login Methods.
