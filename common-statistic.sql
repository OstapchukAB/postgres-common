-- Общая статистика
SELECT 
    COUNT(*) as total_routines,
    COUNT(*) FILTER (WHERE routine_type = 'FUNCTION') as function_count,
    COUNT(*) FILTER (WHERE routine_type = 'PROCEDURE') as procedure_count
FROM information_schema.routines 
WHERE specific_schema = 'my_schema';