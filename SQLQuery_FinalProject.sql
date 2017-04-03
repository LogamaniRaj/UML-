Create database JobPortal_FinalProject
use JobPortal_FinalProject

Create table JobSeekers
(
JSEmailID varchar(40) primary key,
JSName varchar(40),
JSPhone varchar(40) unique,
JSDateofBirth datetime,
JSGender varchar(40),
JSAddress varchar(40),
JSCity varchar(40),
JSLinkedInID varchar(40)
)
Create table JSEducationDetails
(
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
JSHighestEducation varchar(40),
JSCourse varchar(40),
JSSpecialization varchar(40),
JSUniversity varchar(40),
JSCourseType varchar(40),
JSPassOutYear int,
JSPercentage int
)
Create table JSPreference
(
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
JSLocation1 varchar(40),
JSLocation2 varchar(40),
JSRelocation varchar(40),
JSEmploymentType varchar(40),
JSExpectedSalary int,
JSStatus varchar(40)
)
Create table JS_ExperienceDetails
(
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
JSCompanyName varchar(40),
JSJoiningDate date,
JSEndDate date,
JSDesignation varchar(40),
JSExperience int,
)
Create table JS_SkillSet
(
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
JSSkill varchar(40),
JSVersion varchar(40),
JSLastUsed datetime,
JSExperience int,
JSProjectTitle varchar(40),
JSDuration int
)

create table JSUpload
(
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
JSPhoto varchar(60),
Resume varchar(100),
idproof varchar(50),
idproofdoc varchar(100)
)

Create table Employers
(
EmployerID int identity(100,1),
CompanyLogo varchar(100),
EmailAddress varchar(100) primary key,
CompanyName varchar(60),
CompanyWebsite varchar(100),
ContactNumber varchar(40) unique
)

Create table JobDetails
(
JobID int identity(200,1) primary key,
EmailAddress varchar(100) foreign key references Employers(EmailAddress),
JobTitle varchar(100),
JobDescription varchar(4000),
JobLocation varchar(100),
IndustryType varchar(100),
FunctionalArea varchar(100),
Qualifications varchar(4000),
MinExperience int,
MaxExperience int,
Salary int,
NumberofVacancies int,
PostedDate datetime,
LastDateToApply datetime
)

Create table ApplyForJob
(
JobID int foreign key references JobDetails(JobID),
JSEmailID varchar(40) foreign key references JobSeekers(JSEmailID),
EmailAddress varchar(100),
CompanyLogo varchar(100),
CompanyName varchar(60),
JobTitle varchar(100),
Salary int,
ApplyDate datetime
)

select * from JobSeekers
select * from JSEducationDetails
select * from JSPreference
select * from JS_ExperienceDetails
select * from JS_SkillSet
select * from JSUpload
select * from Employers
select * from JobDetails
select * from ApplyForJob









