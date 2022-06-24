rman target / << RUN-RMAN-SCRIPT

run {

allocate channel dd1 type 'sbt_tape' parms='BLKSIZE=1048576,SBT_LIBRARY=/u01/app/ddboost/lib/libddobk.so,ENV=(STORAGE_UNIT=oracle,BACKUP_HOST=prd-ddve01.dps.local,RMAN_AGENT_HOME=/u01/app/ddboost)';

delete noprompt backup;

delete noprompt archivelog all;

release channel dd1;

}

RUN-RMAN-SCRIPT
echo " "
echo "Delete directory structure on DD using the following command :"
echo " "
echo "ddutil -d -x -z prd-ddve01.dps.local:/oracle ${HOSTNAME}"
echo " "
#delete noprompt backup completed before 'sysdate-26';
#delete force noprompt backup completed before 'sysdate-26';
