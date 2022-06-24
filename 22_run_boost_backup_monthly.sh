rman target / << RUN-RMAN-SCRIPT

set echo on;

run {

backup FULL TAG 'MONTHLY' DATABASE FILESPERSET 4 FORMAT './$HOSTNAME/%d/monthly/%d_set%s_piece%p_%T_%U' keep until time 'trunc(sysdate)+365' ;

}

RUN-RMAN-SCRIPT
