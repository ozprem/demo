#
# Script to restore a single table from backup
# 
# Note: this will take some time to complete with the way oracle performs this operation.
#
rman target / << RUN-RMAN-SCRIPT

set echo on;

run
{

SET CONTROLFILE AUTOBACKUP FORMAT FOR DEVICE TYPE SBT_TAPE to './prd-ldbe01/BOOST/ctl/BOOST_%F.ctl';

RECOVER TABLE HR."EMP"
          UNTIL SEQUENCE 75 thread 1
          AUXILIARY DESTINATION '/tmp'
          REMAP TABLE 'HR'.'EMP':'EMP_RESTORED';

}
