# Stock-Trading-Limit-Monitoring
**Background**: This project is to build a Proof of Concept (POC) of trading limit monitoring work-flow.  In a typical financial institute, this work flow is usually used by Capital Markets middle offices to monitor Front Office trading activities and ensure trading activities are within defined limits. This is part of daily Global Risk Management operations. In this project, Excel, mySQL and PowerBI reports are used to prepare, store, transform, export and display data. To complete this project, fundamental stock trading knowledge and data analysis skills are required.

**Break downs**: A typical trading floor limit monitoring process includes
1. Getting data from trading systems, and other systems such as HR for trading or account info
  a. Transform data, calculating the usage percent through various means depending on firm norms. This project will do so using:
   i. MySQL queries
   ii. PowerBI reports
   iii. Excel reports
2. Sending visualized data to end users

**Goals**:
Create a work flow with csv files as input, MYSQL as data storage, and PowerBI to build and send reports to end users.
Workflow 1: Manual- or auto-export csv files into mySQL DB
Workflow 2: Use queries to view various limits and their breach status

**Desired Tables:**

Account Limits
a) for each account, what is total buy in each account 
b) for each account, what is the limit
c) display breach, warning for exceeding 100%, 80%

Per-Trade Limits
a) for each trade, what is their total buy volume
b) for each trade, what is their limit
c) display breach, warning for exceeding 100%, 80%

Per-Stock Limits
a) For each company, find the total $ amount held by the firm
b) For each company, find their "Total Stock Limit" - the limit on how much $ of the stock can be held at a time
c) Display breach, warnings for total stock value held exceeding 80%, 100% of their respective total stock limits

Results Table
Create a limit result table and insert the above limit results into for PowerBI or Python program to extract the data out

PowerBI
Using PowerBI to create a report to monitor when the total purchases of each company exceeds the total stock limit---joining two tables -trade_basic and SecurityTierLimit with Total_Stock_Limit
a) In PowerBI, create a calculated column Usage PCT showing how much the total stock volume of a given company purchased compares to that company’s purchased-volume limit

