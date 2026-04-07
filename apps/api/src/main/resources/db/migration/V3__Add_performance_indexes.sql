-- Add performance indexes for backtesting queries

-- Index for IndexPrice table - used for index price range queries
CREATE INDEX IF NOT EXISTS idx_indexinfo_basedate 
ON index_price(index_info_id, base_date);

-- Index for CalcStockPrice table - used for calculated stock price range queries  
CREATE INDEX IF NOT EXISTS idx_calcstock_basedate 
ON calc_stock_price(stock_id, base_date);

-- Index for CalcIndexPrice table - used for calculated index price range queries
CREATE INDEX IF NOT EXISTS idx_calcindex_basedate 
ON calc_index_price(index_info_id, base_date);

-- Indexes for Stock table - used for stock search functionality
CREATE INDEX IF NOT EXISTS idx_stock_name 
ON stock(name);

CREATE INDEX IF NOT EXISTS idx_stock_shortcode 
ON stock(short_code);

-- Index for Users table - used for email lookups and active user filtering
CREATE INDEX IF NOT EXISTS idx_users_email 
ON users(email);

CREATE INDEX IF NOT EXISTS idx_users_active 
ON users(is_active);