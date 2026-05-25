-- Клиенты
CREATE TABLE clients (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    birth_date TEXT,
    city TEXT,
    phone TEXT
);
-- Страховые договоры
CREATE TABLE contracts (
    id INTEGER PRIMARY KEY,
    client_id INTEGER,
    contract_number TEXT UNIQUE,
    start_date TEXT,
    end_date TEXT,
    insurance_type TEXT,  -- 'ОСАГО', 'КАСКО', 'НС', 'Ипотека'
    premium REAL,          -- Страховая премия (сколько заплатил клиент)
    status TEXT            -- 'Активен', 'Завершен', 'Расторгнут'
);

-- Выплаты (страховые случаи)
CREATE TABLE payments (
    id INTEGER PRIMARY KEY,
    contract_id INTEGER,
    event_date TEXT,
    amount REAL,
    description TEXT
);
