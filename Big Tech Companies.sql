-- AMAZON
-- Fixing Eployer Column in AMAZON Table - WEB SERVICES
update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON SERVICES INC','AMAZON SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON SERVICES LLC','AMAZON SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICES INCâ ','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICE INC','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SEERVICES INC','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICESINC','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICES LLC','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICES','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON WEB SERVICES INC','AMAZON WEB SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON COM SERVICES LLC','AMAZON SERVICES')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON COM SERVICES INC','AMAZON SERVICES')
FROM Big_Tech_Companies..Amazon$

--Fixing Eployer Column in AMAZON Table - CORPORATE
update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORPROATE LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORPORTATE LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORPORTE LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORP LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORPORATE','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON CORPORATE LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER,'AMAZON COPORATE LLC','AMAZON CORPORATE')
FROM Big_Tech_Companies..Amazon$


-- Fixing Eployer Column in AMAZON Table - FULFILLMENT SERVICES and FRESH
update Big_Tech_Companies..Amazon$
set EMPLOYER =
case
	when EMPLOYER = 'AMAZON FULFILLMENT SERVICES' then 'AMAZON FULFILLMENT'
	when EMPLOYER = 'AMAZON FUFILLMENT SERVICES INC' then 'AMAZON FULFILLMENT'
	when EMPLOYER = 'AMAZON FULFILLMENT SVCS INC' then 'AMAZON FULFILLMENT'
	when EMPLOYER = 'AMAZON FRESH LLC' then 'AMAZON FRESH'
	when EMPLOYER = 'AMAZON FULFILLMENT SERVICES INC' then 'AMAZON FULFILLMENT'
end
FROM Big_Tech_Companies..Amazon$
where EMPLOYER like 'AMAZON F%'


-- Fixing Eployer Column in AMAZON Table - MEDIA GROUP
update Big_Tech_Companies..Amazon$
set EMPLOYER =
case
	when EMPLOYER = 'AMAZON MEDIA GROUP LLC' then 'AMAZON MEDIA GROUP' 
	when EMPLOYER = 'AMAZON MEDIA GROUP' then 'AMAZON MEDIA GROUP' 
end
FROM Big_Tech_Companies..Amazon$
where EMPLOYER like 'AMAZON Med%'

-- Fixing Eployer Column in AMAZON Table -  Development, DIGITAL, Data GROUP
update Big_Tech_Companies..Amazon$
set EMPLOYER =
case
	when EMPLOYER = 'AMAZON DEVELOPEMENT CENTER US INC' then 'AMAZON DEVELOPMENT CENTER' 
	when EMPLOYER = 'AMAZON DEVELOPMENT CENTER INC' then 'AMAZON DEVELOPMENT CENTER' 
	when EMPLOYER = 'AMAZON DEV CENTER US INC' then 'AMAZON DEVELOPMENT CENTER' 
	when EMPLOYER = 'AMAZON DIGITAL SERVICES LLC' then 'AMAZON DIGITAL SERVICES' 
	when EMPLOYER = 'AMAZON DIGITAL SERVICES INC' then 'AMAZON DIGITAL SERVICES' 
	when EMPLOYER = 'AMAZON DATA SERVICES INC' then 'AMAZON DATA SERVICES' 
	when EMPLOYER = 'AMAZON DEVELOPMENT CENTER US INC' then 'AMAZON DEVELOPMENT CENTER' 
end
FROM Big_Tech_Companies..Amazon$
where EMPLOYER like 'AMAZON D%'


-- Fixing Eployer Column in AMAZON Table - ROBOTICS, REGISTRY, RETAIL, RESTAURANT
update Big_Tech_Companies..Amazon$
set EMPLOYER =
case
	when EMPLOYER = 'AMAZON ROBOTICS LLC (KIVA)' then 'AMAZON ROBOTICS' 
	when EMPLOYER = 'AMAZON RESTAURANT & BAR INC' then 'AMAZON RESTAURANT & BAR' 
	when EMPLOYER = 'AMAZON RETAIL LLC' then 'AMAZON RETAIL' 
	when EMPLOYER = 'AMAZON REGISTRY SERVICES INC' then 'AMAZON REGISTRY' 
	when EMPLOYER = 'AMAZON REGISTRY SERVICES' then 'AMAZON REGISTRY' 
	when EMPLOYER = 'AMAZON ROBOTICS LLC' then 'AMAZON ROBOTICS'  
