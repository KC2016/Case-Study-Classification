

# 1.2.3. create a datebase called credit_card_classification, table called credit_card_data and imort data
SELECT * 
FROM credit_card_classification.credit_card_data;
#-------------------------------------------------------------------------------------------------------------
# 5. Drop the column q4
alter table credit_card_data drop Q4;
# -- verify if it worked
select * 
from credit_card_data limit 10;
# ------ verified that the column Q4 is dropped. 
#-------------------------------------------------------------------------------------------------------------
# 6. sql query to find how many rows of data we have
select count(*) 
from credit_card_data ;
# ---- solution - we have 2376 rows
# changing column names 
alter table credit_card_data change No offer_accepted varchar(10);
select * 
from credit_card_data;
# -------------------------------------------------------------------------------------------------------------
# 7. Now we will try to find the unique values in some of the categorical columns:
SELECT DISTINCT(offer_accepted) 
from credit_card_data;
SELECT DISTINCT(Rewards) 
from credit_card_data;
SELECT DISTINCT(Mailer) 
from credit_card_data;
SELECT DISTINCT(cards) 
from credit_card_data;
SELECT DISTINCT(Size) 
from credit_card_data;
# --------------------------------------------------------------------------------------------------------------
# 8. Descending order of the column average_balance
alter table credit_card_data change AvgB average_balance int(10);
alter table credit_card_data change ï»¿Id customer_id int(10) ;
select customer_id, average_balance from credit_card_data order by average_balance DESC limit 10;
# --------------------------------------------------------------------------------------------------------------
# 9. The average balance of all customers in this data.
select sum(average_balance) from credit_card_data;

# the average of average_balance groupby Income level
alter table credit_card_data change level Income_Level varchar(10);
# ---------------------------------------------------------------------------------------------------------------
# In this exercise we will use simple group by to check the properties of some of the categorical variables in our data. 
# Note wherever average_balance is asked, please take the average of the column average_balance:

# 10a
select avg(average_balance), Income_Level 
from credit_card_data 
group by Income_Level;
# 10b
alter table credit_card_data change acc number_of_bank_account_open int(10);
select avg(average_balance), number_of_bank_account_open 
from credit_card_data 
group by number_of_bank_account_open;
# 10c
alter table credit_card_data change cards credit_cards_held int(10);
select avg(credit_Cards_held) as avg_credit_cards_held , Rating 
from credit_card_data 
group by Rating ;
# 10d 


# -----------------------------------------------------------------------------------------------------------------

#11  A query for the manager who wants high and medium rating customer with 2 or less creditcard

select * from credit_card_data
where 
Rating = 'High' or Rating= 'Medium' 
and  credit_cards_held < 2 
and Owned= 'Yes'
and Size >=3;

# This is for the customer with Higher Rating
select * from credit_card_data
where 
Rating = 'High' #or credit_rating= 'Medium' 
and  credit_cards_held <= 2 
and Owned = 'Yes'
and Size >=3
and offer_accepted = 'Yes';


# 11 . we did a query for Rating= medium seperately;
select * from credit_card_data
where 
Rating = 'Medium' #or credit_rating= 'Medium' 
and  credit_cards_held <= 2 
and Owned = 'Yes'
and Size >=3
and offer_accepted = 'Yes';

# -------------------------------------------------------------------------------------------------------------

# 12 list of customers whose average balance is less than the average balance of all the customers in the database
select avg(average_balance) from credit_card_data;
select * from credit_card_data where average_balance < ( select avg(average_balance) from credit_card_data) ;

# ---------------------------------------------------------------------------------------------------------------
# 13 create a view of the same query.
create view data_less_than_avg as
select * from credit_card_data 
where average_balance < ( select avg(average_balance) 
from credit_card_data) ;

# ---------------------------------------------------------------------------------------------------------------
# 14 What is the number of people who accepted the offer vs number of people who did not?
SELECT offer_accepted 
from credit_card_data 
group by offer_accepted 
order by count(*) DESC;

# ---------------------------------------------------------------------------------------------------------------
# 15 What is the difference in average balances of the customers with high credit card rating and low credit card rating?
create view data_on_rating as
select * from credit_card_data 
where Rating= 'High' or Rating ='Medium';
 
SELECT * 
FROM credit_card_classification.data_on_rating;

select count(average_balance), Rating 
from credit_card_classification.data_on_rating 
where Rating = 'High'; 
# 792 - count

select count(average_balance), Rating 
from credit_card_classification.data_on_rating 
where Rating = 'Medium';
# 783

# ----------------------------------------------------------------------------------------------------------------
# 16 In the database, which all types of communication (mailer_type) were used and with how many customers?
select count(Mailer)as count, Mailer 
from credit_card_classification.data_on_rating 
group by Mailer;

# ----------------------------------------------------------------------------------------------------------------
# 17 Provide the details of the customer that is the 11th least Q1_balance in your database.
# created a view and from there used ranking to get the 11th least q1
create view data_ranking_Q1 as
SELECT *, rank() 
OVER ( order by Q1 desc ) 
AS ranking
FROM credit_card_data;
SELECT * FROM credit_card_classification.data_ranking_q1;
select * from credit_card_classification.data_ranking_q1 where ranking=11








