-- This is record of all the simple DDL used for this project.
-- Database was a local schema on a local MySQL instance.

-- ALTER TABLE trademonitor.trade_blotter
-- RENAME COLUMN TradeTimeStamp TO Trade_Time;
-- RENAME COLUMN StockName TO Stock_Name;
-- RENAME COLUMN `Stock Ticker` TO Stock_Ticker;

-- ALTER TABLE `trademonitor`.`securities_position_mv_limits` 
-- RENAME TO  `trademonitor`.`securities` ;
-- ALTER TABLE trademonitor.securities
-- RENAME COLUMN StockName TO Stock_Name;
-- RENAME COLUMN `Stock Ticker` TO Stock_Ticker;
-- RENAME COLUMN Position_MV_Limit TO Position_Limit;

-- ALTER TABLE trademonitor.accounts_tuned_corrected
-- RENAME TO trademonitor.accounts;
-- ALTER TABLE trademonitor.accounts
-- DROP COLUMN MinRoleLevel;

-- ALTER TABLE trademonitor.trader_info_position_limits
-- RENAME TO trademonitor.trader_info
ALTER TABLE trademonitor.trader_info
-- RENAME COLUMN TraderName TO Trader_Name;
-- RENAME COLUMN TraderRole TO Trader_Role;
RENAME COLUMN TraderPositionMVLimit TO Position_Limit;