-- 1. Список активных договоров с именем клиента
SELECT c.full_name, ct.contract_number, ct.insurance_type, ct.premium
FROM contracts ct
JOIN clients c ON ct.client_id = c.id
WHERE ct.status = 'Активен';

-- 2. Общая сумма выплат по каждому договору
SELECT ct.contract_number, SUM(p.amount) as total_payments
FROM payments p
JOIN contracts ct ON p.contract_id = ct.id
GROUP BY ct.id;

-- 3. Клиенты, у которых были выплаты больше 100 000
SELECT DISTINCT c.full_name, p.amount
FROM clients c
JOIN contracts ct ON c.id = ct.client_id
JOIN payments p ON ct.id = p.contract_id
WHERE p.amount > 100000;
