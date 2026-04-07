-- Drop startAt and endAt columns from stock table as they are unused
-- These fields were intended for listing dates but actual trading data range
-- can be dynamically calculated from StockPrice table when needed

ALTER TABLE stock DROP COLUMN IF EXISTS start_at;
ALTER TABLE stock DROP COLUMN IF EXISTS end_at;