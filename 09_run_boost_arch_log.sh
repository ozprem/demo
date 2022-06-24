rman target / << RUN-RMAN-SCRIPT

set echo on;

run
{

allocate channel dd1 type 'sbt_tape' parms='BLKSIZE=1048576,SBT_LIBRARY=/u01/app/ddboost/lib/libddobk.so,ENV=(STORAGE_UNIT=oracle,BACKUP_HOST=prd-ddve01.dps.local,RMAN_AGENT_HOME=/u01/app/ddboost)';

backup archivelog all format './$HOSTNAME/%d/arch/%d_Archive_%u.arlog' not backed up 1 times;

release channel dd1;

}

RUN-RMAN-SCRIPT
