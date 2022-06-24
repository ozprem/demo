rman target / << RUN-RMAN-SCRIPT

set echo on;

CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 0 DAYS;

run
{
 
allocate channel dd1 type 'sbt_tape' parms='BLKSIZE=1048576,SBT_LIBRARY=/u01/app/ddboost/lib/libddobk.so,ENV=(STORAGE_UNIT=oracle,BACKUP_HOST=prd-ddve01.dps.local,RMAN_AGENT_HOME=/u01/app/ddboost)';

delete noprompt obsolete;

release channel dd1;

}


RUN-RMAN-SCRIPT

# allocate channel for maintenance device type sbt_tape;
# CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 0 DAYS;
# configure retention policy to redundancy 1;
