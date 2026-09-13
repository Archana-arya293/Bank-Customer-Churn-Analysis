use da8emp;
select * from Customer_churn_records;
rename table customer_churn_records to bank_churn;
select count("CustomerId")as Total_customer from bank_churn;
select count("Exited") as Total_churn from bank_churn;
SELECT Exited, COUNT(*) AS total from bank_churn group by  Exited;
select avg(CreditScore) as Customer_avg_credit_score from bank_churn;
select Geography, count(*) as Total_customer from bank_churn group by Geography;
select Gender, count(*) as Total_Customer from bank_churn group by Gender;
select * from bank_churn where Balance=0;
select Balance, count(*) as Zero_Bal_emp from bank_churn group by balance;
select count(Balance) as zero_bal_Cus from bank_churn where balance=0;
Select avg(balance) as avg_bal_churn_cus from bank_churn where Exited=0;
select avg(Tenure) as avg_non_churn_cus from bank_churn where Exited=0;
select CustomerId,surname,EstimatedSalary 
from bank_churn where Exited =1 
order by Estimatedsalary desc limit 5; 
select count(*) 
as act_more_then_2_prodt 
from bank_churn where IsActiveMember=1 and NumofProducts>0;
select IsActiveMember, avg(Balance) as avg_bal from bank_churn group by IsActiveMember;
select Gender, avg(Estimatedsalary) as avg_salary from bank_churn group by Gender;
select Tenure, count(*) as Churn_cus_pr_tenure from bank_churn group by Tenure order by Tenure;
select NumofProducts, count(*) 
as Total, sum(Exited) as churned, 
round(sum(Exited)*100/count(*),2) 
as churn_rate from bank_churn group by Numofproducts;
select case
when age between 18 and 30 then "18-30"
when age between 31 and 45 then "31-45"
when age between 46 and 60 then "46-60"
else "60+"
end as Age_group,
count(*) as total, sum(Exited) as churned, round(sum(Exited)*100/count(*),2) as
 churn_rate from bank_churn group by Age_group;
 select Geography,Gender, 
 count(*) as Total, sum(Exited) as churned, 
 round(sum(Exited)*100/count(*),2) as churn_rate 
 from bank_churn  group by Geography,Gender order by churn_rate desc;
 select Geography, avg(creditscore) as avg_credit_score,
 avg(Balance) as avg_bal
 from bank_churn
 where exited=1
 group by Geography;
 select customerId,Surname,Balance 
 from bank_churn 
 where Exited=1 
 order by Balance Desc limit 10;
