select dbms_warning.get_warning_setting_string from dual;

ALTER SESSION SET PLSQL_WARNINGS='ENABLE:ALL';

call dbms_warning.add_warning_setting_cat('ALL', 'ENABLE', 'SESSION'); 

select dbms_warning.get_warning_setting_string from dual;




