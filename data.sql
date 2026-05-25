-- Добавляем клиентов
INSERT INTO clients (full_name, birth_date, city, phone) VALUES
('Иванов Иван Иванович', '1980-05-15', 'Москва', '+7-916-123-4567'),
('Петрова Анна Сергеевна', '1992-11-23', 'СПб', '+7-921-987-6543');

-- Добавляем договоры
INSERT INTO contracts (client_id, contract_number, start_date, end_date, insurance_type, premium, status) VALUES
(1, 'А001-2025', '2025-01-10', '2026-01-09', 'ОСАГО', 8500.00, 'Активен'),
(2, 'А002-2025', '2025-02-15', '2026-02-14', 'КАСКО', 45000.00, 'Активен');

-- Добавляем выплаты
INSERT INTO payments (contract_id, event_date, amount, description) VALUES
(1, '2025-03-20', 12500.00, 'ДТП, ремонт'),
(2, '2025-04-05', 320000.00, 'Угон');
