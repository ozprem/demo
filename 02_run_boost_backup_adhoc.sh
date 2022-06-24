rman target / << RUN-RMAN-SCRIPT

set echo on;

run {

backup FULL TAG 'ADHOC' DATABASE FILESPERSET 4 FORMAT './$HOSTNAME/%d/adhoc/%d_set%s_piece%p_%T_%U';

}

RUN-RMAN-SCRIPT
