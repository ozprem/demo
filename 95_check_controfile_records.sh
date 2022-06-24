sqlplus -s / as sysdba << RUN-SQL-SCRIPT

set heading off ;
set feedback off;
set echo on;

show parameter control_file_record 

RUN-SQL-SCRIPT

echo " "

# alter system set control_file_record_keep_time=37

