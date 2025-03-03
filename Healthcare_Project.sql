create database Healthcare;

use Healthcare;

Select * from Healthcare;

#1. Retrieve the names of all patients in the database.
select name from healthcare; 

#2. List the unique medical conditions present in the dataset. 
select Medical_condition from healthcare group by Medical_condition; 

#3. Find the total number of doctors in the healthcare system. 
select count(doctor) from healthcare;

#4. Retrieve the details of all female patients. 
select name,gender from healthcare where gender = 'female';

#5. what is the average age of patients in the database.
select avg(age) from healthcare;

#6. Identify the patients who have more than one medical condition. 
select count(medical_condition),name from healthcare group by name having count(name)>1;

#7. List the names of all doctors.
select Doctor from healthcare;
 
#8.Identify the most common medical condition among patients.
select medical_condition from healthcare order by medical_condition asc limit 1;   #>>recheck
select medical_condition,count(*) as count from healthcare group by medical_condition order by count  desc limit 1;

#9.Find the patients who are older than 60 years and have diabetes. 
select age,medical_condition,name from healthcare where age >= 60 and medical_condition = 'diabetes';

#10.Calculate the total revenue generated by the healthcare system. 
select sum(Billing_Amount) from healthcare ; 

#11.Find the doctor with the oldest patient.
select age,Doctor from healthcare order by age desc limit 1;   #by age

Select Date_of_Admission, Doctor from healthcare order by Date_of_Admission desc limit 1;  # by date of admission

#12.Calculate the average duration of medical visits.
select avg(duration) from healthcare;

#13.Give the names of patients whose name starts with A.
Select name from healthcare where name like 'A%';
 
#14.How many male and female patients are there in dataset. 
select gender, count(*) as count from healthcare group by gender;

#15.how many patients are normal. 
select count(Test_Results) from healthcare where Test_Results = 'Normal';

#16.how many patients are abnormal or Inconclusive.
select count(Test_results),test_results from healthcare group by Test_Results;
select count(*) from healthcare where test_results = 'abnormal' or test_results = 'inconclusive';

#17.how many patients of blood group AB+ are there of age above 52. 
select count(age) from healthcare where blood_type = 'AB+' and age > 52;

#18. how many patients have paid the bill above 24890. 
select count(name) from healthcare where billing_amount > 24890;

#19. what are the names of patients having Asthma. 
select name, medical_condition from healthcare where medical_condition = 'Asthma';

#20. how many patients have cancer. 
select count(medical_condition) from healthcare where medical_condition = 'cancer';

#21. what are the names and blood groups of patients admitted to room no. 292. 
select name,blood_type,room_number from healthcare where room_number = 292;

#22. how many males have Arthritis.
select count(gender), gender from healthcare where gender = 'male' and medical_condition = 'arthritis';

#23. How many patients were admitted to Harris and Sons hospital. 
select count(name), hospital from healthcare where hospital = 'Harris and sons';

#24. what are the names of patients whose Insurance Provider are Cigna. 
select name , insurance_provider from healthcare where insurance_provider = 'cigna';

#25. Name the Medical Condition having patients whose ages is greater than average age
select medical_condition,age from healthcare where age > (select avg(age) from healthcare);
