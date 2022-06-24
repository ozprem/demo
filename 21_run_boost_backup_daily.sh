rman target / << RUN-RMAN-SCRIPT

set echo on;

run {

backup FULL TAG 'DAILY' DATABASE FILESPERSET 4 FORMAT './$HOSTNAME/%d/daily/%d_set%s_piece%p_%T_%U' keep until time 'trunc(sysdate)+14';

}

RUN-RMAN-SCRIPT
