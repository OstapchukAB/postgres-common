-- Детальный список с комментариями
SELECT 
    r.routine_name,
    r.routine_type,
    obj_description(p.oid, 'pg_proc') as description,
    r.data_type as return_type,
    r.routine_definition
FROM information_schema.routines r
LEFT JOIN pg_proc p ON p.proname = r.routine_name 
LEFT JOIN pg_namespace n ON n.oid = p.pronamespace 
WHERE r.specific_schema = 'my_schema'
    AND n.nspname = 'my_schema'
ORDER BY r.routine_type, r.routine_name;