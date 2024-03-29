## College Database: an administer may use to query to answer certain questions.  
### Language: SQL  
### Version: Mar 18, 2024  
### Author: Joseph Abdulwahab  

## _CollegeData.sql:_
CollegeData creates and uses the college_applications database.  
CollegeData creates 3 relations: College, Student, and apply  
-  College(cName, state, enrollment)    
-  Student(sID, sName, GPA, sizeHS)
-  Apply(sID, cName, major, decision)
    
Values are populated in each relation as well. 

## _CollegeData_queries.sql:_
Queries are made on the database to answer certain questions.  
Some questions are  
  1) Return the lowest & highest GPA for students that applied to CS.
  2) Return the Spread of all GPAs.
  3) Return the Min and Max GPAs for applicants in each college and applications to each major.
  4) Find the total college enrollments by state.
  5) Find the amount by which the average GPA of students applying to CS exceeds the average GPA os students not applying to CS.
  6) What's number of Students we have information about. 
  7) What is the number of students applying to Cornell.
  8) Return each student's name and sID and the number of colleges they applied to.
  9) Find the name of colleges with fewer than 5 applications. 
