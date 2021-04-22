# Case-Study - Classification
Mid-course project: Data Analytics Ironhack Bootcamp, Berlin<br/> 

![Ironhack logo](images/banking-project.png)

Dolores Umbridge Team: <br/> 
- Karina Condeixa
- Davis Pudans
- Prebitha Abraham


### Scenario
You are working as a risk analyst with a bank. Apart from the other banking and loan services, the bank also provides credit card services that are a very important source of revenue for the bank. The bank wants to understand the demographics and other characteristics of its customers that accept a credit card offer and that do not accept a credit card.<br/> 

Usually, the observational data for these kinds of problems is somewhat limited in that often the company sees only those who respond to an offer. To get around this, the bank designs a focused marketing study, with 18,000 current bank customers. This focused approach allows the bank to know who does and does not respond to the offer, and to use existing demographic data that is already available on each customer.<br/> 

### Objective
Build a model that will provide insight into why some bank customers accept credit card offers. There are also other potential areas of opportunities that the bank wants to understand from the data.<br/> 

Your senior management has also posted these other questions that will help them better understand their customers.<br/> 

### Dataset
All the necessary files, as well as the dataset, can be found in the following repository: Mid-bootcamp project - Classification.<br/> 

The data set consists of information on 18,000 current bank customers in the study. These are the definitions of data points provided:<br/> 

- Customer Number: A sequential number assigned to the customers (this column is hidden and excluded – this unique identifier will not be used directly).<br/> 
- Offer Accepted: Did the customer accept (Yes) or reject (No) the offer. R- eward: The type of reward program offered for the card.<br/> 
- Mailer Type: Letter or postcard.<br/> 
- Income Level: Low, Medium, or High.<br/> 
- Bank Accounts Open: How many non-credit-card accounts are held by the customer.<br/> 
- Overdraft Protection: Does the customer have overdraft protection on their checking account(s) (Yes or No).<br/> 
- Credit Rating: Low, Medium, or High.<br/> 
- Credit Cards Held: The number of credit cards held at the bank.<br/> 
- Homes Owned: The number of homes owned by the customer.<br/> 
- Household Size: The number of individuals in the family.<br/> 
- Own Your Home: Does the customer own their home? (Yes or No).<br/> 
- Average Balance: Average account balance (across all accounts over time). Q1, Q2, Q3, and Q4<br/> 
- Balance: The average balance for each quarter in the last <br/> 

## Statements
[Look the statements](https://github.com/ironhack-edu/data_mid_bootcamp_project_classification)

## Deliveries to make
1. Slides deck
2. Oral presentation
3. [SQL queries](https://github.com/ironhack-edu/data_mid_bootcamp_project_classification/blob/master/sql_questions_classification.md)
4. [A Tableau ](https://github.com/ironhack-edu/data_mid_bootcamp_project_classification/blob/master/tableau_classification.md)
5. [Python code](https://github.com/ironhack-edu/data_mid_bootcamp_project_classification)
6. [A Tableau dashboard](https://github.com/ironhack-edu/data_mid_bootcamp_project_classification/blob/master/tableau_classification.md)


## What did we make in the Python 
- read data from xlsx files
- made data cleaning
- EDA - exploratory data analysis
- made data wrangling
- create a model
- run and evaluate the model
- applied SMOTE to reduce the imbalance
- made feature engineering (removing columns, making bins)
- run and evaluate the model again<br/> <br/> 
We explore diferent options seeking to find a better score.


## Contents
- [Slides deck]()
- [SQL queries]()<br/> 
- Tableau <br/> 
[Tableau dashboard]()<br/> 
[Tableau_questions]()
- Python <br/> 
[hypothesis 1](python_files/case_study_classification)<br/> 
[hypothesis 2](python_files/case_study_classification_B)<br/> 
[hypothesis 3](python_files/case_study_classification_A-1)<br/> 
[hypothesis 4](python_files/case_study_classification_C)<br/> 
[hypothesis 5](python_files/case_study_classification_bin)<br/> 
[hypothesis 6](python_files/case_study_classification_bins_coulmn_difference)<br/> 
[hypothesis 7](python_files/case_study_classification_bins_coulmn_sum)<br/> 

## General conclusions
The best experiment was the one of the hypothesis 5 where we made binning and data wrangling for Q1, Q2, Q3, Q4. This experiment meet the best accuracy score.<br/> 

## Limitations
"IN DEVELOPMENT"<br/> 
<br/> 
<br/> 



## Tools

<img src="images/jupyter.png" width="100"/> <img src="images/python.png" width="100"/> <img src="images/mysql_workbench.png" width="100"/> <img src="images/dbeaver.png" width="100"/> <img src="images/tableau.png"  width="100"/> <img src="images/vsc.png" width="100"/> 






