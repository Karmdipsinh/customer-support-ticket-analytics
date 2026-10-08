-- 1. SLA Breach Percentage
SELECT 
    ROUND(SUM(sla_breached = 1) * 100.0 / COUNT(*), 2) AS sla_breach_percentage
FROM tickets;


-- 2. Agent-wise Ticket Performance
SELECT 
    a.agent_id,
    a.agent_name,
    COUNT(t.ticket_id) AS total_tickets,
    SUM(t.status = 'Resolved') AS resolved_tickets
FROM agents a
LEFT JOIN tickets t 
    ON a.agent_id = t.agent_id
GROUP BY a.agent_id, a.agent_name
ORDER BY resolved_tickets DESC;


-- 3. Category-wise Ticket Analysis
SELECT 
    category,
    COUNT(*) AS total_tickets,
    SUM(status = 'Resolved') AS resolved_tickets,
    SUM(sla_breached = 1) AS sla_breaches
FROM tickets
GROUP BY category
ORDER BY total_tickets DESC;


-- 4. Customer-wise Ticket Count
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(t.ticket_id) AS total_tickets
FROM customers c
LEFT JOIN tickets t 
    ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_tickets DESC;


-- 5. Average Resolution Time
SELECT 
    ROUND(AVG(TIMESTAMPDIFF(HOUR, created_at, resolved_at)), 2) 
    AS average_resolution_hours
FROM tickets
WHERE resolved_at IS NOT NULL;