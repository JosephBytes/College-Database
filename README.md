# College Database is a database that an administer may use to query to answer certain questions.  
## Language: SQL  
## Version: Mar 18, 2024  
## Author: Joseph Abdulwahab  

### _CollegeData.sql:_
CollegeData creates and uses the college_applications database.  
CollegeData creates 3 relations: College, Student, and apply  
-  College(cName, state, enrollment)    
-  Student(sID, sName, GPA, sizeHS)
-  Apply(sID, cName, major, decision)
    
Values are populated in each relation as well. 

### _CollegeData_queries.sql:_
Queries are made on the database to answer certain questions.  
Some questions are  
  - Return the lowest & highest GPA for students that applied to CS.
  - Return the Spread of all GPAs.
  - Return the Min and Max GPAs for applicants in each college and applications to each major.
  - Find the total college enrollments by state.
  - Find the amount by which the average GPA of students applying to CS exceeds the average GPA os students not applying to CS.
  - What's number of Students we have information about. 
  - What is the number of students applying to Cornell.
  - Return each student's name and sID and the number of colleges they applied to.
  - Find the name of colleges with fewer than 5 applications. 
