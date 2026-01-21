# Stock-Trading-Limit-Monitoring
### Background: 
This project seeks to build a Proof of Concept (POC) of trading limit monitoring work-flow, which is part of daily Global Risk Management operations.  In a typical financial institute, this work flow is usually used by Capital Markets middle offices to monitor Front Office trading activities and ensure trading activities are within defined limits. In this project, Excel, mySQL and PowerBI reports are used to prepare, store, transform, export and display data. To complete this project, fundamental stock trading knowledge and data analysis skills are required.

### Key Metrics:
**EOD Position**: The sum of the signed notional value of all trades, grouped by accounts, trader, or securities, depending on which limit is being monitored.

**Limit Usage:** The percent of a given limit taken up by a security's, account's, and/or trader's EOD position.

**Breach Status:** Shows "Breach" for limit usage >100%, and "Warning" for limit usage between 80-100%. (seems to be an IBP)

**Break downs**: This project showcases a simplified typical trading floor limit monitoring process, which entails:
1. Getting data from trading systems and other systems such as HR for trading or account info
2. Cleaning and transforming data, deriving necessary metrics through Excel, SQL, or PowerBI
3. Visualizing data for end users through reports and charts

### Workflow Diagram:
<img width="1183" height="440" alt="image" src="https://github.com/user-attachments/assets/628af68f-341c-472a-ac8e-aa6250facda6" />

### PowerBI Report**:
<img width="1305" height="578" alt="image" src="https://github.com/user-attachments/assets/f8bb4176-4967-4118-9604-e4897e03d122" />

Where limits on the trading team's shared holdings of a given security are given by the following table (46 securities in this project):

<img width="503" height="463" alt="image" src="https://github.com/user-attachments/assets/e5ce38ba-d64d-4c0e-a890-931f4c212250" />

## Scenario Breakdown:
A financial institute has a team of securities traders, with metrics like "limits" flagging high-risk behaviour (and sometimes preventing it in the form of pre-trade limits, though that is out of this project's scope). These traders buy securities and receive funds for selling securities with balances and loans (credit) from

## Desired Tables:

**Account Limits**

a) What is the EOD position of each account?

b) What are the position limits on each account?

c) Display "breach" and "warning" for EOD account positions exceeding 100% and 80% of the account's limit respectively, with different flags for credit/balance breaches or warnings.

**Securities Limits**

a) What is the trading team's EOD position of each security?

b) What is the position limit on each security?

c) Display "breach" and "warning" for EOD security positions exceeding 100% and 80% of the securitiy's limit respectively

**Trader Limits**

a) What is the EOD position of each trader in the firm's team?

b) What is the position limit on each trader?

c) Display "breach" and "warning" for EOD security positions exceeding 100% and 80% of the trader's limit respectively

**Results Table**

Create a limit result table and insert the above limit results into for PowerBI or Python program to extract the data out

PowerBI
Using PowerBI to create a report to monitor when the total purchases of each company exceeds the total stock limit---joining two tables -trade_basic and SecurityTierLimit with Total_Stock_Limit
a) In PowerBI, create a calculated column Usage PCT showing how much the total stock volume of a given company purchased compares to that company’s purchased-volume limit

