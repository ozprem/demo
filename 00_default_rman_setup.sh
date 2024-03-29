rman target / << RUN-RMAN-SCRIPT

set echo on;

run {

CONFIGURE DEFAULT DEVICE TYPE TO SBT_TAPE;

CONFIGURE DEVICE TYPE SBT_TAPE Backup TYPE to BACKUPSET PARALLELISM 4;

CONFIGURE CHANNEL DEVICE TYPE 'SBT_TAPE' PARMS  'BLKSIZE=1048576,SBT_LIBRARY=/u01/app/ddboost/lib/libddobk.so,ENV=(STORAGE_UNIT=oracle,BACKUP_HOST=prd-ddve01.dps.local,RMAN_AGENT_HOME=/u01/app/ddboost)' ;

CONFIGURE CONTROLFILE AUTOBACKUP FORMAT FOR DEVICE TYPE SBT_TAPE TO './$HOSTNAME/%d/ctl/%d_%F.ctl';

CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 0 DAYS;

}

RUN-RMAN-SCRIPT
