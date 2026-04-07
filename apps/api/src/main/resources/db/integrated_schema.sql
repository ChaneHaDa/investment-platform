-- Integrated Schema for Stock Portfolio Backtest API
-- This combines all migrations from V1 to V6

-- Create Users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    phone_number VARCHAR(255),
    created_at TIMESTAMP NOT NULL,
    last_login_at TIMESTAMP,
    is_active BOOLEAN DEFAULT true,
    role VARCHAR(50) NOT NULL CHECK (role IN ('USER', 'ADMIN'))
);

-- Create Stock table (without start_at and end_at columns as per V4)
CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    short_code VARCHAR(255),
    isin_code VARCHAR(255) UNIQUE,
    market_category VARCHAR(255)
);

-- Create IndexInfo table (without start_at and end_at columns as per V6)
CREATE TABLE index_info (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255),
    CONSTRAINT uk_index_info_name_category UNIQUE (name, category)
);

-- Create Portfolio table
CREATE TABLE portfolio (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    amount BIGINT,
    start_date DATE,
    end_date DATE,
    ror REAL,
    volatility REAL,
    price REAL,
    user_id INTEGER REFERENCES users(id)
);

-- Create PortfolioItem table
CREATE TABLE portfolio_item (
    id SERIAL PRIMARY KEY,
    weight REAL,
    stock_id INTEGER REFERENCES stock(id),
    portfolio_id INTEGER REFERENCES portfolio(id)
);

-- Create StockPrice table
CREATE TABLE stock_price (
    id SERIAL PRIMARY KEY,
    close_price INTEGER,
    open_price INTEGER,
    low_price INTEGER,
    high_price INTEGER,
    trade_quantity BIGINT,
    trade_amount BIGINT,
    issued_count BIGINT,
    base_date DATE,
    stock_id INTEGER REFERENCES stock(id)
);

-- Create IndexPrice table
CREATE TABLE index_price (
    id SERIAL PRIMARY KEY,
    close_price REAL,
    open_price REAL,
    low_price REAL,
    high_price REAL,
    yearly_diff REAL,
    base_date DATE,
    index_info_id INTEGER REFERENCES index_info(id)
);

-- Create StockNameHistory table
CREATE TABLE stock_name_history (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    start_at DATE,
    end_at DATE,
    stock_id INTEGER NOT NULL REFERENCES stock(id)
);

-- Create all necessary indexes (combining V1, V3, and removing duplicates from V5)
-- Basic indexes from V1
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_stock_isin_code ON stock(isin_code);
CREATE INDEX idx_portfolio_user_id ON portfolio(user_id);
CREATE INDEX idx_portfolio_item_portfolio_id ON portfolio_item(portfolio_id);
CREATE INDEX idx_portfolio_item_stock_id ON portfolio_item(stock_id);
CREATE INDEX idx_stock_price_stock_id ON stock_price(stock_id);
CREATE INDEX idx_stock_price_base_date ON stock_price(base_date);
CREATE INDEX idx_index_price_index_info_id ON index_price(index_info_id);
CREATE INDEX idx_index_price_base_date ON index_price(base_date);
CREATE INDEX idx_stock_name_history_stock_id ON stock_name_history(stock_id);

-- Performance indexes from V3
CREATE INDEX idx_indexinfo_basedate ON index_price(index_info_id, base_date);
CREATE INDEX idx_stock_name ON stock(name);
CREATE INDEX idx_stock_shortcode ON stock(short_code);
CREATE INDEX idx_users_active ON users(is_active);