end
FROM Big_Tech_Companies..Amazon$
where EMPLOYER like 'AMAZON R%'


-- Fixing Eployer Column in AMAZON Table - AERO, ADVERTISING 
update Big_Tech_Companies..Amazon$
set EMPLOYER =
case
	when EMPLOYER = 'AMAZON ADVERTISING LLC' then 'AMAZON ADVERTISING' 
	when EMPLOYER = 'AMAZON AERO SERVICES LLC' then 'AMAZON AERO SERVICES'    
end
FROM Big_Tech_Companies..Amazon$
where EMPLOYER like 'AMAZON A%'


--Fixing data spealling in employer for Amazon
update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER, 'AMAZON CAPITAL SERVICES INC','AMAZON CAPITAL SERVICES')
FROM Big_Tech_Companies..Amazon$ 

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER, 'AMAZON MECHANICAL TURK INC','AMAZON TRUCK')
FROM Big_Tech_Companies..Amazon$ 

update Big_Tech_Companies..Amazon$
set EMPLOYER = replace(EMPLOYER, 'AMAZON PHARMACY INC','AMAZON PHARMACY')
FROM Big_Tech_Companies..Amazon$ 
 
 
--Spliting Location Column into state and City for Amazon
alter table Big_Tech_Companies..Amazon$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Amazon$  

update Big_Tech_Companies..Amazon$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Amazon$
set City = PARSENAME(replace(location,',','.'),2)  

--fixing data columns for Amazon
alter table Big_Tech_Companies..Amazon$
ALTER COLUMN [SUBMIT DATE] date 

alter table Big_Tech_Companies..Amazon$
ALTER COLUMN [START DATE] date

-- Creating sector Column by spliting Employer into Sector
alter table Big_Tech_Companies..Amazon$
add Employer_new varchar(255),Sector varchar(255)

select 
EMPLOYER,
SUBSTRING(Employer,1, +6) as Employer, 
SUBSTRING(Employer,CHARINDEX(' ',Employer)+1,len(Employer)) as Sector
from Big_Tech_Companies..Amazon$  

update Big_Tech_Companies..Amazon$  
set Employer_new = SUBSTRING(Employer,1, +6) 

update Big_Tech_Companies..Amazon$  
set Sector = SUBSTRING(Employer,CHARINDEX(' ',Employer)+1,len(Employer))

--deleting Unwanted Columns for Amazon
alter table Big_Tech_Companies..Amazon$
Drop COLUMN  EMPLOYER

--fixing EMPLOYER COLUMN NAME
alter table Big_Tech_Companies..Amazon$
add EMPLOYER varchar(255)

update Big_Tech_Companies..Amazon$  
set EMPLOYER = Employer_new

alter table Big_Tech_Companies..Amazon$
Drop COLUMN  Employer_new

select *
from Big_Tech_Companies..Amazon$

-- Deleting Duplicates
with CTE_AMAZON as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City, Sector, EMPLOYER
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Amazon$)

Delete
from CTE_AMAZON
where ROW_INDEX > 1

--Apple

--Spliting Location Column into state and City for apple 
alter table Big_Tech_Companies..Apple$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Apple$  

update Big_Tech_Companies..Apple$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Apple$
set City = PARSENAME(replace(location,',','.'),2)  

--fixing data columns for Apple
alter table Big_Tech_Companies..Apple$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Apple$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Apple
alter table Big_Tech_Companies..Apple$
Drop COLUMN LOCATION

select *
from Big_Tech_Companies..Apple$

-- Deleting Duplicates
with CTE_Apple as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Apple$)

Delete
from CTE_Apple
where ROW_INDEX > 1


--Facebook Data

--Spliting Location Column into state and City for Facebook 
alter table Big_Tech_Companies..Facebook$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Facebook$  

update Big_Tech_Companies..Facebook$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Facebook$
set City = PARSENAME(replace(location,',','.'),2)  

--fixing data columns for Facebook
alter table Big_Tech_Companies..Facebook$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Facebook$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Facebook
alter table Big_Tech_Companies..Facebook$
Drop COLUMN F8, LOCATION

select *
from Big_Tech_Companies..Facebook$

