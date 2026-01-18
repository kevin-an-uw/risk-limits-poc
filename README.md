# Stock-Trading-Limit-Monitoring
This screenshot shows and end-user PowerBI table for monitoring securities limit breaches at EOD.
<img width="1305" height="578" alt="image" src="https://github.com/user-attachments/assets/f8bb4176-4967-4118-9604-e4897e03d122" />

Where limits on the trading team's shared holdings of a given security are given by the following table (46 securities in this project):

<img width="503" height="463" alt="image" src="https://github.com/user-attachments/assets/e5ce38ba-d64d-4c0e-a890-931f4c212250" />

Entity relationship diagram (including end-user report tables):

### Key Metrics:
**EOD Position**: The sum of the signed notional value of all trades, grouped by accounts, trader, or securities, depending on which limit is being monitored.

**Limit Usage:** The percent of a given limit taken up by a security's, account's, and/or trader's EOD position.

**Breach Status:** Shows "Breach" for limit usage >100%, and "Warning" for limit usage between 80-100%. (seems to be an IBP)

### Background: 
This project seeks to build a Proof of Concept (POC) of trading limit monitoring work-flow, which is part of daily Global Risk Management operations.  In a typical financial institute, this work flow is usually used by Capital Markets middle offices to monitor Front Office trading activities and ensure trading activities are within defined notional limits. In this project, Excel, mySQL and PowerBI reports are used to prepare, store, transform, export and display data. To complete this project, fundamental stock trading knowledge and data analysis skills are required.

**Break downs**: A typical trading floor limit monitoring process includes
1. Getting data from trading systems, and other systems such as HR for trading or account info
2. Cleaning and transforming data, deriving necessary metrics through Excel
  a. This project will do so Transforming data, calculating necessary metrics through Excel, Tableau, etc.. This project does so using:
   i. MySQL queries for EOD limit monitoring
   ii. PowerBI reports to visualize
   iii. Excel for intra-day limit monitoring
3. Visualizing data for end users through reports

**Goals:**
Create a work flow with csv files as input, MYSQL as data storage, and PowerBI to build and send reports to end users.
Workflow 1: Manual- or auto-export csv files into mySQL DB
Workflow 2: Use queries to view various limits and their breach status

## Desired Tables:

**Account Limits**

a) for each account, what is total buy in each account 

b) for each account, what is the limit

c) display breach, warning for exceeding 100%, 80%

**Per-Trade Limits**

a) for each trade, what is their total buy volume

b) for each trade, what is their limit

c) display breach, warning for exceeding 100%, 80%

**Per-Stock Limits**

a) For each company, find the total $ amount held by the firm

b) For each company, find their "Total Stock Limit" - the limit on how much $ of the stock can be held at a time

c) Display breach, warnings for total stock value held exceeding 80%, 100% of their respective total stock limits

**Results Table**

Create a limit result table and insert the above limit results into for PowerBI or Python program to extract the data out

PowerBI
Using PowerBI to create a report to monitor when the total purchases of each company exceeds the total stock limit---joining two tables -trade_basic and SecurityTierLimit with Total_Stock_Limit
a) In PowerBI, create a calculated column Usage PCT showing how much the total stock volume of a given company purchased compares to that company’s purchased-volume limit

