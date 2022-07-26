ALTER PROCEDURE update_dept COMPILE DEBUG;
ALTER PROCEDURE update_dept COMPILE PLSQL_CODE_TYPE=NATIVE;
SELECT plsql_optimize_level,
       plsql_code_type,
       plsql_warnings
 FROM  all_plsql_object_settings
 WHERE name = 'UPDATE_DEPT';