-- Deleting Duplicates
with CTE_Facebook as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Facebook$)

Delete
from CTE_Facebook
where ROW_INDEX > 1

-- Google
--Spliting Location Column into state and City for Google 
alter table Big_Tech_Companies..Google$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Google$

update Big_Tech_Companies..Google$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Google$
set City = PARSENAME(replace(location,',','.'),2) 

--fixing data columns for Google
alter table Big_Tech_Companies..Google$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Google$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Facebook
alter table Big_Tech_Companies..Google$
Drop COLUMN LOCATION

select *
from Big_Tech_Companies..Google$

-- Deleting Duplicates
with CTE_Google as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Google$)

Delete
from CTE_Google
where ROW_INDEX > 1


-- LinkedIn
--Spliting Location Column into state and City for LinkedIn 
alter table Big_Tech_Companies..Linkedin$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Linkedin$

update Big_Tech_Companies..Linkedin$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Linkedin$
set City = PARSENAME(replace(location,',','.'),2) 

--fixing data columns for LinkedIn
alter table Big_Tech_Companies..Linkedin$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Linkedin$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for LinkedIn
alter table Big_Tech_Companies..Linkedin$
Drop COLUMN LOCATION

select *
from Big_Tech_Companies..Linkedin$

select *
from Big_Tech_Companies..Linkedin$

-- Deleting Duplicates
with CTE_Linkedin as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Linkedin$)

Delete
from CTE_Linkedin
where ROW_INDEX > 1


-- Microsoft
--Spliting Location Column into state and City for Microsoft$ 
alter table Big_Tech_Companies..Microsoft$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Microsoft$

update Big_Tech_Companies..Microsoft$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Microsoft$
set City = PARSENAME(replace(location,',','.'),2) 

--fixing data columns for Microsoft$
alter table Big_Tech_Companies..Microsoft$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Microsoft$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Microsoft$
alter table Big_Tech_Companies..Microsoft$
Drop COLUMN LOCATION

select *
from Big_Tech_Companies..Microsoft$

-- Deleting Duplicates
with CTE_Microsoft as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Microsoft$)

Delete
from CTE_Microsoft
where ROW_INDEX > 1



-- Netflix
--Spliting Location Column into state and City for Netflix 
alter table Big_Tech_Companies..Netflix$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Netflix$

update Big_Tech_Companies..Netflix$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Netflix$
set City = PARSENAME(replace(location,',','.'),2) 

--fixing data columns for Netflix
alter table Big_Tech_Companies..Netflix$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Netflix$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Netflix
alter table Big_Tech_Companies..Netflix$
Drop COLUMN LOCATION

select *
from Big_Tech_Companies..Netflix$

 -- Deleting Duplicates
with CTE_Netflix as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Netflix$)

Delete
from CTE_Netflix
where ROW_INDEX > 1


-- Whatsapp
--Spliting Location Column into state and City for Whatsapp 
alter table Big_Tech_Companies..Whatsapp$
add State varchar(255),City varchar(255)

select location,
PARSENAME(replace(location,',','.'),2) as City,
PARSENAME(replace(location,',','.'),1) as State
FROM Big_Tech_Companies..Whatsapp$

update Big_Tech_Companies..Whatsapp$
set State = PARSENAME(replace(location,',','.'),1)  

update Big_Tech_Companies..Whatsapp$
set City = PARSENAME(replace(location,',','.'),2) 


--fixing data columns for Whatsapp
alter table Big_Tech_Companies..Whatsapp$
ALTER COLUMN [SUBMIT DATE] date

alter table Big_Tech_Companies..Whatsapp$
ALTER COLUMN [START DATE] date

--deleting Unwanted Columns for Whatsapp
alter table Big_Tech_Companies..Whatsapp$
Drop COLUMN LOCATION


select *
from Big_Tech_Companies..Whatsapp$

 -- Deleting Duplicates
with CTE_Whatsapp as (
select *,ROW_NUMBER() 
over( partition by EMPLOYER, [JOB TITLE], [BASE SALARY], [SUBMIT DATE], [START DATE],[CASE STATUS], State, City
order by EMPLOYER
) as ROW_INDEX
from Big_Tech_Companies..Whatsapp$)

Delete
from CTE_Whatsapp
where ROW_INDEX > 1