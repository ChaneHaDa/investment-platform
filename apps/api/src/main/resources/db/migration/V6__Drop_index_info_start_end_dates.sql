-- Drop startAt and endAt columns from index_info table as they are unused
-- These fields were intended for index listing dates but actual data range
-- can be dynamically calculated from IndexPrice table when needed

ALTER TABLE index_info DROP COLUMN IF EXISTS start_at;
ALTER TABLE index_info DROP COLUMN IF EXISTS end_at;