-- 1) Lowest and Highest GPA in CS
select MIN(gpa), MAX(gpa)
from student, apply
where student.sID = apply.sID and major = 'CS';

-- 2) Spread of GPAs
select Max(gpa) - Min(gpa) as Spread
from student, apply
where student.sID = apply.sID and major = 'CS';

-- 3) Return the Min and Max GPAs of applicants in each college and major 
select apply.cName, apply.major, MIN(GPA), MAX(GPA)
from student, apply
where student.sID = apply.sID
group by cName, major;

-- 4) Find the total college enrollements by state
select college.state, SUM(enrollment) as TotalEnrollements
from college
group by state;

-- 5) Find the average GPA of students who applied to CS 
select AVG(GPA)
from student join (select sID from Apply where major = 'CS' ) as majorCS
on student.sID = majorCS.sID;

-- 6) Find the amount by which the average GPA of students applying to CS exceeds the average GPA of students not applying to CS 
select CS.avgGPA - NonCS.avgGPA as spread
from (select avg(GPA) as avgGPA 
	  from Student 				
	  where sID in(select sID from Apply where major = 'CS')
      ) as CS,
        
	(select avg(GPA) as avgGPA 
    from Student 
    where sID not in (select sID from Apply where major = 'CS')
    ) as NonCS; 

-- 7) Number of rows in the Student relation
select count(*) as NumOfRows
from Student;

-- 8) The number of distinct students applying to Cornell
select distinct count(*)
from student join (select sID from Apply where cName = 'Cornell' group by sID ) as cnell
on student.sID = cnell.sID;

-- 9a) Return each student's sID and the number of colleges that they have applied to.
select Student.sID, count(distinct cName) as NumColleges
from Student, Apply
where Student.sID = Apply.sID
group by Student.sID
union			
select sID, 0			-- students that have applied to no colleges 
from Student
where sID not in (Select sID from Apply); 


-- 9b) Find their name as well along with their sID, and number of colleges applied to.
select z.sName as Name, z.sID, subquery.NumColleges
from Student z join 
	(select Student.sID as DerivedID, count(distinct cName) as NumColleges
	from Student, Apply
	where Student.sID = Apply.sID
	group by Student.sID
	union			
	select sID q, 0 as NumColleges			-- students that have applied to no colleges 
	from Student
	where sID not in (Select sID from Apply)
) as subquery on z.sID = subquery.DerivedID;

-- 10) Find the name of colleges with fewer than 5 applications
select cName
from Apply
group by cName
having count(*) < 5; 















