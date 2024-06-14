 create table Citizen
            (
             Citizen_id        Number(7) Primary key,
             F_Name            Varchar2(20),
             L_Name            Varchar2(10),
             Voting_Account    Varchar2(10),
             Address           Varchar2(10),
             Birthdate         Date,
             Gender            char(1),
             Vote_no           Number(7),
             Password          Varchar2(10)
             voted             Varchar2(10)  );
            
        
create table Candidate 
             (
             Candidate_id       number(3)  primary key,
             Candidate_name     varchar2(10),
             Political_area     varchar2(10),
             Symbol             varchar2(10),
             Current_votes      number(7));
            

Create table Admin
             (
             SSN             Number(2) primary key,
             Passcode        varchar2(10),
             Admin_username   varchar2(10));
             
Create table Result
             (
             Candidate_id       Number(3)    Primary key,
             Candidate_name     Varchar2(10),
             Candidate_votes    Number(7));
             
             
Alter table Citizen 
ADD (Candidate_id number(3) , FOREIGN KEY(Candidate_id)
REFERENCES  Candidate(Candidate_id) );

Alter table Citizen
ADD (Admin_SSN number(2) , Foreign key(Admin_SSN)
references Admin(SSN) );

Alter table Candidate 
ADD (Admin_SSN number(2) , Foreign key(Admin_SSN)
references Admin(SSN) );

Alter table Candidate
ADD( SupperCandidate_id number(3) , foreign key(SupperCandidate_id)
references Candidate(Candidate_id));

Alter table Result
ADD(Admin_SSN number(2) , Foreign key(Admin_SSN)
references Admin(SSN));

Alter table Citizen
ADD(voted varchar2(10));

select * FROM Citizen
select * FROM Candidate
select * FROM Admin
select * FROM Result

