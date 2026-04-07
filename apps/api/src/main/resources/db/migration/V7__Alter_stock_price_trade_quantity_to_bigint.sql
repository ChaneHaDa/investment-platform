-- Prevent integer overflow for high-volume trading days
ALTER TABLE stock_price
ALTER COLUMN trade_quantity TYPE BIGINT;
