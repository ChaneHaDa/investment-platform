-- Remove duplicate single-column indexes for calc_stock_price table
-- These are redundant because we already have a composite index (stock_id, baseDate) 
-- which can efficiently handle queries on stock_id alone

DROP INDEX IF EXISTS idx_calc_stock_price_stock_id;
DROP INDEX IF EXISTS idx_calc_stock_price_base_date;

-- Remove duplicate single-column indexes for calc_index_price table  
-- These are redundant because we already have a composite index (index_info_id, baseDate)
-- which can efficiently handle queries on index_info_id alone

DROP INDEX IF EXISTS idx_calc_index_price_index_info_id;
DROP INDEX IF EXISTS idx_calc_index_price_base_date;