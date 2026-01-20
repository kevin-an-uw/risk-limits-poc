-- Database was a local schema named trademonitor, hosted on a local instance MySQL 80.

CREATE TABLE trademonitor.breaches_by_securities AS

WITH  EOD_by_stock as
	(SELECT blotter.Stock_Ticker, ROUND(SUM(CASE
		WHEN Side = "SELL" THEN Quantity*Price*-1
		ELSE Quantity*Price 
        END),2) as EOD_Position
    FROM trademonitor.trade_blotter as blotter
    GROUP BY blotter.Stock_Ticker),
limit_use as
	(SELECT securities.Stock_Name, EOD_by_stock.*, 
    ROUND(CASE 
		WHEN EOD_Position < 0 THEN 0
        ELSE EOD_Position/securities.Position_Limit END, 5) as Limit_Usage
    FROM EOD_by_stock JOIN trademonitor.securities as securities
    ON EOD_by_stock.Stock_Ticker = securities.Stock_Ticker),
breach_flags as
	(SELECT limit_use.*, CASE 
        WHEN Limit_Usage > 1 THEN "Breach" 
        WHEN Limit_Usage > 0.8 THEN "Warning"
        ELSE "OK" END as Breach_Status
	FROM limit_use)
    
SELECT * FROM breach_flags